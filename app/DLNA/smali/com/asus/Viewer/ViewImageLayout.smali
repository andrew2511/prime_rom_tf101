.class public Lcom/asus/Viewer/ViewImageLayout;
.super Landroid/widget/FrameLayout;
.source "ViewImageLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/asus/Viewer/ViewImageLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/asus/Viewer/ViewImageLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method


# virtual methods
.method public addScreen(Lcom/asus/Viewer/ImageViewTouchBase;)V
    .locals 3
    .parameter "newScreen"

    .prologue
    const/4 v2, -0x2

    .line 65
    invoke-virtual {p0}, Lcom/asus/Viewer/ViewImageLayout;->getChildCount()I

    move-result v0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/asus/Viewer/ViewImageLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 68
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 50
    const/4 v2, 0x0

    .line 51
    .local v2, childLeft:I
    invoke-virtual {p0}, Lcom/asus/Viewer/ViewImageLayout;->getChildCount()I

    move-result v4

    .line 52
    .local v4, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v4, :cond_1

    .line 53
    invoke-virtual {p0, v5}, Lcom/asus/Viewer/ViewImageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 55
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 56
    .local v3, childWidth:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 58
    .local v1, childHeight:I
    const/4 v6, 0x0

    add-int v7, v2, v3

    invoke-virtual {v0, v2, v6, v7, v1}, Landroid/view/View;->layout(IIII)V

    .line 59
    add-int/2addr v2, v3

    .line 52
    .end local v1           #childHeight:I
    .end local v3           #childWidth:I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 62
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v4, 0x4000

    .line 29
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 31
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 32
    .local v3, widthMode:I
    if-eq v3, v4, :cond_0

    .line 33
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 36
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 37
    .local v1, heightMode:I
    if-eq v1, v4, :cond_1

    .line 38
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 42
    :cond_1
    invoke-virtual {p0}, Lcom/asus/Viewer/ViewImageLayout;->getChildCount()I

    move-result v0

    .line 43
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 44
    invoke-virtual {p0, v2}, Lcom/asus/Viewer/ViewImageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Landroid/view/View;->measure(II)V

    .line 43
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    :cond_2
    return-void
.end method
