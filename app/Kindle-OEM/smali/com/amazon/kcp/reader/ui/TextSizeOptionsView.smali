.class public Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;
.super Landroid/widget/LinearLayout;
.source "TextSizeOptionsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/amazon/kcp/reader/ui/Hideable;
.implements Lcom/amazon/kcp/reader/ui/IViewOptionsRow;


# instance fields
.field private fontSize1:Landroid/view/View;

.field private fontSize2:Landroid/view/View;

.field private fontSize3:Landroid/view/View;

.field private fontSize4:Landroid/view/View;

.field private fontSize5:Landroid/view/View;

.field private fontSize6:Landroid/view/View;

.field private showing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->showing:Z

    .line 43
    return-void
.end method

.method private displayOptions(ZI)V
    .locals 4
    .parameter "show"
    .parameter "anim"

    .prologue
    const/4 v3, 0x0

    .line 182
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 185
    .local v0, animation:Landroid/view/animation/Animation;
    new-instance v1, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView$1;-><init>(Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;Z)V

    .line 205
    .local v1, completionRunnable:Ljava/lang/Runnable;
    new-instance v2, Lcom/amazon/kcp/ui/RunnableExecutorAnimationListener;

    invoke-direct {v2, v3, v3, v1}, Lcom/amazon/kcp/ui/RunnableExecutorAnimationListener;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 206
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 207
    return-void
.end method

.method private setFontSelected(I)V
    .locals 4
    .parameter "selectedIndex"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 119
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->fontSize1:Landroid/view/View;

    if-nez p1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 120
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->fontSize2:Landroid/view/View;

    if-ne p1, v2, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 121
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->fontSize3:Landroid/view/View;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 122
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->fontSize4:Landroid/view/View;

    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 123
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->fontSize5:Landroid/view/View;

    const/4 v1, 0x4

    if-ne p1, v1, :cond_5

    move v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 124
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->fontSize6:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->fontSize6:Landroid/view/View;

    const/4 v1, 0x5

    if-ne p1, v1, :cond_6

    move v1, v2

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 128
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 119
    goto :goto_0

    :cond_2
    move v1, v3

    .line 120
    goto :goto_1

    :cond_3
    move v1, v3

    .line 121
    goto :goto_2

    :cond_4
    move v1, v3

    .line 122
    goto :goto_3

    :cond_5
    move v1, v3

    .line 123
    goto :goto_4

    :cond_6
    move v1, v3

    .line 126
    goto :goto_5
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hide()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 214
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->showing:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 224
    :goto_0
    return v0

    .line 221
    :cond_0
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->setEnabled(Z)V

    .line 222
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->showing:Z

    .line 223
    const v0, 0x7f040001

    invoke-direct {p0, v1, v0}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->displayOptions(ZI)V

    .line 224
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "clickedView"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/application/ReddingApplication;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/ReddingApplication;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    .line 84
    .local v0, settings:Lcom/amazon/kcp/application/SettingsController;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 111
    :goto_0
    return-void

    .line 87
    :sswitch_0
    invoke-virtual {v0, v2}, Lcom/amazon/kcp/application/SettingsController;->setFontSizeIndex(I)V

    .line 88
    invoke-direct {p0, v2}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->setFontSelected(I)V

    goto :goto_0

    .line 91
    :sswitch_1
    invoke-virtual {v0, v3}, Lcom/amazon/kcp/application/SettingsController;->setFontSizeIndex(I)V

    .line 92
    invoke-direct {p0, v3}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->setFontSelected(I)V

    goto :goto_0

    .line 95
    :sswitch_2
    invoke-virtual {v0, v4}, Lcom/amazon/kcp/application/SettingsController;->setFontSizeIndex(I)V

    .line 96
    invoke-direct {p0, v4}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->setFontSelected(I)V

    goto :goto_0

    .line 99
    :sswitch_3
    invoke-virtual {v0, v5}, Lcom/amazon/kcp/application/SettingsController;->setFontSizeIndex(I)V

    .line 100
    invoke-direct {p0, v5}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->setFontSelected(I)V

    goto :goto_0

    .line 103
    :sswitch_4
    invoke-virtual {v0, v6}, Lcom/amazon/kcp/application/SettingsController;->setFontSizeIndex(I)V

    .line 104
    invoke-direct {p0, v6}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->setFontSelected(I)V

    goto :goto_0

    .line 107
    :sswitch_5
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/SettingsController;->setFontSizeIndex(I)V

    .line 108
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->setFontSelected(I)V

    goto :goto_0

    .line 84
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c0038 -> :sswitch_0
        0x7f0c00c1 -> :sswitch_1
        0x7f0c00c2 -> :sswitch_2
        0x7f0c00c3 -> :sswitch_3
        0x7f0c00c4 -> :sswitch_4
        0x7f0c00c5 -> :sswitch_5
    .end sparse-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->syncSelectedOptions()V

    .line 75
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 77
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const v1, 0x7f0c00c5

    .line 48
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 51
    const v0, 0x7f0c0038

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->fontSize1:Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->fontSize1:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    const v0, 0x7f0c00c1

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->fontSize2:Landroid/view/View;

    .line 54
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->fontSize2:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v0, 0x7f0c00c2

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->fontSize3:Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->fontSize3:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v0, 0x7f0c00c3

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->fontSize4:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->fontSize4:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v0, 0x7f0c00c4

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->fontSize5:Landroid/view/View;

    .line 60
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->fontSize5:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->fontSize6:Landroid/view/View;

    .line 64
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->fontSize6:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->syncSelectedOptions()V

    .line 67
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public setFocusNeighbors(II)V
    .locals 1
    .parameter "focusUpId"
    .parameter "focusDownId"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->fontSize1:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setNextFocusUpId(I)V

    .line 133
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->fontSize2:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setNextFocusUpId(I)V

    .line 134
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->fontSize3:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setNextFocusUpId(I)V

    .line 135
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->fontSize4:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setNextFocusUpId(I)V

    .line 136
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->fontSize5:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setNextFocusUpId(I)V

    .line 137
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->fontSize6:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->fontSize6:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setNextFocusUpId(I)V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->fontSize1:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 143
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->fontSize2:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 144
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->fontSize3:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 145
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->fontSize4:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 146
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->fontSize5:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 147
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->fontSize6:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->fontSize6:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 151
    :cond_1
    return-void
.end method

.method public showTextSizeOptions()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 166
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->showing:Z

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->hide()Z

    move-result v0

    .line 177
    :goto_0
    return v0

    .line 171
    :cond_0
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->showing:Z

    .line 173
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->setVisibility(I)V

    .line 174
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->setEnabled(Z)V

    .line 175
    const/high16 v0, 0x7f04

    invoke-direct {p0, v1, v0}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->displayOptions(ZI)V

    move v0, v1

    .line 177
    goto :goto_0
.end method

.method public syncSelectedOptions()V
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/application/ReddingApplication;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/ReddingApplication;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    .line 157
    .local v0, settings:Lcom/amazon/kcp/application/SettingsController;
    invoke-virtual {v0}, Lcom/amazon/kcp/application/SettingsController;->getFontSizeIndex()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->setFontSelected(I)V

    .line 158
    return-void
.end method
