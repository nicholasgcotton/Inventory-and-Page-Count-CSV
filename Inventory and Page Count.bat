;;;===,,,@echo off
;;;===,,,REM WARNING!!! If this file is longer then 21 lines it includes compiled code and CAN NOT be edited!!
;;;===,,,REM If you want to edit/modify this program contact Cpl Nicholas COTTON for raw code.
;;;===,,,REM Based on sample code from: 
;;;===,,,REM https://stackoverflow.com/questions/34623847/embed-a-exe-file-into-a-bat-file-and-auto-copy-to-a-desired-location
;;;===,,,REM https://dmitrysotnikov.wordpress.com/2008/06/27/powershell-script-in-a-bat-file/
;;;===,,,REM Uses embedded PDFInfo v 4.3 from https://www.xpdfreader.com/
;;;===,,,REM Compiled via "copy /a 00-PDFPageCount-v4-Code.txt + /b 00pdfinfo.exe /b 00-PDFPageCount-v4.bat"
;;;===,,,REM Reminder, last line of this file must be blank for the above to work successfully. 
;;;===,,,echo PDF Page Count Script V4 - By Cpl Nicholas COTTON. nicholas.cotton@rcmp-grc.gc.ca
;;;===,,,echo This app will print a list of PDFs and their page count to "00-Inventory-and-Page-Count.csv"
;;;===,,,echo Warning! This will not work for password encrypted PDFs. An error will be displayed.
;;;===,,,echo Warning! This app will only print the page count for the first document in a portfolio.
;;;===,,,C:\Windows\System32\findstr.exe /v "^;;;===,,," "%~f0" > 00pdfinfo-extracted.exe
;;;===,,,powershell -Command "$INVOBJ = foreach($File in (Get-ChildItem -Path $Folder )){$Pages = (.\00pdfinfo-extracted $File.FullName | Select-String -Pattern '(?<=Pages:\s*)\d+').Matches.Value; $Total += $Pages; [PSCustomObject]@{Attachments = $File.Name; Pages = $Pages; Combined = '=CONCATENATE(OFFSET(INDIRECT(ADDRESS(ROW(),COLUMN())),0,-2),\" (\",OFFSET(INDIRECT(ADDRESS(ROW(),COLUMN())),0,-1),IF(OFFSET(INDIRECT(ADDRESS(ROW(),COLUMN())),0,-1)=0,\"Error getting \",\"\"),(IF(OFFSET(INDIRECT(ADDRESS(ROW(),COLUMN())),0,-1)=1,\" page\",\" pages\")),\")\")'}};$INVOBJ | Export-Csv -NoTypeInformation -Path 00-Inventory-and-Page-Count.csv"
;;;===,,,del 00pdfinfo-extracted.exe
;;;===,,,echo Review errors for non-PDF items or encrypted PDFs.
;;;===,,,echo Otherwise the program has completed successfully.
;;;===,,,pause
;;;===,,,exit /b