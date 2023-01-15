#  **************************************************************************  #
#                                                                              #
#                                                          :::      ::::::::   #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahabachi <ahabachi@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/24 17:06:56 by ahabachi          #+#    #+#              #
#    Updated: 2022/11/24 17:13:37 by ahabachi         ###   ########.fr        #
#                                                                              #
#  **************************************************************************  #
#                                                                              #
#       ▄            ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄   ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄        #
#      ▐░▌          ▐░░░░░░░░░░░▌▐░░░░░░░░░░▌ ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌       #
#      ▐░▌           ▀▀▀▀█░█▀▀▀▀ ▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀▀▀  ▀▀▀▀█░█▀▀▀▀        #
#      ▐░▌               ▐░▌     ▐░▌       ▐░▌▐░▌               ▐░▌            #
#      ▐░▌               ▐░▌     ▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄▄▄      ▐░▌            #
#      ▐░▌               ▐░▌     ▐░░░░░░░░░░▌ ▐░░░░░░░░░░░▌     ▐░▌            #
#      ▐░▌               ▐░▌     ▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀▀▀      ▐░▌            #
#      ▐░▌               ▐░▌     ▐░▌       ▐░▌▐░▌               ▐░▌            #
#      ▐░█▄▄▄▄▄▄▄▄▄  ▄▄▄▄█░█▄▄▄▄ ▐░█▄▄▄▄▄▄▄█░▌▐░▌               ▐░▌            #
#      ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░▌ ▐░▌               ▐░▌            #
#       ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀   ▀                 ▀             #
#                                                                              #
#  **************************************************************************  #
#   █████████            ██████████         ██████████         ██████████      #
#   ██     ██                    ██                 ██         ██      ██      #
#          ██                    ██                 ██         ██      ██      #
#          ██                    ██                 ██                 ██      #
#          ██            ██████████         ██████████                 ██      #
#          ██                    ██                 ██                 ██      #
#          ██                    ██                 ██                 ██      #
#          ██                    ██                 ██                 ██      #
#       ████████         ██████████         ██████████                 ██      #
#                                                                              #
#  **************************************************************************  #

MANDA_SOURCES	=	ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c\
					ft_isprint.c ft_strlen.c ft_memset.c ft_bzero.c ft_memcpy.c\
					ft_memmove.c ft_strlcpy.c ft_strlcat.c ft_toupper.c\
					ft_tolower.c ft_strchr.c ft_strrchr.c ft_strncmp.c\
					ft_memchr.c ft_memcmp.c ft_strnstr.c ft_atoi.c ft_calloc.c\
					ft_strdup.c ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c\
					ft_itoa.c ft_strmapi.c ft_striteri.c ft_putchar_fd.c\
					ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c

BONUS_SOURCES	=	ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c ft_lstlast_bonus.c\
					ft_lstadd_back_bonus.c ft_lstdelone_bonus.c ft_lstclear_bonus.c ft_lstiter_bonus.c\
					ft_lstmap_bonus.c

MANDA_OBJECTS	=	${MANDA_SOURCES:.c=.o}
BONUS_OBJECTS	=	${BONUS_SOURCES:.c=.o}

FLAGS	= -Wall -Wextra -Werror
NAME	= libft.a
APPEND	= ar rc
CC		= cc
REMOVE	= rm -rf

.PHONY:	all bonus clean fclean re reset push norm

%.o: %.c libft.h
	${CC} ${FLAGS} -c $< -o ${<:.c=.o}

${NAME}: ${MANDA_OBJECTS} libft.h
	${APPEND} ${NAME} ${MANDA_OBJECTS}

all:	${NAME}

bonus:	${BONUS_OBJECTS} ${NAME}
	${APPEND} ${NAME} ${BONUS_OBJECTS}

clean:
	${REMOVE} ${MANDA_OBJECTS}
	${REMOVE} ${BONUS_OBJECTS}

fclean:	clean
	${REMOVE} ${NAME}

re: fclean all

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

