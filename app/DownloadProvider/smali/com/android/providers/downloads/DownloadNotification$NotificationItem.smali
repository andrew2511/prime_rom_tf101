.class Lcom/android/providers/downloads/DownloadNotification$NotificationItem;
.super Ljava/lang/Object;
.source "DownloadNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/DownloadNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationItem"
.end annotation


# instance fields
.field mDescription:Ljava/lang/String;

.field mId:I

.field mPackageName:Ljava/lang/String;

.field mPausedText:Ljava/lang/String;

.field mTitleCount:I

.field mTitles:[Ljava/lang/String;

.field mTotalCurrent:J

.field mTotalTotal:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-wide v0, p0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTotalCurrent:J

    .line 68
    iput-wide v0, p0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTotalTotal:J

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTitleCount:I

    .line 72
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTitles:[Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mPausedText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method addItem(Ljava/lang/String;JJ)V
    .locals 4
    .parameter "title"
    .parameter "currentBytes"
    .parameter "totalBytes"

    .prologue
    const-wide/16 v2, -0x1

    .line 79
    iget-wide v0, p0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTotalCurrent:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTotalCurrent:J

    .line 80
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTotalTotal:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 81
    :cond_0
    iput-wide v2, p0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTotalTotal:J

    .line 85
    :goto_0
    iget v0, p0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTitleCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 86
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTitles:[Ljava/lang/String;

    iget v1, p0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTitleCount:I

    aput-object p1, v0, v1

    .line 88
    :cond_1
    iget v0, p0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTitleCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTitleCount:I

    .line 89
    return-void

    .line 83
    :cond_2
    iget-wide v0, p0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTotalTotal:J

    add-long/2addr v0, p4

    iput-wide v0, p0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTotalTotal:J

    goto :goto_0
.end method
