$path = "D:\BussinessAPI"
If(!(test-path -PathType container $path))
{
      import-module WebAdministration
      New-Item -ItemType Directory -Path $path
      Start-IISCommitDelay
      $TestSite = New-IISSite -Name BussinessAPI -BindingInformation "*:8121:" -PhysicalPath "D:\BussinessAPI" -Passthru
      $TestSite.Applications["/"].ApplicationPoolName = "DefaultAppPool"
      Stop-IISCommitDelay
}
