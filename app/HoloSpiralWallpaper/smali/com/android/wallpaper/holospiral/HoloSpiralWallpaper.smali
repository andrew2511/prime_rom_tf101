.class public Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper;
.super Landroid/service/wallpaper/WallpaperService;
.source "HoloSpiralWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper$1;,
        Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper$RenderScriptEngine;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper$RenderScriptEngine;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper$RenderScriptEngine;-><init>(Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper;Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper$1;)V

    return-object v0
.end method
