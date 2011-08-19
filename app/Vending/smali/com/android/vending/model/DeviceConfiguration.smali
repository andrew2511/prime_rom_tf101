.class public Lcom/android/vending/model/DeviceConfiguration;
.super Ljava/lang/Object;
.source "DeviceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;,
        Lcom/android/vending/model/DeviceConfiguration$Navigation;,
        Lcom/android/vending/model/DeviceConfiguration$Keyboard;,
        Lcom/android/vending/model/DeviceConfiguration$TouchScreen;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field mProto:Lcom/google/common/io/protocol/ProtoBuf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/android/vending/model/DeviceConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/vending/model/DeviceConfiguration;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/android/vending/model/ApiDefsMessageTypes;->DEVICE_CONFIGURATION_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/android/vending/model/DeviceConfiguration;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 223
    return-void
.end method

.method private getHashCode(Ljava/lang/Object;)I
    .locals 1
    .parameter "obj"

    .prologue
    .line 576
    if-nez p1, :cond_0

    const/4 v0, 0x7

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method private getStringArray(I)[Ljava/lang/String;
    .locals 3
    .parameter "tag"

    .prologue
    .line 484
    iget-object v2, p0, Lcom/android/vending/model/DeviceConfiguration;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v2, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 485
    .local v1, strings:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 486
    iget-object v2, p0, Lcom/android/vending/model/DeviceConfiguration;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v2, p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 485
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 488
    :cond_0
    return-object v1
.end method

.method private hashRepeatedString(II)I
    .locals 4
    .parameter "hash"
    .parameter "tag"

    .prologue
    .line 546
    iget-object v3, p0, Lcom/android/vending/model/DeviceConfiguration;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v3, p2}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    .line 547
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 548
    iget-object v3, p0, Lcom/android/vending/model/DeviceConfiguration;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v3, p2, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;

    move-result-object v2

    .line 549
    .local v2, str:Ljava/lang/String;
    if-nez v2, :cond_0

    const/4 v3, 0x7

    :goto_1
    mul-int/lit8 p1, v3, 0x1f

    .line 547
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 549
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1

    .line 551
    .end local v2           #str:Ljava/lang/String;
    :cond_1
    return p1
.end method

