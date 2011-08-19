.class public Lcom/google/android/youtube/videos/PinManager$PinState;
.super Ljava/lang/Object;
.source "PinManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/PinManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PinState"
.end annotation


# instance fields
.field private bytesDownloaded:J

.field private bytesTotal:J

.field private downloadStatus:Lcom/google/android/youtube/core/transfer/Transfer$Status;

.field private isPinned:Z

.field private licenseExpirationDate:Ljava/util/Date;

.field private operationInProgress:Z

.field final synthetic this$0:Lcom/google/android/youtube/videos/PinManager;

.field private final videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/videos/PinManager;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "videoId"

    .prologue
    const/4 v0, 0x0

    .line 516
    iput-object p1, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->this$0:Lcom/google/android/youtube/videos/PinManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    iput-boolean v0, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->isPinned:Z

    .line 514
    iput-boolean v0, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->operationInProgress:Z

    .line 517
    iput-object p2, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->videoId:Ljava/lang/String;

    .line 518
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/youtube/videos/PinManager$PinState;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 507
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->isPinned:Z

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/youtube/videos/PinManager$PinState;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 507
    iput-boolean p1, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->isPinned:Z

    return p1
.end method

.method static synthetic access$202(Lcom/google/android/youtube/videos/PinManager$PinState;Lcom/google/android/youtube/core/transfer/Transfer$Status;)Lcom/google/android/youtube/core/transfer/Transfer$Status;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 507
    iput-object p1, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->downloadStatus:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/youtube/videos/PinManager$PinState;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 507
    iget-wide v0, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->bytesDownloaded:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/google/android/youtube/videos/PinManager$PinState;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 507
    iput-wide p1, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->bytesDownloaded:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/google/android/youtube/videos/PinManager$PinState;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 507
    iget-wide v0, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->bytesTotal:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/google/android/youtube/videos/PinManager$PinState;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 507
    iput-wide p1, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->bytesTotal:J

    return-wide p1
.end method

.method static synthetic access$602(Lcom/google/android/youtube/videos/PinManager$PinState;Ljava/util/Date;)Ljava/util/Date;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 507
    iput-object p1, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->licenseExpirationDate:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/android/youtube/videos/PinManager$PinState;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 507
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->operationInProgress:Z

    return v0
.end method

.method static synthetic access$802(Lcom/google/android/youtube/videos/PinManager$PinState;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 507
    iput-boolean p1, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->operationInProgress:Z

    return p1
.end method

.method static synthetic access$900(Lcom/google/android/youtube/videos/PinManager$PinState;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 507
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->videoId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public fileExists()Z
    .locals 4

    .prologue
    .line 549
    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->this$0:Lcom/google/android/youtube/videos/PinManager;

    invoke-static {v1}, Lcom/google/android/youtube/videos/PinManager;->access$1400(Lcom/google/android/youtube/videos/PinManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->this$0:Lcom/google/android/youtube/videos/PinManager;

    invoke-static {v2}, Lcom/google/android/youtube/videos/PinManager;->access$1500(Lcom/google/android/youtube/videos/PinManager;)Lcom/google/android/youtube/core/model/UserAuth;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->videoId:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/google/android/youtube/videos/utils/OfflineUtil;->getPathForVideoId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    goto :goto_0
.end method

.method public getBytesDownloaded()J
    .locals 2

    .prologue
    .line 537
    iget-wide v0, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->bytesDownloaded:J

    return-wide v0
.end method

.method public getBytesTotal()J
    .locals 2

    .prologue
    .line 533
    iget-wide v0, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->bytesTotal:J

    return-wide v0
.end method

.method public getDownloadStatus()Lcom/google/android/youtube/core/transfer/Transfer$Status;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->downloadStatus:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    return-object v0
.end method

.method public getLicenseExpirationDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->licenseExpirationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public isOperationInProgress()Z
    .locals 1

    .prologue
    .line 541
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->operationInProgress:Z

    return v0
.end method

.method public isPinned()Z
    .locals 1

    .prologue
    .line 545
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->isPinned:Z

    return v0
.end method
