# LocalisedLiterals.jl

## Introduction
`LocalisedLiterals.jl` provides string literals for every langugage the [google translate api](https://cloud.google.com/translate/docs/languages) supports, and thus bringing the great python feature of native support for [french string literals](https://twitter.com/vzverovich/status/1639800700594192385) to julia. Now you are no longer forced to move use python, should the need arrise to do something like this:

```python
>>> fr"Bonjour"
'Bonjour'
```
Disclaimers:
- This package was inspired by this tweet: [french string literals](https://twitter.com/vzverovich/status/1639800700594192385)
- Some of the code is shamelessly copied from the discussion in this threat: [How to use google translator from Julia level?](https://discourse.julialang.org/t/how-to-use-google-translator-from-julia-level/33837/3)
- The code in this package sends calls the google translate API.


## Usage
Prefix any string you want localised with the [language code](https://cloud.google.com/translate/docs/languages) you want it localised in. Remember to replace each `-` with an `_` (`mni-Mtei` becomes `mni_Mtei`).

```julia
julia> fr"Bonjour"
"Bonjour"

julia> fr"Hello World"
"Bonjour le monde"

julia> da"How much is the fish?"
"Hvor meget koster fisken?"

julia> it"Wer, wie, was, wieso weshalb, warum?"
"Chi, come, cosa, perché, perché, perché?"

julia> es"Hvofor flyttede du til spanien?"
"¿Por qué te mudaste a España?"

julia> mni_Mtei"I can only hope this translation is correct."
"ꯍꯟꯗꯣꯀꯄꯥ ꯑꯁꯤ ꯑꯆꯨꯝꯕꯅꯤ ꯍꯥꯌꯅꯥ ꯑꯩꯅꯥ ꯑꯥꯁꯥ ꯇꯧꯕꯥ ꯉꯝꯃꯤ꯫"
```
The source language is usually choose automatically by the api. Should you find the need to force a source, you can just append it as a flag:
```julia
julia> en"gift"
"gift"

julia> en"gift"de
"poison"

julia> en"gift"da
"married"
```

(The more I play around with this thing, the more it seems actually useful...)