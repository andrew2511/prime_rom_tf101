.class public Lcom/android/vending/model/DataMessage;
.super Ljava/lang/Object;
.source "DataMessage.java"


# instance fields
.field private mProto:Lcom/google/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>(Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 0
    .parameter "proto"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/vending/model/DataMessage;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 17
    return-void
.end method


# virtual methods
.method public getAppData(I)Lcom/android/vending/model/AppData;
    .locals 3
    .parameter "index"

    .prologue
    .line 28
    new-instance v0, Lcom/android/vending/model/AppData;

    iget-object v1, p0, Lcom/android/vending/model/DataMessage;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/vending/model/AppData;-><init>(Lcom/google/common/io/protocol/ProtoBuf;)V

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/vending/model/DataMessage;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumAppData()I
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/vending/model/DataMessage;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    return v0
.end method
