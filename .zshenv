function aws {
    docker run --rm \
         -e AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID \
         -e AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY\
         -e AWS_DEFAULT_REGION=us-east-1\
         --read-only\
         --cap-drop\
         all jumanjiman/aws\
         "${@:1}"
}

export EDITOR="emacsclient -c "
export ALTERNATE_EDITOR=emacs
export SSH_ASKPASS="/usr/bin/qt4-ssh-askpass"
