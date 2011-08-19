.class public Lcom/asus/livewallpaper/gl/GLWaterPaperService;
.super Landroid/service/wallpaper/WallpaperService;
.source "GLWaterPaperService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService;->mHandler:Landroid/os/Handler;

    .line 58
    return-void
.end method

.method static synthetic access$300(Lcom/asus/livewallpaper/gl/GLWaterPaperService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onCreate()V

    .line 51
    return-void
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;

    invoke-direct {v0, p0}, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;-><init>(Lcom/asus/livewallpaper/gl/GLWaterPaperService;)V

    return-object v0
.end method
