.class public Lcom/nuance/xt9/input/SpellListView;
.super Lcom/nuance/xt9/input/CandidatesListView;
.source "SpellListView.java"


# instance fields
.field mHandler:Landroid/os/Handler;

.field private mLeftArrowWidth:I

.field private mRightArrowWidth:I

.field mTouchedIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/nuance/xt9/input/CandidatesListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance v0, Lcom/nuance/xt9/input/SpellListView$1;

    invoke-direct {v0, p0}, Lcom/nuance/xt9/input/SpellListView$1;-><init>(Lcom/nuance/xt9/input/SpellListView;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/SpellListView;->mHandler:Landroid/os/Handler;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/xt9/input/SpellListView;->mTouchedIndex:I

    .line 45
    iput v1, p0, Lcom/nuance/xt9/input/SpellListView;->mLeftArrowWidth:I

    .line 46
    iput v1, p0, Lcom/nuance/xt9/input/SpellListView;->mRightArrowWidth:I

    .line 47
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-super {p0}, Lcom/nuance/xt9/input/CandidatesListView;->clear()V

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/xt9/input/SpellListView;->mTouchedIndex:I

    .line 72
    iput v1, p0, Lcom/nuance/xt9/input/SpellListView;->mLeftArrowWidth:I

    .line 73
    iput v1, p0, Lcom/nuance/xt9/input/SpellListView;->mRightArrowWidth:I

    .line 74
    return-void
.end method

.method public getListSize()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public scrollToSelection()V
    .locals 5

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/nuance/xt9/input/SpellListView;->getWidth()I

    move-result v2

    .line 90
    .local v2, totalWidth:I
    iget-object v3, p0, Lcom/nuance/xt9/input/SpellListView;->mWordX:[I

    iget v4, p0, Lcom/nuance/xt9/input/SpellListView;->mSelectedIndex:I

    aget v3, v3, v4

    invoke-virtual {p0}, Lcom/nuance/xt9/input/SpellListView;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/nuance/xt9/input/SpellListView;->mLeftArrowWidth:I

    add-int v1, v3, v4

    .line 91
    .local v1, start:I
    iget-object v3, p0, Lcom/nuance/xt9/input/SpellListView;->mWordWidth:[I

    iget v4, p0, Lcom/nuance/xt9/input/SpellListView;->mSelectedIndex:I

    aget v3, v3, v4

    add-int v0, v1, v3

    .line 92
    .local v0, end:I
    if-nez v2, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget v3, p0, Lcom/nuance/xt9/input/SpellListView;->mLeftArrowWidth:I

    if-ge v1, v3, :cond_2

    .line 96
    iget-object v3, p0, Lcom/nuance/xt9/input/SpellListView;->mWordX:[I

    iget v4, p0, Lcom/nuance/xt9/input/SpellListView;->mSelectedIndex:I

    aget v3, v3, v4

    invoke-virtual {p0, v3}, Lcom/nuance/xt9/input/SpellListView;->updateScrollPosition(I)V

    goto :goto_0

    .line 98
    :cond_2
    iget v3, p0, Lcom/nuance/xt9/input/SpellListView;->mLeftArrowWidth:I

    add-int/2addr v3, v2

    if-le v0, v3, :cond_0

    .line 99
    iget v3, p0, Lcom/nuance/xt9/input/SpellListView;->mLeftArrowWidth:I

    if-nez v3, :cond_3

    .line 100
    invoke-virtual {p0}, Lcom/nuance/xt9/input/SpellListView;->getScrollX()I

    move-result v3

    add-int/2addr v3, v0

    sub-int/2addr v3, v2

    iget v4, p0, Lcom/nuance/xt9/input/SpellListView;->mRightArrowWidth:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/nuance/xt9/input/SpellListView;->updateScrollPosition(I)V

    goto :goto_0

    .line 103
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/xt9/input/SpellListView;->getScrollX()I

    move-result v3

    add-int/2addr v3, v0

    sub-int/2addr v3, v2

    iget v4, p0, Lcom/nuance/xt9/input/SpellListView;->mLeftArrowWidth:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/nuance/xt9/input/SpellListView;->updateScrollPosition(I)V

    goto :goto_0
.end method

.method public setArrowWidth(II)V
    .locals 0
    .parameter "leftArrowWidth"
    .parameter "rightArrowWidth"

    .prologue
    .line 83
    iput p1, p0, Lcom/nuance/xt9/input/SpellListView;->mLeftArrowWidth:I

    .line 84
    iput p2, p0, Lcom/nuance/xt9/input/SpellListView;->mRightArrowWidth:I

    .line 85
    return-void
.end method

.method protected touchWord(ILjava/lang/CharSequence;)V
    .locals 0
    .parameter "i"
    .parameter "suggestion"

    .prologue
    .line 51
    iput p1, p0, Lcom/nuance/xt9/input/SpellListView;->mTouchedIndex:I

    .line 52
    iput-object p2, p0, Lcom/nuance/xt9/input/SpellListView;->mSelectedString:Ljava/lang/CharSequence;

    .line 53
    return-void
.end method

.method protected trySelect()V
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellListView;->mSelectedString:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellListView;->mOnWordSelectActionListener:Lcom/nuance/xt9/input/CandidatesListView$OnWordSelectActionListener;

    iget v1, p0, Lcom/nuance/xt9/input/SpellListView;->mTouchedIndex:I

    iget-object v2, p0, Lcom/nuance/xt9/input/SpellListView;->mSelectedString:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, p0}, Lcom/nuance/xt9/input/CandidatesListView$OnWordSelectActionListener;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 62
    :cond_0
    iget v0, p0, Lcom/nuance/xt9/input/SpellListView;->mTouchedIndex:I

    if-ltz v0, :cond_1

    .line 63
    iget v0, p0, Lcom/nuance/xt9/input/SpellListView;->mTouchedIndex:I

    iput v0, p0, Lcom/nuance/xt9/input/SpellListView;->mSelectedIndex:I

    .line 64
    invoke-virtual {p0}, Lcom/nuance/xt9/input/SpellListView;->scrollToSelection()V

    .line 66
    :cond_1
    return-void
.end method
