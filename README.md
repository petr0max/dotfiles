# MyDotfiles
This is my Dotfiles using on Linux

Sebelum menggunakan config vim dari saya. Saya sarankan untuk menginstall terlebih dahulu bundle paketnya lewat neobundle.

Cara install neobundle bisa merujuk ke link githubnya [NeoBundle][NeoBundle]

![Screenshot](/img/screenshot.jpg)
## vimrc
* Support penggunaan bahasa php, python, css, javascript dan html.
* Untuk penggunaan NerdTree gunakan kombinasi tombol "Ctrl+n" pada keyboard anda
* Untuk penggunaan Tagbar gunakan tombol "F8" pada keyboar anda, (catatan: sebelumnya install terlebih dahulu ctags)
* Untuk pencarian file bisa menggunakan kombinasi tombol pada keyboard "Ctrl+p"
* Untuk check error PEP8 pada python saya menggunakan modul flake8 tinggal tekan "F7" pada keyboard anda. (catatan: install terlebih dahulu modul flake8)
* Saya juga telah menambahkan fitur [Emmet][Emmet] pada vim saya buat. Cara penggunaannya bisa merujuk ke dokumentasi [Emmet][Emmet]. Untuk kombinasi tombol pada keyboard ketika generate html/css saya memakai tombol "Ctrl+y" setelah itu tombol "Ctrl+,"
* Saya telah menambahkan fitur autocomplete PEP8 dari [autopep8][autopep8] dengan kombinasi dari [vim-autopep8][vim-autopep8] dengan menekan tombol "F6" maka otomatis dikoreksi.

Ini Screenshot contoh penggunaan autopep8 yang sudah di perbaiki
![autopep8](/img/autopep8.jpg)

## Require
1. [Neobundle][Neobundle]
2. Nodejs
3. [autopep8][autopep8]
4. ctags
5. flake8

[vim-autopep8]: https://github.com/tell-k/vim-autopep8
[autopep8]: https://github.com/hhatto/autopep8
[Emmet]: https://emmet.io/
[NeoBundle]: https://github.com/Shougo/neobundle.vim/
