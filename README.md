# How to use
First install the typst cli tool

```Bash 
# Ubuntu
sudo snap install typst

# Arch


# MacOs
brew install typst


```

To preview the document
```Bash
typst watch --font-path tt-hoves-pro/ttf donor_doc.typ
# Then open http://localhost:3000
```

To generate the pdf
```Bash
typst compile --font-path tt-hoves-pro/ttf donor_doc.typ
```

I recommend using this tool https://github.com/chomosuke/typst-preview.nvim, or using the typst app.

