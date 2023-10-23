# unified-robot

## Overview
Automation Test Suite using Robot framework for API tests of online weather application.

## Project Description
This project is designed to implement API automation test suite using Robot framework for validation of public API's related to an online weather application.

## Project Components
1. Robot Framework 6.1.1
2. Python-Requests library 2.31.0

## Environment Requirements
1. Python v3.10.0 or later
2. pip 23.0.0 or later
3. Pycharm or IntelliJ IDE

## Project Structure
1. tests: Contains the robot API tests for the application along with the reports.
2. modules: Contains the custom step implementations using Python.

## Execution Instructions
To run the project, follow these steps:
1. Clone the project to your local environment.
2. Create virtualenv & activate the env
   ```
    virtualenv -p python3 venv
    source venv/bin/activate
   ```
3. Install dependencies
   ```
    cd requirements
    pip install -r requirements.txt
   ```
4. Execute the tests
   ```
    robot tests/api_tests.robot
   ```

## Reports Location
After execution, you can access reports in the path tests/report.html and logs under tests/log.html.
