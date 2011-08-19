.class public Lcom/google/android/music/RepeatingImageButton;
.super Landroid/widget/ImageButton;
.source "RepeatingImageButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/RepeatingImageButton$RepeatListener;
    }
.end annotation


# instance fields
.field private mInterval:J

.field private mListener:Lcom/google/android/music/RepeatingImageButton$RepeatListener;

.field private mRepeatCount:I

.field private mRepeater:Ljava/lang/Runnable;

.field private mStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/music/RepeatingImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    const v0, 0x1010072

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/music/RepeatingImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x1

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/google/android/music/RepeatingImageButton;->mInterval:J

    .line 102
    new-instance v0, Lcom/google/android/music/RepeatingImageButton$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/RepeatingImageButton$1;-><init>(Lcom/google/android/music/RepeatingImageButton;)V

    iput-object v0, p0, Lcom/google/android/music/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    .line 35
    invoke-virtual {p0, v2}, Lcom/google/android/music/RepeatingImageButton;->setFocusable(Z)V

    .line 36
    invoke-virtual {p0, v2}, Lcom/google/android/music/RepeatingImageButton;->setLongClickable(Z)V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/RepeatingImageButton;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/google/android/music/RepeatingImageButton;->doRepeat(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/music/RepeatingImageButton;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/google/android/music/RepeatingImageButton;->mInterval:J

    return-wide v0
.end method

.method private doRepeat(Z)V
    .locals 7
    .parameter "last"

    .prologue
    .line 112
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 113
    .local v0, now:J
    iget-object v2, p0, Lcom/google/android/music/RepeatingImageButton;->mListener:Lcom/google/android/music/RepeatingImageButton$RepeatListener;

    if-eqz v2, :cond_0

    .line 114
    iget-object v2, p0, Lcom/google/android/music/RepeatingImageButton;->mListener:Lcom/google/android/music/RepeatingImageButton$RepeatListener;

    iget-wide v3, p0, Lcom/google/android/music/RepeatingImageButton;->mStartTime:J

    sub-long v3, v0, v3

    if-eqz p1, :cond_1

    const/4 v5, -0x1

    :goto_0
    invoke-interface {v2, p0, v3, v4, v5}, Lcom/google/android/music/RepeatingImageButton$RepeatListener;->onRepeat(Landroid/view/View;JI)V

    .line 116
    :cond_0
    return-void

    .line 114
    :cond_1
    iget v5, p0, Lcom/google/android/music/RepeatingImageButton;->mRepeatCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/android/music/RepeatingImageButton;->mRepeatCount:I

    goto :goto_0
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 76
    sparse-switch p1, :sswitch_data_0

    .line 84
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 81
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 82
    const/4 v0, 0x1

    goto :goto_0

    .line 76
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-wide/16 v2, 0x0

    .line 89
    sparse-switch p1, :sswitch_data_0

    .line 99
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 93
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/music/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/music/RepeatingImageButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 94
    iget-wide v0, p0, Lcom/google/android/music/RepeatingImageButton;->mStartTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/music/RepeatingImageButton;->doRepeat(Z)V

    .line 96
    iput-wide v2, p0, Lcom/google/android/music/RepeatingImageButton;->mStartTime:J

    goto :goto_0

    .line 89
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 65
    iget-object v0, p0, Lcom/google/android/music/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/music/RepeatingImageButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 66
    iget-wide v0, p0, Lcom/google/android/music/RepeatingImageButton;->mStartTime:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    .line 67
    invoke-direct {p0, v2}, Lcom/google/android/music/RepeatingImageButton;->doRepeat(Z)V

    .line 68
    iput-wide v3, p0, Lcom/google/android/music/RepeatingImageButton;->mStartTime:J

    .line 71
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public performLongClick()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    iget-object v0, p0, Lcom/google/android/music/RepeatingImageButton;->mListener:Lcom/google/android/music/RepeatingImageButton$RepeatListener;

    if-nez v0, :cond_0

    move v0, v2

    .line 58
    :goto_0
    return v0

    .line 55
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/RepeatingImageButton;->mStartTime:J

    .line 56
    iput v2, p0, Lcom/google/android/music/RepeatingImageButton;->mRepeatCount:I

    .line 57
    iget-object v0, p0, Lcom/google/android/music/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/music/RepeatingImageButton;->post(Ljava/lang/Runnable;)Z

    .line 58
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setRepeatListener(Lcom/google/android/music/RepeatingImageButton$RepeatListener;J)V
    .locals 0
    .parameter "l"
    .parameter "interval"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/android/music/RepeatingImageButton;->mListener:Lcom/google/android/music/RepeatingImageButton$RepeatListener;

    .line 47
    iput-wide p2, p0, Lcom/google/android/music/RepeatingImageButton;->mInterval:J

    .line 48
    return-void
.end method
