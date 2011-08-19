.class public Lcom/asus/cm/CMApp;
.super Landroid/app/Application;
.source "CMApp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 12
    invoke-static {p0}, Lcom/asus/cm/CMConfig;->init(Landroid/content/Context;)V

    .line 22
    return-void
.end method
