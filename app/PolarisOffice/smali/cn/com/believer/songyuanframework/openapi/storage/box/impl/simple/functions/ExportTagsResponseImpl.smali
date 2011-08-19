.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/ExportTagsResponseImpl;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/BoxResponseImpl;
.source "ExportTagsResponseImpl.java"

# interfaces
.implements Lcn/com/believer/songyuanframework/openapi/storage/box/functions/ExportTagsResponse;


# instance fields
.field private encodedTags:Ljava/lang/String;

.field private tagList:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/BoxResponseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getEncodedTags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/ExportTagsResponseImpl;->encodedTags:Ljava/lang/String;

    return-object v0
.end method

.method public getTagList()Ljava/util/List;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/ExportTagsResponseImpl;->tagList:Ljava/util/List;

    return-object v0
.end method

.method public setEncodedTags(Ljava/lang/String;)V
    .locals 0
    .parameter "encodedTags"

    .prologue
    .line 50
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/ExportTagsResponseImpl;->encodedTags:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setTagList(Ljava/util/List;)V
    .locals 0
    .parameter "tagList"

    .prologue
    .line 35
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/ExportTagsResponseImpl;->tagList:Ljava/util/List;

    .line 36
    return-void
.end method
