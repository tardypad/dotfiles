# NeoMutt

Mail client

Source [Github](https://github.com/neomutt/neomutt)

Version [20170428](https://github.com/neomutt/neomutt/releases/tag/neomutt-20170428)

Manual setup steps:
- create encrypted credentials file for each account
```
set my_gmail_perso_email = "[email]"
set my_gmail_perso_password = "[password]"
```
`gpg -r [ID] -o ~/.mutt/account/gmail_perso.gpg -e gmail_perso`

Don't forget to remove the `gmail_perso` file and any vim backup/swap/undo files afterwards  
(would contain the credentials in clear text)
