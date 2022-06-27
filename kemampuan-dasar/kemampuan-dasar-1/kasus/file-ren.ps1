function search {

$cariJava=Get-Childitem -Path $Path -Include *.java -Recurse -Force

if($cariJava) {
	Write-Host "Ada file Java pada direktori($cariJava)"
}
else{
	Write-Host "Tidak ada file Java"
}

}

function choose {
?
{

function rename {
Rename-Item $directory?
}



