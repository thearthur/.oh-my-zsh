# function aws {
#     docker run --rm \
#            -e AWS_DEFAULT_REGION=us-east-1\
#            -v $PWD:$PWD\
#            --workdir=$PWD\
#            -v $HOME/.aws:/home/user/.aws \
#          --read-only\
#          --cap-drop\
#          all jumanjiman/aws\
#          "${@:1}"
# }

export EDITOR="emacsclient -c "
export ALTERNATE_EDITOR=emacs
export SSH_ASKPASS="/usr/bin/qt4-ssh-askpass"
