.::::::::AES Key Finder 1.8::::::::.

By downloading and using this tool you agree that this tool is for research purposes only and that I (GHFear) am not responsible for what (you) the end user does with it.

Step 1.

Drop your games largest executable (usually called "Gamename"-Shipping.exe) into this 
folder.

------------------------------------------------------------------------------------------
Step 2.
Find 256-bit UE4 AES Key.bat:

This batch file will run a series of scripts through QuickBMS and find any Unreal Engine 4.19 -> 4.25 format,
256-bit AES Keys.

------------------------------------------------------------------------------------------
Optional.
Convert key.txt to base64.bat:

Open key.txt with a hexeditor and copy the key without "0x" into it.
Run this batch tool to convert it to a usable key for Unreal Engine 4.

------------------------------------------------------------------------------------------
Optional. (not yet included)
Test APLIB + Find Keys.bat:

This batch file will scan your PE executables for their contained data and extract them
to separate files, then check them all for APLIB compression and try to decompress the file.
Lastly it will scan the decompressed dumps for any keys.

------------------------------------------------------------------------------------------



/GHFear