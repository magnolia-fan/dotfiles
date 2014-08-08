set -g CLASSPATH "."

set -x CLASSPATH /usr/local/lib/antlr-3.5.2-complete-no-st3.jar:$CLASSPATH
alias antlr3 "java -jar /usr/local/lib/antlr-3.5.2-complete-no-st3.jar"
alias grun3 "java org.antlr.Tool"

set -x CLASSPATH /usr/local/lib/antlr-4.2.1-complete.jar:$CLASSPATH
alias antlr4 "java -jar /usr/local/lib/antlr-4.2.1-complete.jar"
alias grun4 "java org.antlr.v4.runtime.misc.TestRig"

set -x CLASSPATH /usr/local/lib/fdb-sql-parser-1.1.0.jar:$CLASSPATH
set -x CLASSPATH /Users/chez/Downloads/zql/classes:$CLASSPATH
