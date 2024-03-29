Feature: Orders

  Scenario: 
    And Process given datatable
      | Data: | src/test/resources/data/excel/excelone.xlsx | Sheet2 | E8:F9 |

  Scenario: 
    And Process given datatable
      | Data: | src/test/resources/data/excel/excelone.xlsx | Sheet1 | A1:C2 | retriever.excel.ExcelTransposeDataRetriever |

  Scenario: 
    And Process given datatable
      | Data: | src/test/resources/data/json/jsontwo.json | data2 |

  Scenario: 
    And Process given datatable
      | Data: | src/test/resources/data/json/jsonone.json | data1 | retriever.json.JsonExplodedDataRetriever |

  Scenario: 
    And Process given datatable
      | Data: | src/test/resources/data/text/textone.txt | , |

  Scenario: 
    And Process given datatable
      | Data: | src/test/resources/data/text/texttwo.txt |  |

  Scenario: 
    And Process given datatable
      | Data: | src/test/resources/data/text/texttwo.txt ||

#UNCOMMENT below 2 scenarios for data in Java file
  #Scenario: 
  #  And Process given datatable
  #    | Data: | progdata.ProgramSimpleDataRetriever.java | getTableData |

  #Scenario: 
  #  And Process given datatable
  #    | Data: | progdata.ProgramArgumentsDataRetriever.java | getChangedTableData | Before | After |
  
    Scenario: 
    And Process given datatable
      | Data: | src/test/resources/data/excel/web.xlsx | Sheet2 | A1:B3 |
      
        Scenario: 
    And Process given datatable
      | Data: | src/test/resources/data/json/web.json | data2 |
      
        Scenario: 
    And Process given datatable
      | Data: | src/test/resources/data/text/web2.txt | , |
      
      