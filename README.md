# Zhenyu Wu Academic Homepage

This repository contains the jemdoc source and generated static HTML for the
GitHub Pages academic homepage at `KevinLikesDrinkingCoffee.github.io`.

## Build

```bash
make
```

The build uses `tools/jemdoc.py`, a Python 3-compatible copy of the official
jemdoc 0.7.3 script from <https://github.com/jem/jemdoc>. The generated pages
are `index.html` and `projects.html`; the editable sources are `index.jemdoc`
and `projects.jemdoc`.

## Preview

```bash
make serve
```

Then open <http://localhost:8000>.
