.class public Landroid/widget/AdapterViewFlipper;
.super Landroid/widget/AdapterViewAnimator;
.source "AdapterViewFlipper.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final DEFAULT_INTERVAL:I = 0x2710

.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "ViewFlipper"


# instance fields
.field private final FLIP_MSG:I

.field private mAdvancedByHost:Z

.field private mAutoStart:Z

.field private mFlipInterval:I

.field private final mHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRunning:Z

.field private mStarted:Z

.field private mUserPresent:Z

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;)V

    .line 48
    const/16 v0, 0x2710

    iput v0, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    .line 49
    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    .line 51
    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    .line 52
    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    .line 53
    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mVisible:Z

    .line 54
    iput-boolean v2, p0, Landroid/widget/AdapterViewFlipper;->mUserPresent:Z

    .line 55
    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mAdvancedByHost:Z

    .line 78
    new-instance v0, Landroid/widget/AdapterViewFlipper$1;

    invoke-direct {v0, p0}, Landroid/widget/AdapterViewFlipper$1;-><init>(Landroid/widget/AdapterViewFlipper;)V

    iput-object v0, p0, Landroid/widget/AdapterViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 248
    iput v2, p0, Landroid/widget/AdapterViewFlipper;->FLIP_MSG:I

    .line 250
    new-instance v0, Landroid/widget/AdapterViewFlipper$2;

    invoke-direct {v0, p0}, Landroid/widget/AdapterViewFlipper$2;-><init>(Landroid/widget/AdapterViewFlipper;)V

    iput-object v0, p0, Landroid/widget/AdapterViewFlipper;->mHandler:Landroid/os/Handler;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v4, 0x2710

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    iput v4, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    .line 49
    iput-boolean v2, p0, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    .line 51
    iput-boolean v2, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    .line 52
    iput-boolean v2, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    .line 53
    iput-boolean v2, p0, Landroid/widget/AdapterViewFlipper;->mVisible:Z

    .line 54
    iput-boolean v3, p0, Landroid/widget/AdapterViewFlipper;->mUserPresent:Z

    .line 55
    iput-boolean v2, p0, Landroid/widget/AdapterViewFlipper;->mAdvancedByHost:Z

    .line 78
    new-instance v1, Landroid/widget/AdapterViewFlipper$1;

    invoke-direct {v1, p0}, Landroid/widget/AdapterViewFlipper$1;-><init>(Landroid/widget/AdapterViewFlipper;)V

    iput-object v1, p0, Landroid/widget/AdapterViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 248
    iput v3, p0, Landroid/widget/AdapterViewFlipper;->FLIP_MSG:I

    .line 250
    new-instance v1, Landroid/widget/AdapterViewFlipper$2;

    invoke-direct {v1, p0}, Landroid/widget/AdapterViewFlipper$2;-><init>(Landroid/widget/AdapterViewFlipper;)V

    iput-object v1, p0, Landroid/widget/AdapterViewFlipper;->mHandler:Landroid/os/Handler;

    .line 64
    sget-object v1, Lcom/android/internal/R$styleable;->ViewFlipper:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    .line 68
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    .line 72
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mLoopViews:Z

    .line 75
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    return-void
.end method

