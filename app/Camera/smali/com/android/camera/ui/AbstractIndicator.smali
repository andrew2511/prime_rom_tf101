.class abstract Lcom/android/camera/ui/AbstractIndicator;
.super Lcom/android/camera/ui/GLView;
.source "AbstractIndicator.java"


# instance fields
.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0}, Lcom/android/camera/ui/GLView;-><init>()V

    .line 29
    iput v2, p0, Lcom/android/camera/ui/AbstractIndicator;->mOrientation:I

    .line 34
    const/4 v1, 0x3

    invoke-static {p1, v1}, Lcom/android/camera/ui/GLRootView;->dpToPixel(Landroid/content/Context;I)I

    move-result v0

    .line 35
    .local v0, padding:I
    invoke-virtual {p0, v0, v2, v0, v2}, Lcom/android/camera/ui/AbstractIndicator;->setPaddings(IIII)V

    .line 36
    return-void
.end method


# virtual methods
.method protected abstract getIcon()Lcom/android/camera/ui/BitmapTexture;
.end method

.method public abstract getPopupContent()Lcom/android/camera/ui/GLView;
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/camera/ui/AbstractIndicator;->getIcon()Lcom/android/camera/ui/BitmapTexture;

    move-result-object v0

    .line 41
    .local v0, icon:Lcom/android/camera/ui/BitmapTexture;
    new-instance v1, Lcom/android/camera/ui/MeasureHelper;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/MeasureHelper;-><init>(Lcom/android/camera/ui/GLView;)V

    invoke-virtual {v0}, Lcom/android/camera/ui/BitmapTexture;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/camera/ui/BitmapTexture;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/MeasureHelper;->setPreferredContentSize(II)Lcom/android/camera/ui/MeasureHelper;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/MeasureHelper;->measure(II)V

    .line 44
    return-void
.end method

.method public abstract overrideSettings(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract reloadPreferences()V
.end method

.method protected render(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 9
    .parameter "root"
    .parameter "gl"

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/camera/ui/AbstractIndicator;->getIcon()Lcom/android/camera/ui/BitmapTexture;

    move-result-object v1

    .line 49
    .local v1, icon:Lcom/android/camera/ui/BitmapTexture;
    if-eqz v1, :cond_0

    .line 50
    iget-object v3, p0, Lcom/android/camera/ui/AbstractIndicator;->mPaddings:Landroid/graphics/Rect;

    .line 51
    .local v3, p:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/camera/ui/AbstractIndicator;->getWidth()I

    move-result v6

    iget v7, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iget v7, v3, Landroid/graphics/Rect;->right:I

    sub-int v5, v6, v7

    .line 52
    .local v5, width:I
    invoke-virtual {p0}, Lcom/android/camera/ui/AbstractIndicator;->getHeight()I

    move-result v6

    iget v7, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v6, v7

    .line 53
    .local v0, height:I
    iget v6, p0, Lcom/android/camera/ui/AbstractIndicator;->mOrientation:I

    if-eqz v6, :cond_1

    .line 54
    invoke-virtual {p1}, Lcom/android/camera/ui/GLRootView;->pushTransform()Landroid/view/animation/Transformation;

    move-result-object v4

    .line 55
    .local v4, trans:Landroid/view/animation/Transformation;
    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 56
    .local v2, matrix:Landroid/graphics/Matrix;
    iget v6, v3, Landroid/graphics/Rect;->left:I

    div-int/lit8 v7, v5, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, v3, Landroid/graphics/Rect;->top:I

    div-int/lit8 v8, v0, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 57
    iget v6, p0, Lcom/android/camera/ui/AbstractIndicator;->mOrientation:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 58
    invoke-virtual {v1}, Lcom/android/camera/ui/BitmapTexture;->getWidth()I

    move-result v6

    neg-int v6, v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v1}, Lcom/android/camera/ui/BitmapTexture;->getHeight()I

    move-result v7

    neg-int v7, v7

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v1, p1, v6, v7}, Lcom/android/camera/ui/BitmapTexture;->draw(Lcom/android/camera/ui/GLRootView;II)V

    .line 59
    invoke-virtual {p1}, Lcom/android/camera/ui/GLRootView;->popTransform()V

    .line 66
    .end local v0           #height:I
    .end local v2           #matrix:Landroid/graphics/Matrix;
    .end local v3           #p:Landroid/graphics/Rect;
    .end local v4           #trans:Landroid/view/animation/Transformation;
    .end local v5           #width:I
    :cond_0
    :goto_0
    return-void

    .line 61
    .restart local v0       #height:I
    .restart local v3       #p:Landroid/graphics/Rect;
    .restart local v5       #width:I
    :cond_1
    iget v6, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Lcom/android/camera/ui/BitmapTexture;->getWidth()I

    move-result v7

    sub-int v7, v5, v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget v7, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Lcom/android/camera/ui/BitmapTexture;->getHeight()I

    move-result v8

    sub-int v8, v0, v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    invoke-virtual {v1, p1, v6, v7}, Lcom/android/camera/ui/BitmapTexture;->draw(Lcom/android/camera/ui/GLRootView;II)V

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 69
    rem-int/lit8 v1, p1, 0x5a

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 70
    :cond_0
    rem-int/lit16 p1, p1, 0x168

    .line 71
    if-gez p1, :cond_1

    add-int/lit16 p1, p1, 0x168

    .line 73
    :cond_1
    iget v1, p0, Lcom/android/camera/ui/AbstractIndicator;->mOrientation:I

    if-ne v1, p1, :cond_3

    .line 81
    :cond_2
    :goto_0
    return-void

    .line 74
    :cond_3
    iput p1, p0, Lcom/android/camera/ui/AbstractIndicator;->mOrientation:I

    .line 76
    invoke-virtual {p0}, Lcom/android/camera/ui/AbstractIndicator;->getGLRootView()Lcom/android/camera/ui/GLRootView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 77
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3e4ccccd

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 78
    .local v0, anim:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 79
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AbstractIndicator;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
