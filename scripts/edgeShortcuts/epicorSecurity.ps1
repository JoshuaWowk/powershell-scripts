$urls = @(
    "https://centralusdtapp52.epicorsaas.com/SaaS5127/Apps/Erp/Home/#/home?company=161830&site=MfgSys",
    "https://centralusdtapp52.epicorsaas.com/SaaS5127/Apps/Erp/Home/#/view/SUSC1010/Ice.UI.UserAccountEntry?channelid=9ece1c35-b51b-4dd5-b6c6-e8fcfeb62c08&layerVersion=0&baseAppVersion=0&company=161830&site=MfgSys",
    "https://centralusdtapp52.epicorsaas.com/SaaS5127/Apps/Erp/Home/#/view/ADMN2100/Ice.UI.MenuSecurityEntry?channelid=9f8edeef-5c09-4090-89f9-b0e7022a256b&layerVersion=0&baseAppVersion=0&company=161830&site=MfgSys",
    "https://centralusdtapp52.epicorsaas.com/SaaS5127/Apps/Erp/Home/#/view/SUUT6000/Ice.UI.SecGroupEntry?channelid=6f5413b5-f072-4010-b15b-d563d628050e&layerVersion=0&baseAppVersion=0&useBroadcast=1&company=161830&site=MfgSys",
    "https://centralusdtapp52.epicorsaas.com/SaaS5127/Apps/Erp/Home/#/view/SUMN6410/Erp.UI.MESMenuMaintEntry?channelid=23ac1fdd-7569-456f-ba56-407026e3c0eb&layerVersion=0&baseAppVersion=0&company=161830&site=MfgSys"
)

$edgePath = "C:\Program Files (x86)\Microsoft\Edge Beta\Application\msedge.exe"

foreach ($url in $urls) {
    Start-Process -FilePath $edgePath -ArgumentList $url
}