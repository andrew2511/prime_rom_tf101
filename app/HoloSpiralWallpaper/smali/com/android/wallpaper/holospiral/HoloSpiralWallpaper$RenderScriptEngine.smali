.class Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper$RenderScriptEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "HoloSpiralWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderScriptEngine"
.end annotation


# instance fields
.field private mRenderScript:Landroid/renderscript/RenderScriptGL;

.field private mWallpaperRS:Lcom/android/wallpaper/holospiral/HoloSpiralRS;

.field final synthetic this$0:Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper;


# direct methods
.method private constructor <init>(Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 36
    iput-object p1, p0, Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper$RenderScriptEngine;->this$0:Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    .line 37
    iput-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper$RenderScriptEngine;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    .line 38
    iput-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/wallpaper/holospiral/HoloSpiralRS;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper;Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper$RenderScriptEngine;-><init>(Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper;)V

    return-void
.end method


# virtual methods
.method public destroyRenderer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 55
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/wallpaper/holospiral/HoloSpiralRS;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/wallpaper/holospiral/HoloSpiralRS;

    invoke-virtual {v0}, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->stop()V

    .line 57
    iput-object v1, p0, Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/wallpaper/holospiral/HoloSpiralRS;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper$RenderScriptEngine;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper$RenderScriptEngine;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0, v1, v2, v2}, Landroid/renderscript/RenderScriptGL;->setSurface(Landroid/view/SurfaceHolder;II)V

    .line 62
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper$RenderScriptEngine;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0}, Landroid/renderscript/RenderScriptGL;->destroy()V

    .line 63
    iput-object v1, p0, Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper$RenderScriptEngine;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    .line 65
    :cond_1
    return-void
.end method

.method public onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 7
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "extras"
    .parameter "resultRequested"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/wallpaper/holospiral/HoloSpiralRS;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/wallpaper/holospiral/HoloSpiralRS;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "surfaceHolder"

    .prologue
    const/4 v0, 0x1

    .line 42
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 43
    invoke-virtual {p0, v0}, Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper$RenderScriptEngine;->setTouchEventsEnabled(Z)V

    .line 44
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    .line 45
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 46
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 51
    invoke-virtual {p0}, Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper$RenderScriptEngine;->destroyRenderer()V

    .line 52
    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .locals 1
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "xOffsetStep"
    .parameter "yOffsetStep"
    .parameter "xPixelOffset"
    .parameter "yPixelOffset"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/wallpaper/holospiral/HoloSpiralRS;

    invoke-virtual {v0, p1, p2, p5, p6}, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->setOffset(FFII)V

    .line 124
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .parameter "surfaceHolder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 87
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper$RenderScriptEngine;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper$RenderScriptEngine;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0, p1, p3, p4}, Landroid/renderscript/RenderScriptGL;->setSurface(Landroid/view/SurfaceHolder;II)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/wallpaper/holospiral/HoloSpiralRS;

    if-nez v0, :cond_1

    .line 92
    new-instance v0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;

    iget-object v1, p0, Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper$RenderScriptEngine;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    iget-object v2, p0, Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper$RenderScriptEngine;->this$0:Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper;

    invoke-virtual {v2}, Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/wallpaper/holospiral/HoloSpiralRS;-><init>(Landroid/renderscript/RenderScriptGL;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/wallpaper/holospiral/HoloSpiralRS;

    .line 93
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/wallpaper/holospiral/HoloSpiralRS;

    invoke-virtual {v0}, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->start()V

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/wallpaper/holospiral/HoloSpiralRS;

    invoke-virtual {v0, p3, p4}, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->resize(II)V

    .line 97
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "surfaceHolder"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 71
    new-instance v0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    invoke-direct {v0}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;-><init>()V

    .line 72
    .local v0, sc:Landroid/renderscript/RenderScriptGL$SurfaceConfig;
    new-instance v1, Landroid/renderscript/RenderScriptGL;

    iget-object v2, p0, Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper$RenderScriptEngine;->this$0:Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper;

    invoke-direct {v1, v2, v0}, Landroid/renderscript/RenderScriptGL;-><init>(Landroid/content/Context;Landroid/renderscript/RenderScriptGL$SurfaceConfig;)V

    iput-object v1, p0, Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper$RenderScriptEngine;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    .line 73
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper$RenderScriptEngine;->mRenderScript:Landroid/renderscript/RenderScriptGL;

    sget-object v2, Landroid/renderscript/RenderScript$Priority;->LOW:Landroid/renderscript/RenderScript$Priority;

    invoke-virtual {v1, v2}, Landroid/renderscript/RenderScriptGL;->setPriority(Landroid/renderscript/RenderScript$Priority;)V

    .line 74
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "surfaceHolder"

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper$RenderScriptEngine;->destroyRenderer()V

    .line 80
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 111
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/wallpaper/holospiral/HoloSpiralRS;

    if-eqz v0, :cond_0

    .line 112
    if-eqz p1, :cond_1

    .line 113
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/wallpaper/holospiral/HoloSpiralRS;

    invoke-virtual {v0}, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->start()V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralWallpaper$RenderScriptEngine;->mWallpaperRS:Lcom/android/wallpaper/holospiral/HoloSpiralRS;

    invoke-virtual {v0}, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->stop()V

    goto :goto_0
.end method
