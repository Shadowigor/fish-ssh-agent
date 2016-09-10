
function ssha
    set SSH_ENV_PATH /tmp/ssha-fish-env.tmp

    if [ ! -e $SSH_ENV_PATH ]
        ssh-agent -c | sed 's/^echo/#echo/' > $SSH_ENV_PATH
        . $SSH_ENV_PATH > /dev/null
        ssh-add
    else
        . $SSH_ENV_PATH > /dev/null
    end

    true
end
