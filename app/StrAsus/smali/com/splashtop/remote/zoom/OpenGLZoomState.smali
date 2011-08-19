.class public Lcom/splashtop/remote/zoom/OpenGLZoomState;
.super Ljava/lang/Object;
.source "OpenGLZoomState.java"


# static fields
.field private static MAX_ZOOM:F

.field private static MIN_ZOOM:F

.field private static mZoom:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const/high16 v0, 0x3f80

    sput v0, Lcom/splashtop/remote/zoom/OpenGLZoomState;->MIN_ZOOM:F

    .line 5
    const/high16 v0, 0x4120

    sput v0, Lcom/splashtop/remote/zoom/OpenGLZoomState;->MAX_ZOOM:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getmZoom()F
    .locals 1

    .prologue
    .line 9
    sget v0, Lcom/splashtop/remote/zoom/OpenGLZoomState;->mZoom:F

    return v0
.end method

.method public static setMinZoom(F)V
    .locals 0
    .parameter "mZoom"

    .prologue
    .line 20
    sput p0, Lcom/splashtop/remote/zoom/OpenGLZoomState;->MIN_ZOOM:F

    .line 21
    return-void
.end method

.method public static setmZoom(F)V
    .locals 1
    .parameter "mZoom"

    .prologue
    .line 13
    sget v0, Lcom/splashtop/remote/zoom/OpenGLZoomState;->mZoom:F

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_0

    .line 14
    sget v0, Lcom/splashtop/remote/zoom/OpenGLZoomState;->MIN_ZOOM:F

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1

    sget v0, Lcom/splashtop/remote/zoom/OpenGLZoomState;->MIN_ZOOM:F

    sput v0, Lcom/splashtop/remote/zoom/OpenGLZoomState;->mZoom:F

    .line 18
    :cond_0
    :goto_0
    return-void

    .line 15
    :cond_1
    sget v0, Lcom/splashtop/remote/zoom/OpenGLZoomState;->MAX_ZOOM:F

    cmpl-float v0, p0, v0

    if-lez v0, :cond_2

    sget v0, Lcom/splashtop/remote/zoom/OpenGLZoomState;->MAX_ZOOM:F

    sput v0, Lcom/splashtop/remote/zoom/OpenGLZoomState;->mZoom:F

    goto :goto_0

    .line 16
    :cond_2
    sput p0, Lcom/splashtop/remote/zoom/OpenGLZoomState;->mZoom:F

    goto :goto_0
.end method
