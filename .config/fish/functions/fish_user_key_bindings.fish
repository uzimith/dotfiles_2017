function fish_user_key_bindings
  fish_vi_key_bindings

  bind -m insert sh peco_select_history
  bind -m insert sm peco_recentd
  bind sk peco_kill
  bind -M insert -m default jj backward-char force-repaint
end
