.class public Lnet/yostore/aws/sqlite/entity/UploadQueue;
.super Ljava/lang/Object;
.source "UploadQueue.java"


# instance fields
.field private attr:Ljava/lang/String;

.field private batchId:J

.field private fileName:Ljava/lang/String;

.field private fileUrl:Ljava/lang/String;

.field private id:J

.field private mediaRowId:J

.field private pfid:J

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const-wide/16 v0, -0x3e7

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/UploadQueue;->id:J

    .line 6
    iput-wide v2, p0, Lnet/yostore/aws/sqlite/entity/UploadQueue;->mediaRowId:J

    .line 9
    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/UploadQueue;->pfid:J

    .line 11
    iput-wide v2, p0, Lnet/yostore/aws/sqlite/entity/UploadQueue;->batchId:J

    .line 3
    return-void
.end method


# virtual methods
.method public UploadQueue()V
    .locals 0

    .prologue
    .line 14
    return-void
.end method

.method public getAttribute()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lnet/yostore/aws/sqlite/entity/UploadQueue;->attr:Ljava/lang/String;

    return-object v0
.end method

.method public getBatchId()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lnet/yostore/aws/sqlite/entity/UploadQueue;->batchId:J

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lnet/yostore/aws/sqlite/entity/UploadQueue;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lnet/yostore/aws/sqlite/entity/UploadQueue;->fileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 18
    iget-wide v0, p0, Lnet/yostore/aws/sqlite/entity/UploadQueue;->id:J

    return-wide v0
.end method

.method public getMediaRowId()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lnet/yostore/aws/sqlite/entity/UploadQueue;->mediaRowId:J

    return-wide v0
.end method

.method public getParentFolderId()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lnet/yostore/aws/sqlite/entity/UploadQueue;->pfid:J

    return-wide v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lnet/yostore/aws/sqlite/entity/UploadQueue;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setAttribute(Ljava/lang/String;)V
    .locals 0
    .parameter "attr"

    .prologue
    .line 65
    iput-object p1, p0, Lnet/yostore/aws/sqlite/entity/UploadQueue;->attr:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setBatchId(J)V
    .locals 0
    .parameter "batchId"

    .prologue
    .line 79
    iput-wide p1, p0, Lnet/yostore/aws/sqlite/entity/UploadQueue;->batchId:J

    .line 80
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"

    .prologue
    .line 53
    iput-object p1, p0, Lnet/yostore/aws/sqlite/entity/UploadQueue;->fileName:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setFileUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "fileUrl"

    .prologue
    .line 43
    iput-object p1, p0, Lnet/yostore/aws/sqlite/entity/UploadQueue;->fileUrl:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 23
    iput-wide p1, p0, Lnet/yostore/aws/sqlite/entity/UploadQueue;->id:J

    .line 24
    return-void
.end method

.method public setMediaRowId(J)V
    .locals 0
    .parameter "mediaRowId"

    .prologue
    .line 33
    iput-wide p1, p0, Lnet/yostore/aws/sqlite/entity/UploadQueue;->mediaRowId:J

    .line 34
    return-void
.end method

.method public setParentFolderId(J)V
    .locals 0
    .parameter "pfid"

    .prologue
    .line 57
    iput-wide p1, p0, Lnet/yostore/aws/sqlite/entity/UploadQueue;->pfid:J

    .line 58
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .parameter "userName"

    .prologue
    .line 89
    iput-object p1, p0, Lnet/yostore/aws/sqlite/entity/UploadQueue;->userName:Ljava/lang/String;

    .line 90
    return-void
.end method
