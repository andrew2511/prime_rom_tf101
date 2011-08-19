.class public Lcom/amazon/kcp/reader/ui/DottedButton;
.super Landroid/widget/FrameLayout;
.source "DottedButton.java"


# instance fields
.field private button:Landroid/view/View;

.field private dot:Landroid/widget/ImageView;

.field private dotTopMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/DottedButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/ui/DottedButton;->dotTopMargin:I

    .line 37
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 57
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/DottedButton;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/DottedButton;->button:Landroid/view/View;

    .line 59
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/DottedButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 61
    .local v0, image:Landroid/widget/ImageView;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x51

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/DottedButton;->addView(Landroid/view/View;)V

    .line 66
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/DottedButton;->dot:Landroid/widget/ImageView;

    .line 67
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 74
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/DottedButton;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DottedButton;->dot:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DottedButton;->dot:Landroid/widget/ImageView;

    const v1, 0x7f0200b9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    :goto_0
    return-void

    .line 79
    :cond_0
    if-eqz p1, :cond_1

    .line 81
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DottedButton;->dot:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DottedButton;->dot:Landroid/widget/ImageView;

    const v1, 0x7f0200b8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DottedButton;->dot:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v5, 0x0

    .line 106
    if-eqz p1, :cond_0

    .line 108
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 110
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/DottedButton;->button:Landroid/view/View;

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/DottedButton;->button:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/DottedButton;->button:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 113
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/DottedButton;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/DottedButton;->dot:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 114
    .local v0, dotLayoutLeft:I
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/DottedButton;->button:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/amazon/kcp/reader/ui/DottedButton;->dotTopMargin:I

    add-int v1, v2, v3

    .line 116
    .local v1, dotLayoutTop:I
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/DottedButton;->dot:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/DottedButton;->dot:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/DottedButton;->dot:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 118
    .end local v0           #dotLayoutLeft:I
    .end local v1           #dotLayoutTop:I
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 94
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 96
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/DottedButton;->button:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 97
    .local v0, height:I
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/DottedButton;->dot:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 98
    iget v1, p0, Lcom/amazon/kcp/reader/ui/DottedButton;->dotTopMargin:I

    add-int/2addr v0, v1

    .line 100
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/DottedButton;->button:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/amazon/kcp/reader/ui/DottedButton;->setMeasuredDimension(II)V

    .line 101
    return-void
.end method

.method public setSelected(Z)V
    .locals 2
    .parameter "selected"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 43
    if-eqz p1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DottedButton;->dot:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DottedButton;->dot:Landroid/widget/ImageView;

    const v1, 0x7f0200b9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DottedButton;->dot:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
