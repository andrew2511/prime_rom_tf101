.class public Lcom/nuance/xt9/input/WordListViewContainer;
.super Landroid/widget/LinearLayout;
.source "WordListViewContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field static final TAG:Ljava/lang/String; = "XT9IME.WordListViewContainer"


# instance fields
.field private mButtonLeft:Landroid/view/View;

.field private mButtonLeftLayout:Landroid/view/View;

.field private mButtonRight:Landroid/view/View;

.field private mButtonRightLayout:Landroid/view/View;

.field private mCandidates:Lcom/nuance/xt9/input/CandidatesListView;

.field private mToolBar:Lcom/nuance/xt9/input/ToolBar;

.field private mToolBarFrame:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "screen"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput-object v0, p0, Lcom/nuance/xt9/input/WordListViewContainer;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    .line 27
    iput-object v0, p0, Lcom/nuance/xt9/input/WordListViewContainer;->mToolBarFrame:Landroid/widget/LinearLayout;

    .line 31
    return-void
.end method


# virtual methods
.method public getToolBar()Lcom/nuance/xt9/input/ToolBar;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/nuance/xt9/input/WordListViewContainer;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    return-object v0
.end method

.method public initViews()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nuance/xt9/input/WordListViewContainer;->mCandidates:Lcom/nuance/xt9/input/CandidatesListView;

    if-nez v0, :cond_2

    .line 36
    const v0, 0x7f090016

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/WordListViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/WordListViewContainer;->mButtonLeftLayout:Landroid/view/View;

    .line 37
    const v0, 0x7f090017

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/WordListViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/WordListViewContainer;->mButtonLeft:Landroid/view/View;

    .line 38
    iget-object v0, p0, Lcom/nuance/xt9/input/WordListViewContainer;->mButtonLeft:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/nuance/xt9/input/WordListViewContainer;->mButtonLeft:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 41
    :cond_0
    const v0, 0x7f090019

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/WordListViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/WordListViewContainer;->mButtonRightLayout:Landroid/view/View;

    .line 42
    const v0, 0x7f09001a

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/WordListViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/WordListViewContainer;->mButtonRight:Landroid/view/View;

    .line 43
    iget-object v0, p0, Lcom/nuance/xt9/input/WordListViewContainer;->mButtonRight:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/nuance/xt9/input/WordListViewContainer;->mButtonRight:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 46
    :cond_1
    const v0, 0x7f090018

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/WordListViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/xt9/input/CandidatesListView;

    iput-object v0, p0, Lcom/nuance/xt9/input/WordListViewContainer;->mCandidates:Lcom/nuance/xt9/input/CandidatesListView;

    .line 61
    :cond_2
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 115
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/nuance/xt9/input/WordListViewContainer;->mButtonRight:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/nuance/xt9/input/WordListViewContainer;->mCandidates:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/CandidatesListView;->scrollNext()V

    .line 123
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/nuance/xt9/input/WordListViewContainer;->mButtonLeft:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/nuance/xt9/input/WordListViewContainer;->mCandidates:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/CandidatesListView;->scrollPrev()V

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 70
    iget-object v5, p0, Lcom/nuance/xt9/input/WordListViewContainer;->mCandidates:Lcom/nuance/xt9/input/CandidatesListView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/nuance/xt9/input/WordListViewContainer;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    if-eqz v5, :cond_0

    .line 74
    iget-object v5, p0, Lcom/nuance/xt9/input/WordListViewContainer;->mCandidates:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/CandidatesListView;->isShowingNextCandidatesPrediction()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/nuance/xt9/input/WordListViewContainer;->mCandidates:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/CandidatesListView;->wordCount()I

    move-result v5

    if-lez v5, :cond_4

    .line 76
    iget-object v5, p0, Lcom/nuance/xt9/input/WordListViewContainer;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/nuance/xt9/input/WordListViewContainer;->mToolBarFrame:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    .line 77
    iget-object v5, p0, Lcom/nuance/xt9/input/WordListViewContainer;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/ToolBar;->hideAll()V

    .line 78
    iget-object v5, p0, Lcom/nuance/xt9/input/WordListViewContainer;->mToolBarFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 92
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/nuance/xt9/input/WordListViewContainer;->mCandidates:Lcom/nuance/xt9/input/CandidatesListView;

    if-eqz v5, :cond_3

    .line 93
    iget-object v5, p0, Lcom/nuance/xt9/input/WordListViewContainer;->mCandidates:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/CandidatesListView;->getWidth()I

    move-result v0

    .line 94
    .local v0, availableWidth:I
    iget-object v5, p0, Lcom/nuance/xt9/input/WordListViewContainer;->mCandidates:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/CandidatesListView;->getScrollX()I

    move-result v5

    if-nez v5, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/nuance/xt9/input/WordListViewContainer;->getWidth()I

    move-result v0

    .line 99
    :cond_1
    iget-object v5, p0, Lcom/nuance/xt9/input/WordListViewContainer;->mCandidates:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/CandidatesListView;->computeHorizontalScrollRange()I

    move-result v2

    .line 100
    .local v2, neededWidth:I
    iget-object v5, p0, Lcom/nuance/xt9/input/WordListViewContainer;->mCandidates:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/CandidatesListView;->getScrollX()I

    move-result v4

    .line 101
    .local v4, x:I
    if-lez v4, :cond_5

    move v1, v6

    .line 102
    .local v1, leftVisible:Z
    :goto_1
    add-int v5, v4, v0

    if-ge v5, v2, :cond_6

    move v3, v6

    .line 103
    .local v3, rightVisible:Z
    :goto_2
    iget-object v5, p0, Lcom/nuance/xt9/input/WordListViewContainer;->mButtonLeftLayout:Landroid/view/View;

    if-eqz v5, :cond_2

    .line 104
    iget-object v5, p0, Lcom/nuance/xt9/input/WordListViewContainer;->mButtonLeftLayout:Landroid/view/View;

    if-eqz v1, :cond_7

    move v6, v7

    :goto_3
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 106
    :cond_2
    iget-object v5, p0, Lcom/nuance/xt9/input/WordListViewContainer;->mButtonRightLayout:Landroid/view/View;

    if-eqz v5, :cond_3

    .line 107
    iget-object v5, p0, Lcom/nuance/xt9/input/WordListViewContainer;->mButtonRightLayout:Landroid/view/View;

    if-eqz v3, :cond_8

    move v6, v7

    :goto_4
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 111
    .end local v0           #availableWidth:I
    .end local v1           #leftVisible:Z
    .end local v2           #neededWidth:I
    .end local v3           #rightVisible:Z
    .end local v4           #x:I
    :cond_3
    invoke-super {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 112
    return-void

    .line 84
    :cond_4
    iget-object v5, p0, Lcom/nuance/xt9/input/WordListViewContainer;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/nuance/xt9/input/WordListViewContainer;->mToolBarFrame:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    .line 85
    iget-object v5, p0, Lcom/nuance/xt9/input/WordListViewContainer;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/ToolBar;->restore()V

    .line 86
    iget-object v5, p0, Lcom/nuance/xt9/input/WordListViewContainer;->mToolBarFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .restart local v0       #availableWidth:I
    .restart local v2       #neededWidth:I
    .restart local v4       #x:I
    :cond_5
    move v1, v7

    .line 101
    goto :goto_1

    .restart local v1       #leftVisible:Z
    :cond_6
    move v3, v7

    .line 102
    goto :goto_2

    .restart local v3       #rightVisible:Z
    :cond_7
    move v6, v8

    .line 104
    goto :goto_3

    .line 107
    :cond_8
    if-le v2, v0, :cond_9

    const/4 v6, 0x4

    goto :goto_4

    :cond_9
    move v6, v8

    goto :goto_4
.end method
