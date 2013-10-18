# This file configures the theme of tcsh, screen, vim, and irssi
cp .*rc ~
cp -r .irssi ~
sed -i 's/settings = {/settings = {\n  \"fe-common\/core\" = {\n    term_charset = "UTF-8";\n    autolog = \"yes\";\n    autolog_path = \"~\/.irssi\/irclogs\/$tag\/$0.log\";\n    theme = \"h3rbz\";\n  };/g' "~/.irssi/config"
