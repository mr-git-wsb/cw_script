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

# Ruby Calculator Application

This is a simple interactive Ruby calculator application that can add, subtract, multiply, and divide two numbers. The project includes unit tests and a Makefile to automate common tasks.

## Prerequisites

- Ruby (version 2.5 or later)

## Installation
To install the necessary dependencies, run:

`make install
`
## Running the Application
To run the application, use:

`make run`

You will be prompted to select an operation and input two numbers. The application will then display the result of the operation.

## Running Tests
To run the unit tests, use:

`make test`

You should see output from RSpec indicating that the tests have passed.
