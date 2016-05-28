#
# Cookbook Name:: my-wordpress
# Attributes:: default
#
# Copyright 2016, myco
#
# All rights reserved - Do Not Redistribute
#

default['my-wordpress']['path'] = '/opt/wordpress'
default['my-wordpress']['group'] = 'www-data'
default['my-wordpress']['keys_auth'] = 'W,e~De*R=`J|]&`:5jh-T7nW+ 53LV%@>;@!> T&g8oapiXN-aT.4%)WnNs6yA;y'
default['my-wordpress']['keys_secure_auth'] = ' 4b(=Fl-_ -?:#):Q=Lx&iMa0>5|PdKcn]#[bCjJA~caC-|KQ]oR}h: 9%[Zh9LB'
default['my-wordpress']['keys_logged_in'] = 'WAMcjH1{AiS*Qy%dg|#(8}OL)XR@b7#dFd-*Ta&JrZ-#31cP<&I.5P^t$vdm9-+E'
default['my-wordpress']['keys_nonce'] = '-Ia~S0{y;} xAc/1.EB-Sq;oWe+aC/GiPyC<?nC ,v*|mR*F[p/~Cl]VF#5Q~FMf'
default['my-wordpress']['salt_auth'] = '[_+?H7^HgYq~[e+-WM=jeuqlJRJ:-*qc;4)$qjf|k7kPtn?p|8_Jn 5 vqSooTh<'
default['my-wordpress']['salt_secure_auth'] = 'p=WtL5l7h)>%j~-/O{5A1oN`3qkA_@:HFhjd( #:q;$xTln-82}Jl1+WZ.R0C+Y4'
default['my-wordpress']['salt_logged_in'] = '[fq#${fZ;|pw_||=_)M,h3`o|jZmw=eZ=#A<khc|tcYfx@w|Z<fSy9+eS&}j&&hT'
default['my-wordpress']['salt_nonce'] = '~<*|X4c+>7u$&4y`l`8_9z(*_;MNsJ_y^sRs6[S$#=jF?`L7#y^)}N.p|!O=ZJv+'
default['my-wordpress']['db_password'] = 'wp_1pass'