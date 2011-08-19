.class public Lcom/android/wallpaper/holospiral/HoloSpiralView;
.super Landroid/renderscript/RSSurfaceView;
.source "HoloSpiralView.java"


# instance fields
.field private mCurrentPosition:F

.field private mDragging:Z

.field private mRenderScript:Landroid/renderscript/RenderScriptGL;

.field private mStartX:F

.field private mWallpaperRS:Lcom/android/wallpaper/holospiral/HoloSpiralRS;

.field private mWallpaperWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0, p1}, Landroid/renderscript/RSSurfaceView;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralView;->mDragging:Z

    .line 31
    iput v1, p0, Lcom/android/wallpaper/holospiral/HoloSpiralView;->mStartX:F

    .line 32
    iput v1, p0, Lcom/android/wallpaper/holospiral/HoloSpiralView;->mCurrentPosition:F

    .line 33
    iput v1, p0, Lcom/android/wallpaper/holospiral/HoloSpiralView;->mWallpaperWidth:F

    .line 39
    iput-object v2, p0, Lcom/android/wallpaper/holospiral/HoloSpiralView;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    .line 40
    iput-object v2, p0, Lcom/android/wallpaper/holospiral/HoloSpiralView;->mWallpaperRS:Lcom/android/wallpaper/holospiral/HoloSpiralRS;

    .line 37
    return-void
.end method


