.class public Lcom/asus/dm/DMApp;
.super Landroid/app/Application;
.source "DMApp.java"


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
    invoke-static {p0}, Lcom/asus/dm/DMConfig;->init(Landroid/content/Context;)V

    .line 22
    return-void
.end method
