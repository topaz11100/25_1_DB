# run_sql_scripts.ps1

# 경로 설정
$dbPath = "univdb-sqlite.db"
$sqlFolder = "2020203090"

# SQL 파일 순차 실행
Get-ChildItem -Path $sqlFolder -Filter "2020203090_*.sql" | 
Sort-Object Name | 
ForEach-Object {
    Write-Host "`nRunning : $($_.Name)`n"
    Get-Content $_.FullName | sqlite3 $dbPath
}

# 창 닫히지 않게 대기
Write-Host "`nAll queries executed"
