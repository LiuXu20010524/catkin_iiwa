#!/usr/bin/env python
# encoding: utf-8
import sys
import os
import fnmatch
import glob
sys.path.insert(0, sys.path[0]+'/waf_tools')

VERSION = '1.0.0'
APPNAME = 'kuka_fri'

srcdir = '.'
blddir = 'build'

from waflib.Build import BuildContext
from waflib import Logs
# from waflib.Tools import waf_unit_test


def options(opt):
    opt.load('compiler_cxx')
    opt.load('compiler_c')

    opt.add_option('--shared', action='store_true', help='build shared library', dest='build_shared')


def configure(conf):
    conf.load('compiler_cxx')
    conf.load('compiler_c')
    # conf.load('waf_unit_test')

    conf.env['lib_type'] = 'cxxstlib'
    if conf.options.build_shared:
        conf.env['lib_type'] = 'cxxshlib'

    if conf.env.CXX_NAME in ["icc", "icpc"]:
        common_flags = "-Wall -std=c++11"
        opt_flags = " -O3 -xHost -mtune=native -unroll -g"
    elif conf.env.CXX_NAME in ["clang"]:
        common_flags = "-Wall -std=c++11"
        opt_flags = " -O3 -march=native -g -faligned-new"
    else:
        gcc_version = int(conf.env['CC_VERSION'][0]+conf.env['CC_VERSION'][1])
        if gcc_version < 47:
            common_flags = "-Wall -std=c++0x"
        else:
            common_flags = "-Wall -std=c++11"
        opt_flags = " -O3 -march=native -g"
        if gcc_version >= 71:
            opt_flags = opt_flags + " -faligned-new"

    all_flags = common_flags + opt_flags
    conf.env['CXXFLAGS'] = conf.env['CXXFLAGS'] + all_flags.split(' ')
    print(conf.env['CXXFLAGS'])

# def summary(bld):
#     lst = getattr(bld, 'utest_results', [])
#     total = 0
#     tfail = 0
#     if lst:
#         total = len(lst)
#         tfail = len([x for x in lst if x[1]])
#     waf_unit_test.summary(bld)
#     if tfail > 0:
#         bld.fatal("Build failed, because some tests failed!")

def build(bld):
    files = []
    for root, dirnames, filenames in os.walk(bld.path.abspath()+'/src/kuka/pb'):
        for filename in fnmatch.filter(filenames, '*.c'):
            files.append(os.path.join(root, filename))
    files = [f[len(bld.path.abspath())+1:] for f in files]
    pb_srcs = " ".join(files)

    files = []
    for root, dirnames, filenames in os.walk(bld.path.abspath()+'/src/kuka/fri'):
        for filename in filenames:
            if filename.endswith(('.cpp', '.c')):
                files.append(os.path.join(root, filename))

    files = [f[len(bld.path.abspath())+1:] for f in files]
    fri_srcs = " ".join(files)

    # bld.program(features = 'cxx cxxstlib',
    #             source = pb_srcs,
    #             target = 'kuka_pb')

    bld.program(features = 'cxx ' + bld.env['lib_type'],
                source = fri_srcs + " " + pb_srcs,
                includes = './src',
                # use = 'kuka_pb',
                target = 'kuka_fri')

    bld.program(features = 'cxx',
                install_path = None,
                source = 'src/example.cpp',
                includes = './src',
                use = 'kuka_fri',
                target = 'example')

    # bld.add_post_fun(summary)

    install_files = []
    for root, dirnames, filenames in os.walk(bld.path.abspath()+'/src/'):
        for filename in fnmatch.filter(filenames, '*.h'):
            install_files.append(os.path.join(root, filename))
    install_files = [f[len(bld.path.abspath())+1:] for f in install_files]

    for f in install_files:
        end_index = f.rfind('/')
        if end_index == -1:
            end_index = len(f)
        bld.install_files('${PREFIX}/include/' + f[4:end_index], f)
    if bld.env['lib_type'] == 'cxxstlib':
        bld.install_files('${PREFIX}/lib', blddir + '/libkuka_fri.a')
    else:
        bld.install_files('${PREFIX}/lib', blddir + '/libkuka_fri.so')
    # bld.install_files('${PREFIX}/lib', blddir + '/libkuka_pb.a')