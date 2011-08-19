.class Lcom/android/providers/downloads/DownloadThread$InnerState;
.super Ljava/lang/Object;
.source "DownloadThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/DownloadThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerState"
.end annotation


# instance fields
.field public mBytesNotified:I

.field public mBytesSoFar:I

.field public mContinuingDownload:Z

.field public mHeaderContentDisposition:Ljava/lang/String;

.field public mHeaderContentLength:Ljava/lang/String;

.field public mHeaderContentLocation:Ljava/lang/String;

.field public mHeaderETag:Ljava/lang/String;

.field public mTimeLastNotification:J

.field public mTotalBytes:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput v0, p0, Lcom/android/providers/downloads/DownloadThread$InnerState;->mBytesSoFar:I

    .line 108
    iput-boolean v0, p0, Lcom/android/providers/downloads/DownloadThread$InnerState;->mContinuingDownload:Z

    .line 112
    iput v0, p0, Lcom/android/providers/downloads/DownloadThread$InnerState;->mBytesNotified:I

    .line 113
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/providers/downloads/DownloadThread$InnerState;->mTimeLastNotification:J

    .line 114
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/providers/downloads/DownloadThread$InnerState;->mTotalBytes:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/downloads/DownloadThread$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadThread$InnerState;-><init>()V

    return-void
.end method
