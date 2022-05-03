TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt
#CONFIG += c++11
#DEFINES += PLATFORM_ccOS
#QMAKE_LFLAGS += -lrt -lpthread
#QMAKE_EXT_CPP = .cpp
#QMAKE_EXT_H = .h .hpp .c


ccOSDIR = $$absolute_path($${PWD}/../../../ccOS/)
ccOSMainsDIR = $${ccOSDIR}/ccLibs/acs/NOAA_WMM



INCLUDEPATH += $$ccOSMainsDIR

HEADERS += $$ccOSMainsDIR/GeomagnetismHeader.h
HEADERS += $$ccOSMainsDIR/EGM9615.h

SOURCES += $$ccOSMainsDIR/GeomagnetismLibrary.c
SOURCES += $$ccOSMainsDIR/wmm_file.c

message("Includes:")
for(msg, INCLUDEPATH) {
    message($$msg)
}
message("Headers:")
for(msg, HEADERS) {
    message($$msg)
}
message("Sources:")
for(msg, SOURCES) {
    message($$msg)
}
message("Objects:")
for(msg, OBJECTS) {
    message($$msg)
}
message("Source Extensions:")
for(msg, QMAKE_EXT_CPP) {
    message($$msg)
}
message("Header Extensions:")
for(msg, QMAKE_EXT_H) {
    message($$msg)
}


