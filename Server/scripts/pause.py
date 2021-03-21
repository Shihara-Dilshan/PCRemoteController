import subprocess;

try:
  subprocess.Popen(['playerctl',  'pause'])
  print(200)
except:
  print(500) 

  


