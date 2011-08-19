.class public Lcom/android/vending/model/PrefetchedBundle;
.super Ljava/lang/Object;
.source "PrefetchedBundle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/model/PrefetchedBundle$RequestType;
    }
.end annotation


# instance fields
.field private mRequest:Lcom/android/vending/model/BaseRequest;

.field private mRequestType:Lcom/android/vending/model/PrefetchedBundle$RequestType;

.field private mResponse:Lcom/android/vending/model/BaseResponse;

.field private mResponseGroup:Lcom/google/common/io/protocol/ProtoBuf;


# virtual methods
.method public getRequest()Lcom/android/vending/model/BaseRequest;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/vending/model/PrefetchedBundle;->mRequest:Lcom/android/vending/model/BaseRequest;

    return-object v0
.end method

.method public getRequestType()Lcom/android/vending/model/PrefetchedBundle$RequestType;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/vending/model/PrefetchedBundle;->mRequestType:Lcom/android/vending/model/PrefetchedBundle$RequestType;

    return-object v0
.end method

.method public getResponse()Lcom/android/vending/model/BaseResponse;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/vending/model/PrefetchedBundle;->mResponse:Lcom/android/vending/model/BaseResponse;

    return-object v0
.end method

.method public getResponseGroup()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/vending/model/PrefetchedBundle;->mResponseGroup:Lcom/google/common/io/protocol/ProtoBuf;

    return-object v0
.end method
