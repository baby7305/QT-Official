TEMPLATE = app

QT += qml quick
CONFIG += lrelease embed_translations qmltypes

INCLUDEPATH += ../shared

HEADERS += ../shared/xmllistmodel.h
SOURCES += main.cpp \
           ../shared/xmllistmodel.cpp

QML_IMPORT_NAME = XmlListModel
QML_IMPORT_MAJOR_VERSION = 1

lupdate_only {
SOURCES = *.qml \
          PhotoViewerCore/*.qml \
          PhotoViewerCore/script/*.js
}

TRANSLATIONS += i18n/qml_fr.ts \
                i18n/qml_de.ts

EXTRA_TRANSLATIONS += i18n/qml_en.ts

RESOURCES += main.qml \
             PhotoViewerCore/AlbumDelegate.qml \
             PhotoViewerCore/BusyIndicator.qml \
             PhotoViewerCore/Button.qml \
             PhotoViewerCore/EditableButton.qml \
             PhotoViewerCore/PhotoDelegate.qml \
             PhotoViewerCore/ProgressBar.qml \
             PhotoViewerCore/RssModel.qml \
             PhotoViewerCore/Tag.qml \
             PhotoViewerCore/images/box-shadow.png \
             PhotoViewerCore/images/busy.png \
             PhotoViewerCore/images/cardboard.png \
             PhotoViewerCore/script/script.mjs \


target.path = $$[QT_INSTALL_EXAMPLES]/demos/photoviewer
INSTALLS += target
