/home/xubuntu/.config/xfce4/terminal/terminalrc:
  file.managed:
    - source: salt://live/terminalrc
    - user: xubuntu
    - group: xubuntu
    - replace: False
    - makedirs: True
