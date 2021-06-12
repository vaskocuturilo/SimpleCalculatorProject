# The Simple Calculator project with automation scripts.

## Test scenario:
- Create simple application calculator.
- Create simple unit automation scripts for application.
- Create simple UI automation scripts for application. 
- Generate report for automation scripts. 
    
## Requirements:
- Use any *object-oriented language* (Objective-C or Swift).
- Use automation patterns like *PageObject*, *data-driven* tests, etc.
- Generate report (Allure)
- Use any testing frameworks (XCTest). 
- provide code and clear instructions how to run it.

**Note**: please put your code in public repository.

**Note**: Please send link to this repo when you are done.


You will need the following technologies available to try it out:
* Git
* XCTest
* Swift 5
* Xcode 
* Web browser Chrome
* MVP
* Expression
* StackViews
* 
### Ho w to run

```xcodebuild test -workspace SimpleCalculator.xcworkspace -scheme SimpleCalculator -destination 'platform=iOS Simulator,name=iPhone 8,OS=14.0' -resultBundlePath TestResults```

# xcresults
A command line tool to extract test summaries & screenshots from Xcode 11 XCResult files.

# Installation
Download latest version from github releases:

wget https://github.com/eroshenkoam/xcresults/releases/latest/download/xcresults

# And make it executable:

chmod +x xcresults

### Generate Allure report 

```./xcresults export TestResults.xcresult/ outputDirectory```

### Open Allure report in browser

```allure serve outputDirectory/```


![](https://c.radikal.ru/c08/2106/22/053d4fa9cd71.png) 

![](https://d.radikal.ru/d07/2106/8a/624c8c45f39a.png) 

![](https://c.radikal.ru/c18/2106/f2/3f5febc69fde.png) 
