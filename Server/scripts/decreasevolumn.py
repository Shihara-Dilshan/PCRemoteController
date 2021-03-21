import subprocess;

try:
  subprocess.Popen(['amixer',  '-D', 'pulse',  'sset', 'Master', '5%-'])
  print(200)
except:
  print(500) 

  


