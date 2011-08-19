.class public Lcom/amazon/kcp/reader/ui/TextColorOptionsView;
.super Landroid/widget/LinearLayout;
.source "TextColorOptionsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/amazon/kcp/reader/ui/IViewOptionsRow;


# instance fields
.field private dottedColorBlack:Landroid/view/View;

.field private dottedColorSepia:Landroid/view/View;

.field private dottedColorWhite:Landroid/view/View;

.field private fontColorBlack:Landroid/view/View;

.field private fontColorSepia:Landroid/view/View;

.field private fontColorWhite:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method private setColorSelected(I)V
    .locals 4
    .parameter "color"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 118
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->dottedColorWhite:Landroid/view/View;

    if-nez p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 119
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->dottedColorSepia:Landroid/view/View;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 120
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->dottedColorBlack:Landroid/view/View;

    if-ne p1, v2, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 121
    return-void

    :cond_0
    move v1, v3

    .line 118
    goto :goto_0

    :cond_1
    move v1, v3

    .line 119
    goto :goto_1

    :cond_2
    move v1, v3

    .line 120
    goto :goto_2
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->isEnabled()Z

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

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "clickedView"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/application/ReddingApplication;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/ReddingApplication;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    .line 68
    .local v0, settings:Lcom/amazon/kcp/application/SettingsController;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 110
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 71
    :pswitch_1
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    invoke-virtual {v0, v2}, Lcom/amazon/kcp/application/SettingsController;->setColorMode(I)V

    .line 76
    invoke-direct {p0, v2}, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->setColorSelected(I)V

    goto :goto_0

    .line 80
    :pswitch_2
    invoke-virtual {v0, v2}, Lcom/amazon/kcp/application/SettingsController;->setColorMode(I)V

    .line 81
    invoke-direct {p0, v2}, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->setColorSelected(I)V

    goto :goto_0

    .line 84
    :pswitch_3
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    invoke-virtual {v0, v4}, Lcom/amazon/kcp/application/SettingsController;->setColorMode(I)V

    .line 89
    invoke-direct {p0, v4}, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->setColorSelected(I)V

    goto :goto_0

    .line 93
    :pswitch_4
    invoke-virtual {v0, v4}, Lcom/amazon/kcp/application/SettingsController;->setColorMode(I)V

    .line 94
    invoke-direct {p0, v4}, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->setColorSelected(I)V

    goto :goto_0

    .line 97
    :pswitch_5
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    invoke-virtual {v0, v3}, Lcom/amazon/kcp/application/SettingsController;->setColorMode(I)V

    .line 102
    invoke-direct {p0, v3}, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->setColorSelected(I)V

    goto :goto_0

    .line 106
    :pswitch_6
    invoke-virtual {v0, v3}, Lcom/amazon/kcp/application/SettingsController;->setColorMode(I)V

    .line 107
    invoke-direct {p0, v3}, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->setColorSelected(I)V

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c003b
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 47
    const v0, 0x7f0c0040

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->dottedColorWhite:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->dottedColorWhite:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const v0, 0x7f0c003d

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->fontColorWhite:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->fontColorWhite:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const v0, 0x7f0c003b

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->dottedColorSepia:Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->dottedColorSepia:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v0, 0x7f0c0041

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->fontColorSepia:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->fontColorSepia:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v0, 0x7f0c0042

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->dottedColorBlack:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->dottedColorBlack:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v0, 0x7f0c0043

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->fontColorBlack:Landroid/view/View;

    .line 60
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->fontColorBlack:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public setFocusNeighbors(II)V
    .locals 4
    .parameter "focusUpId"
    .parameter "focusDownId"

    .prologue
    const v3, 0x7f0c0042

    const v2, 0x7f0c0040

    const v1, 0x7f0c003b

    .line 125
    invoke-virtual {p0, v2}, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setNextFocusUpId(I)V

    .line 126
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setNextFocusUpId(I)V

    .line 127
    invoke-virtual {p0, v3}, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setNextFocusUpId(I)V

    .line 129
    invoke-virtual {p0, v2}, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 130
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 131
    invoke-virtual {p0, v3}, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 132
    return-void
.end method

.method public syncSelectedOptions()V
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/application/ReddingApplication;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/ReddingApplication;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    .line 139
    .local v0, settings:Lcom/amazon/kcp/application/SettingsController;
    invoke-virtual {v0}, Lcom/amazon/kcp/application/SettingsController;->getColorMode()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->setColorSelected(I)V

    .line 140
    return-void
.end method
