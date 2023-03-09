docker run --network host --userns=host --rm -w /root/project -v $PWD/:/root/project \
    -v /home/emmett/git/emmettbutler/ansible/roles/linux_base/files/zshrc:/root/.zshrc \
    -it ghcr.io/datadog/dd-trace-py/testrunner:1ed971833a2a3c97f43cbaeabcbb3f1e28745a00 \
    bash -c "apt-get update && apt-get install -y zsh && wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | \
        zsh || true &&  git config --global --add safe.directory /root/project && pip install riot && zsh -c 'export IN_DOCKER_SHELL=1; zsh -i'"
