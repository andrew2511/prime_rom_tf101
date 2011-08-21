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

.field private mPhrasePhoneticSymbols:Landroid/widget/TextView;

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
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getPhraseWordListView()Landroid/view/View;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseCandidates:Lcom/nuance/xt9/input/CandidatesListView;

    return-object v0
.end method

.method public getSpellWordListView()Landroid/view/View;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellCandidates:Lcom/nuance/xt9/input/SpellListView;

    return-object v0
.end method

.method public getToolBar()Lcom/nuance/xt9/input/ToolBar;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    return-object v0
.end method

.method public hideSpellLayout()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mKeyboardView:Lcom/nuance/xt9/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/KeyboardViewEx;->clearKeyOffsets()V

    .line 108
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    return-void
.end method

.method public initViews(Lcom/nuance/xt9/input/KeyboardViewEx;)V
    .locals 2
    .parameter "keyboardView"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mKeyboardView:Lcom/nuance/xt9/input/KeyboardViewEx;

    .line 50
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseCandidates:Lcom/nuance/xt9/input/CandidatesListView;

    if-nez v0, :cond_5

    .line 51
    const v0, 0x7f09001b

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellLayout:Landroid/view/View;

    .line 52
    const v0, 0x7f09001c

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellButtonLeftLayout:Landroid/view/View;

    .line 53
    const v0, 0x7f09001d

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellButtonLeft:Landroid/view/View;

    .line 54
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellButtonLeft:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellButtonLeft:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 57
    :cond_0
    const v0, 0x7f09001f

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellButtonRightLayout:Landroid/view/View;

    .line 58
    const v0, 0x7f090020

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellButtonRight:Landroid/view/View;

    .line 59
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellButtonRight:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellButtonRight:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 62
    :cond_1
    const v0, 0x7f09001e

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/xt9/input/SpellListView;

    iput-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellCandidates:Lcom/nuance/xt9/input/SpellListView;

    .line 63
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellCandidates:Lcom/nuance/xt9/input/SpellListView;

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellCandidates:Lcom/nuance/xt9/input/SpellListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/SpellListView;->setVisibility(I)V

    .line 67
    :cond_2
    const v0, 0x7f090021

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseLayout:Landroid/view/View;

    .line 68
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseLayout:Landroid/view/View;

    const v1, 0x7f090022

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseButtonLeftLayout:Landroid/view/View;

    .line 69
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseLayout:Landroid/view/View;

    const v1, 0x7f090023

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseButtonLeft:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseButtonLeft:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 71
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseButtonLeft:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 73
    :cond_3
    const v0, 0x7f090025

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseButtonRightLayout:Landroid/view/View;

    .line 74
    const v0, 0x7f090026

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseButtonRight:Landroid/view/View;

    .line 75
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseButtonRight:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 76
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseButtonRight:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 78
    :cond_4
    const v0, 0x7f090024

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/xt9/input/CandidatesListView;

    iput-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseCandidates:Lcom/nuance/xt9/input/CandidatesListView;

    .line 94
    const v0, 0x7f090027

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseShiftAnnotationLeft:Landroid/view/View;

    .line 97
    const v0, 0x7f090028

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhrasePhoneticSymbols:Landroid/widget/TextView;

    .line 100
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
    .line 256
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, leftLayoutWidth:I
    const/4 v1, 0x0

    .line 259
    .local v1, rightLayoutWidth:I
    iget-object v2, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellButtonLeftLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    iget-object v2, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellButtonLeftLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 261
    :cond_0
    iget-object v2, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellButtonRightLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 262
    iget-object v2, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellButtonRightLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 263
    :cond_1
    iget-object v2, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellCandidates:Lcom/nuance/xt9/input/SpellListView;

    invoke-virtual {v2, v0, v1}, Lcom/nuance/xt9/input/SpellListView;->setArrowWidth(II)V

    .line 264
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x2

    .line 202
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellButtonRight:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellCandidates:Lcom/nuance/xt9/input/SpellListView;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/SpellListView;->scrollNext()V

    .line 231
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellButtonLeft:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 207
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellCandidates:Lcom/nuance/xt9/input/SpellListView;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/SpellListView;->scrollPrev()V

    goto :goto_0

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseButtonRight:Landroid/view/View;

    if-ne p1, v0, :cond_4

    .line 212
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ToolBar;->getShowingState()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    if-ne v0, v2, :cond_3

    .line 213
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ToolBar;->unpin()V

    .line 214
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ToolBar;->showMinimize()V

    .line 217
    :cond_3
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseCandidates:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/CandidatesListView;->scrollNext()V

    goto :goto_0

    .line 219
    :cond_4
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseButtonLeft:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ToolBar;->getShowingState()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    if-ne v0, v2, :cond_5

    .line 223
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ToolBar;->unpin()V

    .line 224
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ToolBar;->showMinimize()V

    .line 227
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

    .line 114
    const-string v6, "SpellPharaseViewContainer"

    const-string v7, "requestLayout"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellLayout:Landroid/view/View;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellCandidates:Lcom/nuance/xt9/input/SpellListView;

    if-eqz v6, :cond_2

    .line 117
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellCandidates:Lcom/nuance/xt9/input/SpellListView;

    invoke-virtual {v6}, Lcom/nuance/xt9/input/SpellListView;->getWidth()I

    move-result v0

    .line 118
    .local v0, availableWidth:I
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellCandidates:Lcom/nuance/xt9/input/SpellListView;

    invoke-virtual {v6}, Lcom/nuance/xt9/input/SpellListView;->computeHorizontalScrollRange()I

    move-result v3

    .line 119
    .local v3, neededWidth:I
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellCandidates:Lcom/nuance/xt9/input/SpellListView;

    invoke-virtual {v6}, Lcom/nuance/xt9/input/SpellListView;->getScrollX()I

    move-result v5

    .line 120
    .local v5, x:I
    if-lez v5, :cond_8

    move v2, v10

    .line 123
    .local v2, leftVisible:Z
    :goto_0
    add-int v6, v5, v0

    if-ge v6, v3, :cond_9

    if-lez v0, :cond_9

    move v4, v10

    .line 124
    .local v4, rightVisible:Z
    :goto_1
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellCandidates:Lcom/nuance/xt9/input/SpellListView;

    invoke-virtual {v6}, Lcom/nuance/xt9/input/SpellListView;->getListSize()I

    move-result v6

    if-lez v6, :cond_c

    .line 125
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellLayout:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_0

    .line 126
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mKeyboardView:Lcom/nuance/xt9/input/KeyboardViewEx;

    invoke-virtual {v6}, Lcom/nuance/xt9/input/KeyboardViewEx;->clearKeyOffsets()V

    .line 127
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellLayout:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 130
    :cond_0
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellButtonLeftLayout:Landroid/view/View;

    if-eqz v6, :cond_1

    .line 131
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellButtonLeftLayout:Landroid/view/View;

    if-eqz v2, :cond_a

    move v7, v8

    :goto_2
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 133
    :cond_1
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellButtonRightLayout:Landroid/view/View;

    if-eqz v6, :cond_2

    .line 134
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellButtonRightLayout:Landroid/view/View;

    if-eqz v4, :cond_b

    move v7, v8

    :goto_3
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 144
    .end local v0           #availableWidth:I
    .end local v2           #leftVisible:Z
    .end local v3           #neededWidth:I
    .end local v4           #rightVisible:Z
    .end local v5           #x:I
    :cond_2
    :goto_4
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseCandidates:Lcom/nuance/xt9/input/CandidatesListView;

    if-eqz v6, :cond_6

    .line 145
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseCandidates:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v6}, Lcom/nuance/xt9/input/CandidatesListView;->getWidth()I

    move-result v0

    .line 146
    .restart local v0       #availableWidth:I
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseCandidates:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v6}, Lcom/nuance/xt9/input/CandidatesListView;->computeHorizontalScrollRange()I

    move-result v3

    .line 147
    .restart local v3       #neededWidth:I
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseCandidates:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v6}, Lcom/nuance/xt9/input/CandidatesListView;->getScrollX()I

    move-result v5

    .line 149
    .restart local v5       #x:I
    const/4 v2, 0x1

    .line 150
    .restart local v2       #leftVisible:Z
    const/4 v4, 0x1

    .line 152
    .restart local v4       #rightVisible:Z
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseButtonLeftLayout:Landroid/view/View;

    if-eqz v6, :cond_3

    .line 153
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseButtonLeftLayout:Landroid/view/View;

    if-eqz v2, :cond_d

    move v7, v8

    :goto_5
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 155
    :cond_3
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseButtonRightLayout:Landroid/view/View;

    if-eqz v6, :cond_4

    .line 156
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseButtonRightLayout:Landroid/view/View;

    if-eqz v4, :cond_e

    move v7, v8

    :goto_6
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 161
    :cond_4
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseShiftAnnotationLeft:Landroid/view/View;

    if-eqz v6, :cond_5

    .line 162
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mParent:Lcom/nuance/xt9/input/InputView;

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mParent:Lcom/nuance/xt9/input/InputView;

    invoke-virtual {v6}, Lcom/nuance/xt9/input/InputView;->isShowShiftAnnotation()Z

    move-result v6

    move v1, v6

    .line 164
    .local v1, isShowShiftAnnotation:Z
    :goto_7
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseShiftAnnotationLeft:Landroid/view/View;

    if-eqz v1, :cond_10

    move v7, v8

    :goto_8
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 169
    .end local v1           #isShowShiftAnnotation:Z
    :cond_5
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhrasePhoneticSymbols:Landroid/widget/TextView;

    if-eqz v6, :cond_6

    .line 170
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhrasePhoneticSymbols:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhrasePhoneticSymbols:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v7

    if-lez v7, :cond_11

    move v7, v8

    :goto_9
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    .end local v0           #availableWidth:I
    .end local v2           #leftVisible:Z
    .end local v3           #neededWidth:I
    .end local v4           #rightVisible:Z
    .end local v5           #x:I
    :cond_6
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellLayout:Landroid/view/View;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseCandidates:Lcom/nuance/xt9/input/CandidatesListView;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    if-eqz v6, :cond_7

    .line 177
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseCandidates:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v6}, Lcom/nuance/xt9/input/CandidatesListView;->isShowingNextCandidatesPrediction()Z

    move-result v6

    if-nez v6, :cond_12

    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhraseCandidates:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v6}, Lcom/nuance/xt9/input/CandidatesListView;->wordCount()I

    move-result v6

    if-lez v6, :cond_12

    .line 180
    const-string v6, "SpellPharaseViewContainer"

    const-string v7, "hideAll"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mToolBarFrame:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_7

    .line 183
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    invoke-virtual {v6}, Lcom/nuance/xt9/input/ToolBar;->hideAll()V

    .line 184
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mToolBarFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 198
    :cond_7
    :goto_a
    invoke-super {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 199
    return-void

    .restart local v0       #availableWidth:I
    .restart local v3       #neededWidth:I
    .restart local v5       #x:I
    :cond_8
    move v2, v8

    .line 120
    goto/16 :goto_0

    .restart local v2       #leftVisible:Z
    :cond_9
    move v4, v8

    .line 123
    goto/16 :goto_1

    .restart local v4       #rightVisible:Z
    :cond_a
    move v7, v9

    .line 131
    goto/16 :goto_2

    :cond_b
    move v7, v9

    .line 134
    goto/16 :goto_3

    .line 138
    :cond_c
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellButtonLeftLayout:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 139
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mSpellButtonRightLayout:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_d
    move v7, v9

    .line 153
    goto/16 :goto_5

    :cond_e
    move v7, v9

    .line 156
    goto/16 :goto_6

    :cond_f
    move v1, v8

    .line 162
    goto :goto_7

    .restart local v1       #isShowShiftAnnotation:Z
    :cond_10
    move v7, v9

    .line 164
    goto :goto_8

    .end local v1           #isShowShiftAnnotation:Z
    :cond_11
    move v7, v9

    .line 170
    goto :goto_9

    .line 191
    .end local v0           #availableWidth:I
    .end local v2           #leftVisible:Z
    .end local v3           #neededWidth:I
    .end local v4           #rightVisible:Z
    .end local v5           #x:I
    :cond_12
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mToolBarFrame:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_7

    .line 192
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    invoke-virtual {v6}, Lcom/nuance/xt9/input/ToolBar;->restore()V

    .line 193
    iget-object v6, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mToolBarFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_a
.end method

.method public setParent(Lcom/nuance/xt9/input/InputView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 243
    iput-object p1, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mParent:Lcom/nuance/xt9/input/InputView;

    .line 244
    return-void
.end method

.method public setPhoneticSymbols(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhrasePhoneticSymbols:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->mPhrasePhoneticSymbols:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    :cond_0
    return-void
.end method
