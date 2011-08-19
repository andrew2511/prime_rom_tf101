.class public Lcom/amazon/kcp/reader/ui/ViewOptions;
.super Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;
.source "ViewOptions.java"


# instance fields
.field private textSizeRow:Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method


# virtual methods
.method public hide()Z
    .locals 1

    .prologue
    .line 39
    const v0, 0x7f040003

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/ViewOptions;->hide(I)Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;->onFinishInflate()V

    .line 56
    const v0, 0x7f0c00c0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/ViewOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ViewOptions;->textSizeRow:Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;

    .line 57
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ViewOptions;->syncSelectedOptions()V

    .line 58
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;->onMeasure(II)V

    .line 64
    const v4, 0x7f0c00d5

    invoke-virtual {p0, v4}, Lcom/amazon/kcp/reader/ui/ViewOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, content:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 67
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 68
    .local v2, maxWidth:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 70
    .local v1, maxHeight:I
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 74
    .local v3, width:I
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ViewOptions;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a003c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 75
    const/high16 v4, 0x4000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/high16 v5, -0x8000

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/view/View;->measure(II)V

    .line 78
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/amazon/kcp/reader/ui/ViewOptions;->setMeasuredDimension(II)V

    .line 80
    .end local v1           #maxHeight:I
    .end local v2           #maxWidth:I
    .end local v3           #width:I
    :cond_0
    return-void
.end method

.method public show()Z
    .locals 1

    .prologue
    .line 48
    const v0, 0x7f040002

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/ViewOptions;->show(I)Z

    move-result v0

    return v0
.end method

.method public syncSelectedOptions()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;->syncSelectedOptions()V

    .line 90
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ViewOptions;->textSizeRow:Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->syncSelectedOptions()V

    .line 91
    return-void
.end method
