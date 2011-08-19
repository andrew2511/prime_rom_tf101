.class public Lcom/google/android/youtube/app/ui/TabRow;
.super Landroid/widget/HorizontalScrollView;
.source "TabRow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/app/ui/TabRow$OnTabFocusListener;,
        Lcom/google/android/youtube/app/ui/TabRow$OnTabClickListener;
    }
.end annotation


# instance fields
.field private needsLayout:Z

.field private onTabClickListener:Lcom/google/android/youtube/app/ui/TabRow$OnTabClickListener;

.field private onTabFocusListener:Lcom/google/android/youtube/app/ui/TabRow$OnTabFocusListener;

.field private requestedTab:I

.field private final tabHolder:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    iput v3, p0, Lcom/google/android/youtube/app/ui/TabRow;->requestedTab:I

    .line 25
    iput-boolean v4, p0, Lcom/google/android/youtube/app/ui/TabRow;->needsLayout:Z

    .line 29
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/TabRow;->tabHolder:Landroid/widget/LinearLayout;

    .line 30
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 32
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/TabRow;->tabHolder:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/youtube/app/ui/TabRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    invoke-virtual {p0, v3}, Lcom/google/android/youtube/app/ui/TabRow;->setHorizontalScrollBarEnabled(Z)V

    .line 34
    invoke-virtual {p0, v4}, Lcom/google/android/youtube/app/ui/TabRow;->setFillViewport(Z)V

    .line 35
    return-void
.end method


# virtual methods
.method public addTab(I)V
    .locals 2
    .parameter "resid"

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/TabRow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, s:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/ui/TabRow;->addTab(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public addTab(Ljava/lang/String;)V
    .locals 5
    .parameter "label"

    .prologue
    const/4 v4, 0x1

    .line 43
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/TabRow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 44
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f04002b

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/TabRow;->tabHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 47
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/TabRow;->tabHolder:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/TabRow;->tabHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 48
    .local v1, tv:Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iput-boolean v4, p0, Lcom/google/android/youtube/app/ui/TabRow;->needsLayout:Z

    .line 51
    return-void
.end method

.method public focusTab(IZ)V
    .locals 8
    .parameter "index"
    .parameter "smooth"

    .prologue
    const/4 v7, 0x0

    .line 90
    iget-boolean v5, p0, Lcom/google/android/youtube/app/ui/TabRow;->needsLayout:Z

    if-eqz v5, :cond_1

    .line 92
    iput p1, p0, Lcom/google/android/youtube/app/ui/TabRow;->requestedTab:I

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-virtual {p0, v7}, Lcom/google/android/youtube/app/ui/TabRow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 96
    .local v1, ll:Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 97
    .local v2, num:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 98
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-ne v0, p1, :cond_2

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v5, v6}, Landroid/view/View;->setSelected(Z)V

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v6, v7

    .line 98
    goto :goto_2

    .line 100
    :cond_3
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 101
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_4

    .line 102
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/TabRow;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v3, v5, 0x2

    .line 103
    .local v3, pos:I
    if-eqz p2, :cond_5

    .line 104
    invoke-virtual {p0, v3, v7}, Lcom/google/android/youtube/app/ui/TabRow;->smoothScrollTo(II)V

    .line 109
    .end local v3           #pos:I
    :cond_4
    :goto_3
    iget-object v5, p0, Lcom/google/android/youtube/app/ui/TabRow;->onTabFocusListener:Lcom/google/android/youtube/app/ui/TabRow$OnTabFocusListener;

    if-eqz v5, :cond_0

    .line 110
    iget-object v5, p0, Lcom/google/android/youtube/app/ui/TabRow;->onTabFocusListener:Lcom/google/android/youtube/app/ui/TabRow$OnTabFocusListener;

    invoke-interface {v5, p1}, Lcom/google/android/youtube/app/ui/TabRow$OnTabFocusListener;->onTabFocus(I)V

    goto :goto_0

    .line 106
    .restart local v3       #pos:I
    :cond_5
    invoke-virtual {p0, v3, v7}, Lcom/google/android/youtube/app/ui/TabRow;->scrollTo(II)V

    goto :goto_3
.end method

.method public getTabAt(I)Landroid/view/View;
    .locals 2
    .parameter "index"

    .prologue
    .line 64
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/ui/TabRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 65
    .local v0, ll:Landroid/widget/LinearLayout;
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public getTabCount()I
    .locals 2

    .prologue
    .line 69
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/ui/TabRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 70
    .local v0, ll:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 55
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/TabRow;->onTabClickListener:Lcom/google/android/youtube/app/ui/TabRow$OnTabClickListener;

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/TabRow;->tabHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 57
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 58
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/TabRow;->onTabClickListener:Lcom/google/android/youtube/app/ui/TabRow$OnTabClickListener;

    invoke-interface {v1, v0}, Lcom/google/android/youtube/app/ui/TabRow$OnTabClickListener;->onTabClicked(I)V

    .line 61
    .end local v0           #index:I
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
    .line 80
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 81
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/youtube/app/ui/TabRow;->needsLayout:Z

    .line 82
    iget v0, p0, Lcom/google/android/youtube/app/ui/TabRow;->requestedTab:I

    .line 83
    .local v0, tab:I
    if-ltz v0, :cond_0

    .line 84
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/youtube/app/ui/TabRow;->requestedTab:I

    .line 85
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/app/ui/TabRow;->focusTab(IZ)V

    .line 87
    :cond_0
    return-void
.end method

.method public removeAllTabs()V
    .locals 2

    .prologue
    .line 74
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/ui/TabRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 75
    .local v0, ll:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 76
    return-void
.end method

.method public setOnTabClickListener(Lcom/google/android/youtube/app/ui/TabRow$OnTabClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/TabRow;->onTabClickListener:Lcom/google/android/youtube/app/ui/TabRow$OnTabClickListener;

    .line 116
    return-void
.end method

.method public setOnTabFocusListener(Lcom/google/android/youtube/app/ui/TabRow$OnTabFocusListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/TabRow;->onTabFocusListener:Lcom/google/android/youtube/app/ui/TabRow$OnTabFocusListener;

    .line 120
    return-void
.end method
