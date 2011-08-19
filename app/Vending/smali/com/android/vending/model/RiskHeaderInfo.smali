.class public Lcom/android/vending/model/RiskHeaderInfo;
.super Ljava/lang/Object;
.source "RiskHeaderInfo.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field mRiskHeaderProto:Lcom/google/common/io/protocol/ProtoBuf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/android/vending/model/RiskHeaderInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/vending/model/RiskHeaderInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/android/vending/model/ApiDefsMessageTypes;->RISK_HEADER_INFO_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/android/vending/model/RiskHeaderInfo;->mRiskHeaderProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 18
    return-void
.end method


# virtual methods
.method public getProto()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/vending/model/RiskHeaderInfo;->mRiskHeaderProto:Lcom/google/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public setHashedDeviceInfo(Ljava/lang/String;)V
    .locals 2
    .parameter "hashedDeviceInfo"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/vending/model/RiskHeaderInfo;->mRiskHeaderProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 28
    return-void
.end method
