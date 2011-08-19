.class public Lcom/android/vending/model/GetImageResponse;
.super Lcom/android/vending/model/BaseResponse;
.source "GetImageResponse.java"


# instance fields
.field private mDefaultBitmapConfig:Landroid/graphics/Bitmap$Config;

.field private mImage:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/android/vending/model/ApiDefsMessageTypes;->GET_IMAGE_RESPONSE_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/android/vending/model/BaseResponse;-><init>(Lcom/google/common/io/protocol/ProtoBufType;I)V

    .line 27
    return-void
.end method


# virtual methods
.method public getImage()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 37
    iget-object v3, p0, Lcom/android/vending/model/GetImageResponse;->mImage:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 38
    iget-object v3, p0, Lcom/android/vending/model/GetImageResponse;->mImage:Landroid/graphics/Bitmap;

    .line 54
    :goto_0
    return-object v3

    .line 41
    :cond_0
    iget-object v3, p0, Lcom/android/vending/model/GetImageResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 42
    iget-object v3, p0, Lcom/android/vending/model/GetImageResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v0

    .line 43
    .local v0, data:[B
    const/4 v2, 0x0

    .line 44
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    iget-object v3, p0, Lcom/android/vending/model/GetImageResponse;->mDefaultBitmapConfig:Landroid/graphics/Bitmap$Config;

    if-eqz v3, :cond_1

    .line 45
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 46
    .restart local v2       #options:Landroid/graphics/BitmapFactory$Options;
    iget-object v3, p0, Lcom/android/vending/model/GetImageResponse;->mDefaultBitmapConfig:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 48
    :cond_1
    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vending/model/GetImageResponse;->mImage:Landroid/graphics/Bitmap;

    .line 49
    iget-object v3, p0, Lcom/android/vending/model/GetImageResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v3, v5}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/vending/model/GetImageResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v3, v5}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v3

    move v1, v3

    .line 52
    .local v1, density:I
    :goto_1
    iget-object v3, p0, Lcom/android/vending/model/GetImageResponse;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 54
    .end local v0           #data:[B
    .end local v1           #density:I
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_2
    iget-object v3, p0, Lcom/android/vending/model/GetImageResponse;->mImage:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 49
    .restart local v0       #data:[B
    .restart local v2       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_3
    const/16 v3, 0xa0

    move v1, v3

    goto :goto_1
.end method

.method public setDefaultBitmapConfig(Landroid/graphics/Bitmap$Config;)V
    .locals 0
    .parameter "defaultBitmapConfig"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/vending/model/GetImageResponse;->mDefaultBitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 34
    return-void
.end method
