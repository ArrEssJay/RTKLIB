//---------------------------------------------------------------------------
#include <QShowEvent>
#include <QDateTime>
#include <QFileInfo>
#include <QDateTime>

#include "startdlg.h"
//---------------------------------------------------------------------------
StartDialog::StartDialog(QWidget *parent)
    : QDialog(parent)
{
    setupUi(this);

	Time.time=0;
	Time.sec=0.0;

    connect(BtnOk,SIGNAL(clicked(bool)),this,SLOT(BtnOkClick()));
    connect(BtnCancel,SIGNAL(clicked(bool)),this,SLOT(reject()));
    connect(BtnFileTime,SIGNAL(clicked(bool)),this,SLOT(BtnFileTimeClick()));
}
//---------------------------------------------------------------------------
void StartDialog::showEvent(QShowEvent *event)
{
    if (event->spontaneous()) return;

	if (Time.time==0) {
		Time=utc2gpst(timeget());
	}

    QDateTime date=QDateTime::fromTime_t(Time.time); date=date.addSecs(Time.sec);
    TimeY1->setDate(date.date());
    TimeH1->setTime(date.time());
}
//---------------------------------------------------------------------------
void StartDialog::setFileName(QString filename)
{
    FileName = filename;
}
//---------------------------------------------------------------------------
void StartDialog::BtnOkClick()
{
    QDateTime date(TimeY1->date(),TimeH1->time());
    Time.time=date.toTime_t();Time.sec=date.time().msec()/1000;

    accept();
}
//---------------------------------------------------------------------------
void StartDialog::BtnFileTimeClick()
{
    QFileInfo fi(FileName);
    QDateTime birth=fi.created();
    QDateTime lastModified=fi.lastModified();
    if (birth > lastModified) {
        birth = lastModified;
    }
    TimeH1->setTime(birth.time());
    TimeY1->setDate(birth.date());
}
//---------------------------------------------------------------------------
