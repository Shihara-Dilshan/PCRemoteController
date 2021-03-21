import subprocess;

try:
  subprocess.Popen(['amixer',  '-D', 'pulse',  'sset', 'Master', 'mute'])
  print(200)
except:
  print(500) 

  


