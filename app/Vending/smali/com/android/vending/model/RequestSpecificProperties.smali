.class public Lcom/android/vending/model/RequestSpecificProperties;
.super Ljava/lang/Object;
.source "RequestSpecificProperties.java"


# instance fields
.field private mRequestSpecificPropertiesProto:Lcom/google/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/android/vending/model/ApiDefsMessageTypes;->REQUEST_SPECIFIC_PROPERTIES_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/android/vending/model/RequestSpecificProperties;->mRequestSpecificPropertiesProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 16
    return-void
.end method


# virtual methods
.method public getProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/vending/model/RequestSpecificProperties;->mRequestSpecificPropertiesProto:Lcom/google/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public setIfNoneMatch(Ljava/lang/String;)V
    .locals 2
    .parameter "ifNoneMatch"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/vending/model/RequestSpecificProperties;->mRequestSpecificPropertiesProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 21
    return-void
.end method
