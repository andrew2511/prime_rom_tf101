.class public Lcom/android/vending/model/DownloadProgress;
.super Ljava/lang/Object;
.source "DownloadProgress.java"


# instance fields
.field public mAssetId:Ljava/lang/String;

.field public mBytesComplete:J

.field public mBytesTotal:J

.field public mStatusId:I


# direct methods
.method public constructor <init>(Lcom/android/vending/model/LocalAsset;)V
    .locals 2
    .parameter "localAsset"

    .prologue
    const-wide/16 v0, -0x1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide v0, p0, Lcom/android/vending/model/DownloadProgress;->mBytesComplete:J

    .line 26
    iput-wide v0, p0, Lcom/android/vending/model/DownloadProgress;->mBytesTotal:J

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/vending/model/DownloadProgress;->mStatusId:I

    .line 32
    invoke-virtual {p1}, Lcom/android/vending/model/LocalAsset;->getAssetId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/model/DownloadProgress;->mAssetId:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v6, 0x0

    .line 44
    if-eqz p1, :cond_1

    instance-of v2, p1, Lcom/android/vending/model/DownloadProgress;

    if-eqz v2, :cond_1

    .line 45
    move-object v0, p1

    check-cast v0, Lcom/android/vending/model/DownloadProgress;

    move-object v1, v0

    .line 46
    .local v1, other:Lcom/android/vending/model/DownloadProgress;
    iget-object v2, p0, Lcom/android/vending/model/DownloadProgress;->mAssetId:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/vending/model/DownloadProgress;->mAssetId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/vending/model/DownloadProgress;->mBytesComplete:J

    iget-wide v4, v1, Lcom/android/vending/model/DownloadProgress;->mBytesComplete:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/android/vending/model/DownloadProgress;->mBytesTotal:J

    iget-wide v4, v1, Lcom/android/vending/model/DownloadProgress;->mBytesTotal:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/vending/model/DownloadProgress;->mStatusId:I

    iget v3, v1, Lcom/android/vending/model/DownloadProgress;->mStatusId:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    .line 51
    .end local v1           #other:Lcom/android/vending/model/DownloadProgress;
    :goto_0
    return v2

    .restart local v1       #other:Lcom/android/vending/model/DownloadProgress;
    :cond_0
    move v2, v6

    .line 46
    goto :goto_0

    .end local v1           #other:Lcom/android/vending/model/DownloadProgress;
    :cond_1
    move v2, v6

    .line 51
    goto :goto_0
.end method

.method public getLocalAsset()Lcom/android/vending/model/LocalAsset;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/vending/model/DownloadProgress;->mAssetId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/vending/model/LocalAsset;->getById(Ljava/lang/String;)Lcom/android/vending/model/LocalAsset;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/vending/model/DownloadProgress;->mAssetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/vending/model/DownloadProgress;->mBytesComplete:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/vending/model/DownloadProgress;->mBytesTotal:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/vending/model/DownloadProgress;->mStatusId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
