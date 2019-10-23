% example facts:
arc(m,p,8). 
arc(q,p,13).
arc(q,m,5).
arc(k,q,3).

% A path is a path if the following conditions are met:
any_path(X, Y, [X, Y], _, C) :- arc(X, Y, C). 								% The path is an arc which connects the source and destination
													% OR the path P with cost Cost consists of:
any_path(Src, Dest, [Src | PathRem], Visited, Cost) :- 	arc(Src, X, C1), 				% 	An arc from the source to some node X, with some cost, C1
							\+ member(X, Visited), 				% 	where X is not along the path that has been traversed thus far.
							any_path(X, Dest, PathRem, [X | Visited], C2),	% 	AND a path from X to the destination, with some cost, C2
							Cost is C1 + C2.				% 	where Cost = C1 + C2.

% A path is a shortest path if the following conditions are met:
path(Src, Dest, SP) :- 	any_path(Src, Dest, SP, [], Cost), 						% The shortest path from Src to Dest is SP, where
				\+ 	(any_path(Src, Dest, LongPath, [], BigCost),			% there does not exist a path LongPath such that
					 SP \= LongPath,						% LongPath is a unique path, distinct from SP 
					 BigCost < Cost).						% AND the cost to traverse LongPath is less than the cost to traverse SP.

