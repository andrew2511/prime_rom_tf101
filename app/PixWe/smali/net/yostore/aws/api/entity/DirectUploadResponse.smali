.class public Lnet/yostore/aws/api/entity/DirectUploadResponse;
.super Lnet/yostore/aws/api/entity/ApiResponse;
.source "DirectUploadResponse.java"


# instance fields
.field private _fileId:Ljava/lang/String;

.field private _fileName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lnet/yostore/aws/api/entity/ApiResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getFileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lnet/yostore/aws/api/entity/DirectUploadResponse;->_fileId:Ljava/lang/String;

    return-object v0
.end method

.method public getRawFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lnet/yostore/aws/api/entity/DirectUploadResponse;->_fileName:Ljava/lang/String;

    return-object v0
.end method

.method public setFileId(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 8
    iput-object p1, p0, Lnet/yostore/aws/api/entity/DirectUploadResponse;->_fileId:Ljava/lang/String;

    return-void
.end method

.method public setRawFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 12
    iput-object p1, p0, Lnet/yostore/aws/api/entity/DirectUploadResponse;->_fileName:Ljava/lang/String;

    return-void
.end method
