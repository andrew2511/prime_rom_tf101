.class public Lcom/nvidia/tegrazone/coverflow/CoverFlow;
.super Landroid/widget/Gallery;
.source "CoverFlow.java"


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private mCoveflowCenter:I

.field private mMaxRotationAngle:I

.field private mMaxZoom:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->mCamera:Landroid/graphics/Camera;

    .line 25
    iput v1, p0, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->mMaxRotationAngle:I

    .line 31
    iput v1, p0, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->mMaxZoom:I

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->setStaticTransformationsEnabled(Z)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->mCamera:Landroid/graphics/Camera;

    .line 25
    iput v1, p0, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->mMaxRotationAngle:I

    .line 31
    iput v1, p0, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->mMaxZoom:I

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->setStaticTransformationsEnabled(Z)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->mCamera:Landroid/graphics/Camera;

    .line 25
    iput v1, p0, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->mMaxRotationAngle:I

    .line 31
    iput v1, p0, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->mMaxZoom:I

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->setStaticTransformationsEnabled(Z)V

    .line 52
    return-void
.end method

.method private getCenterOfCoverflow()I
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static getCenterOfView(Landroid/view/View;)I
    .locals 2
    .parameter "view"

    .prologue
    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private transformImageBitmap(Landroid/widget/ImageView;Landroid/view/animation/Transformation;I)V
    .locals 12
    .parameter "child"
    .parameter "t"
    .parameter "rotationAngle"

    .prologue
    const/4 v11, 0x0

    .line 160
    iget-object v5, p0, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->save()V

    .line 161
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 162
    .local v1, imageMatrix:Landroid/graphics/Matrix;
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v0, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 163
    .local v0, imageHeight:I
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v2, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 164
    .local v2, imageWidth:I
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 166
    .local v3, rotation:I
    iget-object v5, p0, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->mCamera:Landroid/graphics/Camera;

    const/high16 v6, 0x42c8

    invoke-virtual {v5, v11, v11, v6}, Landroid/graphics/Camera;->translate(FFF)V

    .line 169
    iget v5, p0, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->mMaxRotationAngle:I

    if-ge v3, v5, :cond_0

    .line 170
    iget v5, p0, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->mMaxZoom:I

    int-to-double v5, v5

    int-to-double v7, v3

    const-wide/high16 v9, 0x3ff8

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    double-to-float v4, v5

    .line 171
    .local v4, zoomAmount:F
    iget-object v5, p0, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5, v11, v11, v4}, Landroid/graphics/Camera;->translate(FFF)V

    .line 174
    .end local v4           #zoomAmount:F
    :cond_0
    iget-object v5, p0, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->mCamera:Landroid/graphics/Camera;

    int-to-float v6, p3

    invoke-virtual {v5, v6}, Landroid/graphics/Camera;->rotateY(F)V

    .line 175
    iget-object v5, p0, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 176
    div-int/lit8 v5, v2, 0x2

    neg-int v5, v5

    int-to-float v5, v5

    div-int/lit8 v6, v0, 0x2

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 177
    div-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    div-int/lit8 v6, v0, 0x2

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 178
    iget-object v5, p0, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->restore()V

    .line 179
    return-void
.end method

.method private transformWebImageBitmap(Lcom/github/droidfu/widgets/WebImageView;Landroid/view/animation/Transformation;I)V
    .locals 12
    .parameter "child"
    .parameter "t"
    .parameter "rotationAngle"

    .prologue
    const/4 v11, 0x0

    .line 182
    iget-object v5, p0, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->save()V

    .line 183
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 184
    .local v1, imageMatrix:Landroid/graphics/Matrix;
    invoke-virtual {p1}, Lcom/github/droidfu/widgets/WebImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v0, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 185
    .local v0, imageHeight:I
    invoke-virtual {p1}, Lcom/github/droidfu/widgets/WebImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v2, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 186
    .local v2, imageWidth:I
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 188
    .local v3, rotation:I
    iget-object v5, p0, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->mCamera:Landroid/graphics/Camera;

    const/high16 v6, 0x42c8

    invoke-virtual {v5, v11, v11, v6}, Landroid/graphics/Camera;->translate(FFF)V

    .line 191
    iget v5, p0, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->mMaxRotationAngle:I

    if-ge v3, v5, :cond_0

    .line 192
    iget v5, p0, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->mMaxZoom:I

    int-to-double v5, v5

    int-to-double v7, v3

    const-wide/high16 v9, 0x3ff8

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    double-to-float v4, v5

    .line 193
    .local v4, zoomAmount:F
    iget-object v5, p0, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5, v11, v11, v4}, Landroid/graphics/Camera;->translate(FFF)V

    .line 196
    .end local v4           #zoomAmount:F
    :cond_0
    iget-object v5, p0, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->mCamera:Landroid/graphics/Camera;

    int-to-float v6, p3

    invoke-virtual {v5, v6}, Landroid/graphics/Camera;->rotateY(F)V

    .line 197
    iget-object v5, p0, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 198
    div-int/lit8 v5, v2, 0x2

    neg-int v5, v5

    int-to-float v5, v5

    div-int/lit8 v6, v0, 0x2

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 199
    div-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    div-int/lit8 v6, v0, 0x2

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 200
    iget-object v5, p0, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->restore()V

    .line 201
    return-void
