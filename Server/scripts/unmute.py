import subprocess;

try:
  subprocess.Popen(['amixer',  '-D', 'pulse',  'sset', 'Master', 'unmute'])
  print(200)
except:
  print(500) 

  


