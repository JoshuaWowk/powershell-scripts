$urls = @(
    "https://centralusdtapp52.epicorsaas.com/SaaS5127/Apps/Erp/Home/#/home?company=161830&site=MfgSys",
    "https://centralusdtapp52.epicorsaas.com/SaaS5127/Apps/Erp/Home/#/view/SUSC1010/Ice.UI.UserAccountEntry?channelid=8eb54015-2356-4e8c-a331-6c3d4f5dc968&layerVersion=0&baseAppVersion=0&useBroadcast=1&company=161830&site=MfgSys",
    "https://centralusdtapp52.epicorsaas.com/SaaS5127/Apps/Erp/Home/#/view/DEMN2030/Erp.UI.EmpBasicEntry?channelid=d1a61b3c-b8ea-44a1-8bf2-7baea81298af&layerVersion=0&baseAppVersion=0&company=161830&site=MfgSys",
    "https://centralusdtapp52.epicorsaas.com/SaaS5127/Apps/Erp/Home/#/view/SUUT6000/Ice.UI.SecGroupEntry?channelid=f56650c0-3160-44ba-a056-2290b6c522c2&layerVersion=0&baseAppVersion=0&useBroadcast=1&company=161830&site=MfgSys"
)

$edgePath = "C:\Program Files (x86)\Microsoft\Edge Beta\Application\msedge.exe"

foreach ($url in $urls) {
    Start-Process -FilePath $edgePath -ArgumentList $url
}