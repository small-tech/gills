# Unless its a command known to not produce output,
# leave an empty space around the command to better
# delinate the command output from the command itself.
function add_empty_line --on-event fish_preexec --on-event fish_postexec
    if not string match -r -q 'cd.*|popd.*|pushd.*' $argv
        printf '\n'
    end
end
