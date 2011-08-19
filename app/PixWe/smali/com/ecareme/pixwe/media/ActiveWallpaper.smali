.class public Lcom/ecareme/pixwe/media/ActiveWallpaper;
.super Landroid/app/Activity;
.source "ActiveWallpaper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    new-instance v0, Lcom/ecareme/pixwe/wallpaper/Slideshow;

    invoke-direct {v0, p0}, Lcom/ecareme/pixwe/wallpaper/Slideshow;-><init>(Landroid/content/Context;)V

    .line 30
    .local v0, slideshow:Lcom/ecareme/pixwe/wallpaper/Slideshow;
    new-instance v1, Lcom/ecareme/pixwe/wallpaper/RandomDataSource;

    invoke-direct {v1}, Lcom/ecareme/pixwe/wallpaper/RandomDataSource;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/wallpaper/Slideshow;->setDataSource(Lcom/ecareme/pixwe/wallpaper/Slideshow$DataSource;)V

    .line 31
    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/media/ActiveWallpaper;->setContentView(Landroid/view/View;)V

    .line 32
    return-void
.end method
