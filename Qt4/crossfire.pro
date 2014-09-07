#-------------------------------------------------
#
# Project created by QtCreator 2014-09-05T23:10:44
#
#-------------------------------------------------

QT       += core gui
QMAKE_CXXFLAGS += -std=c++11

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = crossfire
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp \
    board.cpp \
    crossbot.cpp

HEADERS  += mainwindow.h \
    board.h \
    crossbot.h

RESOURCES += \
    crossfire.qrc

