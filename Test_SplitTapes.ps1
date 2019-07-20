$TapeLog = Import-CSV -Path "\\<NETWORK PATH>\TestFinal.csv"

New-Item "C:\temp\TestFolder\New folder\EOM.txt" -ItemType file
New-Item "C:\temp\TestFolder\New folder\EOY.txt" -ItemType file
New-Item "C:\temp\TestFolder\New folder\CD.txt" -ItemType file
New-Item "C:\temp\TestFolder\New folder\FsDbExch.txt" -ItemType file
New-Item "C:\temp\TestFolder\New folder\SavSys.txt" -ItemType file
New-Item "C:\temp\TestFolder\New folder\P8.txt" -ItemType file
New-Item "C:\temp\TestFolder\New folder\Misc.txt" -ItemType file

foreach($item in $TapeLog)
    {
        #*******FS, DB, EXCH************** #1
        $DT4a = "File"
        $DT4b = "Data"
        $DT4c = "Exg"
        $DT4d = "Exch"
        $DT4e = "DB"
        $DT4f = "WF"
        $DT4g = "WD-"
        $DT4h = "WE"
        $DT4i = "SEC"
        $DT4j = "NWKF"
        $DT4k = "NWKE"
        $DT4l = "Sec"
        $DT4m = "exchange"
        $DT4n = "Sec-Weekly//"
        $DT4o = "NWKS"
        #**********************************

        #*******YEAR END, YE, EOY************** #2
        $DT2a = "YE"
        $DT2b = "Year End"
        $DT2c = "EOY"
        $DT2d = "Year end"
        #**********************************

        #*******SAVSYS, FULL SYS SAVE************** #3
        $DT5a = "savsys"
        $DT5b = "sav_sys"
        $DT5c = "Full Sys"
        $DT5d = "nonsys"
        $DT5e = "sys sav"
        $DT5f = "Savsys//"
        $DT5g = "SAVSYS"
        $DT5h = "full system"
        $DT5i = "SYS SAV"
        $DT5j = "SavSys"
        $DT5k = "Full system"
        $DT5l = "SAYSYS"
        #**********************************

        #*******EOM & ARCHIVE************** #4
        $DT1a = "EOM"
        $DT1b = "Monthly"
        $DT1c = "Archive"
        $DT1d = "JRN"
        $DT1e = "Journal"
        $DT1f = "Month End"
        $DT1g = "REV"
        $DT1h = "FWD"
        $DT1i = "monthly"
        $DT1j = "ARCHIVE//"
        $DT1k = "JOURNAL"
        $DT1l = "Forward"
        $DT1m = "Reverse"
        $DT1n = "ARCHIVE"
        #**********************************

        #*******SPY, PROD, DEV, DR, BPCS************** #5
        $DT6a = "Spy"
        $DT6b = "PROD"
        $DT6c = "DEV"
        $DT6d = "DR"
        $DT6e = "BPCS"
        $DT6f = "SPY"
        $DT6g = "SPY//"
        #**********************************

        #*******CD, COMMERCE, UMB************** #6
        $DT3a = "V1"
        $DT3b = "cd"
        $DT3c = "Comm"
        $DT3d = "UMB"
        $DT3e = "2017v1"
        $DT3f = "V 1"
        $DT3g = "BigBlue"
        $DT3h = "Big Blue"
        $DT3i = "COMM"
        $DT3j = "v15"
        $DT3k = "CD"
        $DT3l = "comm"
        $DT3m = "v14"
        $DT3n = "v16"
        $DT3o = "v17"
        #**********************************

        #*******MISC*********************** #7
        
        #**********************************


        $this = $item.MediaSet

        #***********# ONE***DT4a-k***********************************************************************************************
        if($this.contains($DT4a) -or $this.contains($DT4b) -or $this.contains($DT4c) -or $this.contains($DT4d) -or $this.contains($DT4e) -or $this.contains($DT4f) -or $this.contains($DT4g) -or $this.contains($DT4h) -or $this.contains($DT4i) -or $this.contains($DT4j) -or $this.contains($DT4k) -or $this.contains($DT4l) -or $this.contains($DT4m) -or $this.contains($DT4n) -or $this.contains($DT4o))
        {
            $Data4 += "`n" + $item.VSBarcode + " | " + $item.VSStatusDate + " | " + $item.JBox + " | " + $item.JShipRecordedDate + " | " + $item.JReturnedDate + " | " + $item.JBoxName + " | " + $item.JMediaSet + " | "
 
        }

        #***********# TWO***DT2a-c***********************************************************************************************
        elseif($this.contains($DT2a) -or $this.contains($DT2b) -or $this.contains($DT2c) -or $this.contains($DT2d))
        {
            $Data2 += "`n" + $item.VSBarcode + " | " + $item.VSStatusDate + " | " + $item.JBox + " | " + $item.JShipRecordedDate + " | " + $item.JReturnedDate + " | " + $item.JBoxName + " | " + $item.JMediaSet + " | "
            
        }

        #***********# THREE**DT5a-e************************************************************************************************
        elseif($this.contains($DT5a) -or $this.contains($DT5b) -or $this.contains($DT5c) -or $this.contains($DT5d) -or $this.contains($DT5e) -or $this.contains($DT5f) -or $this.contains($DT5g) -or $this.contains($DT5h) -or $this.contains($DT5i) -or $this.contains($DT5j) -or $this.contains($DT5k) -or $this.contains($DT5l))
        {
            $Data5 += "`n" + $item.VSBarcode + " | " + $item.VSStatusDate + " | " + $item.JBox + " | " + $item.JShipRecordedDate + " | " + $item.JReturnedDate + " | " + $item.JBoxName + " | " + $item.JMediaSet + " | "
            
        }

        #***********# FOUR****DT1a-h**********************************************************************************************
        elseif($this.contains($DT1a) -or $this.contains($DT1b) -or $this.contains($DT1c) -or $this.contains($DT1d) -or $this.contains($DT1e) -or $this.contains($DT1f) -or $this.contains($DT1g) -or $this.contains($DT1h) -or $this.contains($DT1i) -or $this.contains($DT1j) -or $this.contains($DT1k) -or $this.contains($DT1l) -or $this.contains($DT1m) -or $this.contains($DT1n))
        {
            $Data1 += "`n" + $item.VSBarcode + " | " + $item.VSStatusDate + " | " + $item.JBox + " | " + $item.JShipRecordedDate + " | " + $item.JReturnedDate + " | " + $item.JBoxName + " | " + $item.JMediaSet + " | "
            
        }

        #***********# FIVE*****DT6a-e*********************************************************************************************
        elseif($this.contains($DT6a) -or $this.contains($DT6b) -or $this.contains($DT6c) -or $this.contains($DT6d) -or $this.contains($DT6e) -or $this.contains($DT6f) -or $this.contains($DT6g))
        {
            $Data6 += "`n" + $item.VSBarcode + " | " + $item.VSStatusDate + " | " + $item.JBox + " | " + $item.JShipRecordedDate + " | " + $item.JReturnedDate + " | " + $item.JBoxName + " | " + $item.JMediaSet + " | "
            
        }

        #************# SIX*****DT3a-g********************************************************************************************
        elseif($this.contains($DT3a) -or $this.contains($DT3b) -or $this.contains($DT3c) -or $this.contains($DT3d) -or $this.contains($DT3e) -or $this.contains($DT3f) -or $this.contains($DT3g)  -or $this.contains($DT3h) -or $this.contains($DT3i) -or $this.contains($DT3j) -or $this.contains($DT3k) -or $this.contains($DT3l) -or $this.contains($DT3m) -or $this.contains($DT3n) -or $this.contains($DT3o))
        {
            $Data3 += "`n" + $item.VSBarcode + " | " + $item.VSStatusDate + " | " + $item.JBox + " | " + $item.JShipRecordedDate + " | " + $item.JReturnedDate + " | " + $item.JBoxName + " | " + $item.JMediaSet + " | "
            
        }

        #*************# SEVEN**NO DT - MISC/REMAINING ITEMS**********************************************************************************************
        else
        {
            $Data7 += "`n" + $item.VSBarcode + " | " + $item.VSStatusDate + " | " + $item.JBox + " | " + $item.JShipRecordedDate + " | " + $item.JReturnedDate + " | " + $item.JBoxName + " | " + $item.JMediaSet + " | "
        }
    }

$Data1 | out-file "C:\temp\TestFolder\New folder\EOM.txt"
$Data2 | out-file "C:\temp\TestFolder\New folder\EOY.txt"
$Data3 | out-file "C:\temp\TestFolder\New folder\CD.txt"
$Data4 | out-file "C:\temp\TestFolder\New folder\FsDbExch.txt"
$Data5 | out-file "C:\temp\TestFolder\New folder\SavSys.txt"
$Data6 | out-file "C:\temp\TestFolder\New folder\P8.txt"
$Data7 | out-file "C:\temp\TestFolder\New folder\Misc.txt"