# ORIGINAL_FILES #
ORIGINAL_FILES			=	LICENSE                 ft_memmove.c\
							Makefile                ft_memset.c\
							README.md               ft_putchar_fd.c\
							ft_atoi.c               ft_putendl_fd.c\
							ft_bzero.c              ft_putnbr_fd.c\
							ft_calloc.c             ft_putstr_fd.c\
							ft_isalnum.c            ft_split.c\
							ft_isalpha.c            ft_strchr.c\
							ft_isascii.c            ft_strdup.c\
							ft_isdigit.c            ft_striteri.c\
							ft_isprint.c            ft_strjoin.c\
							ft_itoa.c               ft_strlcat.c\
							ft_lstadd_back_bonus.c  ft_strlcpy.c\
							ft_lstadd_front_bonus.c ft_strlen.c\
							ft_lstclear_bonus.c     ft_strmapi.c\
							ft_lstdelone_bonus.c    ft_strncmp.c\
							ft_lstiter_bonus.c      ft_strnstr.c\
							ft_lstlast_bonus.c      ft_strrchr.c\
							ft_lstmap_bonus.c       ft_strtrim.c\
							ft_lstnew_bonus.c       ft_substr.c\
							ft_lstsize_bonus.c      ft_tolower.c\
							ft_memchr.c             ft_toupper.c\
							ft_memcmp.c             libft.h\
							ft_memcpy.c

# ORIGINAL_FILES #

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
DOLAR		=	$
TAB			=	\t
NEWLINE		=	\n
BACKSLASH	=	\\\\

