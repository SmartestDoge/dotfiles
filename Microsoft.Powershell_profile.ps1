function Test-IsAdmin {

([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")

}

function prompt {
   if (!(Test-IsAdmin))
   {
      "$env:username@$([System.Net.Dns]::GetHostName()) $(Split-Path -leaf -path (Get-Location))$ "
   }
   else
   {
      "$env:username@$([System.Net.Dns]::GetHostName()) $(Split-Path -leaf -path (Get-Location))# "
   }
}