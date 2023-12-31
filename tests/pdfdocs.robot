*** Settings ***
Documentation      This test suite tests access to customer guide PDF documents on the
...                website. Data for test cases is collected from a separate file using DataDriver.
...                For this fortfolio the excel file is emptied.
Library            ../libs/library.py
Library            DataDriver        file=../data/pdf_docs.xlsx
Variables          ../libs/variables.py
Suite Setup        Run Keywords
...                Open Browser    ${BROWSER}    AND
...                Open Page And Log In
Test Template      Download And Check PDF Document
Suite Teardown     Close Browser


*** Test Cases ***
Download PDF Document


*** Keywords ***
Download And Check PDF Document
    [Arguments]    ${doc_name}    ${text}    ${pages}
    Choose PDF Document        ${doc_name}
    Download And Check PDF     ${text}    ${pages}
    [Teardown]    Remove PDF
