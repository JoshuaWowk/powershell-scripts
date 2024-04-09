$urls = @(
    "https://centralusdtapp52.epicorsaas.com/SaaS5127/Apps/Erp/Home/#/home?company=161830&site=MfgSys",
    "https://centralusdtapp52.epicorsaas.com/SaaS5127/Apps/Erp/Home/#/studio/baq/studio-core",
    "https://centralusdtapp52.epicorsaas.com/SaaS5127/Apps/resthelp/#/home"
)

$edgePath = "C:\Program Files (x86)\Microsoft\Edge Beta\Application\msedge.exe"

foreach ($url in $urls) {
    Start-Process -FilePath $edgePath -ArgumentList $url
}