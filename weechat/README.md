# Weechat

Chat client

Source [Github](https://github.com/weechat/weechat)

Version [2.0.1](https://github.com/weechat/weechat/releases/tag/v2.0.1)

## Extras

Manual setup steps:
- set passphrase for secure storage `/secure passphrase [passphrase]`
- set slack group token `/secure set slack_token [slack token]`

To join multiple teams (here 2), the last command should be:
- set slack group token `/secure set slack_token [slack token team 1],[slack token team 2]`

## Plugins

| Name                | Purpose                          | Source                                                             | Version                                                                                                  |
|---------------------|----------------------------------|--------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------|
| colorize_nicks      | use nick color in chat area      | [Weechat](https://weechat.org/files/scripts/colorize_nicks.py)     | [24](https://github.com/weechat/scripts/commit/24d3f9db81d3621dd7f75d8f6e6cfc411a49f907)                 |
| vimode              | vim-like mode and keybindings    | [Github](https://github.com/tardypad/weechat-vimode)               | [d460776](https://github.com/tardypad/weechat-vimode/commit/d460776130ec8e2010d7189bbd24dda3f6a0aa46)    |
| go                  | quick jump to buffers            | [Weechat](https://weechat.org/files/scripts/go.py)                 | [2.5](https://github.com/weechat/scripts/commit/dc9e69f37fcdc51f0f5a8856ef977ee3d8d8e371)                |
| urlgrab             | open links in browser            | [Weechat](https://weechat.org/files/scripts/urlgrab.py)            | [2.8](https://github.com/weechat/scripts/commit/8171777c930875ccb10311e3e86776292f142729)                |
| wee_slack           | slack integration                | [Github](https://github.com/wee-slack/wee-slack)                   | [3eff1de](https://github.com/wee-slack/wee-slack/commit/3eff1de49d3aba1d991b7b6953e6b55a24fdecd9)        |
