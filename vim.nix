
with import <nixpkgs> {};

vim_configurable.customize {
  # Specifies the vim binary name.
  name = "vim";
  vimrcConfig.customRC = ''
    syntax enable
  '';
  vimrcConfig.packages.myplugins = with pkgs.vimPlugins; {
    start = [ vim-nix vim-lastplace ];
    opt = [];
  };
}
