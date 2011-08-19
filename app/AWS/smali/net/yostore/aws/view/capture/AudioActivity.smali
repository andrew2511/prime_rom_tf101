.class public Lnet/yostore/aws/view/capture/AudioActivity;
.super Landroid/app/Activity;
.source "AudioActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/view/capture/AudioActivity$R_STAT;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioActivity"

.field private static mStartTime:J


# instance fields
.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private ctx:Landroid/content/Context;

.field private ibPlay:Landroid/widget/ImageButton;

.field private ibRecord:Landroid/widget/ImageButton;

.field private ibStop:Landroid/widget/ImageButton;

.field private ibUpload:Landroid/widget/ImageButton;

.field private mHandler:Landroid/os/Handler;

.field private mMediaRecorder01:Landroid/media/MediaRecorder;

.field private mTimeLabel:Landroid/widget/TextView;

.field mUpdateTimeTask:Ljava/lang/Runnable;

.field myRecAudioFile:Ljava/io/File;

.field private processStatus:I

.field private uploadFolder:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 239
    const-wide/16 v0, 0x0

    sput-wide v0, Lnet/yostore/aws/view/capture/AudioActivity;->mStartTime:J

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->mHandler:Landroid/os/Handler;

    .line 50
    const-wide/16 v0, -0x3e7

    iput-wide v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->uploadFolder:J

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->processStatus:I

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->myRecAudioFile:Ljava/io/File;

    .line 240
    new-instance v0, Lnet/yostore/aws/view/capture/AudioActivity$1;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/capture/AudioActivity$1;-><init>(Lnet/yostore/aws/view/capture/AudioActivity;)V

    iput-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->mUpdateTimeTask:Ljava/lang/Runnable;

    .line 39
    return-void
.end method

