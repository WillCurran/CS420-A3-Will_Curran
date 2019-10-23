This is a simple piece of code to introduce students to Prolog.
Will Curran completed this assignment for CSCE 420 with Dr. Dylan Shell at 
Texas A&M University. This is posted publicly as a showcase, and is not intended to 
be a reference for current students taking the course.

Objective: Find the shortest path between two vertices in a graph G, given that 
G is a graph consisting of statements of fact in arc-clausal form.

Description:
- To run the code, type "[graph_definition]" in the query prompt of swipl.
  This will load the facts and predicates which are defined in the file.
- Next, the user may use these formats to assert the truth of the predicates and/or find values for which the predicates are true.  
	any_path(Src, Dest, Path, VisitedAlready, Cost) -- if starting from just a node, Visited = []
	path(Src, Dest, ShortestPath)
- To demonstrate my understanding of Prolog, I have included comments in graph_definitions.pl

Sources consulted:
https://www.cse.unsw.edu.au/~billw/cs9414/notes/prolog/path-trace.html
https://cs.ccsu.edu/~markov/ccsu_courses/prolog.txt
https://www.cpp.edu/~jrfisher/www/prolog_tutorial/1.html
https://www.cpp.edu/~jrfisher/www/prolog_tutorial/2_15.html
https://stackoverflow.com/questions/47778959/how-to-find-the-unique-shortest-path-for-a-weighted-directed-graph-with-swi-prol
https://stackoverflow.com/questions/3901250/traversing-a-graph-with-possible-loops-and-returning-the-path-in-prolog

Aggie Code of Honor:
"An Aggie does not lie, cheat, or steal, or tolerate those who do."
