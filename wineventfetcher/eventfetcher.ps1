# TBD - Powershell Script that creates csv of events for all computers on a network.

get-eventlog -LogName "application" -after '2017-11-01' -EntryType "Error" | Select MachineName,EventID,Message  | Export-Csv -path "out.csv"
