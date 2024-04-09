$urls = @(
    "https://centralusdtapp52.epicorsaas.com/SaaS5127/Apps/Erp/Home/#/home?company=161830&site=MfgSys",
    "https://centralusdtapp52.epicorsaas.com/SaaS5127/Apps/Erp/Home/#/view/SUUT7002/Ice.UI.MenuSecurityEntry?channelid=d022ab2e-a0bb-4f05-936c-9515271c0682&layerVersion=0&baseAppVersion=0&useBroadcast=1&company=161830&site=MfgSys",
    "https://centralusdtapp52.epicorsaas.com/SaaS5127/Apps/Erp/Home/#/view/SUMT2000/Ice.UI.MenuMEntry?channelid=b66b3cdb-d79b-466d-8d2f-9f0383e1f29e&layerVersion=0&baseAppVersion=0&useBroadcast=1&company=161830&site=MfgSys",
    "https://centralusdtapp52.epicorsaas.com/SaaS5127/Apps/Erp/Home/#/view/SUMN6410/Erp.UI.MESMenuMaintEntry?channelid=541af3b9-50a3-44ae-8143-bb7089991461&layerVersion=0&baseAppVersion=0&useBroadcast=1&company=161830&site=MfgSys"
)

$edgePath = "C:\Program Files (x86)\Microsoft\Edge Beta\Application\msedge.exe"

foreach ($url in $urls) {
    Start-Process -FilePath $edgePath -ArgumentList $url
}