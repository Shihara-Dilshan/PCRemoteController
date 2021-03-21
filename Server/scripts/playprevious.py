import subprocess;

try:
  subprocess.Popen(['playerctl',  'previous'])
  print(200)
except:
  print(500) 

  


