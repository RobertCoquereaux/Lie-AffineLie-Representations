The program defines a function DimensionIrrepLie that gives the dimension (or the quantum dimension) of irreducible representations of simple complex Lie algebras.
There are two versions.
One version is a Mathematica package that can be loaded with a get. The associated file is called src/DimensionIrrepLie.wl
The package, that starts with Begin Package and ends with End, contains a public part (with usage::) and a private part (that starts with Begin and ends with End).
The second version is a Mathematica Resource Function (RF). It is a file derived from the above src/DimensionIrrepLie.wl it was edited in order to comply with the publication rules of Wolfram RF. For instance: it is not a package (although it contains a private part). The file DimensionIrrepLie.wl should be considered as the prime reference source.
At some point, the contents of DimensionIrrepLie.wl will be incorporated in the larger project Roots&Weights.
