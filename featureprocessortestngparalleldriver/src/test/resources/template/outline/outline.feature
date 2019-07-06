Feature: Orders

  Scenario Outline: 
    And Do '<this>' when '<that>' and '<then>'

    Examples: 
      | Data: | src/test/resources/data/excel/exceltwo.xlsx | Sheet1 | A1:C4 |

  Scenario Outline: 
    And Do '<this>' when '<that>' and '<then>'

    Examples: 
      | Data: | src/test/resources/data/json/jsontwo.json | data3 |

  Scenario Outline: 
    And Do '<this>' when '<that>' and '<then>'

    Examples: 
      | Data: | src/test/resources/data/text/textthree.txt | % |
      
  Scenario Outline: Tools
    Given Go to google page
    When Enter search "<keyword>"
    
    Examples:
      | Data: | src/test/resources/data/excel/web.xlsx | Sheet1 | A1:A3 |

  Scenario Outline: IDE
    Given Go to google page
    When Enter search "<keyword>"
    
    Examples:
      | Data: | src/test/resources/data/json/web.json | data |
      
  Scenario Outline: Testing
    Given Go to google page
    When Enter search "<keyword>"
    
    Examples:    
      | Data: | src/test/resources/data/text/web.txt | , |  