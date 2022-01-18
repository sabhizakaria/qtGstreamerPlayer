#include "mainwindow.h"
#include "ui_mainwindow.h"


MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    player = new QMediaPlayer(this);
    vw =  new QVideoWidget(this);
    vbox = new QVBoxLayout(ui->frame);
    player = new QMediaPlayer;

    vw->show();
    player->setMedia(QUrl("gst-pipeline: videotestsrc ! autovideosink"));
    player->play();
    qDebug() << player->state();
    qDebug() << "player is working";



}

MainWindow::~MainWindow()
{
    delete ui;
}

