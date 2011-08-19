.class public Lcom/google/android/apps/books/widget/BrightnessSeekBarEnabler;
.super Landroid/widget/FrameLayout;
.source "BrightnessSeekBarEnabler.java"


# instance fields
.field private mBrightnessScrub:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method private enableSeekBar()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BrightnessSeekBarEnabler;->mBrightnessScrub:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BrightnessSeekBarEnabler;->mBrightnessScrub:Landroid/widget/SeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 53
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/BrightnessSeekBarEnabler;->enableSeekBar()V

    .line 46
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 40
    const v0, 0x7f0e002d

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/widget/BrightnessSeekBarEnabler;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/google/android/apps/books/widget/BrightnessSeekBarEnabler;->mBrightnessScrub:Landroid/widget/SeekBar;

    .line 41
    return-void
.end method
