.class Lcom/asus/reader/ui/SymmetricalLinearTween;
.super Ljava/lang/Object;
.source "SymmetricalLinearTween.java"


# instance fields
.field mBase:J

.field mCallback:Lcom/asus/reader/ui/TweenCallback;

.field mDirection:Z

.field mDuration:I

.field mHandler:Landroid/os/Handler;

.field mRunning:Z

.field mTick:Ljava/lang/Runnable;

.field mValue:F


# direct methods
.method public constructor <init>(ZILcom/asus/reader/ui/TweenCallback;)V
    .locals 1
    .parameter "initial"
    .parameter "duration"
    .parameter "callback"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Lcom/asus/reader/ui/SymmetricalLinearTween$1;

    invoke-direct {v0, p0}, Lcom/asus/reader/ui/SymmetricalLinearTween$1;-><init>(Lcom/asus/reader/ui/SymmetricalLinearTween;)V

    iput-object v0, p0, Lcom/asus/reader/ui/SymmetricalLinearTween;->mTick:Ljava/lang/Runnable;

    .line 46
    if-eqz p1, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    iput v0, p0, Lcom/asus/reader/ui/SymmetricalLinearTween;->mValue:F

    .line 47
    iput-boolean p1, p0, Lcom/asus/reader/ui/SymmetricalLinearTween;->mDirection:Z

    .line 48
    iput p2, p0, Lcom/asus/reader/ui/SymmetricalLinearTween;->mDuration:I

    .line 49
    iput-object p3, p0, Lcom/asus/reader/ui/SymmetricalLinearTween;->mCallback:Lcom/asus/reader/ui/TweenCallback;

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/asus/reader/ui/SymmetricalLinearTween;->mHandler:Landroid/os/Handler;

    .line 51
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public start(Z)V
    .locals 2
    .parameter "direction"

    .prologue
    .line 60
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/asus/reader/ui/SymmetricalLinearTween;->start(ZJ)V

    .line 61
    return-void
.end method

.method public start(ZJ)V
    .locals 10
    .parameter "direction"
    .parameter "baseTime"

    .prologue
    .line 73
    iget-boolean v6, p0, Lcom/asus/reader/ui/SymmetricalLinearTween;->mDirection:Z

    if-eq p1, v6, :cond_0

    .line 74
    iget-boolean v6, p0, Lcom/asus/reader/ui/SymmetricalLinearTween;->mRunning:Z

    if-nez v6, :cond_1

    .line 75
    iput-wide p2, p0, Lcom/asus/reader/ui/SymmetricalLinearTween;->mBase:J

    .line 76
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/asus/reader/ui/SymmetricalLinearTween;->mRunning:Z

    .line 77
    iget-object v6, p0, Lcom/asus/reader/ui/SymmetricalLinearTween;->mCallback:Lcom/asus/reader/ui/TweenCallback;

    invoke-interface {v6}, Lcom/asus/reader/ui/TweenCallback;->onTweenStarted()V

    .line 78
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x21

    add-long v2, v6, v8

    .line 79
    .local v2, next:J
    iget-object v6, p0, Lcom/asus/reader/ui/SymmetricalLinearTween;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/asus/reader/ui/SymmetricalLinearTween;->mTick:Ljava/lang/Runnable;

    invoke-virtual {v6, v7, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 86
    .end local v2           #next:J
    :goto_0
    iput-boolean p1, p0, Lcom/asus/reader/ui/SymmetricalLinearTween;->mDirection:Z

    .line 88
    :cond_0
    return-void

    .line 82
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 83
    .local v4, now:J
    iget-wide v6, p0, Lcom/asus/reader/ui/SymmetricalLinearTween;->mBase:J

    sub-long v0, v4, v6

    .line 84
    .local v0, diff:J
    add-long v6, v4, v0

    iget v8, p0, Lcom/asus/reader/ui/SymmetricalLinearTween;->mDuration:I

    int-to-long v8, v8

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/asus/reader/ui/SymmetricalLinearTween;->mBase:J

    goto :goto_0
.end method
