from clingo import Control, ast
from typing import cast
from clingo.ast import parse_string, parse_files, AST, ASTType

prog = ["program.lp"]

def check(stm):
    if stm.ast_type == ASTType.Rule:
        if "possesses" in str(stm.head):
            print(stm)

parse_files(prog, check)

def parse_statement(s: str) -> AST:

    stm = None

    def check(wh):
        nonlocal stm
        stm = wh
        if stm.ast_type == ASTType.Rule:
            if "p" in str(wh.head):
                print(wh)
                # print(wh.body[0])

    parse_string(s, check)
    return cast(AST, stm)

print()
a = parse_statement("p(X) :- q(X), r(X).")
print(a.body[0])

