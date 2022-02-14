# PDF-Page-Count-Inventory
A batch file to create PDFinfo.exe and use that file to create an inventory of all .PDF files and their page counts.

Files are named with 00 so it will sort to the top of the folder in Windows Explorer. 

Results are in "00numpages.txt" in the target directory.

|PdfFile|Pages |
|---|---|
|01 Normal.pdf | 1 |
|02 Encrypted Password.pdf|  *    |
03 Print Password.pdf | 1 |
04 Signed.pdf | 1 |    
05 Portfolio.pdf | 1** |

\* Note: Encrypted items will be listed but the page count will be blank. Items with passwords that only prevent printing or items that are digitially signed will work normally. 

\*\* Note: PDF Portfolios will be listed but the page count will only reflect the first document in the portfolio. 

---
## Install and Run Manually 
1. Copy [00-PDFPageCount-v3.bat](https://github.com/nicholasgcotton/PDF-Page-Count-Inventory/raw/main/00-PDFPageCount-v3.bat)  to your target directory with PDF files.
2. Run (double-click) 00-PDFPageCount-v3.bat
3. Read notices/instructions as app runs. Check for errors when completed.
4. Review new file 00numpages.txt for the results.
5. **Cleanup** Delete 00-PDFPageCount-v3.bat from your target directory.

## Install to Right-Click "Send-To" menu in Windows 10:
### Installation (Once)
1. Open Explorer and navigate to the user's "SendTo" folder
2. Paste "shell:sendto" into the URL/folder bar.
(This should take you to C:\Users\[YOUR LOGIN NAME]\AppData\Roaming\Microsoft\Windows\SendTo
3. Copy [00-PDFPageCount-v3.bat](https://github.com/nicholasgcotton/PDF-Page-Count-Inventory/raw/main/00-PDFPageCount-v3.bat) into the SendTo folder.
### Run from Shell->SendTo
5. Right click on any PDF and select SendTo->00-PDFPageCount.bat. 
6. Read notices/instructions as app runs. Check for errors when completed.
4. Review new file 00numpages.txt for the results.
7. This will create a 00numpages.txt for ALL PDF items in the same folder as the PDF you clicked on.
---

## Sources
- Inspiration: https://dmitrysotnikov.wordpress.com/2008/06/27/powershell-script-in-a-bat-file/
- Uses embedded PDFInfo v 4.3 from https://www.xpdfreader.com/ used under terms of GLP 3.

## License

Copyright [2020-2022] Nicholas Grant Cotton

Licensed under the GNU General Public License v3.0
