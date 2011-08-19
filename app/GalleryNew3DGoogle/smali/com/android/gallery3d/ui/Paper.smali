.class Lcom/android/gallery3d/ui/Paper;
.super Ljava/lang/Object;
.source "Paper.java"


# instance fields
.field private mAnimationLeft:Lcom/android/gallery3d/ui/OverscrollAnimation;

.field private mAnimationRight:Lcom/android/gallery3d/ui/OverscrollAnimation;

.field private mHeight:I

.field private mMatrix:[F

.field private mWidth:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/android/gallery3d/ui/OverscrollAnimation;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/OverscrollAnimation;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mAnimationLeft:Lcom/android/gallery3d/ui/OverscrollAnimation;

    .line 32
    new-instance v0, Lcom/android/gallery3d/ui/OverscrollAnimation;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/OverscrollAnimation;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mAnimationRight:Lcom/android/gallery3d/ui/OverscrollAnimation;

    .line 34
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mMatrix:[F

    return-void
.end method


# virtual methods
.method public advanceAnimation(J)Z
    .locals 2
    .parameter "currentTimeMillis"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mAnimationLeft:Lcom/android/gallery3d/ui/OverscrollAnimation;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/OverscrollAnimation;->advanceAnimation(J)Z

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/Paper;->mAnimationRight:Lcom/android/gallery3d/ui/OverscrollAnimation;

    invoke-virtual {v1, p1, p2}, Lcom/android/gallery3d/ui/OverscrollAnimation;->advanceAnimation(J)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getTransform(Lcom/android/gallery3d/ui/PositionRepository$Position;Lcom/android/gallery3d/ui/PositionRepository$Position;FF)[F
    .locals 12
    .parameter "target"
    .parameter "base"
    .parameter "scrollX"
    .parameter "scrollY"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mAnimationLeft:Lcom/android/gallery3d/ui/OverscrollAnimation;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/OverscrollAnimation;->getValue()F

    move-result v8

    .line 57
    .local v8, left:F
    iget-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mAnimationRight:Lcom/android/gallery3d/ui/OverscrollAnimation;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/OverscrollAnimation;->getValue()F

    move-result v9

    .line 58
    .local v9, right:F
    iget v0, p1, Lcom/android/gallery3d/ui/PositionRepository$Position;->x:F

    sub-float v10, v0, p3

    .line 59
    .local v10, screenX:F
    iget v0, p0, Lcom/android/gallery3d/ui/Paper;->mWidth:I

    int-to-float v0, v0

    sub-float/2addr v0, v10

    mul-float/2addr v0, v8

    mul-float v1, v10, v9

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/ui/Paper;->mWidth:I

    iget v2, p0, Lcom/android/gallery3d/ui/Paper;->mWidth:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    div-float v11, v0, v1

    .line 63
    .local v11, t:F
    const/high16 v0, 0x3f80

    const/high16 v1, 0x3f80

    neg-float v2, v11

    const/high16 v3, 0x4080

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v2, v2

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x3f00

    sub-float/2addr v0, v1

    const/high16 v1, 0x4000

    mul-float/2addr v0, v1

    const/high16 v1, -0x3dcc

    mul-float v7, v0, v1

    .line 65
    .local v7, degrees:F
    iget-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 66
    iget-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/gallery3d/ui/Paper;->mMatrix:[F

    const/4 v3, 0x0

    iget v4, p2, Lcom/android/gallery3d/ui/PositionRepository$Position;->x:F

    iget v5, p2, Lcom/android/gallery3d/ui/PositionRepository$Position;->y:F

    iget v6, p2, Lcom/android/gallery3d/ui/PositionRepository$Position;->z:F

    invoke-static/range {v0 .. v6}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mMatrix:[F

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    move v2, v7

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 68
    iget-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/gallery3d/ui/Paper;->mMatrix:[F

    const/4 v3, 0x0

    iget v4, p1, Lcom/android/gallery3d/ui/PositionRepository$Position;->x:F

    iget v5, p2, Lcom/android/gallery3d/ui/PositionRepository$Position;->x:F

    sub-float/2addr v4, v5

    iget v5, p1, Lcom/android/gallery3d/ui/PositionRepository$Position;->y:F

    iget v6, p2, Lcom/android/gallery3d/ui/PositionRepository$Position;->y:F

    sub-float/2addr v5, v6

    iget v6, p1, Lcom/android/gallery3d/ui/PositionRepository$Position;->z:F

    iget v7, p2, Lcom/android/gallery3d/ui/PositionRepository$Position;->z:F

    .end local v7           #degrees:F
    sub-float/2addr v6, v7

    invoke-static/range {v0 .. v6}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mMatrix:[F

    return-object v0
.end method

.method public overScroll(F)V
    .locals 2
    .parameter "distance"

    .prologue
    .line 37
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mAnimationLeft:Lcom/android/gallery3d/ui/OverscrollAnimation;

    neg-float v1, p1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/OverscrollAnimation;->scroll(F)V

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mAnimationRight:Lcom/android/gallery3d/ui/OverscrollAnimation;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/OverscrollAnimation;->scroll(F)V

    goto :goto_0
.end method

.method public setSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 50
    iput p1, p0, Lcom/android/gallery3d/ui/Paper;->mWidth:I

    .line 51
    iput p2, p0, Lcom/android/gallery3d/ui/Paper;->mHeight:I

    .line 52
    return-void
.end method
