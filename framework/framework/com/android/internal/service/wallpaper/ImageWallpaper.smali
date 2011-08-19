.class public Lcom/android/internal/service/wallpaper/ImageWallpaper;
.super Landroid/service/wallpaper/WallpaperService;
.source "ImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ImageWallpaper"


# instance fields
.field private mThread:Landroid/os/HandlerThread;

.field mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    .line 76
    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 5

    .prologue
    .line 52
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onCreate()V

    .line 53
    const-string/jumbo v1, "wallpaper"

    invoke-virtual {p0, v1}, Lcom/android/internal/service/wallpaper/ImageWallpaper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperManager;

    iput-object v1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 54
    invoke-static {}, Lcom/android/internal/view/WindowManagerPolicyThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 55
    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_18

    .line 56
    invoke-virtual {p0, v0}, Lcom/android/internal/service/wallpaper/ImageWallpaper;->setCallbackLooper(Landroid/os/Looper;)V

    .line 62
    :goto_17
    return-void

    .line 58
    :cond_18
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "Wallpaper"

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper;->mThread:Landroid/os/HandlerThread;

    .line 59
    iget-object v1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 60
    iget-object v1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/service/wallpaper/ImageWallpaper;->setCallbackLooper(Landroid/os/Looper;)V

    goto :goto_17
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .registers 2

    .prologue
    .line 65
    new-instance v0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;

    invoke-direct {v0, p0}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;-><init>(Lcom/android/internal/service/wallpaper/ImageWallpaper;)V

    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 70
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onDestroy()V

    .line 71
    iget-object v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper;->mThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_c

    .line 72
    iget-object v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 74
    :cond_c
    return-void
.end method