.method private repeatedStringEquals(ILcom/android/vending/model/DeviceConfiguration;)Z
    .locals 7
    .parameter "tag"
    .parameter "other"

    .prologue
    const/4 v6, 0x0

    .line 492
    invoke-virtual {p2}, Lcom/android/vending/model/DeviceConfiguration;->getProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 493
    .local v2, otherProto:Lcom/google/common/io/protocol/ProtoBuf;
    iget-object v5, p0, Lcom/android/vending/model/DeviceConfiguration;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v5, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    .line 494
    .local v0, count:I
    invoke-virtual {v2, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v5

    if-eq v0, v5, :cond_0

    move v5, v6

    .line 506
    :goto_0
    return v5

    .line 498
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 499
    iget-object v5, p0, Lcom/android/vending/model/DeviceConfiguration;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v5, p1, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;

    move-result-object v4

    .line 500
    .local v4, thisString:Ljava/lang/String;
    invoke-virtual {v2, p1, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;

    move-result-object v3

    .line 501
    .local v3, otherString:Ljava/lang/String;
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v6

    .line 502
    goto :goto_0

    .line 498
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 506
    .end local v3           #otherString:Ljava/lang/String;
    .end local v4           #thisString:Ljava/lang/String;
    :cond_2
    const/4 v5, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addGlExtension(Ljava/lang/String;)Lcom/android/vending/model/DeviceConfiguration;
    .locals 2
    .parameter "extension"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/vending/model/DeviceConfiguration;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 442
    return-object p0
.end method

.method public addNativePlatform(Ljava/lang/String;)Lcom/android/vending/model/DeviceConfiguration;
    .locals 2
    .parameter "platform"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/vending/model/DeviceConfiguration;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 391
    return-object p0
.end method

.method public addSystemAvailableFeature(Ljava/lang/String;)Lcom/android/vending/model/DeviceConfiguration;
    .locals 2
    .parameter "feature"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/vending/model/DeviceConfiguration;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 369
    return-object p0
.end method

.method public addSystemLocale(Ljava/lang/String;)Lcom/android/vending/model/DeviceConfiguration;
    .locals 2
    .parameter "locale"

    .prologue
    .line 417
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/android/vending/model/DeviceConfiguration;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 420
    :cond_0
    return-object p0
.end method

.method public addSystemSharedLibrary(Ljava/lang/String;)Lcom/android/vending/model/DeviceConfiguration;
    .locals 2
    .parameter "library"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/vending/model/DeviceConfiguration;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 347
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 511
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 542
    :goto_0
    return v2

    .line 515
    :cond_0
    instance-of v2, p1, Lcom/android/vending/model/DeviceConfiguration;

    if-nez v2, :cond_1

    move v2, v4

    .line 516
    goto :goto_0

    .line 519
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/vending/model/DeviceConfiguration;

    move-object v1, v0

    .line 521
    .local v1, other:Lcom/android/vending/model/DeviceConfiguration;
    invoke-virtual {p0}, Lcom/android/vending/model/DeviceConfiguration;->getTouchScreen()Lcom/android/vending/model/DeviceConfiguration$TouchScreen;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/vending/model/DeviceConfiguration;->getTouchScreen()Lcom/android/vending/model/DeviceConfiguration$TouchScreen;

    move-result-object v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/vending/model/DeviceConfiguration;->getKeyboard()Lcom/android/vending/model/DeviceConfiguration$Keyboard;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/vending/model/DeviceConfiguration;->getKeyboard()Lcom/android/vending/model/DeviceConfiguration$Keyboard;

    move-result-object v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/vending/model/DeviceConfiguration;->getNavigation()Lcom/android/vending/model/DeviceConfiguration$Navigation;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/vending/model/DeviceConfiguration;->getNavigation()Lcom/android/vending/model/DeviceConfiguration$Navigation;

    move-result-object v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/vending/model/DeviceConfiguration;->getScreenLayoutSize()Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/vending/model/DeviceConfiguration;->getScreenLayoutSize()Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;

    move-result-object v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/vending/model/DeviceConfiguration;->getScreenDensity()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/vending/model/DeviceConfiguration;->getScreenDensity()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/vending/model/DeviceConfiguration;->getScreenWidth()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/vending/model/DeviceConfiguration;->getScreenWidth()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/vending/model/DeviceConfiguration;->getScreenHeight()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/vending/model/DeviceConfiguration;->getScreenHeight()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/vending/model/DeviceConfiguration;->isHasFiveWayNavigation()Z

    move-result v2

    invoke-virtual {v1}, Lcom/android/vending/model/DeviceConfiguration;->isHasFiveWayNavigation()Z

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/vending/model/DeviceConfiguration;->isHasHardKeyboard()Z

    move-result v2

    invoke-virtual {v1}, Lcom/android/vending/model/DeviceConfiguration;->isHasHardKeyboard()Z

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/vending/model/DeviceConfiguration;->getGlEsVersion()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/vending/model/DeviceConfiguration;->getGlEsVersion()I

    move-result v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v2, v4

    .line 531
    goto :goto_0

    .line 534
    :cond_3
    const/16 v2, 0x9

    invoke-direct {p0, v2, v1}, Lcom/android/vending/model/DeviceConfiguration;->repeatedStringEquals(ILcom/android/vending/model/DeviceConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0xa

    invoke-direct {p0, v2, v1}, Lcom/android/vending/model/DeviceConfiguration;->repeatedStringEquals(ILcom/android/vending/model/DeviceConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0xb

    invoke-direct {p0, v2, v1}, Lcom/android/vending/model/DeviceConfiguration;->repeatedStringEquals(ILcom/android/vending/model/DeviceConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0xe

    invoke-direct {p0, v2, v1}, Lcom/android/vending/model/DeviceConfiguration;->repeatedStringEquals(ILcom/android/vending/model/DeviceConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0xf

    invoke-direct {p0, v2, v1}, Lcom/android/vending/model/DeviceConfiguration;->repeatedStringEquals(ILcom/android/vending/model/DeviceConfiguration;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    move v2, v4

    .line 539
    goto/16 :goto_0

    :cond_5
    move v2, v5

    .line 542
    goto/16 :goto_0
.end method

.method public getGlEsVersion()I
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 340
    iget-object v0, p0, Lcom/android/vending/model/DeviceConfiguration;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/model/DeviceConfiguration;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGlExtensions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/android/vending/model/DeviceConfiguration;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyboard()Lcom/android/vending/model/DeviceConfiguration$Keyboard;
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 254
    iget-object v0, p0, Lcom/android/vending/model/DeviceConfiguration;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/model/DeviceConfiguration;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/vending/model/DeviceConfiguration$Keyboard;->valueOf(I)Lcom/android/vending/model/DeviceConfiguration$Keyboard;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/vending/model/DeviceConfiguration$Keyboard;->UNDEFINED:Lcom/android/vending/model/DeviceConfiguration$Keyboard;

    goto :goto_0
.end method

.method public getNativePlatforms()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/android/vending/model/DeviceConfiguration;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNavigation()Lcom/android/vending/model/DeviceConfiguration$Navigation;
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 265
    iget-object v0, p0, Lcom/android/vending/model/DeviceConfiguration;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/model/DeviceConfiguration;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/vending/model/DeviceConfiguration$Navigation;->valueOf(I)Lcom/android/vending/model/DeviceConfiguration$Navigation;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/vending/model/DeviceConfiguration$Navigation;->UNDEFINED:Lcom/android/vending/model/DeviceConfiguration$Navigation;

    goto :goto_0
.end method

.method public getProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/vending/model/DeviceConfiguration;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public getScreenDensity()I
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 307
    iget-object v0, p0, Lcom/android/vending/model/DeviceConfiguration;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/model/DeviceConfiguration;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScreenHeight()I
    .locals 2

    .prologue
    const/16 v1, 0xd

    .line 329
    iget-object v0, p0, Lcom/android/vending/model/DeviceConfiguration;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/model/DeviceConfiguration;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScreenLayoutSize()Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 276
    iget-object v0, p0, Lcom/android/vending/model/DeviceConfiguration;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/model/DeviceConfiguration;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;->valueOf(I)Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;->UNDEFINED:Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;

    goto :goto_0
.end method

.method public getScreenWidth()I
    .locals 2

    .prologue
    const/16 v1, 0xc

    .line 318
    iget-object v0, p0, Lcom/android/vending/model/DeviceConfiguration;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/model/DeviceConfiguration;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSystemAvailableFeatures()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/vending/model/DeviceConfiguration;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemSharedLibraries()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/android/vending/model/DeviceConfiguration;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTouchScreen()Lcom/android/vending/model/DeviceConfiguration$TouchScreen;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 243
    iget-object v0, p0, Lcom/android/vending/model/DeviceConfiguration;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/model/DeviceConfiguration;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/vending/model/DeviceConfiguration$TouchScreen;->valueOf(I)Lcom/android/vending/model/DeviceConfiguration$TouchScreen;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/vending/model/DeviceConfiguration$TouchScreen;->UNDEFINED:Lcom/android/vending/model/DeviceConfiguration$TouchScreen;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/android/vending/model/DeviceConfiguration;->getTouchScreen()Lcom/android/vending/model/DeviceConfiguration$TouchScreen;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/vending/model/DeviceConfiguration;->getHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 558
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/vending/model/DeviceConfiguration;->getKeyboard()Lcom/android/vending/model/DeviceConfiguration$Keyboard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/vending/model/DeviceConfiguration$Keyboard;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 559
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/vending/model/DeviceConfiguration;->getNavigation()Lcom/android/vending/model/DeviceConfiguration$Navigation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/vending/model/DeviceConfiguration$Navigation;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 560
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/vending/model/DeviceConfiguration;->getScreenLayoutSize()Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 561
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/vending/model/DeviceConfiguration;->getScreenDensity()I

    move-result v2

    add-int v0, v1, v2

    .line 562
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/vending/model/DeviceConfiguration;->getScreenWidth()I

    move-result v2

    add-int v0, v1, v2

    .line 563
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/vending/model/DeviceConfiguration;->getScreenHeight()I

    move-result v2

    add-int v0, v1, v2

    .line 564
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/vending/model/DeviceConfiguration;->getGlEsVersion()I

    move-result v2

    add-int v0, v1, v2

    .line 566
    const/16 v1, 0x9

    invoke-direct {p0, v0, v1}, Lcom/android/vending/model/DeviceConfiguration;->hashRepeatedString(II)I

    move-result v0

    .line 567
    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/android/vending/model/DeviceConfiguration;->hashRepeatedString(II)I

    move-result v0

    .line 568
    const/16 v1, 0xb

    invoke-direct {p0, v0, v1}, Lcom/android/vending/model/DeviceConfiguration;->hashRepeatedString(II)I

    move-result v0

    .line 569
    const/16 v1, 0xe

    invoke-direct {p0, v0, v1}, Lcom/android/vending/model/DeviceConfiguration;->hashRepeatedString(II)I

    move-result v0

    .line 570
    const/16 v1, 0xf

    invoke-direct {p0, v0, v1}, Lcom/android/vending/model/DeviceConfiguration;->hashRepeatedString(II)I

    move-result v0

    .line 572
    return v0
.end method

.method public isHasFiveWayNavigation()Z
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 297
    iget-object v0, p0, Lcom/android/vending/model/DeviceConfiguration;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/model/DeviceConfiguration;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHasHardKeyboard()Z
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 287
    iget-object v0, p0, Lcom/android/vending/model/DeviceConfiguration;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/model/DeviceConfiguration;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setGlEsVersion(I)Lcom/android/vending/model/DeviceConfiguration;
    .locals 2
    .parameter "version"

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/vending/model/DeviceConfiguration;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 336
    return-object p0
.end method

.method public setHasFiveWayNavigation(Z)Lcom/android/vending/model/DeviceConfiguration;
    .locals 2
    .parameter "hasFiveWayNavigation"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/vending/model/DeviceConfiguration;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 293
    return-object p0
.end method

.method public setHasHardKeyboard(Z)Lcom/android/vending/model/DeviceConfiguration;
    .locals 2
    .parameter "hasHardKeyboard"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/vending/model/DeviceConfiguration;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 283
    return-object p0
.end method

.method public setKeyboard(Lcom/android/vending/model/DeviceConfiguration$Keyboard;)Lcom/android/vending/model/DeviceConfiguration;
    .locals 3
    .parameter "keyboard"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/vending/model/DeviceConfiguration;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/android/vending/model/DeviceConfiguration$Keyboard;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 250
    return-object p0
.end method

.method public setNavigation(Lcom/android/vending/model/DeviceConfiguration$Navigation;)Lcom/android/vending/model/DeviceConfiguration;
    .locals 3
    .parameter "navigation"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/vending/model/DeviceConfiguration;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-virtual {p1}, Lcom/android/vending/model/DeviceConfiguration$Navigation;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 261
    return-object p0
.end method

.method public setScreenDensity(I)Lcom/android/vending/model/DeviceConfiguration;
    .locals 2
    .parameter "screenDensity"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/vending/model/DeviceConfiguration;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 303
    return-object p0
.end method

.method public setScreenHeight(I)Lcom/android/vending/model/DeviceConfiguration;
    .locals 2
    .parameter "screenHeight"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/vending/model/DeviceConfiguration;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 325
    return-object p0
.end method

.method public setScreenLayoutSize(Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;)Lcom/android/vending/model/DeviceConfiguration;
    .locals 3
    .parameter "screenLayout"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/vending/model/DeviceConfiguration;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    invoke-virtual {p1}, Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 272
    return-object p0
.end method

.method public setScreenWidth(I)Lcom/android/vending/model/DeviceConfiguration;
    .locals 2
    .parameter "screenWidth"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/vending/model/DeviceConfiguration;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 314
    return-object p0
.end method

.method public setTouchScreen(Lcom/android/vending/model/DeviceConfiguration$TouchScreen;)Lcom/android/vending/model/DeviceConfiguration;
    .locals 3
    .parameter "touchScreen"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/vending/model/DeviceConfiguration;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/android/vending/model/DeviceConfiguration$TouchScreen;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 239
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(TouchScreen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vending/model/DeviceConfiguration;->getTouchScreen()Lcom/android/vending/model/DeviceConfiguration$TouchScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Keyboard="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vending/model/DeviceConfiguration;->getKeyboard()Lcom/android/vending/model/DeviceConfiguration$Keyboard;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Navigation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vending/model/DeviceConfiguration;->getNavigation()Lcom/android/vending/model/DeviceConfiguration$Navigation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", HasFiveWayNav="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vending/model/DeviceConfiguration;->isHasFiveWayNavigation()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", HasHardKeyboard="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vending/model/DeviceConfiguration;->isHasHardKeyboard()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ScreenLayoutSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vending/model/DeviceConfiguration;->getScreenLayoutSize()Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ScreenDensity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vending/model/DeviceConfiguration;->getScreenDensity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ScreenWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vending/model/DeviceConfiguration;->getScreenWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ScreenHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vending/model/DeviceConfiguration;->getScreenHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", GlEsVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vending/model/DeviceConfiguration;->getGlEsVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 467
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "], SystemSharedLibraries=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    const-string v1, ", "

    invoke-virtual {p0}, Lcom/android/vending/model/DeviceConfiguration;->getSystemSharedLibraries()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    const-string v1, "], SystemAvailableFeatures=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    const-string v1, ", "

    invoke-virtual {p0}, Lcom/android/vending/model/DeviceConfiguration;->getSystemAvailableFeatures()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    const-string v1, "], NativePlatforms=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    const-string v1, ", "

    invoke-virtual {p0}, Lcom/android/vending/model/DeviceConfiguration;->getNativePlatforms()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    const-string v1, "], GlExtensions=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    const-string v1, ", "

    invoke-virtual {p0}, Lcom/android/vending/model/DeviceConfiguration;->getGlExtensions()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    const-string v1, "])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
