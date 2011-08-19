.class public Lcom/google/android/music/dl/KeepOnNotificationManager;
.super Ljava/lang/Object;
.source "KeepOnNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/dl/KeepOnNotificationManager$Status;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

.field private static final MIN_TIME_BETWEEN_WIFI_SHOWN:J = 0xa4cb800L

.field private static final NOTIFICATION_ID:I = 0xa

.field private static final PREF_FILE_NAME:Ljava/lang/String; = "DLNotificationPrefs"

.field private static final PREF_WIFI_SHOWN_TIME:Ljava/lang/String; = "wifiShownTime"

.field private static final TAG:Ljava/lang/String; = "KeepOnScheduler"

.field private static final UPDATE_NOTIFICATION_DELAY:J = 0x3e8L

.field private static final UPDATE_NOTIFICATION_MESSAGE_TYPE:I


# instance fields
.field private final mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

.field private final mClearableFlags:I

.field private mCompletedDownloadSize:J

.field private mCompletedDownloads:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentDownload:Lcom/google/android/music/dl/DownloadOrder;

.field private final mFreshTotalDownloadsRunnable:Ljava/lang/Runnable;

.field private final mKeepOnScheduler:Lcom/google/android/music/dl/KeepOnDeviceScheduler;

.field private final mNonClearableFlags:I

.field private mNotification:Landroid/app/Notification;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mService:Landroid/app/Service;

.field private final mShouldKeepOnBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mShuttingDown:Z

.field private mStatus:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

.field private mTotalCompletedDownloads:I

.field private mTotalDownloadSize:J

.field private mTotalDownloads:I

.field private mUpdateDownloadProgressNotificationRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "KeepOnScheduler"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/dl/KeepOnNotificationManager;->LOGV:Z

    .line 49
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    invoke-static {v0}, Lcom/google/android/music/utils/async/AsyncWorkers;->getUniqueMessageType(Lcom/google/android/music/Worker;)I

    move-result v0

    sput v0, Lcom/google/android/music/dl/KeepOnNotificationManager;->UPDATE_NOTIFICATION_MESSAGE_TYPE:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Service;Lcom/google/android/music/dl/BufferProgress;Lcom/google/android/music/dl/KeepOnDeviceScheduler;)V
    .locals 5
    .parameter "service"
    .parameter "bufferProgress"
    .parameter "keepOnScheduler"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mTotalDownloads:I

    .line 60
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mCompletedDownloads:Ljava/util/TreeSet;

    .line 63
    iput v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mTotalCompletedDownloads:I

    .line 66
    iput-wide v3, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mTotalDownloadSize:J

    .line 69
    iput-wide v3, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mCompletedDownloadSize:J

    .line 76
    iput-object v2, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    .line 78
    iput-object v2, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mCurrentDownload:Lcom/google/android/music/dl/DownloadOrder;

    .line 79
    iput-boolean v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mShuttingDown:Z

    .line 82
    const/16 v0, 0x18

    iput v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mClearableFlags:I

    .line 86
    const/16 v0, 0x6a

    iput v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNonClearableFlags:I

    .line 99
    sget-object v0, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;->UNKNOWN:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    iput-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mStatus:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    .line 122
    new-instance v0, Lcom/google/android/music/dl/KeepOnNotificationManager$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/dl/KeepOnNotificationManager$1;-><init>(Lcom/google/android/music/dl/KeepOnNotificationManager;)V

    iput-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mUpdateDownloadProgressNotificationRunnable:Ljava/lang/Runnable;

    .line 298
    new-instance v0, Lcom/google/android/music/dl/KeepOnNotificationManager$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/dl/KeepOnNotificationManager$2;-><init>(Lcom/google/android/music/dl/KeepOnNotificationManager;)V

    iput-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mFreshTotalDownloadsRunnable:Ljava/lang/Runnable;

    .line 318
    new-instance v0, Lcom/google/android/music/dl/KeepOnNotificationManager$3;

    invoke-direct {v0, p0}, Lcom/google/android/music/dl/KeepOnNotificationManager$3;-><init>(Lcom/google/android/music/dl/KeepOnNotificationManager;)V

    iput-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mShouldKeepOnBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    iput-object p1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mService:Landroid/app/Service;

    .line 104
    iput-object p2, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    .line 105
    iput-object p3, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mKeepOnScheduler:Lcom/google/android/music/dl/KeepOnDeviceScheduler;

    .line 107
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mService:Landroid/app/Service;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 110
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mService:Landroid/app/Service;

    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mShouldKeepOnBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.google.android.music.NEW_SHOULDKEEPON"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 113
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mFreshTotalDownloadsRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 114
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lcom/google/android/music/dl/KeepOnNotificationManager;->UPDATE_NOTIFICATION_MESSAGE_TYPE:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/music/dl/KeepOnNotificationManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/music/dl/KeepOnNotificationManager;->updateDownloadProgressNotificationImpl()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/music/dl/KeepOnNotificationManager;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mFreshTotalDownloadsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/dl/KeepOnNotificationManager;)Lcom/google/android/music/dl/KeepOnDeviceScheduler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mKeepOnScheduler:Lcom/google/android/music/dl/KeepOnDeviceScheduler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/music/dl/KeepOnNotificationManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mTotalDownloads:I

    return v0
