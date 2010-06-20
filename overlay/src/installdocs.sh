#!/bin/bash
DESTDIR="/mnt"
clear
echo
echo
echo "Copying Docs . . ."
rm -rf ${DESTDIR}/etc/archbang
rm -rf ${DESTDIR}/usr/share/doc/archbang
rm -f ${DESTDIR}/etc/arch-release &> /dev/null
rm -rf ${DESTDIR}/usr/share/doc/archbang/ &> /dev/null
echo "2010.09 - Testing - \"apeiro\" - GIT Build" > ${DESTDIR}/etc/archbang.release
mkdir -p ${DESTDIR}/etc/archbang
cp -a /etc/archbang/*.png ${DESTDIR}/etc/archbang
echo "1" > ${DESTDIR}/etc/archbang/updater.conf
mkdir -p ${DESTDIR}/usr/share/doc/
cp -r /src/archbang ${DESTDIR}/usr/share/doc/ &> /dev/null
touch ${DESTDIR}/usr/share/doc/archbang/CHANGELOG
echo "GIT log can be found here: /usr/share/doc/archbang/GITLOG" > ${DESTDIR}/usr/share/doc/archbang/CHANGELOG
echo "	" >> ${DESTDIR}/usr/share/doc/CHANGELOG
echo "CHANGES since 2010.06" >> ${DESTDIR}/usr/share/doc/archbang/CHANGELOG
echo "---------------------" >> ${DESTDIR}/usr/share/doc/archbang/CHANGELOG
echo "	" >> ${DESTDIR}/usr/share/doc/archbang/CHANGELOG
pacman -Q | sort >> ${DESTDIR}/usr/share/doc/archbang/CHANGELOG
echo
echo "Done!"