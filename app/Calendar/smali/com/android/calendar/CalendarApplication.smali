.class public Lcom/android/calendar/CalendarApplication;
.super Landroid/app/Application;
.source "CalendarApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 30
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->setDefaultValues(Landroid/content/Context;)V

    .line 31
    return-void
.end method
