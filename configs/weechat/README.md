# Manual setup steps

- set passphrase for secure storage `/secure passphrase [passphrase]`
- set slack group token `/secure set slack_token [slack token]`

To join multiple teams (here 2), the last command should be:
- set slack group token `/secure set slack_token [slack token team 1],[slack token team 2]`

# Plugins

| Name                | Purpose                          | Source                                                             | Version                                                                                                  |
|---------------------|----------------------------------|--------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------|
| colorize_nicks      | use nick color in chat area      | [Weechat](https://weechat.org/files/scripts/colorize_nicks.py)     | [26](https://github.com/weechat/scripts/commit/ffda2e03486d1e90983a35ee3505b84d10fd5244)                 |
| vimode              | vim-like mode and keybindings    | [Github](https://github.com/GermainZ/weechat-vimode)               | [95661a2](https://github.com/GermainZ/weechat-vimode/commit/95661a27f92dc3f3286cf1539ab112a81ad15639)    |
| wee_slack           | slack integration                | [Github](https://github.com/wee-slack/wee-slack)                   | [2.3.0](https://github.com/wee-slack/wee-slack/releases/tag/v2.3.0)                                      |