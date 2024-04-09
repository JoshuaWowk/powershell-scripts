$urls = @(
    "https://centralusdtapp52.epicorsaas.com/SaaS5127/Apps/Erp/Home/#/home?company=161830&site=MfgSys",
    "https://centralusdtapp52.epicorsaas.com/SaaS5127/Apps/Erp/Home/#/view/SUSC1010/Ice.UI.UserAccountEntry?channelid=9ece1c35-b51b-4dd5-b6c6-e8fcfeb62c08&layerVersion=0&baseAppVersion=0&company=161830&site=MfgSys&pageId=UserAccountForm"
)

$edgePath = "C:\Program Files (x86)\Microsoft\Edge Beta\Application\msedge.exe"

foreach ($url in $urls) {
    Start-Process -FilePath $edgePath -ArgumentList $url
}