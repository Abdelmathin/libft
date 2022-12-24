#  **************************************************************************  #
#                                                                              #
#                                                          :::      ::::::::   #
#    reject.py                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahabachi <ahabachi@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/21 13:45:03 by ahabachi          #+#    #+#              #
#    Updated: 2022/11/24 17:01:00 by ahabachi         ###   ########.fr        #
#                                                                              #
#  **************************************************************************  #

# By: Abdelmathin Habachi

import os;
import sys;

SEP = os.sep;
ignored = ['.', '..', '.git', __file__]
MAGIC_WORD = 'ORIGINAL_FILES='

def find(dirname):
	ret = [];
	try:
		for basename in os.listdir(dirname):
			filename = dirname + SEP + basename;
			if (basename in ignored):
				continue ;
			ret.append(filename);
			ret += find(filename);
	except:
		pass
	return (ret);

def dirnameof(filename):
	while (SEP + SEP in filename):
		filename = filename.replace(SEP + SEP, SEP);
	while (filename.startswith('.' + SEP)):
		filename = filename[1 + len(SEP):];
	while (filename.endswith(SEP)):
		filename = filename[:-len(SEP)]
	if (not(SEP in filename)):
		return (os.getcwd());
	dirname = filename[:-len(filename.split(SEP)[-1])]
	return (dirname);

def remove_duplicates(mylist):
	return (list(dict.fromkeys(mylist)))

def removefiles(x):
	x = remove_duplicates(x);
	while (x):
		if ('' in x):
			x.remove('')
		i = 0;
		while (i < len(x)):
			file = x[i];
			if (not (file) or not (os.path.exists(file))):
				x[i] = '';
				i = i + 1;
				continue ;
			try:
				os.unlink(file);
			except:
				try:
					os.remove(file);
				except:
					try:
						os.rmdir(file);
					except:
						pass ;
			if (not (os.path.exists(file))):
				print ('remove(\'' + file + '\')');
				x[i] = '';
			i = i + 1;

def fix_filename(filename, work_dir):
	filename = filename.strip();
	if (not filename):
		return ('');
	if (not filename.startswith(SEP)):
		filename = work_dir + SEP + filename;
	while (SEP+SEP in filename):
		filename = filename.replace(SEP+SEP, SEP);
	while (filename.endswith(SEP)):
		filename = filename[:-1];
	if ('.git' in ignored):
		if (SEP + '.git' + SEP in filename):
			return ('');
		if (filename.startswith('.git' + SEP)):
			return ('');
	if (filename in ignored):
		return ('');
	return (filename);

def fix_files(files, work_dir):
	nfiles = [];
	for file in files:
		file = fix_filename(file, work_dir).strip();
		if (file):
			nfiles.append(file);
	return (nfiles);

def reject_files(ofiles, work_dir = os.getcwd()):
	ofiles = ofiles.strip();
	if not(ofiles):
		return ;
	for i in '\r\t\n\f\b':
		ofiles = ofiles.replace(i, ' ');
	while ('  ' in ofiles):
		ofiles = ofiles.replace('  ', ' ');
	ofiles = ofiles.strip();
	ofiles = ofiles.split(' ');
	ofiles = fix_files(ofiles, work_dir);
	rejected = fix_files(find(work_dir), work_dir);
	for file in ofiles:
		file = fix_filename(file, work_dir);
		if (not file):
			continue ;
		# khask t rejecti: filename + dirname dyalo + dirname dyalo ...
		filename = '';
		for sp in file.split(SEP):
			filename += sp;
			while (filename in rejected):
				rejected.remove(filename);
			filename += SEP;
	removefiles(rejected);

def get_files_from_makefile(makefile):
	content = '';
	try:
		content = open(makefile, 'r').read();
	except:
		print ('Makefile not found!')
		return ('');
	content = content.replace('\t', ' ');
	while ('= ' in content):
		content = content.replace('= ', '=');
	while (' =' in content):
		content = content.replace(' =', '=');
	if (not (MAGIC_WORD in content)):
		print ('Please add a variable called (ORIGINAL_FILES) '+
			'like this in your Makefile: ');
		print ('\tORIGINAL_FILES = file1.c file2.cpp file3.py ...\n');
		print ('All files not in the (Original Files) list will be removed, '+
			'except: [\'.\', \'..\', \'.git\']');
		exit(1)
	content = content.replace('\\\n', ' ');
	content = content.replace('\\', ' ');
	while ('  ' in content):
		content = content.replace('  ', ' ');
	return (content.split(MAGIC_WORD)[1].split('\n')[0]);

def main(argc, argv):
	if (argc > 1 and argv[1] == '-m'):
		if (argc > 2):
			reject_files(get_files_from_makefile(argv[2]), dirnameof(argv[2]));
		else:
			reject_files(get_files_from_makefile('Makefile'));
		return ;
	print('usage: python reject.py -m Makefile')

if (__name__ == '__main__'):
	main(len(sys.argv), list(sys.argv))

