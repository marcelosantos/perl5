#!/bin/sh
#
# This file was produced by running the Configure script. It holds all the
# definitions figured out by Configure. Should you modify one of these values,
# do not forget to propagate your changes by running "Configure -der". You may
# instead choose to run each of the .SH files by yourself, or "Configure -S".
#

# MACPERL USERS:
# DO NOT MAKE A CHANGE HERE WITHOUT MAKING CORRESPONDING CHANGE IN config.h!
# (yes, this should be done automatically)

# Package name      : perl5
# Source directory  : /usr/src/maintperl
# Configuration time: Wed Feb 21 00:34:43 EST 2001
# Configured by     : root
# Target system     : linux williams 2.2.15-2.9.0 #1 tue mar 7 20:09:37 mst 2000 ppc unknown 

Author='pudge'
Date='$Date'
Header=''
Id='$Id'
Locker=''
Log='$Log'
Mcc='C'
RCSfile='$RCSfile'
Revision='$Revision'
Source=''
State=''
_a=''
_exe=''
_o=''
afs='false'
alignbytes='8'
ansi2knr=''
aphostname=''
api_revision='5'
api_subversion='0'
api_version='6'
api_versionstring='5.6.0'
ar=''
archlib=''
archlibexp=''
archname64=''
archname=''
archobjs=''
awk='gawk'
baserev='5.0'
bash=''
bin='"~:Tools:"'
bincompat5005='undef'
binexp=''
bison='bison'
byacc='byacc'
byteorder='4321'
c='C'
castflags='1'
cat='catenate'
cc=''
cccdlflags=''
ccdlflags=''
ccflags=''
ccflags_uselargefiles=''
ccname=''
ccsymbols=''
ccversion=''
cf_by='pudge'
cf_email='pudge@pobox.com'
cf_time='Wed Feb 21 00:34:43 EST 2001'
charsize='1'
chgrp=''
chmod=''
chown=''
clocktype='clock_t'
comm=''
compress=''
contains='grep'
cp='duplicate'
cpio=''
cpp='C -e'
cpp_stuff=''
cppccsymbols=''
cppflags=''
cpplast='undef'
cppminus='"Dev:Console"'
cpprun='undef'
cppstdin='cc -E'
cppstdin='"C -e"'
cppsymbols=''
crosscompile='define'
cryptlib=''
csh='undef'
d_Gconvert='sprintf((b),"%.*g",(n),(x))'
d_PRIEUldbl='define'
d_PRIFUldbl='define'
d_PRIGUldbl='define'
d_PRIXU64='define'
d_PRId64='define'
d_PRIeldbl='define'
d_PRIfldbl='define'
d_PRIgldbl='define'
d_PRIi64='define'
d_PRIo64='define'
d_PRIu64='define'
d_PRIx64='define'
d_SCNfldbl='define'
d__fwalk='undef'
d_access='define'
d_accessx='undef'
d_alarm='define'
d_archlib='undef'
d_atolf='undef'
d_atoll='undef'
d_attribut='undef'
d_bcmp='define'
d_bcopy='define'
d_bincompat5005='undef'
d_bsd='undef'
d_bsdgetpgrp='undef'
d_bsdsetpgrp='undef'
d_bzero='define'
d_casti32='define'
d_castneg='undef'
d_charvspr='define'
d_chown='undef'
d_chroot='undef'
d_chsize='undef'
d_closedir='define'
d_const='define'
d_crypt='define'
d_csh='undef'
d_cuserid='undef'
d_dbl_dig='define'
d_difftime='define'
d_dirnamlen='undef'
d_dlerror='undef'
d_dlopen='undef'
d_dlsymun='undef'
d_dosuid='undef'
d_drand48proto='undef'
d_dup2='define'
d_eaccess='undef'
d_endgrent='undef'
d_endhent='undef'
d_endnent='undef'
d_endpent='undef'
d_endpwent='undef'
d_endsent='define'
d_eofnblk='define'
d_eunice='undef'
d_fchmod='undef'
d_fchown='undef'
d_fcntl='define'
d_fcntl_can_lock='undef'
d_fd_macros='define'
d_fd_set='define'
d_fds_bits='define'
d_fgetpos='define'
d_flexfnam='define'
d_flock='undef'
d_fork='undef'
d_fpathconf='undef'
d_fpos64_t='undef'
d_frexpl='define'
d_fs_data_s='undef'
d_fseeko='undef'
d_fsetpos='define'
d_fstatfs='undef'
d_fstatvfs='undef'
d_fsync='define'
d_ftello='undef'
d_ftime='undef'
d_getcwd='define'
d_getespwnam='undef'
d_getfsstat='undef'
d_getgrent='undef'
d_getgrps='undef'
d_gethbyaddr='define'
d_gethbyname='define'
d_gethent='undef'
d_gethname='define'
d_gethostprotos='define'
d_getlogin='undef'
d_getmnt='undef'
d_getmntent='undef'
d_getnbyaddr='undef'
d_getnbyname='undef'
d_getnent='undef'
d_getnetprotos='undef'
d_getpagsz='undef'
d_getpbyname='define'
d_getpbynumber='define'
d_getpent='undef'
d_getpgid='undef'
d_getpgrp2='undef'
d_getpgrp='undef'
d_getppid='undef'
d_getprior='undef'
d_getprotoprotos='define'
d_getprpwnam='undef'
d_getpwent='undef'
d_getsbyname='define'
d_getsbyport='define'
d_getsent='define'
d_getservprotos='define'
d_getspnam='undef'
d_gettimeod='define'
d_gnulibc='undef'
d_grpasswd='undef'
d_hasmntopt='undef'
d_htonl='define'
d_iconv='undef'
d_index='undef'
d_inetaton='define'
d_int64_t='define'
d_isascii='define'
d_isnan='define'
d_isnanl='undef'
d_killpg='undef'
d_lchown='undef'
d_ldbl_dig='undef'
d_link='undef'
d_locconv='define'
d_lockf='undef'
d_longdbl='undef'
d_longlong='undef'
d_lseekproto='define'
d_lstat='define'
d_madvise='undef'
d_mblen='undef'
d_mbstowcs='undef'
d_mbtowc='undef'
d_memchr='define'
d_memcmp='define'
d_memcpy='define'
d_memmove='define'
d_memset='define'
d_mkdir='define'
d_mkdtemp='define'
d_mkfifo='undef'
d_mkstemp='undef'
d_mkstemps='undef'
d_mktime='define'
d_mmap='undef'
d_modfl='define'
d_mprotect='undef'
d_msg='undef'
d_msg_ctrunc='undef'
d_msg_dontroute='undef'
d_msg_oob='define'
d_msg_peek='define'
d_msg_proxy='undef'
d_msgctl='define'
d_msgget='define'
d_msgrcv='define'
d_msgsnd='define'
d_msync='undef'
d_munmap='undef'
d_mymalloc='undef'
d_nice='undef'
d_nv_preserves_uv='define'
d_nv_preserves_uv_bits='53'
d_off64_t='undef'
d_old_pthread_create_joinable='undef'
d_oldpthreads='undef'
d_oldsock='undef'
d_open3='undef'
d_pathconf='undef'
d_pause='define'
d_perl_otherlibdirs='undef'
d_phostname='undef'
d_pipe='define'
d_poll='undef'
d_portable='undef'
d_pthread_yield='undef'
d_pwage='undef'
d_pwchange='undef'
d_pwclass='undef'
d_pwcomment='undef'
d_pwexpire='undef'
d_pwgecos='undef'
d_pwpasswd='undef'
d_pwquota='undef'
d_qgcvt='undef'
d_quad='define'
d_readdir='define'
d_readlink='define'
d_rename='define'
d_rewinddir='define'
d_rmdir='define'
d_safebcpy='define'
d_safemcpy='undef'
d_sanemcmp='define'
d_sbrkproto='undef'
d_sched_yield='define'
d_scm_rights='undef'
d_seekdir='define'
d_select='define'
d_sem='undef'
d_semctl='undef'
d_semctl_semid_ds='undef'
d_semctl_semun='undef'
d_semget='undef'
d_semop='undef'
d_setegid='undef'
d_seteuid='undef'
d_setgrent='undef'
d_setgrps='undef'
d_sethent='undef'
d_setlinebuf='define'
d_setlocale='define'
d_setnent='undef'
d_setpent='undef'
d_setpgid='undef'
d_setpgrp2='undef'
d_setpgrp='undef'
d_setprior='undef'
d_setproctitle='undef'
d_setpwent='undef'
d_setregid='undef'
d_setresgid='undef'
d_setresuid='undef'
d_setreuid='undef'
d_setrgid='undef'
d_setruid='undef'
d_setsent='undef'
d_setsid='undef'
d_setvbuf='define'
d_sfio='define'
d_shm='undef'
d_shmat='undef'
d_shmatprototype='undef'
d_shmctl='undef'
d_shmdt='undef'
d_shmget='undef'
d_sigaction='define'
d_sigprocmask='define'
d_sigsetjmp='undef'
d_socket='define'
d_socklen_t='define'
d_sockpair='define'
d_socks5_init='undef'
d_sqrtl='define'
d_statblks='define'
d_statfs_f_flags='undef'
d_statfs_s='undef'
d_statvfs='undef'
d_stdio_cnt_lval='undef'
d_stdio_ptr_lval='undef'
d_stdio_ptr_lval_nochange_cnt='undef'
d_stdio_ptr_lval_sets_cnt='undef'
d_stdio_stream_array='undef'
d_stdiobase='undef'
d_stdstdio='define'
d_strchr='define'
d_strcoll='define'
d_strctcpy='define'
d_strerrm=''
d_strerror='undef'
d_strtod='define'
d_strtol='define'
d_strtold='undef'
d_strtoll='define'
d_strtoq='undef'
d_strtoul='define'
d_strtoull='undef'
d_strtouq='undef'
d_strxfrm='define'
d_suidsafe='undef'
d_symlink='define'
d_syscall='undef'
d_sysconf='undef'
d_sysernlst=''
d_syserrlst='define'
d_system='define'
d_tcgetpgrp='undef'
d_tcsetpgrp='undef'
d_telldir='define'
d_telldirproto='define'
d_time='define'
d_times='define'
d_truncate='define'
d_tzname='undef'
d_umask='undef'
d_uname='undef'
d_union_semun='undef'
d_ustat='undef'
d_vendorarch='undef'
d_vendorbin='undef'
d_vendorlib='undef'
d_vfork='undef'
d_void_closedir='define'
d_voidsig='undef'
d_voidtty=''
d_volatile='define'
d_vprintf='define'
d_wait4='undef'
d_waitpid='undef'
d_wcstombs='undef'
d_wctomb='undef'
d_xenix='undef'
date='date'
db_hashtype='u_int32_t'
db_prefixtype='size_t'
defvoidused='15'
direntrytype='struct dirent'
dlext=''
dlsrc='dl_mac.xs'
dont_use_nlink='define'
doublesize='8'
drand01='(rand() / 32768.0)'
dynamic_ext=''
eagain='EWOULDBLOCK'
ebcdic='undef'
echo='echo'
egrep='egrep'
emacs=''
eunicefix=':'
exe_ext=''
expr='expr'
extensions='B ByteLoader Data/Dumper DB_File Devel/DProf Devel/Peek DynaLoader Fcntl File/Glob IO NDBM_File Opcode POSIX Socket Sys/Hostname attrs re Filter/Util/Call Compress/Zlib Digest/MD5 HTML/Parser List/Util MIME/Base64 Storable Time/HiRes'
fflushNULL='define'
fflushall='undef'
find=''
firstmakefile='makefile'
flex='flex'
fpossize='4'
fpostype='long'
freetype='void'
full_ar=''
full_csh=''
full_sed=''
gccosandvers=''
gccversion=''
gidformat='"u"'
gidsign='1'
gidsize='4'
gidtype='gid_t'
glibpth=''
grep='grep'
groupcat=''
groupstype='gid_t'
gzip=''
h_fcntl='true'
h_sysfile='false'
hint=''
hostcat=''
i16size='2'
i16type='int16_t'
i32size='4'
i32type='int32_t'
i64size='8'
i64type='int64_t'
i8size='1'
i8type='int8_t'
i_arpainet='define'
i_bsdioctl=''
i_db='define'
i_dbm='define'
i_dirent='define'
i_dld='undef'
i_dlfcn='undef'
i_fcntl='define'
i_float='define'
i_gdbm='undef'
i_grp='undef'
i_iconv='undef'
i_ieeefp='undef'
i_inttypes='define'
i_libutil='undef'
i_limits='define'
i_locale='define'
i_machcthr='undef'
i_malloc='undef'
i_math='define'
i_memory='undef'
i_mntent='undef'
i_ndbm='define'
i_netdb='define'
i_neterrno='undef'
i_netinettcp='undef'
i_niin='define'
i_poll='undef'
i_prot='undef'
i_pthread='undef'
i_pwd='undef'
i_rpcsvcdbm='undef'
i_sfio='define'
i_sgtty='undef'
i_shadow='undef'
i_socks='undef'
i_stdarg='define'
i_stddef='define'
i_stdlib='define'
i_string='define'
i_sunmath='undef'
i_sysaccess='undef'
i_sysdir='undef'
i_sysfile='undef'
i_sysfilio='undef'
i_sysin='undef'
i_sysioctl='define'
i_syslog='undef'
i_sysmman='undef'
i_sysmode='undef'
i_sysmount='undef'
i_sysndir='undef'
i_sysparam='undef'
i_sysresrc='undef'
i_syssecrt='undef'
i_sysselct='undef'
i_syssockio='undef'
i_sysstat='define'
i_sysstatfs='undef'
i_sysstatvfs='undef'
i_systime='define'
i_systimek='undef'
i_systimes='undef'
i_systypes='define'
i_sysuio='undef'
i_sysun='undef'
i_sysutsname='undef'
i_sysvfs='undef'
i_syswait='undef'
i_termio='undef'
i_termios='undef'
i_time='define'
i_unistd='define'
i_ustat='undef'
i_utime='define'
i_values='undef'
i_varargs='undef'
i_varhdr='stdarg.h'
i_vfork='undef'
ignore_versioned_solibs='y'
inc_version_list=' '
inc_version_list_init='0'
incpath=''
inews=''
installarchlib=''
installbin=''
installman1dir=''
installman3dir=''
installprefix=''
installprefixexp=''
installprivlib=''
installscript=''
installsitearch=''
installsitebin=''
installsitelib=''
installstyle=''
installusrbinperl='undef'
installvendorarch=''
installvendorbin=''
installvendorlib=''
intsize='4'
ivdformat='"d"'
ivsize='4'
ivtype='int'
known_extensions=''
ksh=''
ld=''
lddlflags=''
ldflags=''
ldflags_uselargefiles=''
ldlibpthname=''
less=''
lib_ext=''
libc=''
libperl=''
libpth=''
libs=''
libsdirs=''
libsfiles=''
libsfound=''
libspath=''
libswanted=''
libswanted_uselargefiles=''
line=''
lint=''
lkflags=''
ln=''
lns=''
locincpth=''
loclibpth=''
longdblsize=''
longlongsize=''
longsize='4'
lp=''
lpr='print'
ls='files'
lseeksize='4'
lseektype='off_t'
mail=''
mailx=''
make='buildprogram'
make_set_make=''
mallocobj=''
mallocsrc=''
malloctype='void *'
man1dir=''
man1direxp=''
man1ext=''
man3dir=''
man3direxp=''
man3ext=''
mips_type=''
mkdir='newfolder'
mmaptype=''
modetype='mode_t'
more=''
multiarch='define'
mv='move'
myarchname=''
mydomain=''
myhostname=''
myuname='MacOS'
n=''
need_va_copy='undef'
netdb_hlen_type='size_t'
netdb_host_type='void *'
netdb_name_type='char *'
netdb_net_type='void *'
nm=''
nm_opt=''
nm_so_opt=''
nonxs_ext=''
nroff=''
nvEUformat='"E"'
nvFUformat='"F"'
nvGUformat='"G"'
nveformat='"e"'
nvfformat='"f"'
nvgformat='"g"'
nvsize='8'
nvtype='double'
o_nonblock='O_NONBLOCK'
obj_ext='.o'
old_pthread_create_joinable=''
optimize=''
orderlib=''
osname='MacOS'
osvers='9.1'
otherlibdirs=' '
package='perl5'
pager=''
passcat=''
patchlevel='6'
path_sep=','
perl5='perl'
perl=''
perladmin='pudge@pobox.com'
perllibs=''
perlpath=''
pg=''
phostname=''
pidtype='pid_t'
plibpth=''
pm_apiversion='5.6.0'
pmake=''
pr=''
prefix=''
prefixexp=''
privlib=''
privlibexp=''
prototype='define'
ptrsize='4'
quadkind='QUAD_IS_INT64_T'
quadtype='int64_t'
randbits='15'
randfunc='rand'
randseedtype='unsigned int'
ranlib=''
rd_nodata='-1'
revision='5'
rm='delete'
rmail=''
runnm=''
sPRIEUldbl='"LE"'
sPRIFUldbl='"LF"'
sPRIGUldbl='"LG"'
sPRIXU64='"llX"'
sPRId64='"lld"'
sPRIeldbl='"Le"'
sPRIfldbl='"Lf"'
sPRIgldbl='"Lg"'
sPRIi64='"lli"'
sPRIo64='"llo"'
sPRIu64='"llu"'
sPRIx64='"llx"'
sSCNfldbl='"Lf"'
sched_yield='sched_yield()'
scriptdir=''
scriptdirexp=''
sed='sed'
seedfunc='srand((Rand_seed_t)x)'
selectminbits='32'
selecttype='fd_set *'
sendmail=''
sh=''
shar=''
sharpbang='#!'
shmattype=''
shortsize='2'
shrpenv=''
shsharp=''
sig_count='16'
sig_name='NUM0 NUM1 INT NUM3 ILL NUM5 NUM6 NUM7 FPE NUM9 NUM10 SEGV NUM12 NUM13 ALRM TERM '
sig_name_init='"NUM0", "NUM1", "INT", "NUM3", "ILL", "NUM5", "NUM6", "NUM7", "FPE", "NUM9", "NUM10", "SEGV", "NUM12", "NUM13", "ALRM", "TERM", 0'
sig_num='0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 '
sig_num_init='0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 0'
sig_size='16'
signal_t='void'
sitearch='undef'
sitearchexp=''
sitebin=''
sitebinexp=''
sitelib='undef'
sitelib_stem='undef'
sitelibexp=''
siteprefix=''
siteprefixexp=''
sizesize='4'
sizetype='size_t'
sleep=''
smail=''
so='so'
sockethdr=''
socketlib=''
socksizetype='socklen_t'
sort='sort'
spackage='Perl5'
spitshell=''
src=''
ssizetype='ssize_t'
startperl="Perl -Sx \"{0}\" {\"Parameters\"}; Exit {Status}\n#!perl"
startsh=''
static_ext='B ByteLoader Data/Dumper DB_File Devel/DProf Devel/Peek DynaLoader Fcntl File/Glob IO NDBM_File Opcode POSIX Socket Sys/Hostname attrs re Filter/Util/Call Compress/Zlib Digest/MD5 HTML/Parser List/Util MIME/Base64 Storable Time/HiRes'
stdchar='char'
stdio_base=''
stdio_bufsiz=''
stdio_cnt=''
stdio_filbuf=''
stdio_ptr=''
stdio_stream_array=''
strings='string.h'
submit=''
subversion='1'
sysman=''
tail=''
tar=''
tbl=''
tee=''
test=''
timeincl='time.h'
timetype='time_t'
touch='setfile -m .'
tr=''
trnl=''
troff=''
u16size='2'
u16type='uint16_t'
u32size='4'
u32type='uint32_t'
u64size='8'
u64type='uint64_t'
u8size='1'
u8type='uint8_t'
uidformat='"u"'
uidsign='1'
uidsize='4'
uidtype='uid_t'
uname=''
uniq=''
uquadtype='uint64_t'
use5005threads='undef'
use64bitall='undef'
use64bitint='undef'
usedl='define'
useithreads='undef'
uselargefiles='undef'
uselongdouble='undef'
usemorebits='undef'
usemultiplicity='define'
usemymalloc='n'
usenm='false'
useopcode='true'
useperlio='define'
useposix='true'
usesfio='true'
useshrplib='false'
usesocks='undef'
usethreads='undef'
usevendorprefix='undef'
usevfork='false'
usrinc=''
uuname=''
uvXUformat='"X"'
uvoformat='"o"'
uvsize='4'
uvtype='unsigned int'
uvuformat='"u"'
uvxformat='"x"'
vendorarch=''
vendorarchexp=''
vendorbin=''
vendorbinexp=''
vendorlib=''
vendorlib_stem=''
vendorlibexp=''
vendorprefix=''
vendorprefixexp=''
version='5.6.1'
versiononly='undef'
vi=''
voidflags='15'
xlibpth=''
xs_apiversion='5.6.0'
zcat=''
zip=''
# Configure command line arguments.
PERL_REVISION='5'
PERL_VERSION='6'
PERL_SUBVERSION='1'
PERL_API_REVISION='5'
PERL_API_VERSION='6'
PERL_API_SUBVERSION='0'
PERL_CONFIG_SH='true'
CONFIG='true'
