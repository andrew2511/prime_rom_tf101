.class Lcom/google/android/talk/videochat/Ringer$VibratorThread;
.super Ljava/lang/Thread;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/Ringer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibratorThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/Ringer;


# direct methods
.method private constructor <init>(Lcom/google/android/talk/videochat/Ringer;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/google/android/talk/videochat/Ringer$VibratorThread;->this$0:Lcom/google/android/talk/videochat/Ringer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/talk/videochat/Ringer;Lcom/google/android/talk/videochat/Ringer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/Ringer$VibratorThread;-><init>(Lcom/google/android/talk/videochat/Ringer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 223
    :goto_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/Ringer$VibratorThread;->this$0:Lcom/google/android/talk/videochat/Ringer;

    iget-boolean v0, v0, Lcom/google/android/talk/videochat/Ringer;->mContinueVibrating:Z

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/google/android/talk/videochat/Ringer$VibratorThread;->this$0:Lcom/google/android/talk/videochat/Ringer;

    iget-object v0, v0, Lcom/google/android/talk/videochat/Ringer;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 225
    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 227
    :cond_0
    return-void
.end method