.method static synthetic access$002(Landroid/widget/AdapterViewFlipper;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Landroid/widget/AdapterViewFlipper;->mUserPresent:Z

    return p1
.end method

.method static synthetic access$100(Landroid/widget/AdapterViewFlipper;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/widget/AdapterViewFlipper;->updateRunning()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/AdapterViewFlipper;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/AdapterViewFlipper;->updateRunning(Z)V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/AdapterViewFlipper;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    return v0
.end method

.method private updateRunning()V
    .registers 2

    .prologue
    .line 195
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/AdapterViewFlipper;->updateRunning(Z)V

    .line 196
    return-void
.end method

.method private updateRunning(Z)V
    .registers 7
    .parameter "flipNow"

    .prologue
    const/4 v3, 0x1

    .line 207
    iget-boolean v2, p0, Landroid/widget/AdapterViewFlipper;->mAdvancedByHost:Z

    if-nez v2, :cond_32

    iget-boolean v2, p0, Landroid/widget/AdapterViewFlipper;->mVisible:Z

    if-eqz v2, :cond_32

    iget-boolean v2, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    if-eqz v2, :cond_32

    iget-boolean v2, p0, Landroid/widget/AdapterViewFlipper;->mUserPresent:Z

    if-eqz v2, :cond_32

    iget-object v2, p0, Landroid/widget/AdapterViewFlipper;->mAdapter:Landroid/widget/Adapter;

    if-eqz v2, :cond_32

    move v1, v3

    .line 209
    .local v1, running:Z
    :goto_16
    iget-boolean v2, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    if-eq v1, v2, :cond_31

    .line 210
    if-eqz v1, :cond_35

    .line 211
    iget v2, p0, Landroid/widget/AdapterViewFlipper;->mWhichChild:I

    invoke-virtual {p0, v2, p1}, Landroid/widget/AdapterViewFlipper;->showOnly(IZ)V

    .line 212
    iget-object v2, p0, Landroid/widget/AdapterViewFlipper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 213
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Landroid/widget/AdapterViewFlipper;->mHandler:Landroid/os/Handler;

    iget v3, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    int-to-long v3, v3

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 217
    .end local v0           #msg:Landroid/os/Message;
    :goto_2f
    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    .line 223
    :cond_31
    return-void

    .line 207
    .end local v1           #running:Z
    :cond_32
    const/4 v2, 0x0

    move v1, v2

    goto :goto_16

    .line 215
    .restart local v1       #running:Z
    :cond_35
    iget-object v2, p0, Landroid/widget/AdapterViewFlipper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2f
.end method


# virtual methods
.method public fyiWillBeAdvancedByHostKThx()V
    .registers 2

    .prologue
    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mAdvancedByHost:Z

    .line 270
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/AdapterViewFlipper;->updateRunning(Z)V

    .line 271
    return-void
.end method

.method public isAutoStart()Z
    .registers 2

    .prologue
    .line 245
    iget-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    return v0
.end method

.method public isFlipping()Z
    .registers 2

    .prologue
    .line 229
    iget-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    .line 94
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->onAttachedToWindow()V

    .line 97
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 98
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Landroid/widget/AdapterViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/AdapterViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    iget-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    if-eqz v1, :cond_22

    .line 104
    invoke-virtual {p0}, Landroid/widget/AdapterViewFlipper;->startFlipping()V

    .line 106
    :cond_22
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 110
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->onDetachedFromWindow()V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mVisible:Z

    .line 113
    invoke-virtual {p0}, Landroid/widget/AdapterViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/AdapterViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 114
    invoke-direct {p0}, Landroid/widget/AdapterViewFlipper;->updateRunning()V

    .line 115
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 4
    .parameter "visibility"

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onWindowVisibilityChanged(I)V

    .line 120
    if-nez p1, :cond_d

    const/4 v0, 0x1

    :goto_7
    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mVisible:Z

    .line 121
    invoke-direct {p0, v1}, Landroid/widget/AdapterViewFlipper;->updateRunning(Z)V

    .line 122
    return-void

    :cond_d
    move v0, v1

    .line 120
    goto :goto_7
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .parameter "adapter"

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->setAdapter(Landroid/widget/Adapter;)V

    .line 127
    invoke-direct {p0}, Landroid/widget/AdapterViewFlipper;->updateRunning()V

    .line 128
    return-void
.end method

.method public setAutoStart(Z)V
    .registers 2
    .parameter "autoStart"

    .prologue
    .line 237
    iput-boolean p1, p0, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    .line 238
    return-void
.end method

.method public setFlipInterval(I)V
    .registers 2
    .parameter "milliseconds"

    .prologue
    .line 137
    iput p1, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    .line 138
    return-void
.end method

.method public showNext()V
    .registers 5
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 164
    iget-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    if-eqz v1, :cond_18

    .line 165
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 166
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 167
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper;->mHandler:Landroid/os/Handler;

    iget v2, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 169
    .end local v0           #msg:Landroid/os/Message;
    :cond_18
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->showNext()V

    .line 170
    return-void
.end method

.method public showPrevious()V
    .registers 5
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 180
    iget-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    if-eqz v1, :cond_18

    .line 181
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 182
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 183
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper;->mHandler:Landroid/os/Handler;

    iget v2, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 185
    .end local v0           #msg:Landroid/os/Message;
    :cond_18
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->showPrevious()V

    .line 186
    return-void
.end method

.method public startFlipping()V
    .registers 2

    .prologue
    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    .line 145
    invoke-direct {p0}, Landroid/widget/AdapterViewFlipper;->updateRunning()V

    .line 146
    return-void
.end method

.method public stopFlipping()V
    .registers 2

    .prologue
    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    .line 153
    invoke-direct {p0}, Landroid/widget/AdapterViewFlipper;->updateRunning()V

    .line 154
    return-void
.end method
