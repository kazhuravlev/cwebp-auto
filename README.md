# cwebp-auto

Convert images to `.webp`

## Installation

```
git clone git@github.com:kazhuravlev/cwebp-auto.git
cd cwebp-auto
docker build -t cwebp-auto .
```

## Using

```
docker run -it --rm -v directory-with-images-to-convert:/images cwebp-auto
```
