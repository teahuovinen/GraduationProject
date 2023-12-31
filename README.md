# Test Automation Solution for Feedback Poll Creation on a Web Page
Created by Tea Huovinen, Roosa Lattu ([@roosa-l](https://github.com/roosa-l)) and Natalia Timofeeva ([@nati12](https://github.com/nati12)) as a final project in AW Academy test automation program. 
Project was completed in two week period using previous projects as a foundation.

In this portfolio, all references to specific companies have been removed, and as a result, the tests will not function as intended.


## Contents:
1. General Overview
2. Files and Functions Overview
3. Demo
4. Logs

## 1. General Overview
Web page is a platform for collecting and creating feedback polls. It is possible to choose between three different types of polls.

Our team created this test automation solution using Robot Framework with our own custom library ***library.py***. Library is created by using Playwright with Python.

## 2. Files and Functions Overview
In our project we were testing different functionalities, e.g. creating a poll, deleting a poll, changing settings, sending a reminder, downloading PDF files and creating new questions for custom polls. For all the possible keywords please check the ***library.html*** documentation in the libs folder.

- All robot test files can be found in the folder "tests". In the same folder you can also find "Demo" folder with log files for all demo files and tests. Also, the - Windows batch file can be found in the same folder.
- Excel files for DataDriver can be found in the folder "data".
- Library, variables and library documentation files can be found in the "libs".
- In the "bin" folder you can find a robot file that can delete all the created polls.

Some addtional files:

### flake8
Flake8 is a static code analysis tool for Python files.
***setup.cfg*** includes following configurations for flake8:
- maximum line length is 100
- ignore F811 (redefinition of unused name from line N)

Flake8 can be installed with command `python -m pip install flake8`.

Flake8 can be run with command `flake8` when in target directory.

### robocop
Is testing for errors in robot files.
***config.txt*** file includes following RoboCop configuration:
- excludes warnings for: 
    - missing documentation in keyword (0201)
    - missing documentation in test case (0202)
    - test case has too few keywords (0528)
- creates a ***robocop.log*** log file

RoboCop with configuration file can be run by using command:
`robocop --argumentfile config.txt`

and installed by:
`pip install robotframework-robocop`

### Windows batch file
***run.bat*** runs demo tests and at the end creates a combined log file from all the tests in robot files.

Windows batch file you be run with command `run.bat`.

### DataDriver & Pabot, PyPDF2
In addition, we were using DataDriver extension for tests with multiple test cases, Pabot for running tests simultaneously and PyPDF2 to handle PDF files.

Installing DataDriver for excel:
`pip install --upgrade robotframework-datadriver[XLS]`.

More about DataDriver can be found at https://github.com/Snooz82/robotframework-datadriver.

Installing Pabot:
`pip install -U robotframework-pabot`

Installing PyPDF2:
`pip install PyPDF2`

More info about PyPDF2 at https://pypdf2.readthedocs.io/en/latest/

### Requirements
***requirements.txt*** contains necessary Python packages.

Packages in requirements file can be installed with:
 `pip install -r requirements.txt`
 
## 3. Demo
Demo was made for final project presentation in Academic Work Academy. 
We chose 18 test cases from our test automation solution to be included in the demo.
In our demo we are executing ***run.bat*** file.

## 4. Logs
Combined log of the demo, named ***Logs.html***, is created during run of ***run.bat*** file. It will be created in the "tests" folder.

A LibDoc generated documentation ***library.html*** of the library can be found in "libs" folder.
The command for creating a libdoc file:
`libdoc library.py library.html`
