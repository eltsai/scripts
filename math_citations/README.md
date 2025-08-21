# Math Citations

A simple tool for generating citation keys from BibTeX entries.

## Files

- `bibli.txt` - Sample BibTeX entry copied from, for example, mathscinet.
- `gen_biblikey.py` - Python script that generates citation keys that are easier to use.

## Usage

```bash
python gen_biblikey.py
```

The script reads `bibli.txt` and generates citation keys in the format: `AuthorInitials + Year + FirstSignificantWord`

## Citation Key Format

- Extracts author initials from the `author` field
- Uses the 4-digit year from the `year` field  
- Takes the first significant word from the `title` field, skipping common words like "the", "of", "and", etc., and a predefined list of common word (in our case "equivariant", "stable", "homotopy", "spectra", "spaces", "theory", "homotopical") - you can change this list based on your needs.

Example: `Shulman2013Enriched` from the sample entry in `bibli.txt` 