.class public Lcom/android/launcher2/PagedViewExtendedLayout;
.super Landroid/widget/LinearLayout;
.source "PagedViewExtendedLayout.java"

# interfaces
.implements Lcom/android/launcher2/Page;


# instance fields
.field mChildrenAlpha:F

.field private mHasFixedWidth:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/PagedViewExtendedLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/PagedViewExtendedLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/launcher2/PagedViewExtendedLayout;->mChildrenAlpha:F

    .line 44
    return-void
.end method

.method private setChildrenAlpha(F)V
    .locals 3
    .parameter "alpha"

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewExtendedLayout;->getChildCount()I

    move-result v0

    .line 90
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 91
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedViewExtendedLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 117
    iget v0, p0, Lcom/android/launcher2/PagedViewExtendedLayout;->mChildrenAlpha:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 118
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1
    .parameter "child"
    .parameter "index"

    .prologue
    .line 110
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 111
    iget v0, p0, Lcom/android/launcher2/PagedViewExtendedLayout;->mChildrenAlpha:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 112
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 1
    .parameter "child"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 122
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 123
    iget v0, p0, Lcom/android/launcher2/PagedViewExtendedLayout;->mChildrenAlpha:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 124
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 97
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget v0, p0, Lcom/android/launcher2/PagedViewExtendedLayout;->mChildrenAlpha:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 99
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "child"
    .parameter "params"

    .prologue
    .line 104
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget v0, p0, Lcom/android/launcher2/PagedViewExtendedLayout;->mChildrenAlpha:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 106
    return-void
.end method

.method public getChildOnPageAt(I)Landroid/view/View;
    .locals 1
    .parameter "i"

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedViewExtendedLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPageChildCount()I
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewExtendedLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public indexOfChildOnPage(Landroid/view/View;)I
    .locals 1
    .parameter "v"

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedViewExtendedLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 52
    iget-boolean v2, p0, Lcom/android/launcher2/PagedViewExtendedLayout;->mHasFixedWidth:Z

    if-eqz v2, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewExtendedLayout;->getSuggestedMinimumWidth()I

    move-result v1

    .line 58
    .local v1, widthSpecSize:I
    const/high16 v0, 0x4000

    .line 59
    .local v0, widthSpecMode:I
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 61
    .end local v0           #widthSpecMode:I
    .end local v1           #widthSpecSize:I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 62
    return-void
.end method

.method protected onSetAlpha(I)Z
    .locals 1
    .parameter "alpha"

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public removeAllViewsOnPage()V
    .locals 0

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewExtendedLayout;->removeAllViews()V

    .line 129
    return-void
.end method

.method public setAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 83
    iput p1, p0, Lcom/android/launcher2/PagedViewExtendedLayout;->mChildrenAlpha:F

    .line 84
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedViewExtendedLayout;->setChildrenAlpha(F)V

    .line 85
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 86
    return-void
.end method

.method public setHasFixedWidth(Z)V
    .locals 0
    .parameter "hasFixedWidth"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/launcher2/PagedViewExtendedLayout;->mHasFixedWidth:Z

    .line 48
    return-void
.end method
