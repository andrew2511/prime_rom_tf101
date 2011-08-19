.class public abstract Lcom/android/gallery3d/data/LocalMediaItem;
.super Lcom/android/gallery3d/data/MediaItem;
.source "LocalMediaItem.java"


# instance fields
.field public bucketId:I

.field public caption:Ljava/lang/String;

.field public dateAddedInSec:J

.field public dateModifiedInSec:J

.field public dateTakenInMs:J

.field public filePath:Ljava/lang/String;

.field public fileSize:J

.field public id:I

.field public latitude:D

.field public longitude:D

.field public mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;J)V
    .locals 2
    .parameter "path"
    .parameter "version"

    .prologue
    const-wide/16 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/data/MediaItem;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 40
    iput-wide v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->latitude:D

    .line 41
    iput-wide v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->longitude:D

    .line 50
    return-void
.end method


# virtual methods
.method public getBucketId()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->bucketId:I

    return v0
.end method

.method public getDateInMs()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateTakenInMs:J

    return-wide v0
.end method

.method public getDetails()Lcom/android/gallery3d/data/MediaDetails;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 82
    invoke-super {p0}, Lcom/android/gallery3d/data/MediaItem;->getDetails()Lcom/android/gallery3d/data/MediaDetails;

    move-result-object v0

    .line 83
    .local v0, details:Lcom/android/gallery3d/data/MediaDetails;
    const/16 v2, 0xc8

    iget-object v3, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 84
    iget-object v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;

    invoke-virtual {v0, v7, v2}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 85
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    .line 86
    .local v1, formater:Ljava/text/DateFormat;
    const/4 v2, 0x3

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateTakenInMs:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 88
    iget-wide v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->latitude:D

    iget-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->longitude:D

    invoke-static {v2, v3, v4, v5}, Lcom/android/gallery3d/util/Utils;->isValidLocation(DD)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    const/4 v2, 0x4

    const/4 v3, 0x2

    new-array v3, v3, [D

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/android/gallery3d/data/LocalMediaItem;->latitude:D

    aput-wide v5, v3, v4

    iget-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->longitude:D

    aput-wide v4, v3, v7

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 91
    :cond_0
    iget-wide v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->fileSize:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    const/16 v2, 0xa

    iget-wide v3, p0, Lcom/android/gallery3d/data/LocalMediaItem;->fileSize:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 92
    :cond_1
    return-object v0
.end method

.method public getLatLong([D)V
    .locals 3
    .parameter "latLong"

    .prologue
    .line 64
    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->latitude:D

    aput-wide v1, p1, v0

    .line 65
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->longitude:D

    aput-wide v1, p1, v0

    .line 66
    return-void
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->fileSize:J

    return-wide v0
.end method

.method protected updateContent(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/LocalMediaItem;->updateFromCursor(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {}, Lcom/android/gallery3d/data/LocalMediaItem;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mDataVersion:J

    .line 78
    :cond_0
    return-void
.end method

.method protected abstract updateFromCursor(Landroid/database/Cursor;)Z
.end method
