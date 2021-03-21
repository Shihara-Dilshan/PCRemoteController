import subprocess;

try:
  subprocess.Popen(['playerctl',  'next'])
  print(200)
except:
  print(500) 

  