.end method


# virtual methods
.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 5
    .parameter "child"
    .parameter "t"

    .prologue
    const/4 v4, 0x0

    .line 109
    invoke-static {p1}, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->getCenterOfView(Landroid/view/View;)I

    move-result v0

    .line 110
    .local v0, childCenter:I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 111
    .local v1, childWidth:I
    const/4 v2, 0x0

    .line 113
    .local v2, rotationAngle:I
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 114
    sget v3, Landroid/view/animation/Transformation;->TYPE_MATRIX:I

    invoke-virtual {p2, v3}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    .line 116
    iget v3, p0, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->mCoveflowCenter:I

    if-ne v0, v3, :cond_1

    .line 117
    instance-of v3, p1, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 118
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    invoke-direct {p0, p1, p2, v4}, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->transformImageBitmap(Landroid/widget/ImageView;Landroid/view/animation/Transformation;I)V

    .line 134
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 120
    .restart local p1
    :cond_0
    check-cast p1, Lcom/github/droidfu/widgets/WebImageView;

    .end local p1
    invoke-direct {p0, p1, p2, v4}, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->transformWebImageBitmap(Lcom/github/droidfu/widgets/WebImageView;Landroid/view/animation/Transformation;I)V

    goto :goto_0

    .line 123
    .restart local p1
    :cond_1
    iget v3, p0, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->mCoveflowCenter:I

    sub-int/2addr v3, v0

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    iget v4, p0, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->mMaxRotationAngle:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .line 124
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->mMaxRotationAngle:I

    if-le v3, v4, :cond_2

    .line 125
    if-gez v2, :cond_3

    iget v3, p0, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->mMaxRotationAngle:I

    neg-int v3, v3

    move v2, v3

    .line 127
    :cond_2
    :goto_1
    instance-of v3, p1, Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    .line 128
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    invoke-direct {p0, p1, p2, v2}, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->transformImageBitmap(Landroid/widget/ImageView;Landroid/view/animation/Transformation;I)V

    goto :goto_0

    .line 125
    .restart local p1
    :cond_3
    iget v3, p0, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->mMaxRotationAngle:I

    move v2, v3

    goto :goto_1

    .line 130
    :cond_4
    check-cast p1, Lcom/github/droidfu/widgets/WebImageView;

    .end local p1
    invoke-direct {p0, p1, p2, v2}, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->transformWebImageBitmap(Lcom/github/droidfu/widgets/WebImageView;Landroid/view/animation/Transformation;I)V

    goto :goto_0
.end method

.method public getMaxRotationAngle()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->mMaxRotationAngle:I

    return v0
.end method

.method public getMaxZoom()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->mMaxZoom:I

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->getCenterOfCoverflow()I

    move-result v0

    iput v0, p0, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->mCoveflowCenter:I

    .line 149
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onSizeChanged(IIII)V

    .line 150
    return-void
.end method

.method public setMaxRotationAngle(I)V
    .locals 0
    .parameter "maxRotationAngle"

    .prologue
    .line 67
    iput p1, p0, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->mMaxRotationAngle:I

    .line 68
    return-void
.end method

.method public setMaxZoom(I)V
    .locals 0
    .parameter "maxZoom"

    .prologue
    .line 83
    iput p1, p0, Lcom/nvidia/tegrazone/coverflow/CoverFlow;->mMaxZoom:I

    .line 84
    return-void
.end method
