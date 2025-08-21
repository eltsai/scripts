# bibkeygen.py
import re

# words to skip
SKIP = {"a","an","the","of","and","in","on","to","for","with","equivariant",
        "stable","homotopy","spectra","spaces","theory", "homotopical"}

def get_field(entry, field):
    m = re.search(rf'{field}\s*=\s*[\{{"]([^}}"]+)', entry, re.I)
    return m.group(1) if m else ""

def initials(authors):
    names = re.split(r"\s+and\s+", authors)
    return "".join(n.split(",")[0].strip()[0].upper() for n in names if n)

def first_word(title):
    words = re.sub(r"[{}\\$]", "", title).split()
    for w in words:
        w = w.lower()
        if w not in SKIP:
            return w
    return "title"

def make_key(entry):
    return initials(get_field(entry,"author")) + \
           re.search(r"\d{4}", get_field(entry,"year")).group() + \
           first_word(get_field(entry,"title")).replace(",", "").replace("-", "").replace(".", "").replace(" ", "").replace("&", "").replace("'", "")

with open("bibli.txt") as f:
    text = f.read()

for e in re.findall(r'@.*?\n}', text, re.S):
    print(make_key(e))
