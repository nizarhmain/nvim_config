# My Neovim config

Copied from [Craftzdog original repo](https://github.com/craftzdog/dotfiles-public)

Make sure to run `TSUpdate lua`

Install `ripgrep`, very much needed. Telescope will not work properly without it

`brew install ripgrep`

// convert the following scripts in a .sh down below and run them

```bash
brew install ripgrep

npm install -g typescript typescript-language-server

TSUpdate lua

```

## Snippets stuff

[This was really helpful here](https://www.chiarulli.me/Neovim/17-snippets/)

Install pynvim

```bash
pip3 install pynvim
```

Install Coc Snippets

```bash
:CocInstall coc-snippets
```

```bash
pip3 install pynvim
```

## Useful commands

```vi
// should show a list of all the vim.opt.* options

:help option-list

```

## Helpful video with more barebones setup

[0 to 100 with LSP](https://www.youtube.com/watch?v=w7i4amO_zaE)

## New shortcuts learned

Lets you want to jump directly to the `maps` word.
Type `vi(`

```typescript
const location = findLocation(maps, seed);
```

Same if you want to jump to the thing inside the brackets
type `vi[`

```typescript
const location = findLocation[(maps, seed)];
```
