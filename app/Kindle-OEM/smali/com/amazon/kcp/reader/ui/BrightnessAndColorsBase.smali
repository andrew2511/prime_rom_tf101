.class public abstract Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;
.super Landroid/widget/ScrollView;
.source "BrightnessAndColorsBase.java"

# interfaces
.implements Lcom/amazon/kcp/reader/ui/Hideable;


# instance fields
.field private brightnessRow:Lcom/amazon/kcp/reader/ui/BrightnessSlider;

.field private colorRow:Lcom/amazon/kcp/reader/ui/TextColorOptionsView;

.field private showing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;->showing:Z

    .line 30
    return-void
.end method

.method private displayOptions(ZI)V
    .locals 4
    .parameter "show"
    .parameter "anim"

    .prologue
    const/4 v3, 0x0

    .line 84
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 86
    .local v0, animation:Landroid/view/animation/Animation;
    new-instance v1, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase$1;-><init>(Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;Z)V

    .line 107
    .local v1, completionRunnable:Ljava/lang/Runnable;
    new-instance v2, Lcom/amazon/kcp/ui/RunnableExecutorAnimationListener;

    invoke-direct {v2, v3, v3, v1}, Lcom/amazon/kcp/ui/RunnableExecutorAnimationListener;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 108
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;->startAnimation(Landroid/view/animation/Animation;)V

    .line 109
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract hide()Z
.end method

.method protected hide(I)Z
    .locals 2
    .parameter "hideAnimation"

    .prologue
    const/4 v1, 0x0

    .line 40
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;->showing:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 50
    :goto_0
    return v0

    .line 47
    :cond_0
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;->setEnabled(Z)V

    .line 48
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;->showing:Z

    .line 49
    invoke-direct {p0, v1, p1}, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;->displayOptions(ZI)V

    .line 50
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;->syncSelectedOptions()V

    .line 127
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 130
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Landroid/widget/ScrollView;->onFinishInflate()V

    .line 116
    const v0, 0x7f0c003f

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;->colorRow:Lcom/amazon/kcp/reader/ui/TextColorOptionsView;

    .line 117
    const v0, 0x7f0c0033

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/BrightnessSlider;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;->brightnessRow:Lcom/amazon/kcp/reader/ui/BrightnessSlider;

    .line 118
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected show(I)Z
    .locals 3
    .parameter "showAnimation"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 64
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;->showing:Z

    if-eqz v0, :cond_0

    move v0, v2

    .line 79
    :goto_0
    return v0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;->brightnessRow:Lcom/amazon/kcp/reader/ui/BrightnessSlider;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/BrightnessSlider;->prepareBrightnessOptions()V

    .line 74
    invoke-virtual {p0, v2}, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;->setVisibility(I)V

    .line 75
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;->setEnabled(Z)V

    .line 76
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;->showing:Z

    .line 77
    invoke-direct {p0, v1, p1}, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;->displayOptions(ZI)V

    move v0, v1

    .line 79
    goto :goto_0
.end method

.method public syncSelectedOptions()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;->colorRow:Lcom/amazon/kcp/reader/ui/TextColorOptionsView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->syncSelectedOptions()V

    .line 140
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;->brightnessRow:Lcom/amazon/kcp/reader/ui/BrightnessSlider;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/BrightnessSlider;->syncSelectedOptions()V

    .line 141
    return-void
.end method

.method protected updateOptions()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;->brightnessRow:Lcom/amazon/kcp/reader/ui/BrightnessSlider;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/BrightnessSlider;->prepareBrightnessOptions()V

    .line 159
    return-void
.end method
