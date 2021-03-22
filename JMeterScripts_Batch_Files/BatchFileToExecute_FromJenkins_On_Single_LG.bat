:: Setting the Path to Jmeter bin directory Starts
	set JmeterBinLocation=C:\Performance_Testing_Tools\apache-jmeter-5.4.1\apache-jmeter-5.4.1\bin
:: Setting the Path to Jmeter bin directory Ends

:: Setting the Path to Jmeter Script Starts
	set JmeterScriptLocation=C:\JMeter_Scripts
:: Setting the Path to Jmeter Script Ends

:: Setting the Path to Jmeter Test Result Starts
	set JmeterTestResultLocation=C:\JMeter_Scripts\Execution_Result
:: Setting the Path to Jmeter Test Result Starts

:: Code to Get Date and Time Value Starts
	set Date_And_TIme=JTLresult_%DATE:/=-%@%TIME::=-%
	set Date_And_TIme=%Date_And_TIme: =%
	set Date_And_TIme=%Date_And_TIme:,=.%.jtl
:: Code to Get Date and Time Value Ends

:: Setting the Path to Jmeter Dashboard Report Starts
	set JmeterDashboardReportsLocation=C:\JMeter_Scripts\Execution_Result\Dashboard_Report_From_%Date_And_TIme%
:: Setting the Path to Jmeter Dashboard Report Starts

:: JMeter Test Execution from Non-GUI mode (From CLI) Starts
	cd %JmeterBinLocation%
	:: jmeter -n -t %JmeterScriptLocation%\Two_TGs_Each_One_On_Specific_LG_Without_Listeners_S1.jmx -l %JmeterTestResultLocation%\CSV_TestRsult1.csv -e -o %JmeterDashboardReportsLocation% -R 10.1.20.4
	
	:: jmeter -n -t %JmeterScriptLocation%\Two_TGs_Each_One_On_Specific_LG_Without_Listeners_S1.jmx -l %JmeterTestResultLocation%\%Date_And_TIme% -e -o %JmeterDashboardReportsLocation% -R 10.1.20.4
	
	:: jmeter -n -t %JmeterScriptLocation%\Two_TGs_Each_One_On_Specific_LG_Without_Listeners_S1.jmx -l %JmeterTestResultLocation%\%Date_And_TIme% -e -o %JmeterDashboardReportsLocation% -R 10.1.20.7
	
	 jmeter -n -t %JmeterScriptLocation%\Two_TGs_Each_One_On_Specific_LG_Without_Listeners_S1.jmx -l %JmeterTestResultLocation%\%Date_And_TIme% -e -o %JmeterDashboardReportsLocation% -r
:: JMeter Test Execution from Non-GUI mode (From CLI) Ends