.method static synthetic access$0()J
    .locals 2

    .prologue
    .line 239
    sget-wide v0, Lnet/yostore/aws/view/capture/AudioActivity;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$1(Lnet/yostore/aws/view/capture/AudioActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->mTimeLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lnet/yostore/aws/view/capture/AudioActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public allSharesBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 286
    new-instance v0, Lnet/yostore/aws/ansytask/GoAllSharesTask;

    iget-object v1, p0, Lnet/yostore/aws/view/capture/AudioActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoAllSharesTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoAllSharesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 287
    return-void
.end method

.method public backFunction(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 63
    invoke-virtual {p0}, Lnet/yostore/aws/view/capture/AudioActivity;->finish()V

    .line 64
    return-void
.end method

.method protected doPlay()V
    .locals 4

    .prologue
    .line 148
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 152
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    .line 155
    iget-object v2, p0, Lnet/yostore/aws/view/capture/AudioActivity;->myRecAudioFile:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "audio/mp3"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/capture/AudioActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_1
    return-void

    .line 157
    :cond_0
    iget-object v2, p0, Lnet/yostore/aws/view/capture/AudioActivity;->myRecAudioFile:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "audio/*"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 164
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method protected doRecord()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 112
    iput v5, p0, Lnet/yostore/aws/view/capture/AudioActivity;->processStatus:I

    .line 113
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lnet/yostore/aws/handler/ExternalStorageHandler;->getAdoRoot()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v1, root:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 117
    :try_start_0
    iget-object v2, p0, Lnet/yostore/aws/view/capture/AudioActivity;->myRecAudioFile:Ljava/io/File;

    if-nez v2, :cond_0

    .line 118
    const-string v2, "awsaudio"

    const-string v3, ".amr"

    invoke-static {v2, v3, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lnet/yostore/aws/view/capture/AudioActivity;->myRecAudioFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_0
    :goto_0
    new-instance v2, Landroid/media/MediaRecorder;

    invoke-direct {v2}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v2, p0, Lnet/yostore/aws/view/capture/AudioActivity;->mMediaRecorder01:Landroid/media/MediaRecorder;

    .line 126
    iget-object v2, p0, Lnet/yostore/aws/view/capture/AudioActivity;->mMediaRecorder01:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 127
    iget-object v2, p0, Lnet/yostore/aws/view/capture/AudioActivity;->mMediaRecorder01:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 128
    iget-object v2, p0, Lnet/yostore/aws/view/capture/AudioActivity;->mMediaRecorder01:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v5}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 130
    iget-object v2, p0, Lnet/yostore/aws/view/capture/AudioActivity;->mMediaRecorder01:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lnet/yostore/aws/view/capture/AudioActivity;->myRecAudioFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 133
    :try_start_1
    iget-object v2, p0, Lnet/yostore/aws/view/capture/AudioActivity;->mMediaRecorder01:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 142
    :goto_1
    iget-object v2, p0, Lnet/yostore/aws/view/capture/AudioActivity;->mMediaRecorder01:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V

    .line 143
    iget-object v2, p0, Lnet/yostore/aws/view/capture/AudioActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lnet/yostore/aws/view/capture/AudioActivity;->mUpdateTimeTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 144
    return-void

    .line 119
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 121
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 134
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 136
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 137
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 139
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method protected doStop()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->mMediaRecorder01:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->mMediaRecorder01:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 175
    iget-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->mMediaRecorder01:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 177
    :cond_0
    return-void
.end method

.method public mBackupBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 266
    new-instance v0, Lnet/yostore/aws/ansytask/GoMyBackupTask;

    iget-object v1, p0, Lnet/yostore/aws/view/capture/AudioActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMyBackupTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMyBackupTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 267
    return-void
.end method

.method public mCollectionBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 270
    new-instance v0, Lnet/yostore/aws/ansytask/GoMyCollectionTask;

    iget-object v1, p0, Lnet/yostore/aws/view/capture/AudioActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMyCollectionTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMyCollectionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 271
    return-void
.end method

.method public mSyncBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 262
    new-instance v0, Lnet/yostore/aws/ansytask/GoMySyncTask;

    iget-object v1, p0, Lnet/yostore/aws/view/capture/AudioActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMySyncTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMySyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 263
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 201
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 202
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 203
    :cond_0
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/capture/AudioActivity;->setContentView(I)V

    .line 204
    const v0, 0x7f09005e

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/capture/AudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->ibStop:Landroid/widget/ImageButton;

    .line 205
    const v0, 0x7f090025

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/capture/AudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->ibPlay:Landroid/widget/ImageButton;

    .line 206
    const v0, 0x7f09005d

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/capture/AudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->ibRecord:Landroid/widget/ImageButton;

    .line 207
    const v0, 0x7f09005b

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/capture/AudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->ibUpload:Landroid/widget/ImageButton;

    .line 208
    const v0, 0x7f09005c

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/capture/AudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->mTimeLabel:Landroid/widget/TextView;

    .line 209
    iget v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->processStatus:I

    packed-switch v0, :pswitch_data_0

    .line 237
    :cond_1
    :goto_0
    return-void

    .line 211
    :pswitch_0
    iget-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->ibStop:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->ibPlay:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->ibRecord:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->ibUpload:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 217
    :pswitch_1
    iget-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->ibRecord:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->ibPlay:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->ibUpload:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->ibStop:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 223
    :pswitch_2
    iget-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->ibStop:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->ibPlay:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->ibRecord:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->ibUpload:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->mTimeLabel:Landroid/widget/TextView;

    const v1, 0x7f0600ac

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 229
    const-wide/16 v0, 0x0

    sput-wide v0, Lnet/yostore/aws/view/capture/AudioActivity;->mStartTime:J

    goto :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 183
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/capture/AudioActivity;->setContentView(I)V

    .line 184
    iput-object p0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->ctx:Landroid/content/Context;

    .line 186
    const v0, 0x7f09005e

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/capture/AudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->ibStop:Landroid/widget/ImageButton;

    .line 187
    const v0, 0x7f090025

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/capture/AudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->ibPlay:Landroid/widget/ImageButton;

    .line 188
    const v0, 0x7f09005d

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/capture/AudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->ibRecord:Landroid/widget/ImageButton;

    .line 189
    const v0, 0x7f09005b

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/capture/AudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->ibUpload:Landroid/widget/ImageButton;

    .line 191
    const v0, 0x7f09005c

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/capture/AudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->mTimeLabel:Landroid/widget/TextView;

    .line 192
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 193
    iget-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v0, v0, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v0, v0, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v0, v0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v0, v0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->awsInterface:Lnet/yostore/aws/service/AWSServiceInterface;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->downloadInterface:Lnet/yostore/aws/service/DownloadServiceInterface;

    if-nez v0, :cond_1

    .line 194
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->goSplash(Landroid/content/Context;)V

    .line 195
    :cond_1
    return-void
.end method

.method public playClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 92
    invoke-virtual {p0}, Lnet/yostore/aws/view/capture/AudioActivity;->doPlay()V

    .line 93
    return-void
.end method

.method public recClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/16 v1, 0x8

    .line 98
    iget-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->ibRecord:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->ibPlay:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->ibUpload:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->ibStop:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 102
    sget-wide v0, Lnet/yostore/aws/view/capture/AudioActivity;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 103
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lnet/yostore/aws/view/capture/AudioActivity;->mStartTime:J

    .line 104
    iget-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/yostore/aws/view/capture/AudioActivity;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 105
    iget-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/yostore/aws/view/capture/AudioActivity;->mUpdateTimeTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 108
    :cond_0
    invoke-virtual {p0}, Lnet/yostore/aws/view/capture/AudioActivity;->doRecord()V

    .line 109
    return-void
.end method

.method public recentChangedBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 278
    new-instance v0, Lnet/yostore/aws/ansytask/GoRecentChangesTask;

    iget-object v1, p0, Lnet/yostore/aws/view/capture/AudioActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoRecentChangesTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoRecentChangesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 279
    return-void
.end method

.method public recentUploadBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 282
    new-instance v0, Lnet/yostore/aws/ansytask/GoRecentUploadFilesTask;

    iget-object v1, p0, Lnet/yostore/aws/view/capture/AudioActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoRecentUploadFilesTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoRecentUploadFilesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 283
    return-void
.end method

.method public saveSearchBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 290
    new-instance v0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;

    iget-object v1, p0, Lnet/yostore/aws/view/capture/AudioActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoSavedSearchTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 291
    return-void
.end method

.method public stopClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 79
    const/4 v0, 0x2

    iput v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->processStatus:I

    .line 80
    iget-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->ibStop:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->ibPlay:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->ibRecord:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->ibUpload:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/yostore/aws/view/capture/AudioActivity;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 86
    iget-object v0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->mTimeLabel:Landroid/widget/TextView;

    const v1, 0x7f0600ac

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 87
    const-wide/16 v0, 0x0

    sput-wide v0, Lnet/yostore/aws/view/capture/AudioActivity;->mStartTime:J

    .line 88
    invoke-virtual {p0}, Lnet/yostore/aws/view/capture/AudioActivity;->doStop()V

    .line 89
    return-void
.end method

.method public tagBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 274
    new-instance v0, Lnet/yostore/aws/ansytask/GoMarkedTask;

    iget-object v1, p0, Lnet/yostore/aws/view/capture/AudioActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMarkedTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMarkedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 275
    return-void
.end method

.method public uploadClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 67
    iget-object v2, p0, Lnet/yostore/aws/view/capture/AudioActivity;->myRecAudioFile:Ljava/io/File;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/yostore/aws/view/capture/AudioActivity;->myRecAudioFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 69
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "fileuri"

    iget-object v3, p0, Lnet/yostore/aws/view/capture/AudioActivity;->myRecAudioFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 71
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 72
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lnet/yostore/aws/view/capture/AudioActivity;->setResult(ILandroid/content/Intent;)V

    .line 74
    iget-object p0, p0, Lnet/yostore/aws/view/capture/AudioActivity;->ctx:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 76
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
