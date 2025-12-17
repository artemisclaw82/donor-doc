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
typst watch --p 3000 donor_doc.typ
# Then open http://localhost:3000
```

To generate the pdf
```Bash
typst compile donor_doc.typ```
