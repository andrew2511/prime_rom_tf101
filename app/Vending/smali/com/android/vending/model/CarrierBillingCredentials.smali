.class public Lcom/android/vending/model/CarrierBillingCredentials;
.super Ljava/lang/Object;
.source "CarrierBillingCredentials.java"


# instance fields
.field private mCredentialsProto:Lcom/google/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/android/vending/model/ApiDefsMessageTypes;->CARRIER_BILLING_CREDENTIALS_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/android/vending/model/CarrierBillingCredentials;->mCredentialsProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/android/vending/model/CarrierCredentialsResponse;)V
    .locals 2
    .parameter "credentials"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/android/vending/model/ApiDefsMessageTypes;->CARRIER_BILLING_CREDENTIALS_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/android/vending/model/CarrierBillingCredentials;->mCredentialsProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 22
    invoke-virtual {p1}, Lcom/android/vending/model/CarrierCredentialsResponse;->getCredentials()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vending/model/CarrierBillingCredentials;->setCredentials(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Lcom/android/vending/model/CarrierCredentialsResponse;->getExpirationTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/model/CarrierBillingCredentials;->setCredentialsTimeout(J)V

    .line 24
    return-void
.end method


# virtual methods
.method public getProto()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/vending/model/CarrierBillingCredentials;->mCredentialsProto:Lcom/google/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public setCredentials(Ljava/lang/String;)V
    .locals 2
    .parameter "credentials"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/vending/model/CarrierBillingCredentials;->mCredentialsProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 36
    return-void
.end method

.method public setCredentialsTimeout(J)V
    .locals 2
    .parameter "credentialsTimeout"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/vending/model/CarrierBillingCredentials;->mCredentialsProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 49
    return-void
.end method
