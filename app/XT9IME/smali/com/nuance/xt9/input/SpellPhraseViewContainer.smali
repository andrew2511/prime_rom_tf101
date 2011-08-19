.class public Lcom/nuance/xt9/input/SpellPhraseViewContainer;
.super Landroid/widget/LinearLayout;
.source "SpellPhraseViewContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mKeyboardView:Lcom/nuance/xt9/input/KeyboardViewEx;

.field private mParent:Lcom/nuance/xt9/input/InputView;

.field private mPhraseButtonLeft:Landroid/view/View;

.field private mPhraseButtonLeftLayout:Landroid/view/View;

.field private mPhraseButtonRight:Landroid/view/View;

.field private mPhraseButtonRightLayout:Landroid/view/View;

.field private mPhraseCandidates:Lcom/nuance/xt9/input/CandidatesListView;

.field private mPhraseLayout:Landroid/view/View;

.field private mPhraseShiftAnnotationLeft:Landroid/view/View;

.field private mSpellButtonLeft:Landroid/view/View;

.field private mSpellButtonLeftLayout:Landroid/view/View;

.field private mSpellButtonRight:Landroid/view/View;

.field private mSpellButtonRightLayout:Landroid/view/View;

.field private mSpellCandidates:Lcom/nuance/xt9/input/SpellListView;

.field private mSpellLayout:Landroid/view/View;

.field private mToolBar:Lcom/nuance/xt9/input/ToolBar;

.field private mToolBarFrame:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "screen"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getPhraseWordListView()Landroid/view/View;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseCandidates:Lcom/nuance/xt9/input/CandidatesListView;

    return-object v0
.end method

.method public getSpellWordListView()Landroid/view/View;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellCandidates:Lcom/nuance/xt9/input/SpellListView;

    return-object v0
.end method

.method public getToolBar()Lcom/nuance/xt9/input/ToolBar;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    return-object v0
.end method

.method public hideSpellLayout()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mKeyboardView:Lcom/nuance/xt9/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/KeyboardViewEx;->clearKeyOffsets()V

    .line 99
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    return-void
.end method

