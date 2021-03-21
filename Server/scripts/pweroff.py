import subprocess;

try:
  subprocess.Popen(['shutdown',  'now'])
  print(200)
except:
  print(500) 

  


