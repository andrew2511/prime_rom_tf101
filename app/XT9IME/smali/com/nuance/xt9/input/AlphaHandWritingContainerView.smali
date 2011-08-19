.class public Lcom/nuance/xt9/input/AlphaHandWritingContainerView;
.super Lcom/nuance/xt9/input/HandWritingContainerView;
.source "AlphaHandWritingContainerView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/xt9/input/AlphaHandWritingContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/nuance/xt9/input/HandWritingContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method


# virtual methods
.method public initViews()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 24
    invoke-super {p0}, Lcom/nuance/xt9/input/HandWritingContainerView;->initViews()V

    .line 28
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    if-nez v1, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaHandWritingContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 31
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f090013

    invoke-virtual {p0, v1}, Lcom/nuance/xt9/input/AlphaHandWritingContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    .line 32
    const v1, 0x7f090014

    invoke-virtual {p0, v1}, Lcom/nuance/xt9/input/AlphaHandWritingContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingContainerView;->mKeyboardAreadFrame:Landroid/widget/FrameLayout;

    .line 34
    const v1, 0x7f030006

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/xt9/input/AlphaHandWritingView;

    iput-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/xt9/input/HandWritingView;

    .line 35
    const v1, 0x7f030004

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/xt9/input/AlphaHandWritingInputView;

    iput-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/xt9/input/HandWritingInputView;

    .line 36
    const v1, 0x7f030002

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/xt9/input/AlphaHandWritingView;

    iput-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingContainerView;->mFullScreenHandwritingView:Lcom/nuance/xt9/input/HandWritingView;

    .line 38
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/xt9/input/HandWritingView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingContainerView;->mKeyboardAreadFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/xt9/input/HandWritingInputView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/xt9/input/HandWritingInputView;

    invoke-virtual {v1, p0}, Lcom/nuance/xt9/input/HandWritingInputView;->setContainerView(Lcom/nuance/xt9/input/HandWritingContainerView;)V

    .line 47
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/xt9/input/HandWritingView;

    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/xt9/input/HandWritingInputView;

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/HandWritingView;->setOnWritingActionListener(Lcom/nuance/xt9/input/HandWritingView$OnWritingAction;)V

    .line 48
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingContainerView;->mFullScreenHandwritingView:Lcom/nuance/xt9/input/HandWritingView;

    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/xt9/input/HandWritingInputView;

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/HandWritingView;->setOnWritingActionListener(Lcom/nuance/xt9/input/HandWritingView$OnWritingAction;)V

    .line 52
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    return-void
.end method
