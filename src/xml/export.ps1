Get-ScheduledTask | ForEach-Object {
  if ($_.TaskPath -like '*NodeTasks*') {
    Export-ScheduledTask -TaskName $_.TaskName -TaskPath $_.TaskPath |
    Out-File (Join-Path ".\" "$($_.TaskName).xml")
  }
}