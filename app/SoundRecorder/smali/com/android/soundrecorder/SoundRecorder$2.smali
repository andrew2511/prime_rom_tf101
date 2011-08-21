.class Lcom/android/soundrecorder/SoundRecorder$2;
.super Landroid/content/BroadcastReceiver;
.source "SoundRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/soundrecorder/SoundRecorder;->registerExternalStorageListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/soundrecorder/SoundRecorder;


# direct methods
.method constructor <init>(Lcom/android/soundrecorder/SoundRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 537
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorder$2;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 540
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 541
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 542
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder$2;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    iget-object v2, v2, Lcom/android/soundrecorder/SoundRecorder;->mRecordService:Lcom/android/soundrecorder/IRecorderService;

    if-eqz v2, :cond_1

    .line 544
    :try_start_0
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder$2;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    iget-object v2, v2, Lcom/android/soundrecorder/SoundRecorder;->mRecordService:Lcom/android/soundrecorder/IRecorderService;

    invoke-interface {v2}, Lcom/android/soundrecorder/IRecorderService;->delete()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 545
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 546
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 548
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v2, "SoundRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerExternalStorageListener.mRecordService:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder$2;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    iget-object v4, v4, Lcom/android/soundrecorder/SoundRecorder;->mRecordService:Lcom/android/soundrecorder/IRecorderService;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 549
    :cond_2
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 550
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder$2;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    .line 551
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder$2;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    invoke-static {v2}, Lcom/android/soundrecorder/SoundRecorder;->access$100(Lcom/android/soundrecorder/SoundRecorder;)V

    goto :goto_0
.end method
