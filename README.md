# Inventory and Page Count
A batch file to create PDFinfo.exe and use that file to create an inventory of files, and to add a page count for all .PDF files.

Files are named with 00 so it will sort to the top of the folder in Windows Explorer. 

Results are in "00-Inventory-and-Page-Count.csv" in the target directory.

|Attachment|Pages |Combined|
|---|---|----------------|
|01 Normal.pdf | 2 |01 Normal.pdf (2 pages)|
|02 Encrypted Password.pdf|      | 02 Encrypted Password.pdf (Error getting pages)|
03 Print Password.pdf | 1 | 03 Print Password.pdf (1 page)|
04 Signed.pdf | 1 | 04 Signed.pdf (1 page)|
05 Portfolio.pdf | 1* | 05 Portfolio.pdf (1 page)|
07 Excel.xls | | 07 Excel.xls (Error getting pages)|
08 Image.jpg |  | 08 Image.jpg (Error getting pages)|
 

\* Note: PDF Portfolios will be listed but the page count will only reflect the first document in the portfolio. 

---
## Install and Run Manually 
1. Download the batch file from [00-Inventory-and-Page-Count.bat]https://github.com/nicholasgcotton/Inventory-and-Page-Count-CSV/releases) to your to your target directory files.
2. Run (double-click) 00-Inventory-and-Page-Count.bat
3. Read notices/instructions as app runs. Check for errors when completed.
4. Review new file 00-Inventory-and-Page-Count.csv for the results.
5. **Cleanup** Delete 00-Inventory-and-Page-Count.bat from your target directory.

## Install to Right-Click "Send-To" menu in Windows:
### Installation (Once)
1. Open Explorer and navigate to the user's "SendTo" folder by pasting "shell:sendto" into the URL/folder bar.
(This should take you to C:\Users\[YOUR LOGIN NAME]\AppData\Roaming\Microsoft\Windows\SendTo
2. Download [00-Inventory-and-Page-Count.bat](https://github.com/nicholasgcotton/Inventory-and-Page-Count-CSV/releases) into the SendTo folder.
### Run from Shell->SendTo
3. Right click on any PDF and select SendTo->00-PDFPageCount-v4.bat. 
4. Read notices/instructions as app runs. Check for errors when completed.
5. Review  file 00-Inventory-and-Page-Count.csv for the results.
---

## Sources
- Inspiration: https://dmitrysotnikov.wordpress.com/2008/06/27/powershell-script-in-a-bat-file/
- Uses embedded PDFInfo v 4.3 from https://www.xpdfreader.com/ used under terms of GLP 3.

## License

Copyright [2020-2022] Nicholas Grant Cotton

Licensed under the GNU General Public License v3.0
