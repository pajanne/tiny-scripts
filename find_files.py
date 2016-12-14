import os
import time
import glob

# Define variables
xdays = 20
path = '/mnt/comp-ftpdmz001/public/'
now = time.time()

# List all files newer than xdays
for root, dirs, files in os.walk(path):
    for name in files:
        filename = os.path.join(root, name)
        if os.stat(filename).st_mtime > now - (xdays * 86400):
            if filename.endswith('.contents.csv'):
                values = filename.split('.')
                # Check if same number of files are found on FTP server and on staging area
                ftp_files = glob.glob('%s*%s*' % (values[0], values[-4]))
                staging_files = glob.glob('%s*%s*' % (values[0].replace('/mnt/comp-ftpdmz001/public/', '/staging/*%s*/external/' % values[-4]), values[-4]))
                print(values[0], values[-4], len(ftp_files), len(staging_files))
                if not len(ftp_files) == len(staging_files):
                    print('>>> WARNING: not same number of files!')
