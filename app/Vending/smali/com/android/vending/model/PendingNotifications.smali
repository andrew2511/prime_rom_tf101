.class public Lcom/android/vending/model/PendingNotifications;
.super Ljava/lang/Object;
.source "PendingNotifications.java"


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
    iput-object p1, p0, Lcom/android/vending/model/PendingNotifications;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 17
    return-void
.end method


# virtual methods
.method public getNextCheckMillis()J
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 32
    iget-object v0, p0, Lcom/android/vending/model/PendingNotifications;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    const-wide/16 v0, -0x1

    .line 35
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/PendingNotifications;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getNotification(I)Lcom/android/vending/model/DataMessage;
    .locals 3
    .parameter "index"

    .prologue
    .line 24
    new-instance v0, Lcom/android/vending/model/DataMessage;

    iget-object v1, p0, Lcom/android/vending/model/PendingNotifications;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/vending/model/DataMessage;-><init>(Lcom/google/common/io/protocol/ProtoBuf;)V

    return-object v0
.end method

.method public getNumNotifications()I
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/vending/model/PendingNotifications;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    return v0
.end method

.method public hasNextCheckMillis()Z
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/vending/model/PendingNotifications;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method
