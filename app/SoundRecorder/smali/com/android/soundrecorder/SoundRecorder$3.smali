.class Lcom/android/soundrecorder/SoundRecorder$3;
.super Ljava/lang/Object;
.source "SoundRecorder.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/soundrecorder/SoundRecorder;
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
    .line 958
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorder$3;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 960
    iget-object v5, p0, Lcom/android/soundrecorder/SoundRecorder$3;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    invoke-static {p2}, Lcom/android/soundrecorder/IRecorderService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/soundrecorder/IRecorderService;

    move-result-object v6

    iput-object v6, v5, Lcom/android/soundrecorder/SoundRecorder;->mRecordService:Lcom/android/soundrecorder/IRecorderService;

    .line 962
    iget-object v5, p0, Lcom/android/soundrecorder/SoundRecorder$3;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    iget-object v5, v5, Lcom/android/soundrecorder/SoundRecorder;->serviceState:Landroid/os/Bundle;

    if-eqz v5, :cond_0

    .line 964
    :try_start_0
    iget-object v5, p0, Lcom/android/soundrecorder/SoundRecorder$3;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    iget-object v5, v5, Lcom/android/soundrecorder/SoundRecorder;->serviceState:Landroid/os/Bundle;

    const-string v6, "sample_path"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 965
    .local v3, samplePath:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/soundrecorder/SoundRecorder$3;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    iget-object v5, v5, Lcom/android/soundrecorder/SoundRecorder;->serviceState:Landroid/os/Bundle;

    const-string v6, "sample_length"

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 966
    .local v2, sampleLength:I
    iget-object v5, p0, Lcom/android/soundrecorder/SoundRecorder$3;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    iget-object v5, v5, Lcom/android/soundrecorder/SoundRecorder;->mRecordService:Lcom/android/soundrecorder/IRecorderService;

    invoke-interface {v5, v3, v2}, Lcom/android/soundrecorder/IRecorderService;->restoreState(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 973
    .end local v2           #sampleLength:I
    .end local v3           #samplePath:Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/android/soundrecorder/SoundRecorder$3;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    iget-object v5, v5, Lcom/android/soundrecorder/SoundRecorder;->mRecordService:Lcom/android/soundrecorder/IRecorderService;

    invoke-interface {v5}, Lcom/android/soundrecorder/IRecorderService;->state()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 974
    iget-object v5, p0, Lcom/android/soundrecorder/SoundRecorder$3;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    const-string v6, "BYRATE_PER_SECOND"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/soundrecorder/SoundRecorder;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 975
    .local v4, settings:Landroid/content/SharedPreferences;
    const-string v5, "bytes_per_second"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 976
    .local v1, getBytesPerSecond:I
    iget-object v5, p0, Lcom/android/soundrecorder/SoundRecorder$3;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    iget-object v5, v5, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    iput v1, v5, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBytesPerSecond:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 982
    .end local v1           #getBytesPerSecond:I
    .end local v4           #settings:Landroid/content/SharedPreferences;
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/soundrecorder/SoundRecorder$3;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    iget-object v5, v5, Lcom/android/soundrecorder/SoundRecorder;->mVUMeter:Lcom/android/soundrecorder/VUMeter;

    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder$3;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    iget-object v6, v6, Lcom/android/soundrecorder/SoundRecorder;->mRecordService:Lcom/android/soundrecorder/IRecorderService;

    invoke-virtual {v5, v6}, Lcom/android/soundrecorder/VUMeter;->setRecorderService(Lcom/android/soundrecorder/IRecorderService;)V

    .line 983
    iget-object v5, p0, Lcom/android/soundrecorder/SoundRecorder$3;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    invoke-static {v5}, Lcom/android/soundrecorder/SoundRecorder;->access$100(Lcom/android/soundrecorder/SoundRecorder;)V

    .line 984
    return-void

    .line 967
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 968
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 978
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 979
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 987
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder$3;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/soundrecorder/SoundRecorder;->mRecordService:Lcom/android/soundrecorder/IRecorderService;

    .line 988
    return-void
.end method
