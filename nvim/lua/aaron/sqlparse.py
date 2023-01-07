import sqlparse
import sys

data = sys.stdin.read()

result = sqlparse.format(
    data,
    indent_columns=True,
    keyword_case="upper",
    identifier_case="lower",
    reindent=True,
    output_format="sql",
    indent_after_first=True,
    wrap_after=80,
    comma_first=True,
)

print(result.strip())
