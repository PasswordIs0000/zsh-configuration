# Zsh configuration

## Themes and plugins

Create the empty directory for themes and plugins. Then Git clone the repositories listed below accordingly.

```
mkdir -p $HOME/.zsh
```

## Symbolic links for using the configuration

Git working directory must be the current working directory for the shell.

```
ln -s $PWD/zshrc $HOME/.zshrc
ln -s $PWD/spaceshiprc.zsh $HOME/.spaceshiprc.zsh
```

## Prompt
- [spaceship-prompt](https://github.com/spaceship-prompt/spaceship-prompt)

## Plugins
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
