.class public Lcom/android/wallpaper/holospiral/HoloSpiralTestActivity;
.super Landroid/app/Activity;
.source "HoloSpiralTestActivity.java"


# instance fields
.field private mView:Lcom/android/wallpaper/holospiral/HoloSpiralView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    new-instance v0, Lcom/android/wallpaper/holospiral/HoloSpiralView;

    invoke-direct {v0, p0}, Lcom/android/wallpaper/holospiral/HoloSpiralView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralTestActivity;->mView:Lcom/android/wallpaper/holospiral/HoloSpiralView;

    .line 29
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralTestActivity;->mView:Lcom/android/wallpaper/holospiral/HoloSpiralView;

    invoke-virtual {p0, v0}, Lcom/android/wallpaper/holospiral/HoloSpiralTestActivity;->setContentView(Landroid/view/View;)V

    .line 30
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 41
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralTestActivity;->mView:Lcom/android/wallpaper/holospiral/HoloSpiralView;

    invoke-virtual {v0}, Lcom/android/wallpaper/holospiral/HoloSpiralView;->onPause()V

    .line 42
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 35
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralTestActivity;->mView:Lcom/android/wallpaper/holospiral/HoloSpiralView;

    invoke-virtual {v0}, Lcom/android/wallpaper/holospiral/HoloSpiralView;->onResume()V

    .line 36
    return-void
.end method
