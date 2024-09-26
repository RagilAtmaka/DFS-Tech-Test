 Automation Testing Script

## Table of Contents
- [Installation](#installation)
- [WebDriver Configuration](#webdriver-configuration)
- [Check Local Browser Version](#check-local-browser-version)
- [Download WebDriver](#download-webdriver)
- [Add WebDriver](#add-webdriver)
- [Execution](#execution)
- [Checking Test Reports](#checking-test-reports)

## Installation
To install the necessary dependencies to execute the script on Windows OS, follow these steps:

1. Open Command Prompt (CMD).
2. Ensure that you have Python and pip installed on your system. You can check the installation by running:
   ```bash
   python --version
   pip --version
3. Install the required packages using pip:
    - pip install robotframework
    - pip install robotframework-seleniumlibrary
    - pip install selenium
      
4. WebDriver Configuration
   Check Local Browser Version
   To configure the WebDriver, first check the version of your local browser (e.g., Chrome, Firefox) by following these steps:

   Google Chrome:
   Open Chrome.
   Click on the three-dot menu in the top right corner.
   Go to "Help" > "About Google Chrome" to see the version number.
  
   Firefox:
   Open Firefox.
   Click on the three-line menu in the top right corner.
   Go to "Help" > "About Firefox" to see the version number.
   Download the WebDriver
   Download the appropriate WebDriver according to your browser version:

   ChromeDriver
   GeckoDriver (for Firefox)
   Make sure to download the version that matches your browser version.

5. Add WebDriver
   After downloading the WebDriver, place it in the same directory as your automation files. This ensures that the script can access the WebDriver without needing to specify a path
   
6. Running Test Cases
   To execute the automation script, you can use the following commands:
   - Running all test cases from a single folder:
     robot folder_name
   - Running a single test case from a file:
     robot -t "scenario_name" file_name.robot
   or
     robot --test "scenario_name" file_name.robot
   - Running a single test case from a folder:
     robot -t "scenario_name" folder_name
   or
     robot --test "scenario_name" folder_name
   
7. Checking Test Reports
   After running the tests, Robot Framework generates test reports and logs in the same directory where you executed the tests. You can open the following files to check the results:
   - log.html: Detailed log of the test execution.
   - report.html: Summary report of the test execution.
8. Contoh Test Report passed pada safari
   ![Alt Text](https://drive.google.com/file/d/1sulRhVPug0avFmxNGZvRUx6KC3Tcdfbw/view?usp=sharing)
   
