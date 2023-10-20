*** Settings ***
Documentation    OpenWeatherMap API (v3.0) Automation Test Suite
Library           RequestsLibrary
Library           Collections
Library           JSONLibrary
Library            ../modules/api_keywords.py
Test Setup        Initialize Test
Test Teardown     Finalize Test
Suite Setup       Suite Setup

*** Variables ***
${Base URL}            http://api.openweathermap.org/data/3.0/weather
${API Key}             << API_KEY >>
${Valid City}          New York
${Invalid City}        Dinosaur

*** Test Cases ***
Get Weather For Valid City
    [Documentation]    Send a GET request to retrieve weather for a valid city.
    ${response}    Get Weather    ${Base URL}   ${API Key}  ${Valid City}
    Should Be Equal As Strings    ${response.status_code}    200
    ${weather}    Parse JSON    ${response.text}
    Should Be True    ${weather.main.temp} is number

Get Weather For Invalid City
    [Documentation]    Send a GET request to retrieve weather for an invalid city.
    ${response}    Get Weather    ${Base URL}   ${API Key}  ${Invalid City}
    Should Be Equal As Strings    ${response.status_code}    404

*** Keywords ***
Get Weather
    [Arguments]    ${base_url}    ${api_key}    ${city}
    ${response}    Get Weather    ${base_url}    ${api_key}    ${city}
    [Return]    ${response}

Initialize Test
    Log    Initializing Test Suite...
    # Any additional setup steps can be added here.

Finalize Test
    Log    Finalizing Test Suite...
    # Any cleanup or teardown steps can be added here.

Suite Setup
    Log    Suite Setup...
    # Any suite-level setup steps can be added here.
