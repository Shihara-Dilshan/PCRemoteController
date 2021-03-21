import subprocess;

try:
  current_postion = subprocess.Popen(['playerctl',  'position', '5-'])
  print(200)
except:
  print(500) 


  


