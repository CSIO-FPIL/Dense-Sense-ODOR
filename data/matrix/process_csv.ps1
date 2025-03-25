# Create the Results_pruned directory if it doesn't exist
if (-Not (Test-Path -Path "./Results_pruned")) {
    New-Item -Path "./Results_pruned" -ItemType Directory
}

# Loop through each CSV file except those with "pruned" in the name
Get-ChildItem -Filter "*.csv" | Where-Object { $_.Name -notlike "*pruned*" } | ForEach-Object {
    $file = $_.FullName
    
    # Get the number of lines in the file minus 3
    $totalLines = (Get-Content $file).Count - 3
    
    # Get the last $totalLines lines and exclude any lines containing 'H'
    $lines = Get-Content $file | Select-Object -Skip 1 -First $totalLines | Where-Object { $_ -notmatch "H" }
    
    # Count the lines that are left after filtering 'H'
    $filteredLineCount = $lines.Count

    # Output the first $filteredLineCount fields of each line
    $prunedContent = $lines | ForEach-Object {
        $fields = $_ -split "\s+"  # Split by whitespace
        $fields[0..($filteredLineCount - 1)] -join " "
    }

    # Write the pruned content to a new .pruned.csv file
    $prunedFile = "$file.pruned.csv"
    $prunedContent | Set-Content -Path $prunedFile

    # Move the pruned file to the Results_pruned folder
    Move-Item -Path $prunedFile -Destination "./Results_pruned"
}
