set -x RUBY_GC_HEAP_INIT_SLOTS 800000
set -x RUBY_HEAP_MIN_SLOTS 800000 # Deprecated since 2.1.0
set -x RUBY_HEAP_FREE_MIN 100000
set -x RUBY_GC_HEAP_FREE_SLOTS 200000
set -x RUBY_FREE_MIN 200000 # Deprecated since 2.1.0
set -x RUBY_HEAP_SLOTS_INCREMENT 300000
set -x RUBY_HEAP_SLOTS_GROWTH_FACTOR 1
set -x RUBY_GC_MALLOC_LIMIT 79000000

function mina
    if test -e Gemfile
        bundle exec mina $argv
    else
        /Users/chez/.rbenv/shims/mina $argv
    end
end

function rake
    if test -e Gemfile
        bundle exec rake $argv
    else
        /Users/chez/.rbenv/shims/rake $argv
    end
end
