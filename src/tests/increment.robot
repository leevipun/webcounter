*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
At start the counter is zero
    Go To  ${HOME_URL}
    Title Should Be  Laskuri
    Input Text  set_value  0
    Click Button  Aseta
    Page Should Contain  nappia painettu 0 kertaa

When button pressed three times then reset counter returns to zero
    Go To  ${HOME_URL}
    Click Button  Paina
    Click Button  Paina
    Click Button  Paina
    Page Should Contain  nappia painettu 3 kertaa
    Click Button  Nollaa
    Page Should Contain  nappia painettu 0 kertaa