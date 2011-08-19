.class public Lcom/android/soundrecorder/RecorderService;
.super Landroid/app/Service;
.source "RecorderService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/soundrecorder/RecorderService$ServiceStub;,
        Lcom/android/soundrecorder/RecorderService$OnStateChangedListener;
    }
.end annotation


# static fields
.field static mOnStateChangedListener:Lcom/android/soundrecorder/RecorderService$OnStateChangedListener;

.field static mState:I


# instance fields
.field private final NOTIFY_ID:I

.field private final mBinder:Landroid/os/IBinder;

.field mNotificationManger:Landroid/app/NotificationManager;

.field mPlayer:Landroid/media/MediaPlayer;

.field mRecorder:Landroid/media/MediaRecorder;

.field mSampleFile:Ljava/io/File;

.field mSampleLength:I

.field mSampleStart:J

.field private mServiceStartId:I

.field notification:Landroid/app/Notification;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput v0, Lcom/android/soundrecorder/RecorderService;->mState:I

    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/android/soundrecorder/RecorderService;->mOnStateChangedListener:Lcom/android/soundrecorder/RecorderService$OnStateChangedListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/soundrecorder/RecorderService;->mServiceStartId:I

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/soundrecorder/RecorderService;->mSampleStart:J

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/soundrecorder/RecorderService;->mSampleLength:I

    .line 62
    iput-object v2, p0, Lcom/android/soundrecorder/RecorderService;->mSampleFile:Ljava/io/File;

    .line 64
    iput-object v2, p0, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    .line 65
    iput-object v2, p0, Lcom/android/soundrecorder/RecorderService;->mPlayer:Landroid/media/MediaPlayer;

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/soundrecorder/RecorderService;->NOTIFY_ID:I

    .line 398
    new-instance v0, Lcom/android/soundrecorder/RecorderService$ServiceStub;

    invoke-direct {v0, p0}, Lcom/android/soundrecorder/RecorderService$ServiceStub;-><init>(Lcom/android/soundrecorder/RecorderService;)V

    iput-object v0, p0, Lcom/android/soundrecorder/RecorderService;->mBinder:Landroid/os/IBinder;

    .line 407
    return-void
.end method

.method private setError(I)V
    .locals 1
    .parameter "error"

    .prologue
    .line 394
    sget-object v0, Lcom/android/soundrecorder/RecorderService;->mOnStateChangedListener:Lcom/android/soundrecorder/RecorderService$OnStateChangedListener;

    if-eqz v0, :cond_0

    .line 395
    sget-object v0, Lcom/android/soundrecorder/RecorderService;->mOnStateChangedListener:Lcom/android/soundrecorder/RecorderService$OnStateChangedListener;

    invoke-interface {v0, p1}, Lcom/android/soundrecorder/RecorderService$OnStateChangedListener;->onError(I)V

    .line 396
    :cond_0
    return-void
.end method

