Place the entire applicants_files folder in your D: dirve, if it is available.
If not, then place this folder where ever you want, but make sure you change
the path names in popup.jsp and ApplicationServlet.java to the respective path.
Make sure to only change the path till applicants_files, because after that the
image name is dynamic. Most probably in popup.jsp the path comes in line 100
onwards and in ApplicationServlet.java it comes in line 116 onward.

As far as I know only these two files are concerned with the image paths. If there
are more files, I will update it.