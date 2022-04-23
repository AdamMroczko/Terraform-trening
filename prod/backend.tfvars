
# backend - prod

resource_group_name  = "tfstate"
storage_account_name = "storagetfadamprod" # Storage for PROD TF file
container_name       = "container-prod"
key                  = "key1"
sas_token            = "sp=racwdli&st=2022-04-21T12:47:01Z&se=2023-04-21T20:47:01Z&spr=https&sv=2020-08-04&sr=c&sig=ksPR6m3gjgPKV%2BfpJahFAl77mj1mvvZ5EmO8tUs2QqM%3D"
