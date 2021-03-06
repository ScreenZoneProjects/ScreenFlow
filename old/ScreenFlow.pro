#
#      Copyright (C) 2015 Team ScreenZone
#      http://screenzone.fr
#
#  This Program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2, or (at your option)
#  any later version.
#
#  This Program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with XBMC; see the file COPYING.  If not, see
#  <http://www.gnu.org/licenses/>.
#
#

QT += core gui xml qml quick sql

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = ScreenFlow
TEMPLATE = app

CONFIG += c++11

SOURCES += src/main.cpp\
    src/core/Frontend.cpp \
    src/core/CRom.cpp \
    src/core/CGame.cpp \
    src/core/CGenre.cpp \
    src/core/CDeveloper.cpp \
    src/core/CManufacturer.cpp \
    src/core/CPlatform.cpp \
    src/core/CHyperSpinTheme.cpp \
    src/core/CFranchise.cpp \
    src/core/CRocketLauncher.cpp \
    src/core/CHyperSpinThemeVideo.cpp \
    src/core/CHyperSpinThemeArtwork.cpp \
    src/core/CHyperSpinThemeParticle.cpp \
    src/core/CHyperSpinThemeMedia.cpp \
    src/utils/IniParser.cpp \
    src/utils/XmlParser.cpp \
    src/utils/AppIntegrity.cpp \
    src/core/Settings.cpp \
    CHyperSpinDatabase.cpp \
    src/core/CHyperSpin.cpp \
    src/core/CLocalDatabase.cpp \
    src/core/CPlatformGame.cpp \
    src/core/CDescription.cpp \
    src/core/CCommonTool.cpp \
    src/core/CImageProvider.cpp \
    src/core/CIndexable.cpp

HEADERS  += src/core/Frontend.hpp \
    src/core/CRom.hpp \
    src/core/CGame.hpp \
    src/core/CGenre.hpp \
    src/core/CDeveloper.hpp \
    src/core/CManufacturer.hpp \
    src/core/CPlatform.hpp \
    src/core/CHyperSpinTheme.hpp \
    src/core/CFranchise.hpp \
    src/core/CRocketLauncher.hpp \
    src/core/CHyperSpinThemeVideo.hpp \
    src/core/CHyperSpinThemeArtwork.hpp \
    src/core/CHyperSpinThemeParticle.hpp \
    src/core/CHyperSpinThemeMedia.hpp \
    src/utils/IniParser.hpp \
    src/utils/XmlParser.hpp \
    src/utils/AppIntegrity.hpp \
    src/core/Settings.hpp \
    CHyperSpinDatabase.hpp \
    src/core/CHyperSpin.hpp \
    src/core/CLocalDatabase.hpp \
    src/core/CPlatformGame.hpp \
    src/core/CDescription.hpp \
    src/core/CCommonTool.hpp \
    src/core/CImageProvider.hpp \
    src/core/CIndexable.hpp

RESOURCES += \
    qml.qrc

DISTFILES +=
