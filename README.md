# PDF-Page-Count-Inventory
A batch file to create PDFinfo.exe and use that file to create an inventory of all .PDF files and their page counts.

Files are named with 00 so it will sort to the top of the folder in Windows Explorer. 

Results are in "00PDF_PAGE_COUNT.csv" in the target directory.

|Attachment|Pages |Combined|
|---|---|----------------|
|01 Normal.pdf | 2 |01 Normal.pdf (2 pages)|
|02 Encrypted Password.pdf|      | 02 Encrypted Password.pdf (Error getting pages)|
03 Print Password.pdf | 1 | 03 Print Password.pdf (1 page)|
04 Signed.pdf | 1 | 04 Signed.pdf (1 page)|
05 Portfolio.pdf | 1* | 05 Portfolio.pdf (1 page)|
 

\* Note: PDF Portfolios will be listed but the page count will only reflect the first document in the portfolio. 

---
## Install and Run Manually 
1. Copy [00-PDFPageCount-v4.bat](https://github.com/nicholasgcotton/PDF-Page-Count-Inventory/releases/download/v4/00-PDFPageCount-v4.bat)  to your target directory with PDF files.
2. Run (double-click) 00-PDFPageCount-v4.bat
3. Read notices/instructions as app runs. Check for errors when completed.
4. Review new file 00numpages.txt for the results.
5. **Cleanup** Delete 00-PDFPageCount-v3.bat from your target directory.

## Install to Right-Click "Send-To" menu in Windows 10:
### Installation (Once)
1. Open Explorer and navigate to the user's "SendTo" folder
2. Paste "shell:sendto" into the URL/folder bar.
(This should take you to C:\Users\[YOUR LOGIN NAME]\AppData\Roaming\Microsoft\Windows\SendTo
3. Copy [00-PDFPageCount-v4.bat](https://github.com/nicholasgcotton/PDF-Page-Count-Inventory/releases/download/v4/00-PDFPageCount-v4.bat) into the SendTo folder.
### Run from Shell->SendTo
5. Right click on any PDF and select SendTo->00-PDFPageCount-v4.bat. 
6. Read notices/instructions as app runs. Check for errors when completed.
4. Review new file 00PDF_PAGE_COUNT.csv for the results.
---

## Sources
- Inspiration: https://dmitrysotnikov.wordpress.com/2008/06/27/powershell-script-in-a-bat-file/
- Uses embedded PDFInfo v 4.3 from https://www.xpdfreader.com/ used under terms of GLP 3.

## License

Copyright [2020-2022] Nicholas Grant Cotton

Licensed under the GNU General Public License v3.0
