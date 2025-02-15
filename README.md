# NexisNV - The Ultimate NeoVim Experience 🚀

Welcome to **NexisNV**, a powerful and optimized NeoVim configuration designed for speed, modularity, and ease of use. Inspired by **NvChad**, but crafted to be even better and more tailored to your workflow!  

## ✨ Features  

✔ **Modular & Extendable** – Each feature is integrated as a separate plugin module  
✔ **Fast & Lightweight** – Performance-focused with minimal overhead  
✔ **Smart Autocompletion** – Advanced auto-completion and suggestion system  
✔ **Beautiful & Customizable UI** – Elegant status lines, buffer management, and theming  
✔ **Efficient Project Management** – Seamless file navigation and session handling  
✔ **Integrated Git & Debugging** – Effortless workflow with built-in Git tools and debugging  

---

## 📺 Plugin Overview  

NexisNV is powered by a carefully curated set of plugins to enhance your development experience:  

### Core Features  
- **Dashboard** – A clean and modern start screen (`nexisnv.dashboard`)  
- **Theming** – A dynamic theme switcher (`nexisnv.themery`)  
- **Terminal Integration** – Smooth terminal management with `toggleterm` (`nexisnv.toggleterm`)  
- **Autocompletion** – Smart completion and snippets (`nexisnv.autocmp`)  
- **Fuzzy Finder** – Advanced file and symbol searching (`nexisnv.telescope`)  
- **LSP & Language Support** – Fully configured LSP setup (`nexisnv.lspconfig`, `nexisnv.mason`)  
- **Syntax Highlighting** – Powerful syntax trees with `nvim-treesitter` (`nexisnv.treesitter`)  
- **Git Integration** – LazyGit support (`nexisnv.lazygit`)  
- **Status Line & Buffer Management** – Improved status and tab handling (`nexisnv.lualine`, `nexisnv.bufferline`)  
- **Project Management** – File tree and project navigation (`nexisnv.projectmgr`, `nexisnv.neotree`)  
- **Debugging & Testing** – Integrated debugging and test runner (`nexisnv.nvimdap`, `nexisnv.neotest`)  

---

## 🚀 Installation  

To install **NexisNV**, follow these steps:  

### 1️⃣ Prerequisites  

Ensure you have **NeoVim 0.9+** installed:  

```sh
# For Debian/Ubuntu
sudo apt install neovim

# For macOS (using Homebrew)
brew install neovim
```

### 2️⃣ Clone the Repository  
Make sure you don't have your previous Neovim Config in your path
```sh
git clone https://github.com/yourusername/NexisNV.git ~/.config/nvim
```

If you want, you can also run this command to automatically install all by itself:
```sh
git clone https://github.com/yourusername/NexisNV.git ~/.config/nvim/nexisnv && bash ~/.config/nvim/nexisnv/install.sh
```

### 3️⃣ Launch NeoVim and Install Plugins  

Open NeoVim and run:  
If you don't used the automatically installation, you can install all packages by entering Vim
```vim
:Lazy sync   # If using lazy.nvim
```

This will install all required plugins automatically.  

---

## ⚙️ Configuration  

NexisNV is designed to be modular, meaning you can easily tweak or extend it:  

- To change themes, use `:Themery`  
- To configure LSP servers, use `Mason` (`:Mason`)  
- To change basic parameter, change the values in easyconfig

---

## 🛠️ Contributing  

Want to improve NexisNV? Feel free to fork the repo and submit pull requests!  

---

## 🐝 License  

MIT License. Feel free to use, modify, and share this configuration.  

---

🔥 **Enjoy coding with NexisNV!** 🚀  

