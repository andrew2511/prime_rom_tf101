.class public Lcom/android/vending/model/ResponseProperties;
.super Ljava/lang/Object;
.source "ResponseProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/model/ResponseProperties$ResultType;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mProtoBuf:Lcom/google/common/io/protocol/ProtoBuf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/android/vending/model/ResponseProperties;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/vending/model/ResponseProperties;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 2
    .parameter "protoBuf"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    sget-boolean v0, Lcom/android/vending/model/ResponseProperties;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/common/io/protocol/ProtoBuf;->getType()Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    sget-object v1, Lcom/android/vending/model/ApiDefsMessageTypes;->RESPONSE_PROPERTIES_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBufType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 69
    :cond_0
    iput-object p1, p0, Lcom/android/vending/model/ResponseProperties;->mProtoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    .line 70
    return-void
.end method


# virtual methods
.method public getEtag()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 85
    iget-object v0, p0, Lcom/android/vending/model/ResponseProperties;->mProtoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/model/ResponseProperties;->mProtoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getMaxAge()I
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 90
    iget-object v0, p0, Lcom/android/vending/model/ResponseProperties;->mProtoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/model/ResponseProperties;->mProtoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMaxAgeConsumable()I
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 95
    iget-object v0, p0, Lcom/android/vending/model/ResponseProperties;->mProtoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/model/ResponseProperties;->mProtoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/vending/model/ResponseProperties;->mProtoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public getResult()Lcom/android/vending/model/ResponseProperties$ResultType;
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/vending/model/ResponseProperties;->mProtoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/vending/model/ResponseProperties$ResultType;->valueOf(I)Lcom/android/vending/model/ResponseProperties$ResultType;

    move-result-object v0

    return-object v0
.end method

.method public getServerVersion()I
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 105
    iget-object v0, p0, Lcom/android/vending/model/ResponseProperties;->mProtoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/model/ResponseProperties;->mProtoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setResult(Lcom/android/vending/model/ResponseProperties$ResultType;)V
    .locals 3
    .parameter "resultType"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/vending/model/ResponseProperties;->mProtoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/android/vending/model/ResponseProperties$ResultType;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 82
    return-void
.end method
