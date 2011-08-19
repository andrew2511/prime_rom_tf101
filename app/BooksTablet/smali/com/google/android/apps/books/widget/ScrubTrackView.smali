.class public Lcom/google/android/apps/books/widget/ScrubTrackView;
.super Landroid/view/View;
.source "ScrubTrackView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScrubTrackView"


# instance fields
.field private mGroupWell:Landroid/graphics/drawable/Drawable;

.field private mIndex:Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex",
            "<**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 25
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/books/widget/ScrubTrackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/books/widget/ScrubTrackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    sget-object v1, Lcom/google/android/apps/books/R$styleable;->Theme:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 36
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/books/widget/ScrubTrackView;->mGroupWell:Landroid/graphics/drawable/Drawable;

    .line 37
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 38
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 59
    iget-object v11, p0, Lcom/google/android/apps/books/widget/ScrubTrackView;->mIndex:Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;

    if-nez v11, :cond_1

    .line 88
    :cond_0
    return-void

    .line 63
    :cond_1
    const/4 v6, 0x0

    .line 65
    .local v6, leftItem:I
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScrubTrackView;->getWidth()I

    move-result v1

    .line 67
    .local v1, fullWidth:I
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScrubTrackView;->getHeight()I

    move-result v11

    iget-object v12, p0, Lcom/google/android/apps/books/widget/ScrubTrackView;->mGroupWell:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    sub-int/2addr v11, v12

    div-int/lit8 v10, v11, 0x2

    .line 68
    .local v10, top:I
    iget-object v11, p0, Lcom/google/android/apps/books/widget/ScrubTrackView;->mGroupWell:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    add-int v0, v10, v11

    .line 71
    .local v0, bottom:I
    iget-object v11, p0, Lcom/google/android/apps/books/widget/ScrubTrackView;->mIndex:Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;

    invoke-interface {v11}, Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;->getGroupCount()I

    move-result v2

    .line 72
    .local v2, groupCount:I
    iget-object v11, p0, Lcom/google/android/apps/books/widget/ScrubTrackView;->mIndex:Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;

    invoke-interface {v11}, Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;->getItemCount()I

    move-result v5

    .line 73
    .local v5, itemCount:I
    const/4 v4, 0x1

    .local v4, i:I
    :goto_0
    if-gt v4, v2, :cond_0

    .line 74
    if-ne v4, v2, :cond_2

    move v8, v5

    .line 77
    .local v8, rightItem:I
    :goto_1
    mul-int v11, v6, v1

    div-int v7, v11, v5

    .line 78
    .local v7, leftX:I
    mul-int v11, v8, v1

    div-int v9, v11, v5

    .line 80
    .local v9, rightX:I
    iget-object v11, p0, Lcom/google/android/apps/books/widget/ScrubTrackView;->mIndex:Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;

    const/4 v12, 0x1

    sub-int v12, v4, v12

    invoke-interface {v11, v12}, Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;->isGroupEnabled(I)Z

    move-result v3

    .line 82
    .local v3, groupEnabled:Z
    iget-object v11, p0, Lcom/google/android/apps/books/widget/ScrubTrackView;->mGroupWell:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    sget-object v12, Landroid/view/View;->ENABLED_STATE_SET:[I

    :goto_2
    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 83
    iget-object v11, p0, Lcom/google/android/apps/books/widget/ScrubTrackView;->mGroupWell:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v7, v10, v9, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 84
    iget-object v11, p0, Lcom/google/android/apps/books/widget/ScrubTrackView;->mGroupWell:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 86
    move v6, v8

    .line 73
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 74
    .end local v3           #groupEnabled:Z
    .end local v7           #leftX:I
    .end local v8           #rightItem:I
    .end local v9           #rightX:I
    :cond_2
    iget-object v11, p0, Lcom/google/android/apps/books/widget/ScrubTrackView;->mIndex:Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;

    invoke-interface {v11, v4}, Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;->getItemForGroup(I)I

    move-result v11

    move v8, v11

    goto :goto_1

    .line 82
    .restart local v3       #groupEnabled:Z
    .restart local v7       #leftX:I
    .restart local v8       #rightItem:I
    .restart local v9       #rightX:I
    :cond_3
    sget-object v12, Landroid/view/View;->EMPTY_STATE_SET:[I

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScrubTrackView;->computeHorizontalScrollRange()I

    move-result v1

    .line 48
    .local v1, width:I
    iget-object v2, p0, Lcom/google/android/apps/books/widget/ScrubTrackView;->mGroupWell:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 51
    .local v0, height:I
    invoke-static {v1, p1}, Lcom/google/android/apps/books/widget/ScrubTrackView;->resolveSize(II)I

    move-result v2

    invoke-static {v0, p2}, Lcom/google/android/apps/books/widget/ScrubTrackView;->resolveSize(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/books/widget/ScrubTrackView;->setMeasuredDimension(II)V

    .line 53
    return-void
.end method

.method public setScrubIndex(Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, index:Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;,"Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex<**>;"
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScrubTrackView;->mIndex:Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;

    .line 42
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScrubTrackView;->invalidate()V

    .line 43
    return-void
.end method
