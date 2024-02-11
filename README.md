# Spin Autocomplete for CLI

## Installing

### ZSH

- Download the `spin_completions.sh` script and save it at `~/.bash_completions/spin_completions.sh`
- Add the following to the end of the `~/.zshrc`

```bash
autoload bashcompinit
bashcompinit
source /Users/karthik_ganeshram/Work/fermyon/experiments/spin-autocomplete/spin_completions.sh
```

## Updating and regeneration the script

This project uses [completely](https://github.com/DannyBen/completely) to  create the script. Modify the `completely.yaml` file and then use the `generate-completions` script to regenerate it. 