.end method

.method static synthetic access$302(Lcom/google/android/music/dl/KeepOnNotificationManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mTotalDownloads:I

    return p1
.end method

.method static synthetic access$402(Lcom/google/android/music/dl/KeepOnNotificationManager;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mTotalDownloadSize:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/google/android/music/dl/KeepOnNotificationManager;)Ljava/util/TreeSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mCompletedDownloads:Ljava/util/TreeSet;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/music/dl/KeepOnNotificationManager;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mCompletedDownloadSize:J

    return-wide p1
.end method

.method static synthetic access$702(Lcom/google/android/music/dl/KeepOnNotificationManager;Lcom/google/android/music/dl/DownloadOrder;)Lcom/google/android/music/dl/DownloadOrder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mCurrentDownload:Lcom/google/android/music/dl/DownloadOrder;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/android/music/dl/KeepOnNotificationManager;)Lcom/google/android/music/dl/KeepOnNotificationManager$Status;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mStatus:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/music/dl/KeepOnNotificationManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/music/dl/KeepOnNotificationManager;->removeNotification()V

    return-void
.end method

.method private declared-synchronized createNotification()V
    .locals 3

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    .line 140
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 141
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 142
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    const v1, 0x7f0201d5

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 143
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    const/4 v1, 0x0

    iput v1, v0, Landroid/app/Notification;->defaults:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :cond_0
    monitor-exit p0

    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeNotification()V
    .locals 2

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mService:Landroid/app/Service;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopForeground(Z)V

    .line 150
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :cond_0
    monitor-exit p0

    return-void

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateDownloadProgressNotification(Z)V
    .locals 4
    .parameter "delay"

    .prologue
    .line 130
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    .line 131
    .local v0, bgWorker:Lcom/google/android/music/Worker;
    iget-object v2, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mUpdateDownloadProgressNotificationRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v1

    .line 132
    .local v1, msg:Landroid/os/Message;
    sget v2, Lcom/google/android/music/dl/KeepOnNotificationManager;->UPDATE_NOTIFICATION_MESSAGE_TYPE:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 133
    if-eqz p1, :cond_0

    const-wide/16 v2, 0x3e8

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/Worker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 134
    return-void

    .line 133
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private declared-synchronized updateDownloadProgressNotificationImpl()V
    .locals 9

    .prologue
    .line 215
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mStatus:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    sget-object v6, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;->DOWNLOADING:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v5, v6, :cond_0

    .line 242
    :goto_0
    monitor-exit p0

    return-void

    .line 218
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/music/dl/KeepOnNotificationManager;->createNotification()V

    .line 219
    iget-object v5, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mService:Landroid/app/Service;

    invoke-virtual {v5}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 220
    .local v3, res:Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    new-instance v6, Landroid/widget/RemoteViews;

    iget-object v7, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mService:Landroid/app/Service;

    invoke-virtual {v7}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f04000c

    invoke-direct {v6, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v6, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 222
    iget-object v5, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v6, 0x7f0f003b

    const v7, 0x7f0c00e7

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 224
    iget-object v5, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    const/16 v6, 0x6a

    iput v6, v5, Landroid/app/Notification;->flags:I

    .line 225
    iget-wide v5, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mCompletedDownloadSize:J

    iget-object v7, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mCurrentDownload:Lcom/google/android/music/dl/DownloadOrder;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mCurrentDownload:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v7}, Lcom/google/android/music/dl/DownloadOrder;->getCompleted()J

    move-result-wide v7

    :goto_1
    add-long/2addr v5, v7

    long-to-float v4, v5

    .line 227
    .local v4, totalDownloaded:F
    iget-wide v5, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mTotalDownloadSize:J

    long-to-float v5, v5

    div-float v2, v4, v5

    .line 230
    .local v2, progress:F
    const/16 v5, 0x64

    const/4 v6, 0x0

    const/high16 v7, 0x42c8

    mul-float/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 232
    .local v1, intProgress:I
    iget-object v5, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v6, 0x7f0f003d

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 233
    iget-object v5, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v6, 0x7f0f003e

    const-string v7, "setMax"

    const/16 v8, 0x64

    invoke-virtual {v5, v6, v7, v8}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 234
    iget-object v5, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v6, 0x7f0f003e

    const-string v7, "setProgress"

    invoke-virtual {v5, v6, v7, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 236
    new-instance v0, Landroid/content/Intent;

    iget-object v5, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mService:Landroid/app/Service;

    const-class v6, Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 237
    .local v0, i:Landroid/content/Intent;
    const-string v5, "com.google.android.music.DOWNLOAD_QUEUE"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const/high16 v5, 0x400

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 240
    iget-object v5, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mService:Landroid/app/Service;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 241
    iget-object v5, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mService:Landroid/app/Service;

    const/16 v6, 0xa

    iget-object v7, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    invoke-virtual {v5, v6, v7}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 215
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #intProgress:I
    .end local v2           #progress:F
    .end local v3           #res:Landroid/content/res/Resources;
    .end local v4           #totalDownloaded:F
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 225
    .restart local v3       #res:Landroid/content/res/Resources;
    :cond_1
    const-wide/16 v7, 0x0

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized notifyAllDownloadsFinished()V
    .locals 7

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mStatus:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    sget-object v2, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;->DOWNLOADING:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    if-ne v1, v2, :cond_1

    .line 246
    sget-object v1, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;->DONE:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    iput-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mStatus:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    .line 249
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mTotalDownloads:I

    .line 250
    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    sget v2, Lcom/google/android/music/dl/KeepOnNotificationManager;->UPDATE_NOTIFICATION_MESSAGE_TYPE:I

    invoke-virtual {v1, v2}, Lcom/google/android/music/Worker;->removeMessages(I)V

    .line 251
    invoke-direct {p0}, Lcom/google/android/music/dl/KeepOnNotificationManager;->createNotification()V

    .line 252
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mService:Landroid/app/Service;

    invoke-virtual {v1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 253
    .local v0, res:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mService:Landroid/app/Service;

    invoke-virtual {v3}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f04000b

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 255
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x7f0f003b

    const v3, 0x7f0c00ea

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 257
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mService:Landroid/app/Service;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Service;->stopForeground(Z)V

    .line 258
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    const/16 v2, 0x18

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 259
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    iget-object v2, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mService:Landroid/app/Service;

    const/4 v3, 0x0

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mService:Landroid/app/Service;

    const-class v6, Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 261
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 262
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mStatus:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    sget-object v2, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;->DONE:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    if-eq v1, v2, :cond_0

    .line 263
    invoke-direct {p0}, Lcom/google/android/music/dl/KeepOnNotificationManager;->removeNotification()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 245
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized notifyDownloadProgress(Lcom/google/android/music/dl/DownloadOrder;)V
    .locals 5
    .parameter "order"

    .prologue
    .line 268
    monitor-enter p0

    :try_start_0
    iget-object v1, p1, Lcom/google/android/music/dl/DownloadOrder;->scheduledBy:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    sget-object v2, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;->KEEP_ON_DEVICE:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    if-eq v1, v2, :cond_1

    .line 269
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mStatus:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    sget-object v2, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;->DONE:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    if-eq v1, v2, :cond_0

    .line 270
    invoke-direct {p0}, Lcom/google/android/music/dl/KeepOnNotificationManager;->removeNotification()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 275
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mStatus:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    sget-object v2, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;->NOT_ENABLED:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    if-eq v1, v2, :cond_0

    .line 276
    sget-object v1, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;->DOWNLOADING:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    iput-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mStatus:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    .line 277
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mCompletedDownloads:Ljava/util/TreeSet;

    iget-wide v2, p1, Lcom/google/android/music/dl/DownloadOrder;->xId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 278
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v0

    .line 279
    .local v0, status:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mCurrentDownload:Lcom/google/android/music/dl/DownloadOrder;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mCurrentDownload:Lcom/google/android/music/dl/DownloadOrder;

    iget-wide v1, v1, Lcom/google/android/music/dl/DownloadOrder;->xId:J

    iget-wide v3, p1, Lcom/google/android/music/dl/DownloadOrder;->xId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    sget-object v1, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->COMPLETED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-ne v0, v1, :cond_3

    .line 281
    iget-wide v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mCompletedDownloadSize:J

    iget-wide v3, p1, Lcom/google/android/music/dl/DownloadOrder;->length:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mCompletedDownloadSize:J

    .line 282
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mCurrentDownload:Lcom/google/android/music/dl/DownloadOrder;

    .line 283
    iget v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mTotalCompletedDownloads:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mTotalCompletedDownloads:I

    .line 284
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mCompletedDownloads:Ljava/util/TreeSet;

    iget-wide v2, p1, Lcom/google/android/music/dl/DownloadOrder;->xId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_2
    :goto_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/music/dl/KeepOnNotificationManager;->updateDownloadProgressNotification(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 268
    .end local v0           #status:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 285
    .restart local v0       #status:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    :cond_3
    :try_start_2
    sget-object v1, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->DOWNLOADING:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-ne v0, v1, :cond_2

    .line 286
    iput-object p1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mCurrentDownload:Lcom/google/android/music/dl/DownloadOrder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized notifyDownloadsStarting()V
    .locals 2

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mTotalDownloads:I

    if-nez v0, :cond_0

    .line 202
    const-string v0, "KeepOnScheduler"

    const-string v1, "notifyDownloadsStarting, but mTotalDownloads == 0"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mFreshTotalDownloadsRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 205
    :cond_0
    iget v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mTotalDownloads:I

    if-nez v0, :cond_1

    .line 206
    const-string v0, "KeepOnScheduler"

    const-string v1, "notifyDownloadsStarting, but no downloads available"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    sget-object v0, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;->NO_DOWNLOADS:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    iput-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mStatus:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    .line 208
    invoke-direct {p0}, Lcom/google/android/music/dl/KeepOnNotificationManager;->removeNotification()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :goto_0
    monitor-exit p0

    return-void

    .line 211
    :cond_1
    :try_start_1
    sget-object v0, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;->DOWNLOADING:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    iput-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mStatus:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyEnabledStateChanged(ZZZ)V
    .locals 8
    .parameter "enabled"
    .parameter "fromExcessiveErrors"
    .parameter "notifyWifiLost"

    .prologue
    .line 157
    monitor-enter p0

    if-nez p1, :cond_3

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mStatus:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    .line 159
    .local v0, previousState:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;
    sget-object v2, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;->NOT_ENABLED:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    iput-object v2, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mStatus:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    .line 160
    invoke-direct {p0}, Lcom/google/android/music/dl/KeepOnNotificationManager;->createNotification()V

    .line 161
    iget-object v2, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    new-instance v3, Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mService:Landroid/app/Service;

    invoke-virtual {v4}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f04000b

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 163
    iget-object v2, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    const/16 v3, 0x18

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 164
    iget-object v2, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mService:Landroid/app/Service;

    invoke-virtual {v2}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 165
    .local v1, res:Landroid/content/res/Resources;
    if-eqz p2, :cond_1

    .line 166
    iget-object v2, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v3, 0x7f0f003b

    const v4, 0x7f0c00e9

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 168
    iget-object v2, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    iget-object v3, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mService:Landroid/app/Service;

    const/4 v4, 0x0

    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mService:Landroid/app/Service;

    const-class v7, Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 170
    iget-object v2, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mService:Landroid/app/Service;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Service;->stopForeground(Z)V

    .line 171
    iget-object v2, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v3, 0xa

    iget-object v4, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    .end local v0           #previousState:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;
    .end local v1           #res:Landroid/content/res/Resources;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 173
    .restart local v0       #previousState:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;
    .restart local v1       #res:Landroid/content/res/Resources;
    :cond_1
    if-eqz p3, :cond_2

    :try_start_1
    sget-object v2, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;->DOWNLOADING:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    if-ne v0, v2, :cond_2

    .line 174
    iget-object v2, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v3, 0x7f0f003b

    const v4, 0x7f0c00e8

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 176
    iget-object v2, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mService:Landroid/app/Service;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Service;->stopForeground(Z)V

    .line 177
    iget-object v2, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    const/16 v3, 0x18

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 178
    iget-object v2, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    iget-object v3, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mService:Landroid/app/Service;

    const/4 v4, 0x0

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 180
    iget-object v2, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v3, 0xa

    iget-object v4, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 157
    .end local v0           #previousState:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;
    .end local v1           #res:Landroid/content/res/Resources;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 182
    .restart local v0       #previousState:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;
    .restart local v1       #res:Landroid/content/res/Resources;
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mStatus:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    sget-object v3, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;->DONE:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    if-eq v2, v3, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/google/android/music/dl/KeepOnNotificationManager;->removeNotification()V

    goto :goto_0

    .line 188
    .end local v0           #previousState:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;
    .end local v1           #res:Landroid/content/res/Resources;
    :cond_3
    iget v2, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mTotalDownloads:I

    if-lez v2, :cond_4

    .line 189
    sget-object v2, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;->DOWNLOADING:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    iput-object v2, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mStatus:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    .line 194
    :goto_1
    iget-object v2, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mStatus:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    sget-object v3, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;->DONE:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    if-eq v2, v3, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/google/android/music/dl/KeepOnNotificationManager;->removeNotification()V

    goto :goto_0

    .line 191
    :cond_4
    sget-object v2, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;->NO_DOWNLOADS:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    iput-object v2, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mStatus:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mShuttingDown:Z

    .line 118
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mService:Landroid/app/Service;

    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mShouldKeepOnBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 119
    invoke-direct {p0}, Lcom/google/android/music/dl/KeepOnNotificationManager;->removeNotification()V

    .line 120
    return-void
.end method