.method public static setOnStateChangedListener(Lcom/android/soundrecorder/RecorderService$OnStateChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 98
    sput-object p0, Lcom/android/soundrecorder/RecorderService;->mOnStateChangedListener:Lcom/android/soundrecorder/RecorderService$OnStateChangedListener;

    .line 99
    return-void
.end method

.method private setState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 381
    sget v0, Lcom/android/soundrecorder/RecorderService;->mState:I

    if-ne p1, v0, :cond_0

    .line 386
    :goto_0
    return-void

    .line 384
    :cond_0
    sput p1, Lcom/android/soundrecorder/RecorderService;->mState:I

    .line 385
    sget v0, Lcom/android/soundrecorder/RecorderService;->mState:I

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/RecorderService;->signalStateChanged(I)V

    goto :goto_0
.end method

.method private signalStateChanged(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 389
    sget-object v0, Lcom/android/soundrecorder/RecorderService;->mOnStateChangedListener:Lcom/android/soundrecorder/RecorderService$OnStateChangedListener;

    if-eqz v0, :cond_0

    .line 390
    sget-object v0, Lcom/android/soundrecorder/RecorderService;->mOnStateChangedListener:Lcom/android/soundrecorder/RecorderService$OnStateChangedListener;

    invoke-interface {v0, p1}, Lcom/android/soundrecorder/RecorderService$OnStateChangedListener;->onStateChanged(I)V

    .line 391
    :cond_0
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-virtual {p0}, Lcom/android/soundrecorder/RecorderService;->stop()V

    .line 125
    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService;->mSampleFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService;->mSampleFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 128
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/RecorderService;->mSampleFile:Ljava/io/File;

    .line 129
    iput v1, p0, Lcom/android/soundrecorder/RecorderService;->mSampleLength:I

    .line 131
    invoke-direct {p0, v1}, Lcom/android/soundrecorder/RecorderService;->signalStateChanged(I)V

    .line 132
    return-void
.end method

.method public getMaxAmplitude()I
    .locals 2

    .prologue
    .line 72
    sget v0, Lcom/android/soundrecorder/RecorderService;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 74
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "mp"

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/android/soundrecorder/RecorderService;->stop()V

    .line 378
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x1

    .line 305
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 307
    invoke-virtual {p0}, Lcom/android/soundrecorder/RecorderService;->state()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService;->notification:Landroid/app/Notification;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService;->mNotificationManger:Landroid/app/NotificationManager;

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 310
    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService;->mNotificationManger:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/android/soundrecorder/RecorderService;->notification:Landroid/app/Notification;

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 314
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 298
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 299
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/RecorderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/soundrecorder/RecorderService;->mNotificationManger:Landroid/app/NotificationManager;

    .line 300
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 253
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 254
    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 255
    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v0, 0x1

    .line 371
    invoke-virtual {p0}, Lcom/android/soundrecorder/RecorderService;->stop()V

    .line 372
    invoke-direct {p0, v0}, Lcom/android/soundrecorder/RecorderService;->setError(I)V

    .line 373
    return v0
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 260
    packed-switch p2, :pswitch_data_0

    .line 286
    :goto_0
    return-void

    .line 262
    :pswitch_0
    const-string v0, "RecorderService"

    const-string v1, "MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/RecorderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 266
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 270
    const-string v1, "com.android.soundrecorder.SoundRecorder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/RecorderService;->setError(I)V

    .line 280
    :goto_1
    invoke-virtual {p0}, Lcom/android/soundrecorder/RecorderService;->stop()V

    goto :goto_0

    .line 274
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/soundrecorder/SoundRecorder;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 275
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 276
    const-string v1, "isStorageFullFlag"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 277
    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/RecorderService;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 260
    :pswitch_data_0
    .packed-switch 0x321
        :pswitch_0
    .end packed-switch
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 291
    iput p3, p0, Lcom/android/soundrecorder/RecorderService;->mServiceStartId:I

    .line 292
    const/4 v0, 0x1

    return v0
.end method

.method public progress()I
    .locals 4

    .prologue
    .line 106
    sget v0, Lcom/android/soundrecorder/RecorderService;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/soundrecorder/RecorderService;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 107
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/soundrecorder/RecorderService;->mSampleStart:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 108
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Ljava/lang/String;I)V
    .locals 3
    .parameter "samplePath"
    .parameter "sampleLength"

    .prologue
    .line 78
    if-nez p1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 83
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/android/soundrecorder/RecorderService;->mSampleFile:Ljava/io/File;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/soundrecorder/RecorderService;->mSampleFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    :cond_2
    invoke-virtual {p0}, Lcom/android/soundrecorder/RecorderService;->delete()V

    .line 91
    iput-object v0, p0, Lcom/android/soundrecorder/RecorderService;->mSampleFile:Ljava/io/File;

    .line 92
    iput p2, p0, Lcom/android/soundrecorder/RecorderService;->mSampleLength:I

    .line 94
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/soundrecorder/RecorderService;->signalStateChanged(I)V

    goto :goto_0
.end method

.method public sampleFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService;->mSampleFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sampleLength()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/android/soundrecorder/RecorderService;->mSampleLength:I

    return v0
.end method

.method public startPlayback()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 331
    invoke-virtual {p0}, Lcom/android/soundrecorder/RecorderService;->stop()V

    .line 333
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/soundrecorder/RecorderService;->mPlayer:Landroid/media/MediaPlayer;

    .line 335
    :try_start_0
    iget-object v1, p0, Lcom/android/soundrecorder/RecorderService;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/soundrecorder/RecorderService;->mSampleFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 336
    iget-object v1, p0, Lcom/android/soundrecorder/RecorderService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 337
    iget-object v1, p0, Lcom/android/soundrecorder/RecorderService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 338
    iget-object v1, p0, Lcom/android/soundrecorder/RecorderService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 339
    iget-object v1, p0, Lcom/android/soundrecorder/RecorderService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/soundrecorder/RecorderService;->mSampleStart:J

    .line 351
    invoke-direct {p0, v3}, Lcom/android/soundrecorder/RecorderService;->setState(I)V

    .line 352
    :goto_0
    return-void

    .line 340
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 341
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-direct {p0, v3}, Lcom/android/soundrecorder/RecorderService;->setError(I)V

    .line 342
    iput-object v4, p0, Lcom/android/soundrecorder/RecorderService;->mPlayer:Landroid/media/MediaPlayer;

    goto :goto_0

    .line 344
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 345
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/soundrecorder/RecorderService;->setError(I)V

    .line 346
    iput-object v4, p0, Lcom/android/soundrecorder/RecorderService;->mPlayer:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method public startRecording(ILjava/lang/String;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x7f04

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 150
    invoke-virtual {p0}, Lcom/android/soundrecorder/RecorderService;->stop()V

    .line 153
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/soundrecorder/SoundRecorder;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/soundrecorder/RecorderService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/soundrecorder/RecorderService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "...."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 157
    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f020006

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v3, v1, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v2, p0, Lcom/android/soundrecorder/RecorderService;->notification:Landroid/app/Notification;

    .line 158
    invoke-static {p0, v10, v0, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 159
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/android/soundrecorder/RecorderService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030001

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 160
    const v2, 0x7f06000f

    invoke-virtual {p0}, Lcom/android/soundrecorder/RecorderService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 161
    const v2, 0x7f060010

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/soundrecorder/RecorderService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f040004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "...."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 162
    iget-object v2, p0, Lcom/android/soundrecorder/RecorderService;->notification:Landroid/app/Notification;

    iput-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 163
    iget-object v1, p0, Lcom/android/soundrecorder/RecorderService;->notification:Landroid/app/Notification;

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 165
    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService;->notification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 166
    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService;->notification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 168
    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService;->mNotificationManger:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/android/soundrecorder/RecorderService;->notification:Landroid/app/Notification;

    invoke-virtual {v0, v8, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 171
    const-wide/16 v0, 0x0

    .line 172
    iget-object v2, p0, Lcom/android/soundrecorder/RecorderService;->mSampleFile:Ljava/io/File;

    if-nez v2, :cond_1

    .line 173
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/sdcard"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    :cond_0
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    .line 180
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    sub-int/2addr v1, v8

    int-to-long v4, v1

    mul-long v1, v4, v2

    .line 185
    :try_start_0
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 186
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMddHHmmss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 187
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "recording-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 188
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 190
    iput-object v5, p0, Lcom/android/soundrecorder/RecorderService;->mSampleFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v1

    .line 199
    :cond_1
    new-instance v2, Landroid/media/MediaRecorder;

    invoke-direct {v2}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v2, p0, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    .line 200
    iget-object v2, p0, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 201
    iget-object v2, p0, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v8}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 202
    iget-object v2, p0, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, p1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 204
    if-ne p1, v9, :cond_2

    .line 205
    iget-object v2, p0, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v8}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 206
    :cond_2
    if-ne p1, v8, :cond_3

    .line 208
    iget-object v2, p0, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v9}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 209
    iget-object v2, p0, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    const v3, 0x17700

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 210
    iget-object v2, p0, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    const v3, 0xac44

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 212
    :cond_3
    iget-object v2, p0, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lcom/android/soundrecorder/RecorderService;->mSampleFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 214
    iget-object v2, p0, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 218
    :try_start_1
    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 229
    :try_start_2
    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/soundrecorder/RecorderService;->mSampleStart:J

    .line 246
    invoke-direct {p0, v8}, Lcom/android/soundrecorder/RecorderService;->setState(I)V

    .line 248
    :goto_0
    return-void

    .line 189
    :cond_4
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Duplicate filename!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService;->mNotificationManger:Landroid/app/NotificationManager;

    invoke-virtual {v0, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 194
    invoke-direct {p0, v8}, Lcom/android/soundrecorder/RecorderService;->setError(I)V

    goto :goto_0

    .line 219
    :catch_1
    move-exception v0

    .line 220
    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService;->mNotificationManger:Landroid/app/NotificationManager;

    invoke-virtual {v0, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 221
    invoke-direct {p0, v11}, Lcom/android/soundrecorder/RecorderService;->setError(I)V

    .line 222
    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 223
    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    goto :goto_0

    .line 230
    :catch_2
    move-exception v0

    .line 231
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/RecorderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 232
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    if-eq v1, v11, :cond_5

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    if-ne v0, v9, :cond_6

    :cond_5
    move v0, v8

    .line 234
    :goto_1
    iget-object v1, p0, Lcom/android/soundrecorder/RecorderService;->mNotificationManger:Landroid/app/NotificationManager;

    invoke-virtual {v1, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 235
    if-eqz v0, :cond_7

    .line 236
    invoke-direct {p0, v9}, Lcom/android/soundrecorder/RecorderService;->setError(I)V

    .line 240
    :goto_2
    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 241
    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    goto :goto_0

    :cond_6
    move v0, v10

    .line 232
    goto :goto_1

    .line 238
    :cond_7
    invoke-direct {p0, v11}, Lcom/android/soundrecorder/RecorderService;->setError(I)V

    goto :goto_2
.end method

.method public state()I
    .locals 1

    .prologue
    .line 102
    sget v0, Lcom/android/soundrecorder/RecorderService;->mState:I

    return v0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService;->mNotificationManger:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 366
    invoke-virtual {p0}, Lcom/android/soundrecorder/RecorderService;->stopRecording()V

    .line 367
    invoke-virtual {p0}, Lcom/android/soundrecorder/RecorderService;->stopPlayback()V

    .line 368
    return-void
.end method

.method public stopPlayback()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 362
    :goto_0
    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 359
    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 360
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/RecorderService;->mPlayer:Landroid/media/MediaPlayer;

    .line 361
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/RecorderService;->setState(I)V

    goto :goto_0
.end method

.method public stopRecorderService()V
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/android/soundrecorder/RecorderService;->mServiceStartId:I

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/RecorderService;->stopSelf(I)V

    .line 147
    return-void
.end method

.method public stopRecording()V
    .locals 4

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    .line 328
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 321
    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/soundrecorder/RecorderService;->mSampleStart:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/soundrecorder/RecorderService;->mSampleLength:I

    .line 326
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/RecorderService;->setState(I)V

    goto :goto_0
.end method
