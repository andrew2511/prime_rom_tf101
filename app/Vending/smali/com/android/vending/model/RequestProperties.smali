.class public Lcom/android/vending/model/RequestProperties;
.super Ljava/lang/Object;
.source "RequestProperties.java"


# instance fields
.field private mProtoBuf:Lcom/google/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/util/Locale;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "authToken"
    .parameter "isSecureAuthToken"
    .parameter "userLocale"
    .parameter "aid"
    .parameter "softwareVersion"
    .parameter "operatorName"
    .parameter "simOperatorName"
    .parameter "operatorNumericName"
    .parameter "simOperatorNumericName"
    .parameter "deviceName"
    .parameter "sdkVersion"
    .parameter "clientId"
    .parameter "loggingId"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v3, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v4, Lcom/android/vending/model/ApiDefsMessageTypes;->REQUEST_PROPERTIES_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    iput-object v3, p0, Lcom/android/vending/model/RequestProperties;->mProtoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    .line 27
    iget-object v3, p0, Lcom/android/vending/model/RequestProperties;->mProtoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v4, 0x6

    invoke-virtual {p3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 28
    iget-object v3, p0, Lcom/android/vending/model/RequestProperties;->mProtoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v4, 0x7

    invoke-virtual {p3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 29
    iget-object v3, p0, Lcom/android/vending/model/RequestProperties;->mProtoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v4, 0x8

    invoke-virtual {v3, v4, p6}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 30
    iget-object v3, p0, Lcom/android/vending/model/RequestProperties;->mProtoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v4, 0x9

    invoke-virtual {v3, v4, p7}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 31
    iget-object v3, p0, Lcom/android/vending/model/RequestProperties;->mProtoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v4, 0xa

    invoke-virtual {v3, v4, p8}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 32
    iget-object v3, p0, Lcom/android/vending/model/RequestProperties;->mProtoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v4, 0xb

    move-object v0, v3

    move v1, v4

    move-object/from16 v2, p9

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 34
    iget-object v3, p0, Lcom/android/vending/model/RequestProperties;->mProtoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, p4}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 35
    iget-object v3, p0, Lcom/android/vending/model/RequestProperties;->mProtoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 36
    iget-object v3, p0, Lcom/android/vending/model/RequestProperties;->mProtoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, p2}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 37
    iget-object v3, p0, Lcom/android/vending/model/RequestProperties;->mProtoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, p5}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 38
    iget-object v3, p0, Lcom/android/vending/model/RequestProperties;->mProtoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v4, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 40
    iget-object v3, p0, Lcom/android/vending/model/RequestProperties;->mProtoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v4, 0xc

    move-object v0, v3

    move v1, v4

    move-object/from16 v2, p12

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 41
    iget-object v3, p0, Lcom/android/vending/model/RequestProperties;->mProtoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v4, 0xd

    move-object v0, v3

    move v1, v4

    move-object/from16 v2, p13

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/vending/model/RequestProperties;->mProtoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    return-object v0
.end method
