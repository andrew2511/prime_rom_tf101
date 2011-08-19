.class public Lcom/splashtop/remote/zoom/ZoomState;
.super Ljava/util/Observable;
.source "ZoomState.java"


# instance fields
.field private mPanX:F

.field private mPanY:F

.field private mZoom:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public getPanX()F
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/splashtop/remote/zoom/ZoomState;->mPanX:F

    return v0
.end method

.method public getPanY()F
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/splashtop/remote/zoom/ZoomState;->mPanY:F

    return v0
.end method

.method public getZoom()F
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/splashtop/remote/zoom/ZoomState;->mZoom:F

    return v0
.end method

.method public getZoomX(F)F
    .locals 2
    .parameter "aspectQuotient"

    .prologue
    .line 90
    iget v0, p0, Lcom/splashtop/remote/zoom/ZoomState;->mZoom:F

    iget v1, p0, Lcom/splashtop/remote/zoom/ZoomState;->mZoom:F

    mul-float/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public getZoomY(F)F
    .locals 2
    .parameter "aspectQuotient"

    .prologue
    .line 100
    iget v0, p0, Lcom/splashtop/remote/zoom/ZoomState;->mZoom:F

    iget v1, p0, Lcom/splashtop/remote/zoom/ZoomState;->mZoom:F

    div-float/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public setPanX(F)V
    .locals 1
    .parameter "panX"

    .prologue
    .line 109
    iget v0, p0, Lcom/splashtop/remote/zoom/ZoomState;->mPanX:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 110
    iput p1, p0, Lcom/splashtop/remote/zoom/ZoomState;->mPanX:F

    .line 111
    invoke-virtual {p0}, Lcom/splashtop/remote/zoom/ZoomState;->setChanged()V

    .line 113
    :cond_0
    return-void
.end method

.method public setPanY(F)V
    .locals 1
    .parameter "panY"

    .prologue
    .line 121
    iget v0, p0, Lcom/splashtop/remote/zoom/ZoomState;->mPanY:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 122
    iput p1, p0, Lcom/splashtop/remote/zoom/ZoomState;->mPanY:F

    .line 123
    invoke-virtual {p0}, Lcom/splashtop/remote/zoom/ZoomState;->setChanged()V

    .line 125
    :cond_0
    return-void
.end method

.method public setZoom(F)V
    .locals 1
    .parameter "zoom"

    .prologue
    .line 133
    iget v0, p0, Lcom/splashtop/remote/zoom/ZoomState;->mZoom:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 134
    iput p1, p0, Lcom/splashtop/remote/zoom/ZoomState;->mZoom:F

    .line 135
    invoke-virtual {p0}, Lcom/splashtop/remote/zoom/ZoomState;->setChanged()V

    .line 137
    :cond_0
    return-void
.end method
