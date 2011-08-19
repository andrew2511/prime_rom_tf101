.class public Lcom/android/vending/model/BaseResponse;
.super Ljava/lang/Object;
.source "BaseResponse.java"


# instance fields
.field private mPrefetchedBundles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/PrefetchedBundle;",
            ">;"
        }
    .end annotation
.end field

.field protected final mProtoBufType:Lcom/google/common/io/protocol/ProtoBufType;

.field protected final mResponseGroupField:I

.field protected mResponseProperties:Lcom/android/vending/model/ResponseProperties;

.field protected mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>(Lcom/android/vending/model/BaseResponse;)V
    .locals 1
    .parameter "baseResponse"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iget-object v0, p1, Lcom/android/vending/model/BaseResponse;->mProtoBufType:Lcom/google/common/io/protocol/ProtoBufType;

    iput-object v0, p0, Lcom/android/vending/model/BaseResponse;->mProtoBufType:Lcom/google/common/io/protocol/ProtoBufType;

    .line 36
    iget v0, p1, Lcom/android/vending/model/BaseResponse;->mResponseGroupField:I

    iput v0, p0, Lcom/android/vending/model/BaseResponse;->mResponseGroupField:I

    .line 37
    return-void
.end method

.method protected constructor <init>(Lcom/google/common/io/protocol/ProtoBufType;I)V
    .locals 2
    .parameter "protoBufType"
    .parameter "responseGroupField"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "protoBufType cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    iput-object p1, p0, Lcom/android/vending/model/BaseResponse;->mProtoBufType:Lcom/google/common/io/protocol/ProtoBufType;

    .line 50
    iput p2, p0, Lcom/android/vending/model/BaseResponse;->mResponseGroupField:I

    .line 51
    return-void
.end method


# virtual methods
.method public getPrefetchedBundles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/PrefetchedBundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/vending/model/BaseResponse;->mPrefetchedBundles:Ljava/util/List;

    return-object v0
.end method

.method public getResponseProperties()Lcom/android/vending/model/ResponseProperties;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/vending/model/BaseResponse;->mResponseProperties:Lcom/android/vending/model/ResponseProperties;

    return-object v0
.end method

.method public getResponseProto()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/vending/model/BaseResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public readFromResponseGroup(Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 2
    .parameter "responseGroup"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/vending/model/BaseResponse;->mResponseGroupField:I

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/vending/model/BaseResponse;->setProtos(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 95
    return-void
.end method

.method public setProtos(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 3
    .parameter "responseProto"
    .parameter "responseProperties"
    .parameter "responseGroup"

    .prologue
    .line 62
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/vending/model/BaseResponse;->mProtoBufType:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {p1}, Lcom/google/common/io/protocol/ProtoBuf;->getType()Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBufType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProtos: Wrong responseProto type. expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vending/model/BaseResponse;->mProtoBufType:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / actual: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/common/io/protocol/ProtoBuf;->getType()Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    sget-object v0, Lcom/android/vending/model/ApiDefsMessageTypes;->RESPONSE_PROPERTIES_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {p2}, Lcom/google/common/io/protocol/ProtoBuf;->getType()Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBufType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Response properties proto has wrong ProtoBufType."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    iput-object p1, p0, Lcom/android/vending/model/BaseResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 70
    new-instance v0, Lcom/android/vending/model/ResponseProperties;

    invoke-direct {v0, p2}, Lcom/android/vending/model/ResponseProperties;-><init>(Lcom/google/common/io/protocol/ProtoBuf;)V

    iput-object v0, p0, Lcom/android/vending/model/BaseResponse;->mResponseProperties:Lcom/android/vending/model/ResponseProperties;

    .line 73
    iget-object v0, p0, Lcom/android/vending/model/BaseResponse;->mPrefetchedBundles:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/android/vending/model/BaseResponse;->mPrefetchedBundles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 77
    :cond_2
    return-void
.end method
