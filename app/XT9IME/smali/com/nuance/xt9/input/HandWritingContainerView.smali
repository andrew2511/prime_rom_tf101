.class public Lcom/nuance/xt9/input/HandWritingContainerView;
.super Landroid/widget/LinearLayout;
.source "HandWritingContainerView.java"


# instance fields
.field private final SWITCH_BUTTON_HEIGHT:I

.field private final SWITCH_BUTTON_WIDTH:I

.field protected mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

.field protected mFullScreenHandwritingView:Lcom/nuance/xt9/input/HandWritingView;

.field protected mHandwritingAreaFrame:Landroid/widget/FrameLayout;

.field protected mHandwritingPadView:Lcom/nuance/xt9/input/HandWritingView;

.field protected mKeyboardAreadFrame:Landroid/widget/FrameLayout;

.field protected mKeyboardInputView:Lcom/nuance/xt9/input/HandWritingInputView;

.field protected mSwitchButtonDown:Landroid/widget/ImageButton;

.field mSwitchButtonListener:Landroid/view/View$OnClickListener;

.field protected mSwitchButtonUp:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/xt9/input/HandWritingContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v0, 0x24

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    iput v0, p0, Lcom/nuance/xt9/input/HandWritingContainerView;->SWITCH_BUTTON_HEIGHT:I

    .line 17
    iput v0, p0, Lcom/nuance/xt9/input/HandWritingContainerView;->SWITCH_BUTTON_WIDTH:I

    .line 54
    new-instance v0, Lcom/nuance/xt9/input/HandWritingContainerView$1;

    invoke-direct {v0, p0}, Lcom/nuance/xt9/input/HandWritingContainerView$1;-><init>(Lcom/nuance/xt9/input/HandWritingContainerView;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/HandWritingContainerView;->mSwitchButtonListener:Landroid/view/View$OnClickListener;

    .line 38
    return-void
.end method


# virtual methods
.method public getInputView()Lcom/nuance/xt9/input/InputView;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/nuance/xt9/input/HandWritingContainerView;->mKeyboardInputView:Lcom/nuance/xt9/input/HandWritingInputView;

    if-nez v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/nuance/xt9/input/HandWritingContainerView;->initViews()V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/HandWritingContainerView;->mKeyboardInputView:Lcom/nuance/xt9/input/HandWritingInputView;

    return-object v0
.end method

.method public hideFullScreenHandWritingFrame()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/nuance/xt9/input/HandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/HandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/nuance/xt9/input/HandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 98
    :cond_0
    return-void
.end method

.method public initViews()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/HandWritingContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/HandWritingContainerView;->mSwitchButtonDown:Landroid/widget/ImageButton;

    .line 44
    iget-object v0, p0, Lcom/nuance/xt9/input/HandWritingContainerView;->mSwitchButtonDown:Landroid/widget/ImageButton;

    const v1, 0x7f020053

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 45
    iget-object v0, p0, Lcom/nuance/xt9/input/HandWritingContainerView;->mSwitchButtonDown:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/nuance/xt9/input/HandWritingContainerView;->mSwitchButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/HandWritingContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/HandWritingContainerView;->mSwitchButtonUp:Landroid/widget/ImageButton;

    .line 48
    iget-object v0, p0, Lcom/nuance/xt9/input/HandWritingContainerView;->mSwitchButtonUp:Landroid/widget/ImageButton;

    const v1, 0x7f020054

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 49
    iget-object v0, p0, Lcom/nuance/xt9/input/HandWritingContainerView;->mSwitchButtonUp:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/nuance/xt9/input/HandWritingContainerView;->mSwitchButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void
.end method

.method public isFullScreenHandWritingFrameShowing()Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/nuance/xt9/input/HandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/HandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFullScreenHandWritingFrame()V
    .locals 5

    .prologue
    const/16 v4, 0x24

    .line 64
    iget-object v2, p0, Lcom/nuance/xt9/input/HandWritingContainerView;->mKeyboardInputView:Lcom/nuance/xt9/input/HandWritingInputView;

    iget-object v3, p0, Lcom/nuance/xt9/input/HandWritingContainerView;->mFullScreenHandwritingView:Lcom/nuance/xt9/input/HandWritingView;

    invoke-virtual {v2, v3}, Lcom/nuance/xt9/input/HandWritingInputView;->setHandWritingView(Lcom/nuance/xt9/input/HandWritingView;)V

    .line 65
    iget-object v2, p0, Lcom/nuance/xt9/input/HandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 67
    iget-object v2, p0, Lcom/nuance/xt9/input/HandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    if-nez v2, :cond_1

    .line 70
    iget-object v2, p0, Lcom/nuance/xt9/input/HandWritingContainerView;->mSwitchButtonDown:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    .line 71
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/HandWritingContainerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 72
    .local v0, layout:Landroid/widget/FrameLayout;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x35

    invoke-direct {v1, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 73
    .local v1, params:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/nuance/xt9/input/HandWritingContainerView;->mFullScreenHandwritingView:Lcom/nuance/xt9/input/HandWritingView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 74
    iget-object v2, p0, Lcom/nuance/xt9/input/HandWritingContainerView;->mSwitchButtonDown:Landroid/widget/ImageButton;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 75
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/nuance/xt9/input/HandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    .line 78
    .end local v0           #layout:Landroid/widget/FrameLayout;
    .end local v1           #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v2, p0, Lcom/nuance/xt9/input/HandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    const v3, 0x7f0e0005

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 80
    :cond_1
    return-void
.end method

.method public setNormalHandScreenWritingFrame()V
    .locals 4

    .prologue
    const/16 v3, 0x24

    .line 83
    iget-object v1, p0, Lcom/nuance/xt9/input/HandWritingContainerView;->mKeyboardInputView:Lcom/nuance/xt9/input/HandWritingInputView;

    iget-object v2, p0, Lcom/nuance/xt9/input/HandWritingContainerView;->mHandwritingPadView:Lcom/nuance/xt9/input/HandWritingView;

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/HandWritingInputView;->setHandWritingView(Lcom/nuance/xt9/input/HandWritingView;)V

    .line 84
    invoke-virtual {p0}, Lcom/nuance/xt9/input/HandWritingContainerView;->hideFullScreenHandWritingFrame()V

    .line 85
    iget-object v1, p0, Lcom/nuance/xt9/input/HandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 87
    iget-object v1, p0, Lcom/nuance/xt9/input/HandWritingContainerView;->mSwitchButtonUp:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 88
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x35

    invoke-direct {v0, v3, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 89
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/nuance/xt9/input/HandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/nuance/xt9/input/HandWritingContainerView;->mSwitchButtonUp:Landroid/widget/ImageButton;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 92
    .end local v0           #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public showFullScreenHandWritingFrame(IIII)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v2, 0x0

    .line 102
    iget-object v0, p0, Lcom/nuance/xt9/input/HandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/HandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/nuance/xt9/input/HandWritingContainerView;->mFullScreenHandwritingView:Lcom/nuance/xt9/input/HandWritingView;

    invoke-virtual {v0, p3, p4}, Lcom/nuance/xt9/input/HandWritingView;->measure(II)V

    .line 104
    iget-object v0, p0, Lcom/nuance/xt9/input/HandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2, v2, p3, p4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 108
    iget-object v0, p0, Lcom/nuance/xt9/input/HandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/nuance/xt9/input/HandWritingContainerView;->mKeyboardInputView:Lcom/nuance/xt9/input/HandWritingInputView;

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 110
    :cond_0
    return-void
.end method

.method public updateFullScreenHandWritingFrame(IIII)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/nuance/xt9/input/HandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/HandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/nuance/xt9/input/HandWritingContainerView;->mFullScreenHandwritingView:Lcom/nuance/xt9/input/HandWritingView;

    invoke-virtual {v0, p3, p4}, Lcom/nuance/xt9/input/HandWritingView;->measure(II)V

    .line 120
    iget-object v0, p0, Lcom/nuance/xt9/input/HandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 122
    :cond_0
    return-void
.end method

.method public updateNormalHandWritingFrame(II)V
    .locals 2
    .parameter "w"
    .parameter "h"

    .prologue
    .line 127
    iget-object v1, p0, Lcom/nuance/xt9/input/HandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 128
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x4188

    invoke-direct {v0, p1, p2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 129
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/nuance/xt9/input/HandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    .end local v0           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method
