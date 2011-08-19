.class Lcom/android/camera/ui/GLLinearLayout;
.super Lcom/android/camera/ui/GLView;
.source "GLLinearLayout.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/camera/ui/GLView;-><init>()V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 41
    iget-object v5, p0, Lcom/android/camera/ui/GLLinearLayout;->mPaddings:Landroid/graphics/Rect;

    .line 42
    .local v5, p:Landroid/graphics/Rect;
    iget v3, v5, Landroid/graphics/Rect;->left:I

    .line 43
    .local v3, offsetX:I
    sub-int v8, p4, p2

    iget v9, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    iget v9, v5, Landroid/graphics/Rect;->right:I

    sub-int v7, v8, v9

    .line 44
    .local v7, width:I
    iget v4, v5, Landroid/graphics/Rect;->top:I

    .line 45
    .local v4, offsetY:I
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p0}, Lcom/android/camera/ui/GLLinearLayout;->getComponentCount()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 46
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GLLinearLayout;->getComponent(I)Lcom/android/camera/ui/GLView;

    move-result-object v6

    .line 47
    .local v6, view:Lcom/android/camera/ui/GLView;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Lcom/android/camera/ui/GLView;->measure(II)V

    .line 48
    invoke-virtual {v6}, Lcom/android/camera/ui/GLView;->getMeasuredHeight()I

    move-result v8

    add-int v2, v4, v8

    .line 49
    .local v2, nextOffsetY:I
    add-int v8, v3, v7

    invoke-virtual {v6, v3, v4, v8, v2}, Lcom/android/camera/ui/GLView;->layout(IIII)V

    .line 50
    move v4, v2

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    .end local v2           #nextOffsetY:I
    .end local v6           #view:Lcom/android/camera/ui/GLView;
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    const/4 v6, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    .local v4, width:I
    const/4 v0, 0x0

    .line 28
    .local v0, height:I
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Lcom/android/camera/ui/GLLinearLayout;->getComponentCount()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 29
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/GLLinearLayout;->getComponent(I)Lcom/android/camera/ui/GLView;

    move-result-object v3

    .line 30
    .local v3, view:Lcom/android/camera/ui/GLView;
    invoke-virtual {v3, v6, v6}, Lcom/android/camera/ui/GLView;->measure(II)V

    .line 31
    invoke-virtual {v3}, Lcom/android/camera/ui/GLView;->getMeasuredWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 32
    invoke-virtual {v3}, Lcom/android/camera/ui/GLView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v0, v5

    .line 28
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    .end local v3           #view:Lcom/android/camera/ui/GLView;
    :cond_0
    new-instance v5, Lcom/android/camera/ui/MeasureHelper;

    invoke-direct {v5, p0}, Lcom/android/camera/ui/MeasureHelper;-><init>(Lcom/android/camera/ui/GLView;)V

    invoke-virtual {v5, v4, v0}, Lcom/android/camera/ui/MeasureHelper;->setPreferredContentSize(II)Lcom/android/camera/ui/MeasureHelper;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Lcom/android/camera/ui/MeasureHelper;->measure(II)V

    .line 37
    return-void
.end method
