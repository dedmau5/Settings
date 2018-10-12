# Settings
Different settings scripts and instructions for faster setup of new dev environment or reinstalled computer etc. 

## Download list
- Set Point
- Audio Quest DragonFly Drivers
- Spotify
- VSCode
  - SettingsSync (https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync)
  - Fira Code font (https://github.com/tonsky/FiraCode)
- Sublime Text
- Slack
- MS Teams
- Greenshot
- Display Fusion
- GIT
- Python
- Nodejs
- Posh-Git (https://github.com/dahlbyk/posh-git)


## Gist
https://gist.github.com/dedmau5/67492f74894b5a2563afb2140921b975

## Tutorial for vscode settings sync

![alt text](https://media.giphy.com/media/xT9IglKxSqs2Wdwq2c/source.gif)

- shift+alt+d to download the settings
- enter the token
- enter the gist id
- wait for install to finish :)

### Known issues
Settings sync sometimes needs a newly generated token. Follow these steps:

"Hi Guys,
Let me share with you how I solved this problem on my environment. [Download a existing git in different PC's]

Following these steps. maybe it could help you.

ctrl+ shift + p (to open the palette) then you should write "Sync: Reset Extension Settings". this is for ensure the values are empty.

Go to https://gist.github.com/<Your_UserName> and click on the gist you want to download.

There you can do scroll down till you find a file named "settings.json", in this file you can get the "sync.gist" [Gist ID].

Now, just go to the VSCode and press (alt+ shift + d), then, VSCode redirect you to the web page and you can select the gist file and generate the token.

Finally, you have both values, Gist ID and Token. Now, you should fill correctly inside of VSCode.

Hope the previous steps can help you. it works for me. :)"

