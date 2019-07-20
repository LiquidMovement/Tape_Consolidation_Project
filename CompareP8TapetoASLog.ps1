$MyLog = Import-CSV -Path "\\<NETWORK PATH>\Tape Audit Sheets\Final Split\CSVs\P8.csv"
$AS400Log = Import-CSV -Path "\\<NETWORK PATH>\ProdDev.csv"

New-Item "C:\temp\TestFolder\New folder\CompareP8.txt" -ItemType File

foreach($barCode in $MyLog)
{
    $thisBar = $barcode.VSBarcode
    foreach($item in $AS400Log)
    {
        $thisItem = $item.BoxNumber
        if($thisBar.contains($thisItem))
        {
            $Data += $barcode.VSBarcode + " | " + $barcode.VSStatusDate + " | " + $barcode.JShipRecordedDate + " | " + $item.BoxNumber + " | " + $item.ShipRecordedDate + " | " + $item.ReturnDate + " | " + $item.BoxName + " |  `n"
        }
    }
}

$Data | out-file "C:\temp\TestFolder\New folder\CompareP8.txt"