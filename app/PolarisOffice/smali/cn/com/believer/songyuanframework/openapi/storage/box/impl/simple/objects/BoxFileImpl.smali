.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFileImpl;
.super Ljava/lang/Object;
.source "BoxFileImpl.java"

# interfaces
.implements Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;


# instance fields
.field private created:J

.field private description:Ljava/lang/String;

.field private fileId:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private folderId:Ljava/lang/String;

.field private sha1:Ljava/lang/String;

.field private shared:Z

.field private sharedName:Ljava/lang/String;

.field private size:J

.field private updated:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreated()J
    .locals 2

    .prologue
    .line 168
    iget-wide v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFileImpl;->created:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFileImpl;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFileImpl;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFileImpl;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFileImpl;->folderId:Ljava/lang/String;

    return-object v0
.end method

.method public getSha1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFileImpl;->sha1:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFileImpl;->sharedName:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFileImpl;->size:J

    return-wide v0
.end method

.method public getUpdated()J
    .locals 2

    .prologue
    .line 183
    iget-wide v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFileImpl;->updated:J

    return-wide v0
.end method

.method public isShared()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFileImpl;->shared:Z

    return v0
.end method

.method public setCreated(J)V
    .locals 0
    .parameter "created"

    .prologue
    .line 176
    iput-wide p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFileImpl;->created:J

    .line 177
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 146
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFileImpl;->description:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setFileId(Ljava/lang/String;)V
    .locals 0
    .parameter "fileId"

    .prologue
    .line 56
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFileImpl;->fileId:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"

    .prologue
    .line 71
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFileImpl;->fileName:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setFolderId(Ljava/lang/String;)V
    .locals 0
    .parameter "folderId"

    .prologue
    .line 86
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFileImpl;->folderId:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setSha1(Ljava/lang/String;)V
    .locals 0
    .parameter "sha1"

    .prologue
    .line 161
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFileImpl;->sha1:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setShared(Z)V
    .locals 0
    .parameter "shared"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFileImpl;->shared:Z

    .line 102
    return-void
.end method

.method public setSharedName(Ljava/lang/String;)V
    .locals 0
    .parameter "sharedName"

    .prologue
    .line 116
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFileImpl;->sharedName:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setSize(J)V
    .locals 0
    .parameter "size"

    .prologue
    .line 131
    iput-wide p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFileImpl;->size:J

    .line 132
    return-void
.end method

.method public setUpdated(J)V
    .locals 0
    .parameter "updated"

    .prologue
    .line 191
    iput-wide p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFileImpl;->updated:J

    .line 192
    return-void
.end method