define REJECT
#  **************************************************************************  #$(NEWLINE)#                                                                              #$(NEWLINE)#                                                          :::      ::::::::   #$(NEWLINE)#    reject.py                                          :+:      :+:    :+:    #$(NEWLINE)#                                                     +:+ +:+         +:+      #$(NEWLINE)#    By: ahabachi <ahabachi@student.1337.ma>        +#+  +:+       +#+         #$(NEWLINE)#                                                 +#+#+#+#+#+   +#+            #$(NEWLINE)#    Created: 2022/11/21 13:45:03 by ahabachi          #+#    #+#              #$(NEWLINE)#    Updated: 2022/11/24 17:01:00 by ahabachi         ###   ########.fr        #$(NEWLINE)#                                                                              #$(NEWLINE)#  **************************************************************************  #$(NEWLINE)$(NEWLINE)# By: Abdelmathin Habachi$(NEWLINE)$(NEWLINE)import os;$(NEWLINE)import sys;$(NEWLINE)$(NEWLINE)SEP = os.sep;$(NEWLINE)ignored = ['.', '..', '.git', __file__]$(NEWLINE)MAGIC_WORD = 'ORIGINAL_FILES='$(NEWLINE)$(NEWLINE)def find(dirname):$(NEWLINE)$(TAB)ret = [];$(NEWLINE)$(TAB)try:$(NEWLINE)$(TAB)$(TAB)for basename in os.listdir(dirname):$(NEWLINE)$(TAB)$(TAB)$(TAB)filename = dirname + SEP + basename;$(NEWLINE)$(TAB)$(TAB)$(TAB)if (basename in ignored):$(NEWLINE)$(TAB)$(TAB)$(TAB)$(TAB)continue ;$(NEWLINE)$(TAB)$(TAB)$(TAB)ret.append(filename);$(NEWLINE)$(TAB)$(TAB)$(TAB)ret += find(filename);$(NEWLINE)$(TAB)except:$(NEWLINE)$(TAB)$(TAB)pass$(NEWLINE)$(TAB)return (ret);$(NEWLINE)$(NEWLINE)def dirnameof(filename):$(NEWLINE)$(TAB)while (SEP + SEP in filename):$(NEWLINE)$(TAB)$(TAB)filename = filename.replace(SEP + SEP, SEP);$(NEWLINE)$(TAB)while (filename.startswith('.' + SEP)):$(NEWLINE)$(TAB)$(TAB)filename = filename[1 + len(SEP):];$(NEWLINE)$(TAB)while (filename.endswith(SEP)):$(NEWLINE)$(TAB)$(TAB)filename = filename[:-len(SEP)]$(NEWLINE)$(TAB)if (not(SEP in filename)):$(NEWLINE)$(TAB)$(TAB)return (os.getcwd());$(NEWLINE)$(TAB)dirname = filename[:-len(filename.split(SEP)[-1])]$(NEWLINE)$(TAB)return (dirname);$(NEWLINE)$(NEWLINE)def remove_duplicates(mylist):$(NEWLINE)$(TAB)return (list(dict.fromkeys(mylist)))$(NEWLINE)$(NEWLINE)def removefiles(x):$(NEWLINE)$(TAB)x = remove_duplicates(x);$(NEWLINE)$(TAB)while (x):$(NEWLINE)$(TAB)$(TAB)if ('' in x):$(NEWLINE)$(TAB)$(TAB)$(TAB)x.remove('')$(NEWLINE)$(TAB)$(TAB)i = 0;$(NEWLINE)$(TAB)$(TAB)while (i < len(x)):$(NEWLINE)$(TAB)$(TAB)$(TAB)file = x[i];$(NEWLINE)$(TAB)$(TAB)$(TAB)if (not (file) or not (os.path.exists(file))):$(NEWLINE)$(TAB)$(TAB)$(TAB)$(TAB)x[i] = '';$(NEWLINE)$(TAB)$(TAB)$(TAB)$(TAB)i = i + 1;$(NEWLINE)$(TAB)$(TAB)$(TAB)$(TAB)continue ;$(NEWLINE)$(TAB)$(TAB)$(TAB)try:$(NEWLINE)$(TAB)$(TAB)$(TAB)$(TAB)os.unlink(file);$(NEWLINE)$(TAB)$(TAB)$(TAB)except:$(NEWLINE)$(TAB)$(TAB)$(TAB)$(TAB)try:$(NEWLINE)$(TAB)$(TAB)$(TAB)$(TAB)$(TAB)os.remove(file);$(NEWLINE)$(TAB)$(TAB)$(TAB)$(TAB)except:$(NEWLINE)$(TAB)$(TAB)$(TAB)$(TAB)$(TAB)try:$(NEWLINE)$(TAB)$(TAB)$(TAB)$(TAB)$(TAB)$(TAB)os.rmdir(file);$(NEWLINE)$(TAB)$(TAB)$(TAB)$(TAB)$(TAB)except:$(NEWLINE)$(TAB)$(TAB)$(TAB)$(TAB)$(TAB)$(TAB)pass ;$(NEWLINE)$(TAB)$(TAB)$(TAB)if (not (os.path.exists(file))):$(NEWLINE)$(TAB)$(TAB)$(TAB)$(TAB)print ('remove($(BACKSLASH)'' + file + '$(BACKSLASH)')');$(NEWLINE)$(TAB)$(TAB)$(TAB)$(TAB)x[i] = '';$(NEWLINE)$(TAB)$(TAB)$(TAB)i = i + 1;$(NEWLINE)$(NEWLINE)def fix_filename(filename, work_dir):$(NEWLINE)$(TAB)filename = filename.strip();$(NEWLINE)$(TAB)if (not filename):$(NEWLINE)$(TAB)$(TAB)return ('');$(NEWLINE)$(TAB)if (not filename.startswith(SEP)):$(NEWLINE)$(TAB)$(TAB)filename = work_dir + SEP + filename;$(NEWLINE)$(TAB)while (SEP+SEP in filename):$(NEWLINE)$(TAB)$(TAB)filename = filename.replace(SEP+SEP, SEP);$(NEWLINE)$(TAB)while (filename.endswith(SEP)):$(NEWLINE)$(TAB)$(TAB)filename = filename[:-1];$(NEWLINE)$(TAB)if ('.git' in ignored):$(NEWLINE)$(TAB)$(TAB)if (SEP + '.git' + SEP in filename):$(NEWLINE)$(TAB)$(TAB)$(TAB)return ('');$(NEWLINE)$(TAB)$(TAB)if (filename.startswith('.git' + SEP)):$(NEWLINE)$(TAB)$(TAB)$(TAB)return ('');$(NEWLINE)$(TAB)if (filename in ignored):$(NEWLINE)$(TAB)$(TAB)return ('');$(NEWLINE)$(TAB)return (filename);$(NEWLINE)$(NEWLINE)def fix_files(files, work_dir):$(NEWLINE)$(TAB)nfiles = [];$(NEWLINE)$(TAB)for file in files:$(NEWLINE)$(TAB)$(TAB)file = fix_filename(file, work_dir).strip();$(NEWLINE)$(TAB)$(TAB)if (file):$(NEWLINE)$(TAB)$(TAB)$(TAB)nfiles.append(file);$(NEWLINE)$(TAB)return (nfiles);$(NEWLINE)$(NEWLINE)def reject_files(ofiles, work_dir = os.getcwd()):$(NEWLINE)$(TAB)ofiles = ofiles.strip();$(NEWLINE)$(TAB)if not(ofiles):$(NEWLINE)$(TAB)$(TAB)return ;$(NEWLINE)$(TAB)for i in '$(BACKSLASH)r$(BACKSLASH)t$(BACKSLASH)n$(BACKSLASH)f$(BACKSLASH)b':$(NEWLINE)$(TAB)$(TAB)ofiles = ofiles.replace(i, ' ');$(NEWLINE)$(TAB)while ('  ' in ofiles):$(NEWLINE)$(TAB)$(TAB)ofiles = ofiles.replace('  ', ' ');$(NEWLINE)$(TAB)ofiles = ofiles.strip();$(NEWLINE)$(TAB)ofiles = ofiles.split(' ');$(NEWLINE)$(TAB)ofiles = fix_files(ofiles, work_dir);$(NEWLINE)$(TAB)rejected = fix_files(find(work_dir), work_dir);$(NEWLINE)$(TAB)for file in ofiles:$(NEWLINE)$(TAB)$(TAB)file = fix_filename(file, work_dir);$(NEWLINE)$(TAB)$(TAB)if (not file):$(NEWLINE)$(TAB)$(TAB)$(TAB)continue ;$(NEWLINE)$(TAB)$(TAB)# khask t rejecti: filename + dirname dyalo + dirname dyalo ...$(NEWLINE)$(TAB)$(TAB)filename = '';$(NEWLINE)$(TAB)$(TAB)for sp in file.split(SEP):$(NEWLINE)$(TAB)$(TAB)$(TAB)filename += sp;$(NEWLINE)$(TAB)$(TAB)$(TAB)while (filename in rejected):$(NEWLINE)$(TAB)$(TAB)$(TAB)$(TAB)rejected.remove(filename);$(NEWLINE)$(TAB)$(TAB)$(TAB)filename += SEP;$(NEWLINE)$(TAB)removefiles(rejected);$(NEWLINE)$(NEWLINE)def get_files_from_makefile(makefile):$(NEWLINE)$(TAB)content = '';$(NEWLINE)$(TAB)try:$(NEWLINE)$(TAB)$(TAB)content = open(makefile, 'r').read();$(NEWLINE)$(TAB)except:$(NEWLINE)$(TAB)$(TAB)print ('Makefile not found!')$(NEWLINE)$(TAB)$(TAB)return ('');$(NEWLINE)$(TAB)content = content.replace('$(BACKSLASH)t', ' ');$(NEWLINE)$(TAB)while ('= ' in content):$(NEWLINE)$(TAB)$(TAB)content = content.replace('= ', '=');$(NEWLINE)$(TAB)while (' =' in content):$(NEWLINE)$(TAB)$(TAB)content = content.replace(' =', '=');$(NEWLINE)$(TAB)if (not (MAGIC_WORD in content)):$(NEWLINE)$(TAB)$(TAB)print ('Please add a variable called (ORIGINAL_FILES) '+$(NEWLINE)$(TAB)$(TAB)$(TAB)'like this in your Makefile: ');$(NEWLINE)$(TAB)$(TAB)print ('$(BACKSLASH)tORIGINAL_FILES = file1.c file2.cpp file3.py ...$(BACKSLASH)n');$(NEWLINE)$(TAB)$(TAB)print ('All files not in the (Original Files) list will be removed, '+$(NEWLINE)$(TAB)$(TAB)$(TAB)'except: [$(BACKSLASH)'.$(BACKSLASH)', $(BACKSLASH)'..$(BACKSLASH)', $(BACKSLASH)'.git$(BACKSLASH)']');$(NEWLINE)$(TAB)$(TAB)exit(1)$(NEWLINE)$(TAB)content = content.replace('$(BACKSLASH)$(BACKSLASH)$(BACKSLASH)n', ' ');$(NEWLINE)$(TAB)content = content.replace('$(BACKSLASH)$(BACKSLASH)', ' ');$(NEWLINE)$(TAB)while ('  ' in content):$(NEWLINE)$(TAB)$(TAB)content = content.replace('  ', ' ');$(NEWLINE)$(TAB)return (content.split(MAGIC_WORD)[1].split('$(BACKSLASH)n')[0]);$(NEWLINE)$(NEWLINE)def main(argc, argv):$(NEWLINE)$(TAB)if (argc > 1 and argv[1] == '-m'):$(NEWLINE)$(TAB)$(TAB)if (argc > 2):$(NEWLINE)$(TAB)$(TAB)$(TAB)reject_files(get_files_from_makefile(argv[2]), dirnameof(argv[2]));$(NEWLINE)$(TAB)$(TAB)else:$(NEWLINE)$(TAB)$(TAB)$(TAB)reject_files(get_files_from_makefile('Makefile'));$(NEWLINE)$(TAB)$(TAB)return ;$(NEWLINE)$(TAB)print('usage: python reject.py -m Makefile')$(NEWLINE)$(NEWLINE)if (__name__ == '__main__'):$(NEWLINE)$(TAB)main(len(sys.argv), list(sys.argv))$(NEWLINE)
endef

reset:
	@echo "${REJECT}" > reject.py
	@python reject.py -m Makefile
	@rm -rf reject.py
push: reset
	@git add .
	@git commit -m "committed on '`date`' by '`whoami`', hostname = '`hostname`'"
	@git push

norm:
	@norminette
