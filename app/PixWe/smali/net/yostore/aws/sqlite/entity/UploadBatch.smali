.class public Lnet/yostore/aws/sqlite/entity/UploadBatch;
.super Ljava/lang/Object;
.source "UploadBatch.java"


# instance fields
.field private batchId:J

.field private folderId:J

.field private folderName:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/UploadBatch;->batchId:J

    .line 7
    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/UploadBatch;->folderId:J

    .line 3
    return-void
.end method


# virtual methods
.method public UploadQueue()V
    .locals 0

    .prologue
    .line 10
    return-void
.end method

.method public getBatchId()J
    .locals 2

    .prologue
    .line 14
    iget-wide v0, p0, Lnet/yostore/aws/sqlite/entity/UploadBatch;->batchId:J

    return-wide v0
.end method

.method public getFolderId()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lnet/yostore/aws/sqlite/entity/UploadBatch;->folderId:J

    return-wide v0
.end method

.method public getFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lnet/yostore/aws/sqlite/entity/UploadBatch;->folderName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lnet/yostore/aws/sqlite/entity/UploadBatch;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setBatchId(J)V
    .locals 0
    .parameter "batchId"

    .prologue
    .line 19
    iput-wide p1, p0, Lnet/yostore/aws/sqlite/entity/UploadBatch;->batchId:J

    .line 20
    return-void
.end method

.method public setFolderId(J)V
    .locals 0
    .parameter "folderId"

    .prologue
    .line 51
    iput-wide p1, p0, Lnet/yostore/aws/sqlite/entity/UploadBatch;->folderId:J

    .line 52
    return-void
.end method

.method public setFolderName(Ljava/lang/String;)V
    .locals 0
    .parameter "folderName"

    .prologue
    .line 35
    iput-object p1, p0, Lnet/yostore/aws/sqlite/entity/UploadBatch;->folderName:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .parameter "userName"

    .prologue
    .line 61
    iput-object p1, p0, Lnet/yostore/aws/sqlite/entity/UploadBatch;->userName:Ljava/lang/String;

    .line 62
    return-void
.end method
