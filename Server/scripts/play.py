import subprocess;

try:
  subprocess.Popen(['playerctl',  'play'])
  print(200)
except:
  print("500") 

  


