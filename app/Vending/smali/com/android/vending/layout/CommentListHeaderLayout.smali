.class public Lcom/android/vending/layout/CommentListHeaderLayout;
.super Landroid/view/ViewGroup;
.source "CommentListHeaderLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attributeSet"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/vending/layout/CommentListHeaderLayout;->getPaddingTop()I

    move-result v6

    .line 61
    .local v6, top:I
    invoke-virtual {p0}, Lcom/android/vending/layout/CommentListHeaderLayout;->getPaddingLeft()I

    move-result v2

    .line 63
    .local v2, left:I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/vending/layout/CommentListHeaderLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 64
    .local v0, author:Landroid/widget/TextView;
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/vending/layout/CommentListHeaderLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 65
    .local v5, time:Landroid/widget/TextView;
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/android/vending/layout/CommentListHeaderLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RatingBar;

    .line 67
    .local v4, rating:Landroid/widget/RatingBar;
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    add-int v1, v2, v7

    .line 69
    .local v1, authorRight:I
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v0, v2, v6, v1, v7}, Landroid/widget/TextView;->layout(IIII)V

    .line 70
    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {v5, v1, v6, v7, v8}, Landroid/widget/TextView;->layout(IIII)V

    .line 73
    sub-int v7, p4, p2

    invoke-virtual {p0}, Lcom/android/vending/layout/CommentListHeaderLayout;->getPaddingRight()I

    move-result v8

    sub-int v3, v7, v8

    .line 74
    .local v3, paddedRight:I
    invoke-virtual {v4}, Landroid/widget/RatingBar;->getMeasuredWidth()I

    move-result v7

    sub-int v7, v3, v7

    invoke-virtual {v4}, Landroid/widget/RatingBar;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {v4, v7, v6, v3, v8}, Landroid/widget/RatingBar;->layout(IIII)V

    .line 77
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v12, 0x0

    .line 24
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 26
    .local v4, paddedWidth:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 27
    .local v9, widthSpecMode:I
    invoke-virtual {p0}, Lcom/android/vending/layout/CommentListHeaderLayout;->getPaddingLeft()I

    move-result v10

    sub-int v10, v4, v10

    invoke-virtual {p0}, Lcom/android/vending/layout/CommentListHeaderLayout;->getPaddingRight()I

    move-result v11

    sub-int v3, v10, v11

    .line 29
    .local v3, nonpaddedWidth:I
    invoke-virtual {p0, v12}, Lcom/android/vending/layout/CommentListHeaderLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 30
    .local v0, author:Landroid/widget/TextView;
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/vending/layout/CommentListHeaderLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 31
    .local v7, time:Landroid/widget/TextView;
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/android/vending/layout/CommentListHeaderLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RatingBar;

    .line 35
    .local v5, rating:Landroid/widget/RatingBar;
    invoke-virtual {v0, v12, v12}, Landroid/widget/TextView;->measure(II)V

    .line 36
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    .line 38
    .local v1, authorWidth:I
    invoke-virtual {v7, v12, v12}, Landroid/widget/TextView;->measure(II)V

    .line 39
    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    .line 41
    .local v8, timeWidth:I
    invoke-virtual {v5, v12, v12}, Landroid/widget/RatingBar;->measure(II)V

    .line 42
    invoke-virtual {v5}, Landroid/widget/RatingBar;->getMeasuredWidth()I

    move-result v6

    .line 44
    .local v6, ratingWidth:I
    add-int v10, v1, v8

    add-int v2, v10, v6

    .line 48
    .local v2, combinedWidth:I
    if-eqz v9, :cond_0

    if-le v2, v3, :cond_0

    .line 49
    sub-int v10, v3, v8

    sub-int/2addr v10, v6

    const/high16 v11, 0x4000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v0, v10, v12}, Landroid/widget/TextView;->measure(II)V

    .line 54
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual {v5}, Landroid/widget/RatingBar;->getMeasuredHeight()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual {p0, v4, v10}, Lcom/android/vending/layout/CommentListHeaderLayout;->setMeasuredDimension(II)V

    .line 56
    return-void
.end method
