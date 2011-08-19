.class public Lcom/android/vending/model/GetCarrierInfoResponse;
.super Lcom/android/vending/model/BaseResponse;
.source "GetCarrierInfoResponse.java"


# instance fields
.field private mCarrierBanner:Landroid/graphics/Bitmap;

.field private mCarrierIcon:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/android/vending/model/ApiDefsMessageTypes;->GET_CARRIER_INFO_RESPONSE_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x15

    invoke-direct {p0, v0, v1}, Lcom/android/vending/model/BaseResponse;-><init>(Lcom/google/common/io/protocol/ProtoBufType;I)V

    .line 23
    return-void
.end method

.method private getCarrierImageDensity()I
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 85
    iget-object v0, p0, Lcom/android/vending/model/GetCarrierInfoResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/model/GetCarrierInfoResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa0

    goto :goto_0
.end method


# virtual methods
.method public getCarrierBanner()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 52
    iget-object v1, p0, Lcom/android/vending/model/GetCarrierInfoResponse;->mCarrierBanner:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/android/vending/model/GetCarrierInfoResponse;->mCarrierBanner:Landroid/graphics/Bitmap;

    .line 61
    :goto_0
    return-object v1

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/android/vending/model/GetCarrierInfoResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/android/vending/model/GetCarrierInfoResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v0

    .line 58
    .local v0, data:[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/model/GetCarrierInfoResponse;->mCarrierBanner:Landroid/graphics/Bitmap;

    .line 59
    iget-object v1, p0, Lcom/android/vending/model/GetCarrierInfoResponse;->mCarrierBanner:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/android/vending/model/GetCarrierInfoResponse;->getCarrierImageDensity()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 61
    .end local v0           #data:[B
    :cond_1
    iget-object v1, p0, Lcom/android/vending/model/GetCarrierInfoResponse;->mCarrierBanner:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getCarrierLogoIcon()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 36
    iget-object v1, p0, Lcom/android/vending/model/GetCarrierInfoResponse;->mCarrierIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/android/vending/model/GetCarrierInfoResponse;->mCarrierIcon:Landroid/graphics/Bitmap;

    .line 45
    :goto_0
    return-object v1

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/android/vending/model/GetCarrierInfoResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    iget-object v1, p0, Lcom/android/vending/model/GetCarrierInfoResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v0

    .line 42
    .local v0, data:[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/model/GetCarrierInfoResponse;->mCarrierIcon:Landroid/graphics/Bitmap;

    .line 43
    iget-object v1, p0, Lcom/android/vending/model/GetCarrierInfoResponse;->mCarrierIcon:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/android/vending/model/GetCarrierInfoResponse;->getCarrierImageDensity()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 45
    .end local v0           #data:[B
    :cond_1
    iget-object v1, p0, Lcom/android/vending/model/GetCarrierInfoResponse;->mCarrierIcon:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getCarrierTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 78
    iget-object v0, p0, Lcom/android/vending/model/GetCarrierInfoResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/vending/model/GetCarrierInfoResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 81
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCarrierChannelEnabled()Z
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/vending/model/GetCarrierInfoResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    return v0
.end method
