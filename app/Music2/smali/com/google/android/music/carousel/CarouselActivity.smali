.class public Lcom/google/android/music/carousel/CarouselActivity;
.super Landroid/app/Activity;
.source "CarouselActivity.java"

# interfaces
.implements Lcom/google/android/music/activitymanagement/TopLevelActivity$StatefulActivity;
.implements Lcom/google/android/music/TopBar$MenuCustomizer;


# static fields
.field private static final DBG:Z = false

.field private static final KEY_ROTATION_ANGLE:Ljava/lang/String; = "RotationAngle"

.field public static PIXEL_DENSITY:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "CarouselActivity"


# instance fields
.field private mView:Lcom/google/android/opengl/carousel/CarouselView;

.field private mViewHelper:Lcom/google/android/music/carousel/MusicCarouselViewHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput v0, Lcom/google/android/music/carousel/CarouselActivity;->PIXEL_DENSITY:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static initializePixelDensity(Landroid/view/WindowManager;)V
    .locals 3
    .parameter "windowManager"

    .prologue
    .line 80
    sget v1, Lcom/google/android/music/carousel/CarouselActivity;->PIXEL_DENSITY:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 81
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 82
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 83
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/google/android/music/carousel/CarouselActivity;->PIXEL_DENSITY:F

    .line 85
    .end local v0           #metrics:Landroid/util/DisplayMetrics;
    :cond_0
    return-void
.end method

.method private packState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 94
    const-string v0, "RotationAngle"

    iget-object v1, p0, Lcom/google/android/music/carousel/CarouselActivity;->mViewHelper:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    invoke-virtual {v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCarouselRotationAngle()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 95
    return-void
.end method


# virtual methods
.method public createOptionsMenu(Lcom/google/android/music/menu/MusicMenu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 144
    return-void
.end method

.method public getState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outcicle"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/google/android/music/carousel/CarouselActivity;->packState(Landroid/os/Bundle;)V

    .line 132
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/google/android/music/carousel/CarouselActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/music/carousel/CarouselActivity;->initializePixelDensity(Landroid/view/WindowManager;)V

    .line 48
    invoke-static {p0}, Lcom/google/android/music/activitymanagement/AppState;->getAppState(Landroid/app/Activity;)Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v2

    .line 50
    .local v2, appState:Lcom/google/android/music/activitymanagement/AppState;
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/google/android/music/carousel/CarouselActivity;->setVolumeControlStream(I)V

    .line 52
    new-instance v3, Lcom/google/android/opengl/carousel/CarouselView;

    invoke-virtual {p0}, Lcom/google/android/music/carousel/CarouselActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/opengl/carousel/CarouselView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/android/music/carousel/CarouselActivity;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    .line 53
    iget-object v3, p0, Lcom/google/android/music/carousel/CarouselActivity;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    invoke-virtual {p0, v3}, Lcom/google/android/music/carousel/CarouselActivity;->setContentView(Landroid/view/View;)V

    .line 55
    invoke-static {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getMusicActivityManager(Landroid/app/Activity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v1

    .line 56
    .local v1, activityManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;
    new-instance v3, Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    iget-object v4, p0, Lcom/google/android/music/carousel/CarouselActivity;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    invoke-direct {v3, p0, v4, v1, v2}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;-><init>(Landroid/app/Activity;Lcom/google/android/opengl/carousel/CarouselView;Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;Lcom/google/android/music/activitymanagement/AppState;)V

    iput-object v3, p0, Lcom/google/android/music/carousel/CarouselActivity;->mViewHelper:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    .line 59
    invoke-virtual {v2, v5}, Lcom/google/android/music/activitymanagement/AppState;->setUseSystemBackground(Z)V

    .line 60
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/music/activitymanagement/AppState;->setUseFullScreen(Z)V

    .line 64
    invoke-static {p0}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v3

    if-nez v3, :cond_0

    .line 65
    invoke-virtual {v2, v5}, Lcom/google/android/music/activitymanagement/AppState;->setManageMusicBarEnabled(Z)V

    .line 68
    :cond_0
    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/AppState;->getActionBarController()Lcom/google/android/music/TopBar$ActionBarController;

    move-result-object v0

    .line 69
    .local v0, actionBar:Lcom/google/android/music/TopBar$ActionBarController;
    invoke-virtual {v0}, Lcom/google/android/music/TopBar$ActionBarController;->hideTitle()V

    .line 70
    invoke-virtual {v1, v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->isTopLevel(Lcom/google/android/music/activitymanagement/AppState;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 71
    invoke-virtual {v0}, Lcom/google/android/music/TopBar$ActionBarController;->showDisplayModes()V

    .line 72
    invoke-virtual {v0}, Lcom/google/android/music/TopBar$ActionBarController;->showTopBar()V

    .line 74
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/music/TopBar$ActionBarController;->showDisplayModes()V

    .line 75
    invoke-virtual {v0, p0}, Lcom/google/android/music/TopBar$ActionBarController;->setMenuCustomizer(Lcom/google/android/music/TopBar$MenuCustomizer;)V

    .line 76
    invoke-virtual {v0}, Lcom/google/android/music/TopBar$ActionBarController;->hideToggleButton()V

    .line 77
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/music/carousel/CarouselActivity;->mViewHelper:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/google/android/music/carousel/CarouselActivity;->mViewHelper:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    invoke-virtual {v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->onDestroy()V

    .line 125
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 126
    return-void
.end method

.method public onMenuItemSelected(Lcom/google/android/music/menu/MusicMenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public onNewState(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lcom/google/android/music/carousel/CarouselActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 136
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 115
    iget-object v0, p0, Lcom/google/android/music/carousel/CarouselActivity;->mViewHelper:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/google/android/music/carousel/CarouselActivity;->mViewHelper:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    invoke-virtual {v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->onPause()V

    .line 118
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "inState"

    .prologue
    .line 99
    const-string v1, "RotationAngle"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 100
    .local v0, angle:F
    iget-object v1, p0, Lcom/google/android/music/carousel/CarouselActivity;->mViewHelper:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    invoke-virtual {v1, v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->setCarouselRotationAngle(F)V

    .line 101
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 102
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 107
    iget-object v0, p0, Lcom/google/android/music/carousel/CarouselActivity;->mViewHelper:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/google/android/music/carousel/CarouselActivity;->mViewHelper:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    invoke-virtual {v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->onResume()V

    .line 110
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/google/android/music/carousel/CarouselActivity;->packState(Landroid/os/Bundle;)V

    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 91
    return-void
.end method

.method public prepareOptionsMenu(Lcom/google/android/music/menu/MusicMenu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 146
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "incicle"

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcom/google/android/music/carousel/CarouselActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 140
    return-void
.end method
