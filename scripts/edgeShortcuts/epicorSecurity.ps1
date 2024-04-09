$urls = @(
    "https://centralusdtapp52.epicorsaas.com/SaaS5127/Apps/Erp/Home/#/home?company=161830&site=MfgSys",
    "https://centralusdtapp52.epicorsaas.com/SaaS5127/Apps/Erp/Home/#/view/SUSC1010/Ice.UI.UserAccountEntry?channelid=9ece1c35-b51b-4dd5-b6c6-e8fcfeb62c08&layerVersion=0&baseAppVersion=0&company=161830&site=MfgSys",
    "https://centralusdtapp52.epicorsaas.com/SaaS5127/Apps/Erp/Home/#/view/ADMN2100/Ice.UI.MenuSecurityEntry?channelid=9f8edeef-5c09-4090-89f9-b0e7022a256b&layerVersion=0&baseAppVersion=0&company=161830&site=MfgSys",
    "https://centralusdtapp52.epicorsaas.com/SaaS5127/Apps/Erp/Home/#/view/ADMN2200/Ice.UI.MenuMEntry?channelid=69f64064-480a-4cc7-b622-580d5e9242cf&layerVersion=0&baseAppVersion=0&company=161830&site=MfgSys"
)

$edgePath = "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"

foreach ($url in $urls) {
    Start-Process -FilePath $edgePath -ArgumentList $url
}