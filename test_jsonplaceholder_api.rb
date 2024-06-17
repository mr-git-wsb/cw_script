require 'open3'
require 'json'

def test_endpoint(url, key_elements)
  stdout, stderr, status = Open3.capture3("curl -s -w \"%{http_code}\" #{url}")
  http_code = stdout[-3..-1]
  response_body = stdout[0...-3]

  if http_code == "200"
    puts "HTTP Status: 200 OK"
  else
    puts "HTTP Status: #{http_code}"
    return false
  end

  begin
    json_response = JSON.parse(response_body)
    missing_elements = key_elements.select { |element| !json_response.key?(element) }
    if missing_elements.empty?
      puts "All key elements are present: #{key_elements}"
      return true
    else
      puts "Missing key elements: #{missing_elements}"
      return false
    end
  rescue JSON::ParserError => e
    puts "JSON Parsing Error: #{e.message}"
    return false
  end
end

endpoints = [
  { url: "https://jsonplaceholder.typicode.com/posts/1", keys: ["userId", "id", "title", "body"] },
  { url: "https://jsonplaceholder.typicode.com/users/1", keys: ["id", "name", "username", "email"] },
  { url: "https://jsonplaceholder.typicode.com/todos/1", keys: ["userId", "id", "title", "completed"] }
]

endpoints.each_with_index do |endpoint, index|
  puts "Testing endpoint #{index + 1}: #{endpoint[:url]}"
  if test_endpoint(endpoint[:url], endpoint[:keys])
    puts "Test #{index + 1}: PASSED"
  else
    puts "Test #{index + 1}: FAILED"
  end
  puts "----------------------------------------"
end
