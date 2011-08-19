.class public Lnet/yostore/aws/api/entity/DirectUploadRequest;
.super Ljava/lang/Object;
.source "DirectUploadRequest.java"


# instance fields
.field attribute:Ljava/lang/String;

.field data:[B

.field file:Ljava/io/File;

.field fileName:Ljava/lang/String;

.field fileid:J

.field parentid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-wide/16 v0, -0x3e7

    iput-wide v0, p0, Lnet/yostore/aws/api/entity/DirectUploadRequest;->fileid:J

    .line 6
    return-void
.end method


# virtual methods
.method public getAttribute()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lnet/yostore/aws/api/entity/DirectUploadRequest;->attribute:Ljava/lang/String;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lnet/yostore/aws/api/entity/DirectUploadRequest;->data:[B

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lnet/yostore/aws/api/entity/DirectUploadRequest;->file:Ljava/io/File;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lnet/yostore/aws/api/entity/DirectUploadRequest;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileid()J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lnet/yostore/aws/api/entity/DirectUploadRequest;->fileid:J

    return-wide v0
.end method

.method public getParentid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lnet/yostore/aws/api/entity/DirectUploadRequest;->parentid:Ljava/lang/String;

    return-object v0
.end method

.method public setAttribute(Ljava/lang/String;)V
    .locals 0
    .parameter "attribute"

    .prologue
    .line 53
    iput-object p1, p0, Lnet/yostore/aws/api/entity/DirectUploadRequest;->attribute:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setData([B)V
    .locals 0
    .parameter "data"

    .prologue
    .line 31
    iput-object p1, p0, Lnet/yostore/aws/api/entity/DirectUploadRequest;->data:[B

    .line 32
    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0
    .parameter "file"

    .prologue
    .line 19
    iput-object p1, p0, Lnet/yostore/aws/api/entity/DirectUploadRequest;->file:Ljava/io/File;

    .line 20
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"

    .prologue
    .line 25
    iput-object p1, p0, Lnet/yostore/aws/api/entity/DirectUploadRequest;->fileName:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setFileid(J)V
    .locals 0
    .parameter "fileid"

    .prologue
    .line 45
    iput-wide p1, p0, Lnet/yostore/aws/api/entity/DirectUploadRequest;->fileid:J

    .line 46
    return-void
.end method

.method public setParentid(Ljava/lang/String;)V
    .locals 0
    .parameter "parentid"

    .prologue
    .line 37
    iput-object p1, p0, Lnet/yostore/aws/api/entity/DirectUploadRequest;->parentid:Ljava/lang/String;

    .line 38
    return-void
.end method
