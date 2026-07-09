<div align="center">
  <img src="images/logo.png" alt="kew Logo">
</div>

<br>

[![License](https://img.shields.io/github/license/ravachol/kew?color=333333&style=for-the-badge)](./LICENSE)[![WikiData License](https://img.shields.io/github/license/ravachol/kew?color=333333&style=for-the-badge)](./LICENSE)

## About kew-data

- Database size: 9MB
- Homepage Urls: 162 000
- Data License: WIKIDATA CC BY-SA 4.0.

### For Package Maintainers  

This repo is a bonus for listeners and music artists and is recommended as a optional dependency to kew. 

All the stuff that's needed to reproduce the artists.db binary is included in the /data folder. .tsv file, scripts, the works. There's a guide below on how to reproduce the exact same binary.

### Why?

To help artists economically and give a way for listeners to connect to artists.

### Skipping the database

if you don't want to use the database, set:

useartistsdb=0

Or compile kew with:

make install USE_DB=0 -j

kew works just as well without it.

### Adding artists

We don't have the capacity to add other artists or indie artists unfortunately, and want the database to remain small.

### About the dataset

- The dataset contains artist names and homepage URLs sourced from Wikidata.

- Wikidata is licensed under the Creative Commons Attribution-ShareAlike 4.0 International License (CC BY-SA 4.0).
https://creativecommons.org/licenses/by-sa/4.0/.

- The artists.tsv is not used by kew. It is included in the repository for reference.

- The data is extracted from wikidata available at:
https://dumps.wikimedia.org/wikidatawiki/entities/latest-all.json.bz2

- The binary file, artists.db, is needed to display homepage links for artists in kew.

- kew works fine even if the file isn't available.

### About the scripts

- The script extract_from_wikidata.py is used to extract the artist data from the bz2 file.

- The script keep_only_matching_urls.py removes domains urls that don't have words from the artist in them as these are deemed to be erroneous data for the most part.

- The script apply_corrections.py washes the data based on the information in corrections.tsv.

- The script verify_urls.py is used to verify that urls work.

- The script make_binary_db.py is used to create artists.db from artists.tsv.

### Reproducing the binary

To recreate the same file run: 'python make_binary_db.py artists.tsv artists.db' using Python 3.14.5.

Then run sha256sum artists.db

You should get:
d77f09e0aeaf14b445642aaa13ba195e5b10c09ba799e02d785102a7355d86c9  artists.db

## License

Licensed under GPLv2+. [See LICENSE for more information](./LICENSE).


## Wikidata License

 WIKIDATA CC BY-SA 4.0. [See WIKIDATA LICENSE for more information](./WIKIDATA_LICENSE_CC_BY-SA_4.0.txt).

