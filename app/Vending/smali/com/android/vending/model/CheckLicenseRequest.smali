.class public Lcom/android/vending/model/CheckLicenseRequest;
.super Lcom/android/vending/model/BaseRequest;
.source "CheckLicenseRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/android/vending/model/BaseRequest;-><init>(I)V

    .line 16
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/android/vending/model/ApiDefsMessageTypes;->CHECK_LICENSE_REQUEST_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/android/vending/model/CheckLicenseRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 17
    return-void
.end method


# virtual methods
.method public getRequestType()Lcom/android/vending/model/BaseRequest$RequestType;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/vending/model/BaseRequest$RequestType;->LICENSE_REQUEST:Lcom/android/vending/model/BaseRequest$RequestType;

    return-object v0
.end method

.method public setNonce(J)V
    .locals 2
    .parameter "nonce"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/vending/model/CheckLicenseRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 21
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/vending/model/CheckLicenseRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 29
    return-void
.end method

.method public setVersionCode(I)V
    .locals 4
    .parameter "versionCode"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/vending/model/CheckLicenseRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 25
    return-void
.end method
