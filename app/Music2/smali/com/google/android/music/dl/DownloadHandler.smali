.class public abstract Lcom/google/android/music/dl/DownloadHandler;
.super Ljava/lang/Object;
.source "DownloadHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadHandler"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

.field protected final mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadHandler;->mContext:Landroid/content/Context;

    .line 32
    invoke-static {p1}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadHandler;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 33
    return-void
.end method


# virtual methods
.method public abstract downloadSucceeded()Z
.end method

.method public abstract downloadTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public populateOrder(Lcom/google/android/music/dl/DownloadOrder;Lcom/google/android/music/store/MusicFile;)V
    .locals 3
    .parameter "order"
    .parameter "summaryMusicFile"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    .line 42
    invoke-virtual {p2}, Lcom/google/android/music/store/MusicFile;->getSize()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/google/android/music/dl/DownloadOrder;->length:J

    .line 43
    invoke-virtual {p2}, Lcom/google/android/music/store/MusicFile;->getDurationInMilliSec()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/google/android/music/dl/DownloadOrder;->duration:J

    .line 44
    invoke-virtual {p2}, Lcom/google/android/music/store/MusicFile;->getLocalCopyPath()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, location:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 48
    iget-object v1, p1, Lcom/google/android/music/dl/DownloadOrder;->scheduledBy:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    sget-object v2, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;->KEEP_ON_DEVICE:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    if-ne v1, v2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/music/store/MusicFile;->getLocalCopyType()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 51
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/music/dl/DownloadOrder;->setLocalLocation(Ljava/io/File;Z)V

    .line 52
    sget-object v1, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->COMPLETED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    invoke-virtual {p1, v1}, Lcom/google/android/music/dl/DownloadOrder;->setDownloadStatus(Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;)V

    .line 55
    :cond_1
    return-void
.end method
