# akkadian-morphological-parser
A MATLAB-based Natural Language Processing (NLP) tool designed to perform morphological analysis and inverse parsing on Akkadian verbal and nominal forms. The algorithm extracts the underlying Semitic triliteral root ($C_1-C_2-C_3$) from inflected words using pattern matching and Regular Expressions (RegEx).


What is it?
Akkadian, an extinct East Semitic language written in cuneiform, relies heavily on a root-and-pattern morphology. Words are constructed by embedding a 3-consonant root into fixed vocalic matrices that dictate tense, mood, and grammatical category.

This project implements an inverse parsing algorithm that strips away prefixes, infixes, and case endings to isolate the core semantic root and provide a full grammatical breakdown of the input word.

The features  are the following:

1)Forward Generation: Synthesizes inflected Akkadian forms from a given root and grammatical pattern.

2)Inverse Morphological Parsing: Receives inflected words (e.g., iprus, parisu) and reconstructs the original root (e.g., P-R-S).

3)RegEx Pattern Matching: Identifies structural constants (prefixes, thematic vowels, case markers) while extracting variable consonantal tokens.

4)Grammatical Categorization: Maps the input to its corresponding verbal or nominal state (e.g., Preterite, Infinitive, Participle).
