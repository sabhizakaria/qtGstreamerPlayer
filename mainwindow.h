#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QMediaPlayer>
#include <QVideoWidget>
#include <QVBoxLayout>
#include <QDebug>
#include <gst/gst.h>

#include <QApplication>
#include <QWidget>
#include <QBoxLayout>
#include <QProcess>


namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

private:
    Ui::MainWindow *ui;
    QMediaPlayer* player;
    QVBoxLayout * vbox ;
    QVideoWidget* vw;

};
#endif // MAINWINDOW_H
