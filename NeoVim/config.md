# Neovim Key Mappings Guide

This document outlines the key mappings set up in a Neovim configuration for various functionalities.

## General Settings

- **Line Numbers**
  - `set number`: Enable absolute line numbers.
  - `set relativenumber`: Enable relative line numbers.

## Plugin Mappings

### NERDTree

- **Focus on NERDTree**
  - `<Ctrl-f>`: Focuses the NERDTree panel.
- **Toggle NERDTree**
  - `<Ctrl-m>`: Toggles NERDTree open/closed.

### Vim-Airline

- **Airline Theme**
  - `colorscheme jellybeans`: Sets the color scheme to jellybeans.
  - `set background=dark`: Sets the background to dark mode.
  - `let g:airline_powerline_fonts = 1`: Enables powerline fonts.
  - `let g:airline_theme='jellybeans'`: Sets the Airline theme to jellybeans.

## Editing Mappings

- **Disable Arrow Keys in Normal and Insert Mode**
  - `<Up>`, `<Down>`, `<Left>`, `<Right>`: Disabled in both normal and insert mode to encourage the use of Vim's h,j,k,l navigation.

- **Compile and Run (C++)**
  - `<F5>`: Saves the current file, compiles, and runs a C++ program.

## Window Management

- **Splitting Windows**
  - `<Ctrl-h>`: Splits the window horizontally.
  - `<Ctrl-v>`: Splits the window vertically.
  - `<Ctrl-n>`: Opens a new tab.

- **Navigation Between Splits**
  - `<Ctrl-j>`: Moves to the window below.
  - `<Ctrl-k>`: Moves to the window above.
  - `<Ctrl-l>`: Moves to the window to the right.
  - `<Ctrl-h>`: Moves to the window to the left.

- **Resizing Splits**
  - `<Ctrl-Up>`: Increase the size of the current split upwards.
  - `<Ctrl-Down>`: Decrease the size of the current split downwards.
  - `<Ctrl-Left>`: Decrease the size of the current split to the left.
  - `<Ctrl-Right>`: Increase the size of the current split to the right.

## Terminal Integration

- **Opening Terminal**
  - `<Ctrl-t>`: Opens a terminal within Neovim.

- **Escape from Terminal Mode**
  - `<Esc>`: Returns to normal mode from terminal mode.

---

> Note: This guide assumes the use of Neovim with the specified plugins and settings. Adjustments may be necessary based on individual configurations and plugins.
