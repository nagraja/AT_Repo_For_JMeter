:: Setting the Path to Jmeter bin directory Starts
	set Jmeter_Bin_Location=C:\Performance_Testing_Tools\apache-jmeter-5.4.1\apache-jmeter-5.4.1\bin
:: Setting the Path to Jmeter bin directory Ends

:: Setting the Path to Jmeter Script Starts
	set Jmeter_Script_Location=C:\JMeter_POC_Project\JMeter_Scripts
:: Setting the Path to Jmeter Script Ends

:: Setting the Path to Jmeter Test Result Starts
	set JMeter_TestResult_Location=C:\JMeter_POC_Project\JMeterScripts_Execution_Results
:: Setting the Path to Jmeter Test Result Starts

:: Code to Get Date and Time Value Starts
	set JTL_Report_Name=JTLresult_%DATE:/=-%@%TIME::=-%
	set JTL_Report_Name=%JTL_Report_Name: =%
	set JTL_Report_Name=%JTL_Report_Name:,=.%.jtl
:: Code to Get Date and Time Value Ends

:: Setting the Path to Jmeter Dashboard Report Starts
	set JMeter_Test_Name=Two_TGs_Each_One_On_Specific_LG_Without_Listeners_S1.jmx
:: Setting the Path to Jmeter Dashboard Report Starts

:: Setting the Path to Jmeter Dashboard Report Starts
	set JMeter_DashboardReport_Location=%JMeter_TestResult_Location%\Dashboard_Report_From_%JTL_Report_Name%
:: Setting the Path to Jmeter Dashboard Report Starts

:: JMeter Test Execution from Non-GUI mode (From CLI) Starts
	Set LG_V=%1

	echo load generator value is: %LG_V%

	if "%LG_V%"=="All" (cd %Jmeter_Bin_Location%
	jmeter -n -t %Jmeter_Script_Location%\%JMeter_Test_Name% -l %JMeter_TestResult_Location%\%JTL_Report_Name% -e -o %JMeter_DashboardReport_Location% -r)

	if "%LG_V%"=="10.1.20.4" (cd %Jmeter_Bin_Location%
	jmeter -n -t %Jmeter_Script_Location%\%JMeter_Test_Name% -l %JMeter_TestResult_Location%\%JTL_Report_Name% -e -o %JMeter_DashboardReport_Location% -R %LG_V%)

	if "%LG_V%"=="10.1.20.7" (cd %Jmeter_Bin_Location%
	jmeter -n -t %Jmeter_Script_Location%\%JMeter_Test_Name% -l %JMeter_TestResult_Location%\%JTL_Report_Name% -e -o %JMeter_DashboardReport_Location% -R %LG_V%)
:: JMeter Test Execution from Non-GUI mode (From CLI) Ends