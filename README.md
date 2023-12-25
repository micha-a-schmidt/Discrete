# Discrete

Discrete is a Mathematica package providing tools for model building with discrete symmetries. Its main features are 
- the calculation of arbitrary Kronecker products
- an interface to the group catalogues of [GAP](http://www.gap-system.org), e.g. the SmallGroups library with all discrete groups up to order 2000 (with the exception of groups of order 1024) and many more
- calculation of Clebsch-Gordan coefficients (They are calculated on-demand and stored internally to improve performance)
- the possibility to reduce covariants to a smaller set of independent covariants
- the documentation is integrated in the documentation centre of Mathematica

To install Discrete, simply copy the subfolder Discrete to your Mathematica applications folder. On Linux, it is ~/.Mathematica/Applications . The other two folders BugFixing and Tests contain code to test and eliminate bugs and are not relevant for the user. We recommend to start with the tutorial in *Discrete/Documentation/English/Tutorials/Tutorial A4.nb*

The package is associated with [1111.1730 [hep-ph]](http://arxiv.org/abs/1111.1730). The supplementary Mathematica notebook to the article is contained in the subfolder SupplementaryMaterial. 

If you use Discrete in a scientific publication or talk, please give proper academic credit to us by citing our paper. 

Previous versions of Discrete are hosted on [hepforge](http://discrete.hepforge.org).
