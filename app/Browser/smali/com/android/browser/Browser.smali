.class public Lcom/android/browser/Browser;
.super Landroid/app/Application;
.source "Browser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 49
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 57
    const/4 v0, 0x7

    invoke-static {v0}, Landroid/os/FileUtils;->setUMask(I)I

    .line 62
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const/high16 v1, 0x3f40

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 65
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 66
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/browser/BrowserSettings;->asyncLoadFromDb(Landroid/content/Context;)V

    .line 67
    return-void
.end method
