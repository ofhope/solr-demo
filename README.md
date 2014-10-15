This is a minified version of the Solr example for demonstration purposes. It contains three preconfigured field types textGeneral, textPhonetic and textTokenise. And has an example SearchHandler which searches across all types.

### textGeneral

This is a good general purpose text field for the English language.

1. Mapping accented characters to ISOLatin ie ß to ss.
2. Reducing synonymns to their derived form.
3. Lower case, trim and minimal stemming.
4. Finally an EdgeGram filter is applied to allow for partial matching.

### textPhonetic

Very similar to textGeneral apart from excluding the EdgeGram filter and including a DoubleMetaphone filter. Which reduces words to a phonetic key ie Assistance -> ASSTN.

### textTokenise

Similar again to the textGeneral field but includes a WordDelimiter filter. This is very handy for product names, creating new tokens from single non English words commonly used in product names. This catches user input for possible spelling inconsistencies "X-Box" or "XBox". PowerShot becomes ["Power", "Shot"]

### SearchHandler

This illustrates how to search across multiple fields boosting appropiatly.
`Name^100 NamePhonetic^50 NameTokenize^50 CountryCode District Population` here we boost mostly on Name giving exact matches a priority over phonetic or token variations.

---
### Setup

Download and run `./server/start.sh` view localhost:8079 in browser.
Sample data is already index.
