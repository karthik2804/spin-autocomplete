# spin completion                                          -*- shell-script -*-

# This bash completions script was generated by
# completely (https://github.com/dannyben/completely)
# Modifying it manually is not recommended

_spin_completions_filter() {
  local words="$1"
  local cur=${COMP_WORDS[COMP_CWORD]}
  local result=()

  if [[ "${cur:0:1}" == "-" ]]; then
    echo "$words"
  
  else
    for word in $words; do
      [[ "${word:0:1}" != "-" ]] && result+=("$word")
    done

    echo "${result[*]}"

  fi
}

_spin_completions() {
  local cur=${COMP_WORDS[COMP_CWORD]}
  local compwords=("${COMP_WORDS[@]:1:$COMP_CWORD-1}")
  local compline="${compwords[*]}"

  installed_plugins=$(spin plugins list --installed | awk '{print $1}')

  found=false

  first_word=$(echo "$compline" | awk '{print $1}')
  for plugin in $installed_plugins; do
      if [[ $first_word == *$plugin ]]; then
          found=true
          break
      fi
  done

  # Check if the word is in the sentence
  if $found; then
    while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "" -- "$cur" )
  else
    case "$compline" in
      'plugins install'*'--overide-compatibility-check')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'plugins upgrade'*'--overide-compatibility-check')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'templates install'*'--upgrade')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'plugins upgrade'*'--downgrade')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'up'*'--allow-transient-write')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'templates upgrade'*'--branch')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'templates install'*'--branch')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'plugins upgrade'*'--version')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'plugins install'*'--version')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'registry'*'--password-stdin')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'registry push'*'--insecure')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'up'*'--runtime-config-file')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -- "$cur" )
        ;;

      'registry pull'*'--insecure')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'templates upgrade'*'--repo')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'templates list'*'--verbose')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'templates upgrade'*'--all')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'templates install'*'--git')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'templates install'*'--dir')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A dir -- "$cur" )
        ;;

      'add '*'--accept-defaults')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'new '*'--accept-defaults')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'plugins upgrade'*'--file')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -- "$cur" )
        ;;

      'plugins install'*'--file')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -- "$cur" )
        ;;

      'plugins upgrade'*'--yes')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'plugins upgrade'*'--all')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'plugins upgrade'*'--url')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'registry push'*'--build')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'plugins install'*'--yes')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'plugins install'*'--url')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'registry push'*'--from')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -- "$cur" )
        ;;

      'up'*'--disable-pooling')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'build'*'--component-id')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'templates list'*'--tag')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'plugins'*'--installed')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'templates uninstall'*)
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "$(spin templates list | awk -F'|' '/^[[:space:]]*\|/ {gsub(/[[:space:]]+/, " ", $2); print $2}' | grep -v '^Name' | awk '{print $1}')")" -- "$cur" )
        ;;

      'registry'*'--password')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'registry'*'--username')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'up'*'--disable-cache')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'up'*'--direct-mounts')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'add '*'--values-file')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'watch'*'--skip-build')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'new '*'--values-file')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'plugins uninstall'*)
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "$(spin plugins list --installed | awk '{print $1}')")" -- "$cur" )
        ;;

      'templates install'*)
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "--branch --dir --git --upgrade")" -- "$cur" )
        ;;

      'templates upgrade'*)
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "--all --branch --repo")" -- "$cur" )
        ;;

      'watch'*'--debounce')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'plugins'*'--filter')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'plugins'*'--search')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'new '*'--template')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "$(spin templates list | awk -F'|' '/^[[:space:]]*\|/ {gsub(/[[:space:]]+/, " ", $2); print $2}' | grep -v '^Name' | awk '{print $1}')")" -- "$cur" )
        ;;

      'registry login'*)
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "--password --password-stdin --username")" -- "$cur" )
        ;;

      'plugins install'*)
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "$(spin plugins list | awk '{print $1}' | sort -u) --file --overide-compatibility-check --url --version --yes")" -- "$cur" )
        ;;

      'add '*'--template')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "$(spin templates list | awk -F'|' '/^[[:space:]]*\|/ {gsub(/[[:space:]]+/, " ", $2); print $2}' | grep -v '^Name' | awk '{print $1}')")" -- "$cur" )
        ;;

      'plugins upgrade'*)
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "--all --downgrade --file --overide-compatibility-check --url --version --yes")" -- "$cur" )
        ;;

      'up'*'--state-dir')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A dir -- "$cur" )
        ;;

      'plugins update'*)
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'up'*'--key-value')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'templates list'*)
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "-tag --verbose")" -- "$cur" )
        ;;

      'registry pull'*)
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "--insecure")" -- "$cur" )
        ;;

      'registry push'*)
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "--build --from --insecure")" -- "$cur" )
        ;;

      'doctor --from'*)
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -- "$cur" )
        ;;

      'watch'*'--clear')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'add '*'--output')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'new '*'--output')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'up'*'--insecure')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'up'*'--log-dir')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A dir -- "$cur" )
        ;;

      'new '*'--value')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'watch'*'--from')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'add '*'--value')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'plugins list'*)
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "--filter --installed")" -- "$cur" )
        ;;

      'build'*'--from')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -- "$cur" )
        ;;

      'add '*'--init')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'add '*'--file')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -- "$cur" )
        ;;

      'up'*'--sqlite')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'new '*'--init')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'up'*'--follow')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'new '*'--tag')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'build'*'--up')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'up'*'--quiet')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'add '*'--tag')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'up'*'--build')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'up'*'--cache')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -- "$cur" )
        ;;

      'templates'*)
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "install list uninstall upgrade")" -- "$cur" )
        ;;

      'up'*'--temp')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A dir -- "$cur" )
        ;;

      'up'*'--from')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'up'*'--env')
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "")" -- "$cur" )
        ;;

      'registry'*)
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "login pull push")" -- "$cur" )
        ;;

      'plugins'*)
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "install list search uninstall update upgrade")" -- "$cur" )
        ;;

      'doctor'*)
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "--from")" -- "$cur" )
        ;;

      'build'*)
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "--component-id --from --up")" -- "$cur" )
        ;;

      'watch'*)
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "--clear --debounce --from --skip-build")" -- "$cur" )
        ;;

      'add'*)
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "--accept-defaults --init --file --output --template --tag --value --values-file")" -- "$cur" )
        ;;

      'new'*)
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "--accept-defaults --init --output --template --tag --value --values-file")" -- "$cur" )
        ;;

      'up'*)
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "--build --direct-mounts --env --from --insecure --temp --allow-transient-write --cache --disable-cache --disable-pooling --follow --key-value --log-dir --quiet --runtime-config-file --sqlite --state-dir")" -- "$cur" )
        ;;

      *)
        while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_spin_completions_filter "build doctor plugins registry templates up watch $(spin plugins list --installed | awk '{print $1}' | grep -v '^trigger-' )")" -- "$cur" )
        ;;

    esac
  fi
} &&
complete -F _spin_completions spin

# ex: filetype=sh