# virtual methods
.method public destroyRenderer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 43
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralView;->mWallpaperRS:Lcom/android/wallpaper/holospiral/HoloSpiralRS;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralView;->mWallpaperRS:Lcom/android/wallpaper/holospiral/HoloSpiralRS;

    invoke-virtual {v0}, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->stop()V

    .line 45
    iput-object v1, p0, Lcom/android/wallpaper/holospiral/HoloSpiralView;->mWallpaperRS:Lcom/android/wallpaper/holospiral/HoloSpiralRS;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralView;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralView;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0, v1, v2, v2}, Landroid/renderscript/RenderScriptGL;->setSurface(Landroid/view/SurfaceHolder;II)V

    .line 50
    iput-object v1, p0, Lcom/android/wallpaper/holospiral/HoloSpiralView;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    .line 51
    invoke-virtual {p0}, Lcom/android/wallpaper/holospiral/HoloSpiralView;->destroyRenderScriptGL()V

    .line 53
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 109
    invoke-super {p0}, Landroid/renderscript/RSSurfaceView;->onDetachedFromWindow()V

    .line 110
    invoke-virtual {p0}, Lcom/android/wallpaper/holospiral/HoloSpiralView;->destroyRenderer()V

    .line 111
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/wallpaper/holospiral/HoloSpiralView;->pause()V

    .line 102
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralView;->mWallpaperRS:Lcom/android/wallpaper/holospiral/HoloSpiralRS;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralView;->mWallpaperRS:Lcom/android/wallpaper/holospiral/HoloSpiralRS;

    invoke-virtual {v0}, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->stop()V

    .line 105
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/wallpaper/holospiral/HoloSpiralView;->resume()V

    .line 95
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralView;->mWallpaperRS:Lcom/android/wallpaper/holospiral/HoloSpiralRS;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralView;->mWallpaperRS:Lcom/android/wallpaper/holospiral/HoloSpiralRS;

    invoke-virtual {v0}, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->start()V

    .line 98
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/high16 v6, 0x4080

    const/4 v5, 0x0

    .line 115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    if-nez v2, :cond_5

    .line 116
    iget v2, p0, Lcom/android/wallpaper/holospiral/HoloSpiralView;->mCurrentPosition:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/android/wallpaper/holospiral/HoloSpiralView;->mStartX:F

    sub-float/2addr v3, v4

    add-float v1, v2, v3

    .line 117
    .local v1, realPosition:F
    cmpg-float v2, v1, v8

    if-gez v2, :cond_2

    .line 118
    const/4 v1, 0x0

    .line 123
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_3

    .line 124
    iput-boolean v7, p0, Lcom/android/wallpaper/holospiral/HoloSpiralView;->mDragging:Z

    .line 125
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Lcom/android/wallpaper/holospiral/HoloSpiralView;->mStartX:F

    :cond_1
    :goto_1
    move v2, v7

    .line 135
    .end local v1           #realPosition:F
    :goto_2
    return v2

    .line 119
    .restart local v1       #realPosition:F
    :cond_2
    iget v2, p0, Lcom/android/wallpaper/holospiral/HoloSpiralView;->mWallpaperWidth:F

    mul-float/2addr v2, v6

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 120
    iget v2, p0, Lcom/android/wallpaper/holospiral/HoloSpiralView;->mWallpaperWidth:F

    mul-float v1, v2, v6

    goto :goto_0

    .line 126
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v7, :cond_4

    .line 127
    iput-boolean v5, p0, Lcom/android/wallpaper/holospiral/HoloSpiralView;->mDragging:Z

    .line 128
    iput v1, p0, Lcom/android/wallpaper/holospiral/HoloSpiralView;->mCurrentPosition:F

    goto :goto_1

    .line 129
    :cond_4
    iget-boolean v2, p0, Lcom/android/wallpaper/holospiral/HoloSpiralView;->mDragging:Z

    if-eqz v2, :cond_1

    .line 130
    iget v2, p0, Lcom/android/wallpaper/holospiral/HoloSpiralView;->mWallpaperWidth:F

    mul-float/2addr v2, v6

    div-float v0, v1, v2

    .line 131
    .local v0, ratio:F
    iget-object v2, p0, Lcom/android/wallpaper/holospiral/HoloSpiralView;->mWallpaperRS:Lcom/android/wallpaper/holospiral/HoloSpiralRS;

    invoke-virtual {v2, v0, v8, v5, v5}, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->setOffset(FFII)V

    goto :goto_1

    .end local v0           #ratio:F
    .end local v1           #realPosition:F
    :cond_5
    move v2, v5

    .line 135
    goto :goto_2
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .parameter "surfaceHolder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/renderscript/RSSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 80
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralView;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralView;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0, p1, p3, p4}, Landroid/renderscript/RenderScriptGL;->setSurface(Landroid/view/SurfaceHolder;II)V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralView;->mWallpaperRS:Lcom/android/wallpaper/holospiral/HoloSpiralRS;

    if-nez v0, :cond_1

    .line 85
    new-instance v0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;

    iget-object v1, p0, Lcom/android/wallpaper/holospiral/HoloSpiralView;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {p0}, Lcom/android/wallpaper/holospiral/HoloSpiralView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/wallpaper/holospiral/HoloSpiralRS;-><init>(Landroid/renderscript/RenderScriptGL;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralView;->mWallpaperRS:Lcom/android/wallpaper/holospiral/HoloSpiralRS;

    .line 86
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralView;->mWallpaperRS:Lcom/android/wallpaper/holospiral/HoloSpiralRS;

    invoke-virtual {v0}, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->start()V

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralView;->mWallpaperRS:Lcom/android/wallpaper/holospiral/HoloSpiralRS;

    invoke-virtual {v0, p3, p4}, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->resize(II)V

    .line 90
    int-to-float v0, p3

    iput v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralView;->mWallpaperWidth:F

    .line 91
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .parameter "surfaceHolder"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/renderscript/RSSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 59
    const/4 v1, 0x0

    .line 60
    .local v1, surface:Landroid/view/Surface;
    :goto_0
    if-nez v1, :cond_0

    .line 61
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    goto :goto_0

    .line 63
    :cond_0
    new-instance v0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    invoke-direct {v0}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;-><init>()V

    .line 64
    .local v0, sc:Landroid/renderscript/RenderScriptGL$SurfaceConfig;
    invoke-virtual {p0, v0}, Lcom/android/wallpaper/holospiral/HoloSpiralView;->createRenderScriptGL(Landroid/renderscript/RenderScriptGL$SurfaceConfig;)Landroid/renderscript/RenderScriptGL;

    move-result-object v2

    iput-object v2, p0, Lcom/android/wallpaper/holospiral/HoloSpiralView;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    .line 65
    iget-object v2, p0, Lcom/android/wallpaper/holospiral/HoloSpiralView;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    sget-object v3, Landroid/renderscript/RenderScript$Priority;->LOW:Landroid/renderscript/RenderScript$Priority;

    invoke-virtual {v2, v3}, Landroid/renderscript/RenderScriptGL;->setPriority(Landroid/renderscript/RenderScript$Priority;)V

    .line 67
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    .line 68
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 69
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "surfaceHolder"

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/renderscript/RSSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/wallpaper/holospiral/HoloSpiralView;->destroyRenderer()V

    .line 75
    return-void
.end method
