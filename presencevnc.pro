TEMPLATE = app
TARGET = presencevnc

LIBS += -lz -L$$PWD/libvnc/libvncclient/.libs -lvncclient

INCLUDEPATH += $$PWD/src $$PWD/libvnc $$PWD/libvnc/rfb
DEPENDPATH += $$PWD/libvnc $$PWD/libvnc/rfb
DEFINES += QTONLY
CONFIG +=  release warn_on sailfishapp

QMAKE_CXXFLAGS_WARN_ON = -Wall -Wundef -Wextra

maemo5 {
	QT += maemo5 dbus
}

QT += widgets

VPATH = $${PWD}/src

OTHER_FILES += rpm/presencevnc.changes.in \
    rpm/presencevnc.spec \
    rpm/presencevnc.yaml \
    translations/*.ts \
    presencevnc.desktop \
    libvnc/* \
    libvnc/rfb/* \
    libvnc/libvncclient/* \
    libvnc/libvncclient/.libs/* \

HEADERS += remoteview.h vncclientthread.h vncview.h mainwindow.h preferences.h connectdialog.h fullscreenexitbutton.h keymenu.h scrollarea.h
SOURCES += main.cpp remoteview.cpp vncclientthread.cpp vncview.cpp mainwindow.cpp preferences.cpp connectdialog.cpp keymenu.cpp
