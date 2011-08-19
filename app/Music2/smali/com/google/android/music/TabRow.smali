.class public Lcom/google/android/music/TabRow;
.super Landroid/widget/HorizontalScrollView;
.source "TabRow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/TabRow$OnTabClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NuMusic"


# instance fields
.field private mListener:Lcom/google/android/music/TabRow$OnTabClickListener;

.field private mNeedsLayout:Z

.field private mRequestedTab:I

.field private mTabHolder:Landroid/widget/TabWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v3, 0x7f0201dc

    const/4 v2, -0x2

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/music/TabRow;->mRequestedTab:I

    .line 32
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/music/TabRow;->mNeedsLayout:Z

    .line 36
    new-instance v1, Landroid/widget/TabWidget;

    invoke-direct {v1, p1}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/music/TabRow;->mTabHolder:Landroid/widget/TabWidget;

    .line 37
    iget-object v1, p0, Lcom/google/android/music/TabRow;->mTabHolder:Landroid/widget/TabWidget;

    invoke-virtual {v1, v3}, Landroid/widget/TabWidget;->setLeftStripDrawable(I)V

    .line 38
    iget-object v1, p0, Lcom/google/android/music/TabRow;->mTabHolder:Landroid/widget/TabWidget;

    invoke-virtual {v1, v3}, Landroid/widget/TabWidget;->setRightStripDrawable(I)V

    .line 39
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 42
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/google/android/music/TabRow;->mTabHolder:Landroid/widget/TabWidget;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/music/TabRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/music/TabRow;->setHorizontalFadingEdgeEnabled(Z)V

    .line 44
    return-void
.end method


# virtual methods
.method public addTab(I)V
    .locals 2
    .parameter "resid"

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/google/android/music/TabRow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, s:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/music/TabRow;->addTab(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public addTab(Ljava/lang/String;)V
    .locals 5
    .parameter "label"

    .prologue
    const/4 v4, 0x1

    .line 52
    invoke-virtual {p0}, Lcom/google/android/music/TabRow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 53
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f04002d

    iget-object v3, p0, Lcom/google/android/music/TabRow;->mTabHolder:Landroid/widget/TabWidget;

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 56
    iget-object v2, p0, Lcom/google/android/music/TabRow;->mTabHolder:Landroid/widget/TabWidget;

    iget-object v3, p0, Lcom/google/android/music/TabRow;->mTabHolder:Landroid/widget/TabWidget;

    invoke-virtual {v3}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/StatefulShadowTextView;

    .line 58
    .local v1, tv:Lcom/google/android/music/StatefulShadowTextView;
    invoke-virtual {v1, p1}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {v1, p0}, Lcom/google/android/music/StatefulShadowTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-virtual {v1, p0}, Lcom/google/android/music/StatefulShadowTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 61
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/music/StatefulShadowTextView;->setShowShadowWhenSelected(Z)V

    .line 62
    invoke-virtual {v1, v4}, Lcom/google/android/music/StatefulShadowTextView;->setShowShadowWhenDeselected(Z)V

    .line 63
    iput-boolean v4, p0, Lcom/google/android/music/TabRow;->mNeedsLayout:Z

    .line 64
    return-void
.end method

.method public focusCurrentTab()V
    .locals 4

    .prologue
    .line 101
    iget-object v3, p0, Lcom/google/android/music/TabRow;->mTabHolder:Landroid/widget/TabWidget;

    invoke-virtual {v3}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v1

    .line 102
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 103
    iget-object v3, p0, Lcom/google/android/music/TabRow;->mTabHolder:Landroid/widget/TabWidget;

    invoke-virtual {v3, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    .line 104
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 102
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    .end local v2           #v:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 68
    iget-object v1, p0, Lcom/google/android/music/TabRow;->mListener:Lcom/google/android/music/TabRow$OnTabClickListener;

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/google/android/music/TabRow;->mTabHolder:Landroid/widget/TabWidget;

    invoke-virtual {v1, p1}, Landroid/widget/TabWidget;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 70
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 71
    iget-object v1, p0, Lcom/google/android/music/TabRow;->mListener:Lcom/google/android/music/TabRow$OnTabClickListener;

    invoke-interface {v1, v0}, Lcom/google/android/music/TabRow$OnTabClickListener;->onTabClicked(I)V

    .line 74
    .end local v0           #index:I
    :cond_0
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 119
    if-eqz p2, :cond_0

    .line 120
    invoke-virtual {p0, p1}, Lcom/google/android/music/TabRow;->onClick(Landroid/view/View;)V

    .line 122
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 78
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 79
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/music/TabRow;->mNeedsLayout:Z

    .line 80
    iget v0, p0, Lcom/google/android/music/TabRow;->mRequestedTab:I

    .line 81
    .local v0, tab:I
    if-ltz v0, :cond_0

    .line 82
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/music/TabRow;->mRequestedTab:I

    .line 83
    invoke-virtual {p0, v0}, Lcom/google/android/music/TabRow;->setCurrentTab(I)V

    .line 85
    :cond_0
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 88
    iget-boolean v2, p0, Lcom/google/android/music/TabRow;->mNeedsLayout:Z

    if-eqz v2, :cond_0

    .line 90
    iput p1, p0, Lcom/google/android/music/TabRow;->mRequestedTab:I

    .line 98
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v2, p0, Lcom/google/android/music/TabRow;->mTabHolder:Landroid/widget/TabWidget;

    invoke-virtual {v2, p1}, Landroid/widget/TabWidget;->setCurrentTab(I)V

    .line 94
    iget-object v2, p0, Lcom/google/android/music/TabRow;->mTabHolder:Landroid/widget/TabWidget;

    invoke-virtual {v2, p1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 95
    .local v1, v:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getRight()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/android/music/TabRow;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 97
    .local v0, pos:I
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/TabRow;->smoothScrollTo(II)V

    goto :goto_0
.end method

.method public setOnTabClickListener(Lcom/google/android/music/TabRow$OnTabClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/android/music/TabRow;->mListener:Lcom/google/android/music/TabRow$OnTabClickListener;

    .line 112
    return-void
.end method
