# Inventory and Page Count
A batch file embedded with [PDFInfo.exe](https://www.xpdfreader.com/) and with a PowerShell script that creates a CSV file inventory and calls PDFInfo to supply a page count for all PDF documents in the folder. Also with a -Recursive version that will create an inventory for the folder and all subfolders.

## Example Output (Non-Recursive)
Results are in "00-Inventory-and-Page-Count.csv" in the target directory. 
(Example assumes all files are in the same directory.)

|Attachment|Pages |Combined|
|---|---|----------------|
|01 Normal.pdf | 2 |01 Normal.pdf (2 pages)|
|02 Encrypted Password.pdf|      | 02 Encrypted Password.pdf (Error getting pages)|
|03 Print Password.pdf | 1 | 03 Print Password.pdf (1 page)|
|04 Signed.pdf | 1 | 04 Signed.pdf (1 page)|
|05 Portfolio.pdf | 1* | 05 Portfolio.pdf (1 page)|
|06 Excel.xls | | 06 Excel.xls (Error getting pages)|
|07 Image.jpg |  | 07 Image.jpg (Error getting pages)|

## Example Output (Recursive)
Results are in "00-Inventory-and-Page-Count-Recursive.csv" in the target directory. 
(Example assumes some files are in sub-directories.)

|Attachment|Pages |Combined|RelativePath|
|---|---|----------------|----------|
|01 Normal.pdf | 2 |01 Normal.pdf (2 pages)|01 Normal.pdf |
|02 Encrypted Password.pdf|      | 02 Encrypted Password.pdf (Error getting pages)|02 Encrypted Password.pdf|
|03 Print Password.pdf | 1 | 03 Print Password.pdf (1 page)|SubFolderA\\03 Print Password.pdf |
|04 Signed.pdf | 1 | 04 Signed.pdf (1 page)| Subfolder B\\04 Signed.pdf |
|05 Portfolio.pdf | 1* | 05 Portfolio.pdf (1 page)| Subfolder B\\05 Portfolio.pdf |
|06 Excel.xls | | 06 Excel.xls (Error getting pages)|Subfolder C\\06 Excel.xls |
|07 Image.jpg |  | 07 Image.jpg (Error getting pages)|Subfolder D\07 Image.jpg|

\* Note: PDF Portfolios will be listed but the page count will only reflect the first document in the portfolio. 

---
## Install and Run Manually 
1. Download [the desired batch file version(s)](https://github.com/nicholasgcotton/Inventory-and-Page-Count-CSV/releases) to your to your target directory.
2. Run (double-click) the batch file.
3. Read notices/instructions as app runs. Check for errors when completed.
4. **Cleanup** Delete the batch file from your target directory when you no longer need it.

## Install to Right-Click "Send-To" menu in Windows:
### Installation (Once)
1. Open Explorer and navigate to the user's "SendTo" folder by pasting "shell:sendto" into the URL/folder bar.
(This should take you to C:\Users\[YOUR LOGIN NAME]\AppData\Roaming\Microsoft\Windows\SendTo
2. Download [the desired batch file version(s)](https://github.com/nicholasgcotton/Inventory-and-Page-Count-CSV/releases) into the SendTo folder.

### Run from Shell->SendTo
1. Right click on any PDF and select SendTo-> and your desired batch file. 
2. Read notices/instructions as app runs. Check for errors when completed.
3. Review file 00-Inventory-and-Page-Count.csv for the results.
---

## Sources
- Inspiration: https://dmitrysotnikov.wordpress.com/2008/06/27/powershell-script-in-a-bat-file/
- Uses embedded PDFInfo v 4.3 from https://www.xpdfreader.com/ used under terms of GLP 3.

## License

Copyright [2020-2023] Nicholas Grant Cotton

Licensed under the GNU General Public License v3.0
