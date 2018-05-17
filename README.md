# Sitecore Staging Database

Add the module:
``` JSON
"modules": {
  "value": {
    "items": [
      {
        "name": "staging-db",
        "templateLink": "addons/staging-db.json",
        "parameters": {
          "addWeb2MsDeployPackageUrl":  "https://aallweuaspsitsa01files.blob.core.windows.net/sitecore/Modules/Web2.scwdp.zip",
          "copyDatabase":  "false"
        }
      },
      {
        "name": "bootloader",
        "templateLink": "addons/bootloader.json",
        "parameters": {
          "msDeployPackageUrl": "<link to the Sitecore.Cloud.Integration.Bootload.wdp.zip>"
        }
      }
    ]
  }
}
```
