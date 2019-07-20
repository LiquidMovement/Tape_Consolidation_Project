$VSTape = Import-CSV -Path "\\<NETWORK PATH>\TAPES in STorage.csv"
$TapeLog = Import-CSV -Path "\\<NETWORK PATH>\BackUpXL.csv"

foreach($barCode in $VStape)
{
    foreach($item in $TapeLog)
    {
        if($barCode.Barcode -eq $item.BoxName)
        {
            $test = $null
            if([string]::IsNullOrEmpty($item.ReturnDate))
            {
                $Data += $barcode.Barcode + "| " + $barcode.StatusDate + "| " + $item.BoxName + "| " + $item.ShipRecordedDate + "| " + $item.ReturnDate + "| " + $item.BoxNumber + "| " + $item.MediaSet + "//  `n"
            }
        }
    }
}

$Data | out-file "C:\temp\TestFolder\BackUpXL.txt"

#**************************************************************************************************************************************************

$VSTape2 = Import-CSV -Path "\\<NETWORK PATH>\TAPES in STorage.csv"
$TapeLog2 = Import-CSV -Path "\\<NETWORK PATH>\CopyNetworkTapeLog1.csv"

foreach($barCode2 in $VStape2)
{
    foreach($item2 in $TapeLog2)
    {
        if($barCode2.Barcode -eq $item2.BoxName)
        {
            $test = $null
            if([string]::IsNullOrEmpty($item2.ReturnDate))
            {
                $Data2 += $barcode2.Barcode + "| " + $barcode2.StatusDate + "| " + $item2.BoxName + "| " + $item2.ShipRecordedDate + "| " + $item2.ReturnDate + "| " + $item2.BoxNumber + "| " + $item2.MediaSet + "//  `n"
            }
        }
    }
}

$Data2 | out-file "C:\temp\TestFolder\CopyNetworkTapeLog1.txt"

#**************************************************************************************************************************************************

$VSTape3 = Import-CSV -Path "\\<NETWORK PATH>\VS TAPES in STorage.csv"
$TapeLog3 = Import-CSV -Path "\\<NETWORK PATH>\AS400Historical.csv"

foreach($barCode3 in $VStape3)
{
    foreach($item3 in $TapeLog3)
    {
        if($barCode3.Barcode -eq $item3.BoxName)
        {
            $test = $null
            if([string]::IsNullOrEmpty($item3.ReturnDate))
            {
                $Data3 += $barcode3.Barcode + "| " + $barcode3.StatusDate + "| " + $item3.BoxName + "| " + $item3.ShipRecordedDate + "| " + $item3.ReturnDate + "| " + $item3.BoxNumber + "| " + $item3.MediaSet + "//  `n"
            }
        }
    }
}

$Data3 | out-file "C:\temp\TestFolder\AS400Historical.txt"

#**************************************************************************************************************************************************

$VSTape4 = Import-CSV -Path "\\<NETWORK PATH>\TAPES in STorage.csv"
$TapeLog4 = Import-CSV -Path "\\<NETWORK PATH>\OldNetwork_AS400TapeLog.csv"

foreach($barCode4 in $VStape4)
{
    foreach($item4 in $TapeLog4)
    {
        if($barCode4.Barcode -eq $item4.BoxName)
        {
            $test = $null
            if([string]::IsNullOrEmpty($item4.ReturnDate))
            {
                $Data4 += $barcode4.Barcode + "| " + $barcode4.StatusDate + "| " + $item4.BoxName + "| " + $item4.ShipRecordedDate + "| " + $item4.ReturnDate + "| " + $item4.BoxNumber + "| " + $item4.MediaSet + "//  `n"
            }
        }
    }
}

$Data4 | out-file "C:\temp\TestFolder\OldNetwork_AS400TapeLog.txt"

#**************************************************************************************************************************************************

$VSTape5 = Import-CSV -Path "\\<NETWORK PATH>\TAPES in STorage.csv"
$TapeLog5 = Import-CSV -Path "\\<NETWORK PATH>\OldNetworkTapeLog1.csv"

foreach($barCode5 in $VStape5)
{
    foreach($item5 in $TapeLog5)
    {
        if($barCode5.Barcode -eq $item5.BoxName)
        {
            $test = $null
            if([string]::IsNullOrEmpty($item5.ReturnDate))
            {
                $Data5 += $barcode5.Barcode + "| " + $barcode5.StatusDate + "| " + $item5.BoxName + "| " + $item5.ShipRecordedDate + "| " + $item5.ReturnDate + "| " + $item5.BoxNumber + "| " + $item5.MediaSet + "//  `n"
            }
        }
    }
}

$Data5 | out-file "C:\temp\TestFolder\OldNetworkTapeLog1.txt"

#**************************************************************************************************************************************************

$VSTape6 = Import-CSV -Path "\\<NETWORK PATH>\VS TAPES in STorage.csv"
$TapeLog6 = Import-CSV -Path "\\<NETWORK PATH>\CurrentAS400TapeLog.csv"

foreach($barCode6 in $VStape6)
{
    foreach($item6 in $TapeLog6)
    {
        if($barCode6.Barcode -eq $item6.BoxName)
        {
            $test = $null
            if([string]::IsNullOrEmpty($item6.ReturnDate))
            {
                $Data6 += $barcode6.Barcode + "| " + $barcode6.StatusDate + "| " + $item6.BoxName + "| " + $item6.ShipRecordedDate + "| " + $item6.ReturnDate + "| " + $item6.BoxNumber + "| " + $item6.MediaSet + "//  `n"
            }
        }
    }
}

$Data6 | out-file "C:\temp\TestFolder\CurrentAS400TapeLog.txt"

#**************************************************************************************************************************************************

$VSTape7 = Import-CSV -Path "\\<NETWORK PATH>\TAPES in STorage.csv"
$TapeLog7 = Import-CSV -Path "\\<NETWORK PATH>\CurrentNetworkTapeLog.csv"

foreach($barCode7 in $VStape7)
{
    foreach($item7 in $TapeLog7)
    {
        if($barCode7.Barcode -eq $item7.BoxName)
        {
            $test = $null
            if([string]::IsNullOrEmpty($item7.ReturnDate))
            {
                $Data7 += $barcode7.Barcode + "| " + $barcode7.StatusDate + "| " + $item7.BoxName + "| " + $item7.ShipRecordedDate + "| " + $item7.ReturnDate + "| " + $item7.BoxNumber + "| " + $item7.MediaSet + "//  `n"
            }
        }
    }
}

$Data7 | out-file "C:\temp\TestFolder\CurrentNetworkTapeLog.txt"