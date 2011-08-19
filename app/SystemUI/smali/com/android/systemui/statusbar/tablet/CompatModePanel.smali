.class public Lcom/android/systemui/statusbar/tablet/CompatModePanel;
.super Landroid/widget/FrameLayout;
.source "CompatModePanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/tablet/StatusBarPanel;


# instance fields
.field private mAM:Landroid/app/ActivityManager;

.field private mAttached:Z

.field private mContext:Landroid/content/Context;

.field private mOffButton:Landroid/widget/RadioButton;

.field private mOnButton:Landroid/widget/RadioButton;

.field private mTrigger:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mAttached:Z

    .line 49
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mContext:Landroid/content/Context;

    .line 50
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mAM:Landroid/app/ActivityManager;

    .line 51
    return-void
.end method

.method private refresh()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 109
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mAM:Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getFrontActivityScreenCompatMode()I

    move-result v0

    .line 110
    .local v0, mode:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v2, -0x2

    if-ne v0, v2, :cond_1

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->closePanel()V

    .line 119
    :goto_0
    return-void

    .line 116
    :cond_1
    if-ne v0, v3, :cond_2

    move v1, v3

    .line 117
    .local v1, on:Z
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mOnButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 118
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mOffButton:Landroid/widget/RadioButton;

    if-nez v1, :cond_3

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .end local v1           #on:Z
    :cond_2
    move v1, v4

    .line 116
    goto :goto_1

    .restart local v1       #on:Z
    :cond_3
    move v3, v4

    .line 118
    goto :goto_2
.end method


# virtual methods
.method public closePanel()V
    .locals 2

    .prologue
    .line 104
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mTrigger:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mTrigger:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 106
    :cond_0
    return-void
.end method

.method public isInContentArea(II)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 74
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mAttached:Z

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mAttached:Z

    .line 77
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mOnButton:Landroid/widget/RadioButton;

    if-ne p1, v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mAM:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->setFrontActivityScreenCompatMode(I)V

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mOffButton:Landroid/widget/RadioButton;

    if-ne p1, v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mAM:Landroid/app/ActivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->setFrontActivityScreenCompatMode(I)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 66
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mAttached:Z

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mAttached:Z

    .line 69
    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 55
    const v0, 0x7f0b0028

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mOnButton:Landroid/widget/RadioButton;

    .line 56
    const v0, 0x7f0b0027

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mOffButton:Landroid/widget/RadioButton;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mOnButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mOffButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->refresh()V

    .line 61
    return-void
.end method

.method public openPanel()V
    .locals 2

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mTrigger:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mTrigger:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 100
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->refresh()V

    .line 101
    return-void
.end method

.method public setTrigger(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mTrigger:Landroid/view/View;

    .line 95
    return-void
.end method
