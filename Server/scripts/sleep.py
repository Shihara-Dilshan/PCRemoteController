import subprocess;

try:
  subprocess.Popen(['systemctl',  'suspend'])
  print(200)
except:
  print(500) 

  


