.class public Landroid/app/Application;
.super Landroid/content/ContextWrapper;
.source "Application.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# instance fields
.field public mLoadedApk:Landroid/app/LoadedApk;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 45
    return-void
.end method


# virtual methods
.method final attach(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 80
    invoke-static {p1}, Landroid/app/ContextImpl;->getImpl(Landroid/content/Context;)Landroid/app/ContextImpl;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iput-object v0, p0, Landroid/app/Application;->mLoadedApk:Landroid/app/LoadedApk;

    .line 81
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 68
    return-void
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 56
    return-void
.end method

.method public onLowMemory()V
    .registers 1

    .prologue
    .line 71
    return-void
.end method

.method public onTerminate()V
    .registers 1

    .prologue
    .line 65
    return-void
.end method
