.class Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$WallpaperObserver;
.super Landroid/content/BroadcastReceiver;
.source "ImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperObserver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;


# direct methods
.method constructor <init>(Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;)V
    .registers 2
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$WallpaperObserver;->this$1:Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$WallpaperObserver;->this$1:Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;

    #getter for: Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->access$000(Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 96
    :try_start_7
    iget-object v1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$WallpaperObserver;->this$1:Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;

    invoke-virtual {v1}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->updateWallpaperLocked()V

    .line 97
    iget-object v1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$WallpaperObserver;->this$1:Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;

    invoke-virtual {v1}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->drawFrameLocked()V

    .line 98
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_16

    .line 102
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 103
    return-void

    .line 98
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method
