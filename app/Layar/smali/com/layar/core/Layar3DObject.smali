.class public abstract Lcom/layar/core/Layar3DObject;
.super Ljava/lang/Object;
.source "Layar3DObject.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected distance(FF)F
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 26
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public abstract draw(Ljavax/microedition/khronos/opengles/GL10;FF)V
.end method

.method public abstract getLocation()Landroid/location/Location;
.end method

.method public isInside(FF)Z
    .locals 1
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public isVisible(FF)Z
    .locals 1
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    .line 18
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 14
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 15
    return-void
.end method

.method public abstract recalculatePosition(Landroid/location/Location;)V
.end method
