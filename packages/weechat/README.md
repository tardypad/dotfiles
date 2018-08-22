# Weechat

Chat client

Source [Github](https://github.com/weechat/weechat)

Version [2.2](https://github.com/weechat/weechat/releases/tag/v2.2)

## Extras

Manual setup steps:
- set passphrase for secure storage `/secure passphrase [passphrase]`
- set slack group token `/secure set slack_token [slack token]`

To join multiple teams (here 2), the last command should be:
- set slack group token `/secure set slack_token [slack token team 1],[slack token team 2]`

## Plugins

| Name                | Purpose                          | Source                                                             | Version                                                                                                  |
|---------------------|----------------------------------|--------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------|
| colorize_nicks      | use nick color in chat area      | [Weechat](https://weechat.org/files/scripts/colorize_nicks.py)     | [26](https://github.com/weechat/scripts/commit/ffda2e03486d1e90983a35ee3505b84d10fd5244)                 |
| vimode              | vim-like mode and keybindings    | [Github](https://github.com/tardypad/weechat-vimode)               | [cf346f0](https://github.com/tardypad/weechat-vimode/commit/cf346f0dea74da8d73a94ee4683a2aad223dfd9d)    |
| go                  | quick jump to buffers            | [Weechat](https://weechat.org/files/scripts/go.py)                 | [2.5](https://github.com/weechat/scripts/commit/dc9e69f37fcdc51f0f5a8856ef977ee3d8d8e371)                |
| wee_slack           | slack integration                | [Github](https://github.com/wee-slack/wee-slack)                   | [0eaf9ed](https://github.com/wee-slack/wee-slack/commit/0eaf9ed4057f4adbfeb57289f7cc12774027a9aa)        |
