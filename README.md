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

![Screenshot](/img/screenshot.png)
## vimrc
* Support penggunaan bahasa php, python, css, javascript dan html.
* Untuk penggunaan NerdTree gunakan kombinasi tombol "Ctrl+n" pada keyboard anda
* Untuk penggunaan Tagbar gunakan tombol "F8" pada keyboar anda, (catatan: sebelumnya install terlebih dahulu ctags)
* Untuk pencarian file bisa menggunakan kombinasi tombol pada keyboard "Ctrl+p"
* Automatic check PEP8
* Saya juga telah menambahkan fitur [Emmet][Emmet] pada vim saya buat. Cara penggunaannya bisa merujuk ke dokumentasi [Emmet][Emmet]. Untuk kombinasi tombol pada keyboard ketika generate html/css saya memakai tombol "Ctrl+y" setelah itu tombol "Ctrl+,"
* Saya telah menambahkan fitur autocomplete PEP8 dari [autopep8][autopep8] dengan kombinasi dari [vim-autopep8][vim-autopep8] dengan menekan tombol "F6" maka otomatis dikoreksi.

Ini Screenshot contoh penggunaan python-mode yang otomatis mengecek ada kesalahan penulisan yang tidak sesuai aturan PEP8
![autopep8](/img/autopep8.png)


## The MIT License (MIT)

Copyright (c) 2016 Mardin Wijaya

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

[vim-autopep8]: https://github.com/tell-k/vim-autopep8
[autopep8]: https://github.com/hhatto/autopep8
[Emmet]: https://emmet.io/
