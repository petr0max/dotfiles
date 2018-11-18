# MyDotfiles
This is my Dotfiles using on Linux

Sebelum menggunakan config vim dari saya. Saya sarankan untuk menginstall terlebih dahulu bundle paketnya lewat VimPlug.

## Require
1. VimPlug
2. [autopep8][autopep8]
3. ctags
4. flake8

## Installasi
[Download plug.vim](https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim)
and put it in the "autoload" directory.

#### Vim

###### Unix

```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

###### Windows (PowerShell)

```powershell
md ~\vimfiles\autoload
$uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
(New-Object Net.WebClient).DownloadFile($uri, $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath("~\vimfiles\autoload\plug.vim"))
```

#### Neovim

###### Unix

```sh
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

###### Windows (PowerShell)

```powershell
md ~\AppData\Local\nvim\autoload
$uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
(New-Object Net.WebClient).DownloadFile($uri, $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath("~\AppData\Local\nvim\autoload\plug.vim"))
```
## vimrc
* Untuk penggunaan Tagbar gunakan tombol "F8" pada keyboar anda, (catatan: sebelumnya install terlebih dahulu ctags)
* Automatic check PEP8
* test saja dulu
* Saya telah menambahkan fitur autocomplete PEP8 dari [autopep8][autopep8] dengan kombinasi dari [vim-autopep8][vim-autopep8] dengan menekan tombol "F6" maka otomatis dikoreksi.

[vim-autopep8]: https://github.com/tell-k/vim-autopep8
[autopep8]: https://github.com/hhatto/autopep8
