find packages/ -type f | grep -i "\.\(exe\|dll\|pdb\|mdb\)$" | xargs -i cp {} output
