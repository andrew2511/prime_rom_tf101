.class Lcom/amazon/android/system/drawing/AndroidAffineTransform;
.super Ljava/lang/Object;
.source "AndroidAffineTransform.java"

# interfaces
.implements Lcom/amazon/system/drawing/AffineTransform;


# instance fields
.field final matrix:Landroid/graphics/Matrix;

.field private final values:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/amazon/android/system/drawing/AndroidAffineTransform;->values:[F

    .line 14
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/system/drawing/AndroidAffineTransform;->matrix:Landroid/graphics/Matrix;

    .line 15
    invoke-direct {p0}, Lcom/amazon/android/system/drawing/AndroidAffineTransform;->getValues()V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Matrix;)V
    .locals 1
    .parameter "matrix"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/amazon/android/system/drawing/AndroidAffineTransform;->values:[F

    .line 20
    iput-object p1, p0, Lcom/amazon/android/system/drawing/AndroidAffineTransform;->matrix:Landroid/graphics/Matrix;

    .line 21
    return-void
.end method

.method private getValues()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/amazon/android/system/drawing/AndroidAffineTransform;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/amazon/android/system/drawing/AndroidAffineTransform;->values:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 71
    return-void
.end method


# virtual methods
.method public getScaleX()D
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/amazon/android/system/drawing/AndroidAffineTransform;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-double v0, v0

    return-wide v0
.end method

.method public getScaleY()D
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/amazon/android/system/drawing/AndroidAffineTransform;->values:[F

    const/4 v1, 0x4

    aget v0, v0, v1

    float-to-double v0, v0

    return-wide v0
.end method

.method public getTranslateX()D
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/amazon/android/system/drawing/AndroidAffineTransform;->values:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    float-to-double v0, v0

    return-wide v0
.end method

.method public getTranslateY()D
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/amazon/android/system/drawing/AndroidAffineTransform;->values:[F

    const/4 v1, 0x5

    aget v0, v0, v1

    float-to-double v0, v0

    return-wide v0
.end method

.method public rotate(D)V
    .locals 3
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/amazon/android/system/drawing/AndroidAffineTransform;->matrix:Landroid/graphics/Matrix;

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 51
    invoke-direct {p0}, Lcom/amazon/android/system/drawing/AndroidAffineTransform;->getValues()V

    .line 52
    return-void
.end method

.method public scale(DD)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/amazon/android/system/drawing/AndroidAffineTransform;->matrix:Landroid/graphics/Matrix;

    double-to-float v1, p1

    double-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 58
    invoke-direct {p0}, Lcom/amazon/android/system/drawing/AndroidAffineTransform;->getValues()V

    .line 59
    return-void
.end method

.method public translate(DD)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/amazon/android/system/drawing/AndroidAffineTransform;->matrix:Landroid/graphics/Matrix;

    double-to-float v1, p1

    double-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 65
    invoke-direct {p0}, Lcom/amazon/android/system/drawing/AndroidAffineTransform;->getValues()V

    .line 66
    return-void
.end method
