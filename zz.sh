#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY���� [�Y
 ]���?������ O  �  � P~*�h P5P�I�G��S�m!�4��j�Ph�  4hѦ�FC A��  �U            44dѣF� ��  d�$H�4�)�G���OA��M��5<B3PbV��p+��mBGɇ���u���[�H����>j&`�{�/���
A��2YAp��q�=LD�l��/�~��J5-��'�QzB�|oQ=J�c.��ˉ�d@���������͢�d{c��a�B^���\�!�Ap)-��c��h�Z�CND�(S�}]��1!���H��j��J�_
�LA�_�h"�� � @���	�R�jnj�X;P����N�%�&�Y�J��Z	o�j�ϫIDw���u��Pw\�GF�q�`�	��� ��k�:;�����*��X0tu�>Z�@�$�䔋�.54��&�R��j�� 1#xe 	�����A��)�]"b�UD����Z����Y���z*Z����W6Z��TK��b��=Q�FNY������P�*���2�V�šɁ�?E��C1�um��i�R:��C�"�G9���#��!\;�4�\��VG;	�� C_✹֭�Z�m��!6>���RAD��_�%0�$��	��Uq�qvCȼ�V����Z�޺<a�<�H]0�L1e�)�G�%]��Qb�ܐ�У6�Z��&V�c@��uHVwp 鄨+���\�����th%w1!y��A�/���Z�p#e[i�73Z�B�7��1��{�C1	$3&r f��y8�VVZ�r5���p,/ISrkIx�b�>�DJH+���	l�f �L����)u��Z�eɮa�o��'�̾��4o2�m*d^^���}o��h�Wڡ�4� m!vgn4//�3mT$k�jU���k2f�K*��TW�>��[l���*���E7�;�C2��YwPh�P�p��XI	��o<�i}$�M}��i$�@*�|��|Ą"I���!d(�$�C���J	�
�r�"��b!�&���Dm@�����H�
еt 