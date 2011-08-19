.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/UploadResponseImpl;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/BoxResponseImpl;
.source "UploadResponseImpl.java"

# interfaces
.implements Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadResponse;


# instance fields
.field private uploadResultList:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/BoxResponseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getUploadResultList()Ljava/util/List;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/UploadResponseImpl;->uploadResultList:Ljava/util/List;

    return-object v0
.end method

.method public setUploadResultList(Ljava/util/List;)V
    .locals 0
    .parameter "uploadResultList"

    .prologue
    .line 32
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/UploadResponseImpl;->uploadResultList:Ljava/util/List;

    .line 33
    return-void
.end method
