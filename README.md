# API Testing Script

This Ruby script automatically tests some JSONPlaceholder API endpoints using the `curl` command-line tool. It sends HTTP requests to selected public APIs and checks if the responses are correct (HTTP statuses and key elements in JSON responses).

## Prerequisites

- Ruby (version 2.5 or later)
- `curl` installed on your system

## Example output:

```
Testing endpoint 1: https://jsonplaceholder.typicode.com/posts/1
HTTP Status: 200 OK
All key elements are present: ["userId", "id", "title", "body"]
Test 1: PASSED
----------------------------------------
Testing endpoint 2: https://jsonplaceholder.typicode.com/users/1
HTTP Status: 200 OK
All key elements are present: ["id", "name", "username", "email"]
Test 2: PASSED
----------------------------------------
Testing endpoint 3: https://jsonplaceholder.typicode.com/todos/1
HTTP Status: 200 OK
All key elements are present: ["userId", "id", "title", "completed"]
Test 3: PASSED
----------------------------------------
```
