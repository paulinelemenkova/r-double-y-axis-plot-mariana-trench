# R Double-Y-Axis Plots — Mariana Trench Environmental Factors

R script drawing double-Y-axis plots to compare two environmental factors of the Mariana Trench that have different units/scales on one figure, revealing their bi-factor correlation across the bathymetric profiles (e.g. slope angle versus sediment thickness, slope angle versus aspect degree).

## Related publication

Lemenkova, P. Statistical Analysis of the Mariana Trench Geomorphology Using R
Programming Language. Geodesy and Cartography 2019, 45(2), 57-84.

- DOI: https://doi.org/10.3846/gac.2019.3785
- figshare: https://doi.org/10.6084/m9.figshare.9762860
- HAL: https://hal.science/hal-02277500
- Zenodo: https://zenodo.org/record/3385005
- ISSN: 2029-6991 (Scopus)

This script produced Figure 13 (double-Y-axis correlation of environmental factors).

## Script

- 2-DoubleY-Axis.R: reads the factor table, builds two lattice xyplots and overlays them on a shared x-axis with two independent y-axes using latticeExtra::doubleYScale (with a two-series legend), one figure per factor pair.

## Methods

- Dual-axis (secondary-y) plotting for comparing differently-scaled variables (latticeExtra).

## Data

- Per-profile slope, sediment-thickness and aspect factors of the Mariana Trench.

## Requirements

- R (>= 3.5); packages: lattice, latticeExtra

## Author and citation

Polina Lemenkova — ORCID https://orcid.org/0000-0002-5759-1089

Cite: Lemenkova, P. Statistical Analysis of the Mariana Trench Geomorphology Using R Programming Language. Geodesy and Cartography 2019, 45(2), 57-84. https://doi.org/10.3846/gac.2019.3785

## License

MIT — see LICENSE (Copyright Polina Lemenkova).
