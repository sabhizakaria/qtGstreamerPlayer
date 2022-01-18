QT       += core gui
QT       += multimedia multimediawidgets

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    main.cpp \
    mainwindow.cpp

HEADERS += \
    mainwindow.h

FORMS += \
    mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

#PKGCONFIG += gstreamer-1.0 gstreamer-1.0-app

PKGCONFIG += gstreamer-1.0 \
        glib-2.0 \
        gobject-2.0 \
        gio-2.0

INCLUDEPATH += "C:\gstreamer\1.0\mingw_x86_64\include\gstreamer-1.0"
INCLUDEPATH += "C:\gstreamer\1.0\mingw_x86_64\include\glib-2.0"
INCLUDEPATH += "C:\gstreamer\1.0\mingw_x86_64\lib\glib-2.0\include"

LIBS += "C:/gstreamer/1.0/mingw_x86_64/lib/gstreamer-1.0.lib"
LIBS += "C:/gstreamer/1.0/mingw_x86_64/lib/glib-2.0.lib"


