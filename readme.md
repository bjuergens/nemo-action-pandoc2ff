
# pandoc2ff

pandoc2ff is a small extention for the nemo file-browser.

It adds a "pandoc2ff" to the contextmenu for folders and md-files. When you click it, it will use pandoc to render the markdown file and display the result in firefox. If a folder was selected, it will render all md-files at the first level of the folder into one html-file.


## installing

### nemo

    chmod +x install-nemo.sh
    ./install-nemo.sh

## troubleshooting

Ausgabe von nemo anschauen

    nemo --quit
    env NEMO_ACTION_VERBOSE=1 nemo

## related reading

### guides for nemo actions

* https://grvj.wordpress.com/2014/01/19/adding-new-items-in-right-click-context-menu-in-linux-mint-cinnamon/
* https://github.com/vanyossi/artscript/wiki/Setting-a-context-menu

### thanks for great css

* https://gist.github.com/killercup/5917178