.method public initViews(Lcom/nuance/xt9/input/KeyboardViewEx;)V
    .locals 2
    .parameter "keyboardView"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mKeyboardView:Lcom/nuance/xt9/input/KeyboardViewEx;

    .line 45
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseCandidates:Lcom/nuance/xt9/input/CandidatesListView;

    if-nez v0, :cond_5

    .line 46
    const v0, 0x7f09001b

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellLayout:Landroid/view/View;

    .line 47
    const v0, 0x7f09001c

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellButtonLeftLayout:Landroid/view/View;

    .line 48
    const v0, 0x7f09001d

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellButtonLeft:Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellButtonLeft:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellButtonLeft:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 52
    :cond_0
    const v0, 0x7f09001f

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellButtonRightLayout:Landroid/view/View;

    .line 53
    const v0, 0x7f090020

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellButtonRight:Landroid/view/View;

    .line 54
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellButtonRight:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellButtonRight:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 57
    :cond_1
    const v0, 0x7f09001e

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/xt9/input/SpellListView;

    iput-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellCandidates:Lcom/nuance/xt9/input/SpellListView;

    .line 58
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellCandidates:Lcom/nuance/xt9/input/SpellListView;

    if-eqz v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellCandidates:Lcom/nuance/xt9/input/SpellListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/SpellListView;->setVisibility(I)V

    .line 62
    :cond_2
    const v0, 0x7f090021

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseLayout:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseLayout:Landroid/view/View;

    const v1, 0x7f090022

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseButtonLeftLayout:Landroid/view/View;

    .line 64
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseLayout:Landroid/view/View;

    const v1, 0x7f090023

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseButtonLeft:Landroid/view/View;

    .line 65
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseButtonLeft:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 66
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseButtonLeft:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 68
    :cond_3
    const v0, 0x7f090025

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseButtonRightLayout:Landroid/view/View;

    .line 69
    const v0, 0x7f090026

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseButtonRight:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseButtonRight:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 71
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseButtonRight:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 73
    :cond_4
    const v0, 0x7f090024

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/xt9/input/CandidatesListView;

    iput-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseCandidates:Lcom/nuance/xt9/input/CandidatesListView;

    .line 88
    const v0, 0x7f090027

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseShiftAnnotationLeft:Landroid/view/View;

    .line 91
    :cond_5
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 233
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, leftLayoutWidth:I
    const/4 v1, 0x0

    .line 236
    .local v1, rightLayoutWidth:I
    iget-object v2, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellButtonLeftLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    iget-object v2, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellButtonLeftLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 238
    :cond_0
    iget-object v2, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellButtonRightLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 239
    iget-object v2, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellButtonRightLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 240
    :cond_1
    iget-object v2, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellCandidates:Lcom/nuance/xt9/input/SpellListView;

    invoke-virtual {v2, v0, v1}, Lcom/nuance/xt9/input/SpellListView;->setArrowWidth(II)V

    .line 241
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x2

    .line 187
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellButtonRight:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellCandidates:Lcom/nuance/xt9/input/SpellListView;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/SpellListView;->scrollNext()V

    .line 216
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellButtonLeft:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellCandidates:Lcom/nuance/xt9/input/SpellListView;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/SpellListView;->scrollPrev()V

    goto :goto_0

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseButtonRight:Landroid/view/View;

    if-ne p1, v0, :cond_4

    .line 197
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ToolBar;->getShowingState()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    if-ne v0, v2, :cond_3

    .line 198
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ToolBar;->unpin()V

    .line 199
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ToolBar;->showMinimize()V

    .line 202
    :cond_3
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseCandidates:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/CandidatesListView;->scrollNext()V

    goto :goto_0

    .line 204
    :cond_4
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseButtonLeft:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ToolBar;->getShowingState()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    if-ne v0, v2, :cond_5

    .line 208
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ToolBar;->unpin()V

    .line 209
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ToolBar;->showMinimize()V

    .line 212
    :cond_5
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseCandidates:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/CandidatesListView;->scrollPrev()V

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 105
    const-string v6, "SpellPharaseViewContainer"

    const-string v7, "requestLayout"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellLayout:Landroid/view/View;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellCandidates:Lcom/nuance/xt9/input/SpellListView;

    if-eqz v6, :cond_2

    .line 108
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellCandidates:Lcom/nuance/xt9/input/SpellListView;

    invoke-virtual {v6}, Lcom/nuance/xt9/input/SpellListView;->getWidth()I

    move-result v0

    .line 109
    .local v0, availableWidth:I
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellCandidates:Lcom/nuance/xt9/input/SpellListView;

    invoke-virtual {v6}, Lcom/nuance/xt9/input/SpellListView;->computeHorizontalScrollRange()I

    move-result v3

    .line 110
    .local v3, neededWidth:I
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellCandidates:Lcom/nuance/xt9/input/SpellListView;

    invoke-virtual {v6}, Lcom/nuance/xt9/input/SpellListView;->getScrollX()I

    move-result v5

    .line 111
    .local v5, x:I
    if-lez v5, :cond_7

    move v2, v10

    .line 114
    .local v2, leftVisible:Z
    :goto_0
    add-int v6, v5, v0

    if-ge v6, v3, :cond_8

    if-lez v0, :cond_8

    move v4, v10

    .line 115
    .local v4, rightVisible:Z
    :goto_1
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellCandidates:Lcom/nuance/xt9/input/SpellListView;

    invoke-virtual {v6}, Lcom/nuance/xt9/input/SpellListView;->getListSize()I

    move-result v6

    if-lez v6, :cond_b

    .line 116
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellLayout:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_0

    .line 117
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mKeyboardView:Lcom/nuance/xt9/input/KeyboardViewEx;

    invoke-virtual {v6}, Lcom/nuance/xt9/input/KeyboardViewEx;->clearKeyOffsets()V

    .line 118
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellLayout:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 121
    :cond_0
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellButtonLeftLayout:Landroid/view/View;

    if-eqz v6, :cond_1

    .line 122
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellButtonLeftLayout:Landroid/view/View;

    if-eqz v2, :cond_9

    move v7, v8

    :goto_2
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 124
    :cond_1
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellButtonRightLayout:Landroid/view/View;

    if-eqz v6, :cond_2

    .line 125
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellButtonRightLayout:Landroid/view/View;

    if-eqz v4, :cond_a

    move v7, v8

    :goto_3
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 135
    .end local v0           #availableWidth:I
    .end local v2           #leftVisible:Z
    .end local v3           #neededWidth:I
    .end local v4           #rightVisible:Z
    .end local v5           #x:I
    :cond_2
    :goto_4
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseCandidates:Lcom/nuance/xt9/input/CandidatesListView;

    if-eqz v6, :cond_5

    .line 136
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseCandidates:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v6}, Lcom/nuance/xt9/input/CandidatesListView;->getWidth()I

    move-result v0

    .line 137
    .restart local v0       #availableWidth:I
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseCandidates:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v6}, Lcom/nuance/xt9/input/CandidatesListView;->computeHorizontalScrollRange()I

    move-result v3

    .line 138
    .restart local v3       #neededWidth:I
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseCandidates:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v6}, Lcom/nuance/xt9/input/CandidatesListView;->getScrollX()I

    move-result v5

    .line 140
    .restart local v5       #x:I
    const/4 v2, 0x1

    .line 141
    .restart local v2       #leftVisible:Z
    const/4 v4, 0x1

    .line 143
    .restart local v4       #rightVisible:Z
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseButtonLeftLayout:Landroid/view/View;

    if-eqz v6, :cond_3

    .line 144
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseButtonLeftLayout:Landroid/view/View;

    if-eqz v2, :cond_c

    move v7, v8

    :goto_5
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 146
    :cond_3
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseButtonRightLayout:Landroid/view/View;

    if-eqz v6, :cond_4

    .line 147
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseButtonRightLayout:Landroid/view/View;

    if-eqz v4, :cond_d

    move v7, v8

    :goto_6
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 152
    :cond_4
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseShiftAnnotationLeft:Landroid/view/View;

    if-eqz v6, :cond_5

    .line 153
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mParent:Lcom/nuance/xt9/input/InputView;

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mParent:Lcom/nuance/xt9/input/InputView;

    invoke-virtual {v6}, Lcom/nuance/xt9/input/InputView;->isShowShiftAnnotation()Z

    move-result v6

    move v1, v6

    .line 155
    .local v1, isShowShiftAnnotation:Z
    :goto_7
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseShiftAnnotationLeft:Landroid/view/View;

    if-eqz v1, :cond_f

    move v7, v8

    :goto_8
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 161
    .end local v0           #availableWidth:I
    .end local v1           #isShowShiftAnnotation:Z
    .end local v2           #leftVisible:Z
    .end local v3           #neededWidth:I
    .end local v4           #rightVisible:Z
    .end local v5           #x:I
    :cond_5
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellLayout:Landroid/view/View;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseCandidates:Lcom/nuance/xt9/input/CandidatesListView;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    if-eqz v6, :cond_6

    .line 162
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseCandidates:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v6}, Lcom/nuance/xt9/input/CandidatesListView;->isShowingNextCandidatesPrediction()Z

    move-result v6

    if-nez v6, :cond_10

    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseCandidates:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v6}, Lcom/nuance/xt9/input/CandidatesListView;->wordCount()I

    move-result v6

    if-lez v6, :cond_10

    .line 165
    const-string v6, "SpellPharaseViewContainer"

    const-string v7, "hideAll"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mToolBarFrame:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_6

    .line 168
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    invoke-virtual {v6}, Lcom/nuance/xt9/input/ToolBar;->hideAll()V

    .line 169
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mToolBarFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 183
    :cond_6
    :goto_9
    invoke-super {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 184
    return-void

    .restart local v0       #availableWidth:I
    .restart local v3       #neededWidth:I
    .restart local v5       #x:I
    :cond_7
    move v2, v8

    .line 111
    goto/16 :goto_0

    .restart local v2       #leftVisible:Z
    :cond_8
    move v4, v8

    .line 114
    goto/16 :goto_1

    .restart local v4       #rightVisible:Z
    :cond_9
    move v7, v9

    .line 122
    goto/16 :goto_2

    :cond_a
    move v7, v9

    .line 125
    goto/16 :goto_3

    .line 129
    :cond_b
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellButtonLeftLayout:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellButtonRightLayout:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_c
    move v7, v9

    .line 144
    goto :goto_5

    :cond_d
    move v7, v9

    .line 147
    goto :goto_6

    :cond_e
    move v1, v8

    .line 153
    goto :goto_7

    .restart local v1       #isShowShiftAnnotation:Z
    :cond_f
    move v7, v9

    .line 155
    goto :goto_8

    .line 176
    .end local v0           #availableWidth:I
    .end local v1           #isShowShiftAnnotation:Z
    .end local v2           #leftVisible:Z
    .end local v3           #neededWidth:I
    .end local v4           #rightVisible:Z
    .end local v5           #x:I
    :cond_10
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mToolBarFrame:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_6

    .line 177
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    invoke-virtual {v6}, Lcom/nuance/xt9/input/ToolBar;->restore()V

    .line 178
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mToolBarFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_9
.end method

.method public setParent(Lcom/nuance/xt9/input/InputView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mParent:Lcom/nuance/xt9/input/InputView;

    .line 229
    return-void
.end method
