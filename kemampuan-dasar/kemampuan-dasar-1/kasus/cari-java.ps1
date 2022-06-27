$cariJava=Get-Childitem -Path $Path -Include *.java -Recurse -Force

if($cariJava) {
	Write-Host "Ada file Java pada direktori($cariJava)"
}
else{
	Write-Host "Tidak ada file Java"
}

