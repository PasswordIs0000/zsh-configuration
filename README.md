# Zsh configuration

## Themes and plugins

Create the empty directories for themes and plugins. Then Git clone the repositories listed below accordingly.

```
mkdir -p $HOME/.zsh/themes
mkdir -p $HOME/.zsh/plugins
```

## Symbolic links for using the configuration

Git working directory must be the current working directory for the shell.

```
ln -s $PWD/p10k.zsh $HOME/.p10k.zsh
ln -s $PWD/zshrc $HOME/.zshrc
```

## Themes
- [powerlevel10k](https://github.com/romkatv/powerlevel10k)

## Plugins
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
