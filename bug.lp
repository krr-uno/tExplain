foo(0).
foo(1).
foo(2).
foo(2).

count_foo(N) :- N = #count{T: foo(T)}.
% count_foo(N) :- N = #count{T: foo(T)}, foo(N1).

%!trace {"there are % foo's", N} count_foo(N).
%!show_trace count_foo(N).