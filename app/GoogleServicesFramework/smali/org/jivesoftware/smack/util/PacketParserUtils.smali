.class public Lorg/jivesoftware/smack/util/PacketParserUtils;
.super Ljava/lang/Object;
.source "PacketParserUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIntOrDefault(Lcom/google/common/io/protocol/ProtoBuf;II)I
    .locals 1
    .parameter "proto"
    .parameter "field"
    .parameter "defaultValue"

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, p2

    goto :goto_0
.end method

.method public static getLongOrDefault(Lcom/google/common/io/protocol/ProtoBuf;IJ)J
    .locals 2
    .parameter "proto"
    .parameter "field"
    .parameter "defaultValue"

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, p2

    goto :goto_0
.end method

.method public static getStringOrDefault(Lcom/google/common/io/protocol/ProtoBuf;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "proto"
    .parameter "field"
    .parameter "defaultValue"

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public static newXmlParser()Lorg/xmlpull/v1/XmlPullParser;
    .locals 4

    .prologue
    .line 87
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 90
    .local v0, parser:Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    const-string v2, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 91
    sget-object v2, Landroid/util/Xml;->FEATURE_RELAXED:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-object v0

    .line 92
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 93
    .local v1, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0
.end method

.method public static parseBatchPresence(Lcom/google/common/io/protocol/ProtoBuf;J)Lorg/jivesoftware/smack/packet/Packet;
    .locals 6
    .parameter "protobuf"
    .parameter "defaultAccountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 571
    new-instance v2, Lorg/jivesoftware/smack/packet/BatchPresence;

    sget-object v0, Lorg/jivesoftware/smack/packet/BatchPresence$Type;->SET:Lorg/jivesoftware/smack/packet/BatchPresence$Type;

    invoke-direct {v2, v0}, Lorg/jivesoftware/smack/packet/BatchPresence;-><init>(Lorg/jivesoftware/smack/packet/BatchPresence$Type;)V

    .line 573
    .local v2, batchPresence:Lorg/jivesoftware/smack/packet/BatchPresence;
    const/4 v0, 0x1

    const-string v1, "ID_NOT_AVAILABLE"

    invoke-static {p0, v0, v1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getStringOrDefault(Lcom/google/common/io/protocol/ProtoBuf;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 574
    .local v0, id:Ljava/lang/String;
    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/packet/BatchPresence;->setPacketID(Ljava/lang/String;)V

    .line 576
    const/4 v0, 0x2

    const-string v1, ""

    .end local v0           #id:Ljava/lang/String;
    invoke-static {p0, v0, v1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getStringOrDefault(Lcom/google/common/io/protocol/ProtoBuf;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 577
    .local v0, to:Ljava/lang/String;
    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/packet/BatchPresence;->setTo(Ljava/lang/String;)V

    .line 580
    const/4 v0, 0x7

    invoke-static {p0, v0, p1, p2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getLongOrDefault(Lcom/google/common/io/protocol/ProtoBuf;IJ)J

    .end local v0           #to:Ljava/lang/String;
    move-result-wide v0

    .line 582
    .local v0, accountId:J
    invoke-virtual {v2, v0, v1}, Lorg/jivesoftware/smack/packet/BatchPresence;->setAccountId(J)V

    .line 584
    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getStringOrDefault(Lcom/google/common/io/protocol/ProtoBuf;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 585
    .local v3, rmq2Id:Ljava/lang/String;
    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/packet/BatchPresence;->setRmq2Id(Ljava/lang/String;)V

    .line 587
    const/4 v3, 0x6

    const/4 v4, -0x1

    invoke-static {p0, v3, v4}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getIntOrDefault(Lcom/google/common/io/protocol/ProtoBuf;II)I

    .end local v3           #rmq2Id:Ljava/lang/String;
    move-result v3

    .line 589
    .local v3, lastStreamId:I
    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/packet/BatchPresence;->setLastStreamId(I)V

    .line 591
    const/4 v3, 0x5

    const/4 v4, -0x1

    invoke-static {p0, v3, v4}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getIntOrDefault(Lcom/google/common/io/protocol/ProtoBuf;II)I

    .end local v3           #lastStreamId:I
    move-result v3

    .line 593
    .local v3, streamId:I
    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/packet/BatchPresence;->setStreamId(I)V

    .line 595
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    .end local v3           #streamId:I
    move-result v3

    .line 597
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 598
    const/4 v5, 0x3

    invoke-virtual {p0, v5, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v5

    .line 599
    .local v5, presencePb:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-static {v5, p1, p2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parsePresence(Lcom/google/common/io/protocol/ProtoBuf;J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v5

    .end local v5           #presencePb:Lcom/google/common/io/protocol/ProtoBuf;
    check-cast v5, Lorg/jivesoftware/smack/packet/Presence;

    .line 601
    .local v5, presence:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v5, v0, v1}, Lorg/jivesoftware/smack/packet/Presence;->setAccountId(J)V

    .line 602
    invoke-virtual {v2, v5}, Lorg/jivesoftware/smack/packet/BatchPresence;->addPresenceStanza(Lorg/jivesoftware/smack/packet/Presence;)V

    .line 597
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 605
    .end local v5           #presence:Lorg/jivesoftware/smack/packet/Presence;
    :cond_0
    return-object v2
.end method

.method public static parseDataMessage(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/DataMessage;
    .locals 6
    .parameter "protobuf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 312
    new-instance v1, Lorg/jivesoftware/smack/packet/DataMessage;

    invoke-direct {v1}, Lorg/jivesoftware/smack/packet/DataMessage;-><init>()V

    .line 314
    .local v1, dataMessage:Lorg/jivesoftware/smack/packet/DataMessage;
    const/4 v0, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getStringOrDefault(Lcom/google/common/io/protocol/ProtoBuf;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, from:Ljava/lang/String;
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/DataMessage;->setFrom(Ljava/lang/String;)V

    .line 317
    const/4 v0, 0x4

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getStringOrDefault(Lcom/google/common/io/protocol/ProtoBuf;ILjava/lang/String;)Ljava/lang/String;

    .end local v0           #from:Ljava/lang/String;
    move-result-object v0

    .line 318
    .local v0, to:Ljava/lang/String;
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/DataMessage;->setTo(Ljava/lang/String;)V

    .line 320
    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getStringOrDefault(Lcom/google/common/io/protocol/ProtoBuf;ILjava/lang/String;)Ljava/lang/String;

    .end local v0           #to:Ljava/lang/String;
    move-result-object v0

    .line 321
    .local v0, id:Ljava/lang/String;
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/DataMessage;->setPacketID(Ljava/lang/String;)V

    .line 323
    const/4 v0, 0x1

    const-wide/16 v2, -0x1

    invoke-static {p0, v0, v2, v3}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getLongOrDefault(Lcom/google/common/io/protocol/ProtoBuf;IJ)J

    .end local v0           #id:Ljava/lang/String;
    move-result-wide v2

    .line 324
    .local v2, rmqId:J
    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smack/packet/DataMessage;->setRmqId(J)V

    .line 326
    const/16 v0, 0x9

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getStringOrDefault(Lcom/google/common/io/protocol/ProtoBuf;ILjava/lang/String;)Ljava/lang/String;

    .end local v2           #rmqId:J
    move-result-object v0

    .line 327
    .local v0, rmq2Id:Ljava/lang/String;
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/DataMessage;->setRmq2Id(Ljava/lang/String;)V

    .line 329
    const/16 v0, 0xb

    const/4 v2, -0x1

    invoke-static {p0, v0, v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getIntOrDefault(Lcom/google/common/io/protocol/ProtoBuf;II)I

    .end local v0           #rmq2Id:Ljava/lang/String;
    move-result v0

    .line 331
    .local v0, lastStreamId:I
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/DataMessage;->setLastStreamId(I)V

    .line 334
    const/16 v0, 0xa

    const/4 v2, -0x1

    invoke-static {p0, v0, v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getIntOrDefault(Lcom/google/common/io/protocol/ProtoBuf;II)I

    .end local v0           #lastStreamId:I
    move-result v0

    .line 336
    .local v0, streamId:I
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/DataMessage;->setStreamId(I)V

    .line 338
    const/4 v0, 0x5

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getStringOrDefault(Lcom/google/common/io/protocol/ProtoBuf;ILjava/lang/String;)Ljava/lang/String;

    .end local v0           #streamId:I
    move-result-object v0

    .line 339
    .local v0, category:Ljava/lang/String;
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/DataMessage;->setCategory(Ljava/lang/String;)V

    .line 341
    const/4 v0, 0x6

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getStringOrDefault(Lcom/google/common/io/protocol/ProtoBuf;ILjava/lang/String;)Ljava/lang/String;

    .end local v0           #category:Ljava/lang/String;
    move-result-object v0

    .line 342
    .local v0, token:Ljava/lang/String;
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/DataMessage;->setToken(Ljava/lang/String;)V

    .line 344
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    .end local v0           #token:Ljava/lang/String;
    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/DataMessage;->setFromTrustedServer(Z)V

    .line 349
    :cond_0
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, permission:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 352
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/DataMessage;->setPermission(Ljava/lang/String;)V

    .line 356
    .end local v0           #permission:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v4

    .line 357
    .local v4, numAppDataPairs:I
    const/4 v0, 0x0

    .local v0, i:I
    move v2, v0

    .end local v0           #i:I
    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 358
    const/4 v0, 0x7

    invoke-virtual {p0, v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 359
    .local v0, appDataPb:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 360
    .local v3, key:Ljava/lang/String;
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 363
    .local v5, value:Ljava/lang/String;
    new-instance v0, Lorg/jivesoftware/smack/packet/DataMessage$AppData;

    .end local v0           #appDataPb:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-direct {v0, v3, v5}, Lorg/jivesoftware/smack/packet/DataMessage$AppData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    .local v0, appData:Lorg/jivesoftware/smack/packet/DataMessage$AppData;
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/DataMessage;->addAppData(Lorg/jivesoftware/smack/packet/DataMessage$AppData;)V

    .line 357
    add-int/lit8 v0, v2, 0x1

    .end local v2           #i:I
    .local v0, i:I
    move v2, v0

    .end local v0           #i:I
    .restart local v2       #i:I
    goto :goto_0

    .line 367
    .end local v3           #key:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :cond_2
    return-object v1
.end method

.method public static parseError(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/XMPPError;
    .locals 11
    .parameter "protobuf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    .line 753
    const/4 v4, 0x0

    .line 754
    .local v4, message:Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 755
    invoke-virtual {p0, v8}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 757
    :cond_0
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    .line 759
    .local v0, code:I
    const/4 v6, 0x0

    .line 760
    .local v6, type:Ljava/lang/String;
    invoke-virtual {p0, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 761
    invoke-virtual {p0, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 764
    :cond_1
    new-instance v1, Lorg/jivesoftware/smack/packet/XMPPError;

    invoke-direct {v1, v0, v4, v6}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 766
    .local v1, error:Lorg/jivesoftware/smack/packet/XMPPError;
    invoke-virtual {p0, v10}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v5

    .line 767
    .local v5, numExtensions:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v5, :cond_3

    .line 768
    invoke-virtual {p0, v10, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v7

    invoke-static {v7}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parsePacketExtension(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v2

    .line 770
    .local v2, extension:Lorg/jivesoftware/smack/packet/PacketExtension;
    if-eqz v2, :cond_2

    .line 771
    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/XMPPError;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 767
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 775
    .end local v2           #extension:Lorg/jivesoftware/smack/packet/PacketExtension;
    :cond_3
    return-object v1
.end method

.method public static parseError(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/XMPPError;
    .locals 10
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 699
    const-string v3, "-1"

    .line 700
    .local v3, errorCode:Ljava/lang/String;
    const/4 v6, 0x0

    .line 701
    .local v6, message:Ljava/lang/String;
    const/4 v7, 0x0

    .line 702
    .local v7, other:Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 704
    .local v0, attrCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v0, :cond_1

    .line 705
    invoke-interface {p0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "code"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 706
    const-string v8, ""

    const-string v9, "code"

    invoke-interface {p0, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 704
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 710
    :cond_1
    const/4 v1, 0x0

    .line 711
    .local v1, done:Z
    :cond_2
    :goto_1
    if-nez v1, :cond_6

    .line 712
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 713
    .local v4, eventType:I
    const/4 v8, 0x2

    if-ne v4, v8, :cond_4

    .line 714
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 718
    .local v2, elementName:Ljava/lang/String;
    const-string v8, "text"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 719
    if-nez v6, :cond_2

    .line 720
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 722
    :cond_3
    const-string v8, "feature-not-implemented"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 725
    const-string v7, "feature not implemented"

    goto :goto_1

    .line 727
    .end local v2           #elementName:Ljava/lang/String;
    :cond_4
    const/4 v8, 0x3

    if-ne v4, v8, :cond_5

    .line 728
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "error"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 729
    const/4 v1, 0x1

    goto :goto_1

    .line 731
    :cond_5
    const/4 v8, 0x4

    if-ne v4, v8, :cond_2

    .line 732
    if-nez v6, :cond_2

    .line 733
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 738
    .end local v4           #eventType:I
    :cond_6
    if-nez v6, :cond_7

    .line 739
    move-object v6, v7

    .line 742
    :cond_7
    new-instance v8, Lorg/jivesoftware/smack/packet/XMPPError;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v8, v9, v6}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(ILjava/lang/String;)V

    return-object v8
.end method

.method public static parseMessage(Lcom/google/common/io/protocol/ProtoBuf;J)Lorg/jivesoftware/smack/packet/Packet;
    .locals 4
    .parameter "protobuf"
    .parameter "defaultAccountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 232
    new-instance v1, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v1}, Lorg/jivesoftware/smack/packet/Message;-><init>()V

    .line 233
    .local v1, message:Lorg/jivesoftware/smack/packet/Message;
    const/4 v0, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getStringOrDefault(Lcom/google/common/io/protocol/ProtoBuf;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, id:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, "ID_NOT_AVAILABLE"

    .end local v0           #id:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/Message;->setPacketID(Ljava/lang/String;)V

    .line 236
    const/4 v0, 0x1

    const-wide/16 v2, -0x1

    invoke-static {p0, v0, v2, v3}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getLongOrDefault(Lcom/google/common/io/protocol/ProtoBuf;IJ)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smack/packet/Message;->setRmqId(J)V

    .line 239
    const/16 v0, 0xd

    const-string v2, ""

    invoke-static {p0, v0, v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getStringOrDefault(Lcom/google/common/io/protocol/ProtoBuf;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/Message;->setRmq2Id(Ljava/lang/String;)V

    .line 240
    const/16 v0, 0xf

    const/4 v2, -0x1

    invoke-static {p0, v0, v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getIntOrDefault(Lcom/google/common/io/protocol/ProtoBuf;II)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/Message;->setLastStreamId(I)V

    .line 242
    const/16 v0, 0xe

    const/4 v2, -0x1

    invoke-static {p0, v0, v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getIntOrDefault(Lcom/google/common/io/protocol/ProtoBuf;II)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/Message;->setStreamId(I)V

    .line 245
    const/4 v0, 0x5

    const-string v2, ""

    invoke-static {p0, v0, v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getStringOrDefault(Lcom/google/common/io/protocol/ProtoBuf;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/Message;->setTo(Ljava/lang/String;)V

    .line 246
    const/4 v0, 0x4

    const-string v2, ""

    invoke-static {p0, v0, v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getStringOrDefault(Lcom/google/common/io/protocol/ProtoBuf;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/Message;->setFrom(Ljava/lang/String;)V

    .line 247
    sget-object v0, Lorg/jivesoftware/smack/packet/Message$Type;->NORMAL:Lorg/jivesoftware/smack/packet/Message$Type;

    .line 248
    .local v0, type:Lorg/jivesoftware/smack/packet/Message$Type;
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 249
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 266
    :cond_1
    :goto_0
    :pswitch_0
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/Message;->setType(Lorg/jivesoftware/smack/packet/Message$Type;)V

    .line 268
    sget-object v2, Lorg/jivesoftware/smack/packet/Message$Type;->ERROR:Lorg/jivesoftware/smack/packet/Message$Type;

    if-ne v0, v2, :cond_2

    .line 269
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    .end local v0           #type:Lorg/jivesoftware/smack/packet/Message$Type;
    move-result v0

    if-eqz v0, :cond_2

    .line 270
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 272
    .local v0, errorProtobuf:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-static {v0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseError(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    .end local v0           #errorProtobuf:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/Message;->setError(Lorg/jivesoftware/smack/packet/XMPPError;)V

    .line 276
    :cond_2
    const/4 v0, 0x6

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getStringOrDefault(Lcom/google/common/io/protocol/ProtoBuf;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/Message;->setSubject(Ljava/lang/String;)V

    .line 277
    const/4 v0, 0x7

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getStringOrDefault(Lcom/google/common/io/protocol/ProtoBuf;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/Message;->setBody(Ljava/lang/String;)V

    .line 278
    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getStringOrDefault(Lcom/google/common/io/protocol/ProtoBuf;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/Message;->setThread(Ljava/lang/String;)V

    .line 279
    const/16 v0, 0x11

    invoke-static {p0, v0, p1, p2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getLongOrDefault(Lcom/google/common/io/protocol/ProtoBuf;IJ)J

    move-result-wide p1

    .end local p1
    invoke-virtual {v1, p1, p2}, Lorg/jivesoftware/smack/packet/Message;->setAccountId(J)V

    .line 282
    const/16 p1, 0xb

    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 283
    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Lorg/jivesoftware/smack/packet/Message;->setHasNoSave(Z)V

    .line 284
    const/16 p1, 0xb

    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result p1

    invoke-virtual {v1, p1}, Lorg/jivesoftware/smack/packet/Message;->setNoSave(Z)V

    .line 287
    :cond_3
    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 288
    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Lorg/jivesoftware/smack/packet/Message;->setIsRead(Z)V

    .line 291
    :cond_4
    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 292
    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Lorg/jivesoftware/smack/packet/Message;->setTimestamp(J)V

    .line 295
    :cond_5
    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    .line 296
    .local v0, numExtensions:I
    const/4 p1, 0x0

    .local p1, i:I
    move p2, p1

    .end local p1           #i:I
    .local p2, i:I
    :goto_1
    if-ge p2, v0, :cond_7

    .line 297
    const/16 p1, 0xa

    invoke-virtual {p0, p1, p2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object p1

    invoke-static {p1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parsePacketExtension(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object p1

    .line 299
    .local p1, extension:Lorg/jivesoftware/smack/packet/PacketExtension;
    if-eqz p1, :cond_6

    .line 300
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 296
    :cond_6
    add-int/lit8 p1, p2, 0x1

    .end local p2           #i:I
    .local p1, i:I
    move p2, p1

    .end local p1           #i:I
    .restart local p2       #i:I
    goto :goto_1

    .line 253
    .end local p2           #i:I
    .local v0, type:Lorg/jivesoftware/smack/packet/Message$Type;
    .local p1, defaultAccountId:J
    :pswitch_1
    sget-object v0, Lorg/jivesoftware/smack/packet/Message$Type;->CHAT:Lorg/jivesoftware/smack/packet/Message$Type;

    .line 254
    goto/16 :goto_0

    .line 256
    :pswitch_2
    sget-object v0, Lorg/jivesoftware/smack/packet/Message$Type;->GROUP_CHAT:Lorg/jivesoftware/smack/packet/Message$Type;

    .line 257
    goto/16 :goto_0

    .line 259
    :pswitch_3
    sget-object v0, Lorg/jivesoftware/smack/packet/Message$Type;->HEADLINE:Lorg/jivesoftware/smack/packet/Message$Type;

    .line 260
    goto/16 :goto_0

    .line 262
    :pswitch_4
    sget-object v0, Lorg/jivesoftware/smack/packet/Message$Type;->ERROR:Lorg/jivesoftware/smack/packet/Message$Type;

    goto/16 :goto_0

    .line 305
    .end local p1           #defaultAccountId:J
    .local v0, numExtensions:I
    .restart local p2       #i:I
    :cond_7
    return-object v1

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static parseMessage(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Packet;
    .locals 9
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 107
    new-instance v2, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v2}, Lorg/jivesoftware/smack/packet/Message;-><init>()V

    .line 109
    .local v2, message:Lorg/jivesoftware/smack/packet/Message;
    const-string v0, ""

    const-string v1, "stanza-id"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseRmqIdFromString(Ljava/lang/String;)J

    move-result-wide v0

    .line 111
    .local v0, rmqId:J
    invoke-virtual {v2, v0, v1}, Lorg/jivesoftware/smack/packet/Message;->setRmqId(J)V

    .line 113
    const-string v0, ""

    .end local v0           #rmqId:J
    const-string v1, "id"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, id:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, "ID_NOT_AVAILABLE"

    .end local v0           #id:Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/packet/Message;->setPacketID(Ljava/lang/String;)V

    .line 115
    const-string v0, ""

    const-string v1, "to"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/packet/Message;->setTo(Ljava/lang/String;)V

    .line 116
    const-string v0, ""

    const-string v1, "from"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/packet/Message;->setFrom(Ljava/lang/String;)V

    .line 117
    const-string v0, ""

    const-string v1, "type"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/packet/Message$Type;->fromString(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Message$Type;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/packet/Message;->setType(Lorg/jivesoftware/smack/packet/Message$Type;)V

    .line 122
    const/4 v1, 0x0

    .line 123
    .local v1, done:Z
    const/4 v3, 0x0

    .line 124
    .local v3, subject:Ljava/lang/String;
    const/4 v0, 0x0

    .line 125
    .local v0, body:Ljava/lang/String;
    const/4 v4, 0x0

    .line 126
    .local v4, thread:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, properties:Ljava/util/Map;
    move-object v6, v4

    .end local v4           #thread:Ljava/lang/String;
    .local v6, thread:Ljava/lang/String;
    move-object v5, v3

    .end local v3           #subject:Ljava/lang/String;
    .local v5, subject:Ljava/lang/String;
    move-object v4, v0

    .end local v0           #properties:Ljava/util/Map;
    .local v4, properties:Ljava/util/Map;
    move v0, v1

    .line 127
    .end local v1           #done:Z
    .local v0, done:Z
    :goto_0
    if-nez v0, :cond_8

    .line 128
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 129
    .local v1, eventType:I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_7

    .line 130
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, elementName:Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, namespace:Ljava/lang/String;
    const-string v7, "subject"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 136
    if-nez v5, :cond_6

    .line 137
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .end local v5           #subject:Ljava/lang/String;
    .local v1, subject:Ljava/lang/String;
    move-object v3, v1

    .end local v1           #subject:Ljava/lang/String;
    .local v3, subject:Ljava/lang/String;
    move-object v1, v4

    .end local v4           #properties:Ljava/util/Map;
    .local v1, properties:Ljava/util/Map;
    move-object v4, v6

    .end local v6           #thread:Ljava/lang/String;
    .local v4, thread:Ljava/lang/String;
    :goto_1
    move-object v6, v4

    .end local v4           #thread:Ljava/lang/String;
    .restart local v6       #thread:Ljava/lang/String;
    move-object v5, v3

    .end local v3           #subject:Ljava/lang/String;
    .restart local v5       #subject:Ljava/lang/String;
    move-object v4, v1

    .line 175
    .end local v1           #properties:Ljava/util/Map;
    .local v4, properties:Ljava/util/Map;
    goto :goto_0

    .line 140
    .local v1, elementName:Ljava/lang/String;
    .local v3, namespace:Ljava/lang/String;
    :cond_1
    const-string v7, "body"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 144
    invoke-static {p0, v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseMessageBody(Lorg/xmlpull/v1/XmlPullParser;Lorg/jivesoftware/smack/packet/Message;)V

    move-object v1, v4

    .end local v4           #properties:Ljava/util/Map;
    .local v1, properties:Ljava/util/Map;
    move-object v3, v5

    .end local v5           #subject:Ljava/lang/String;
    .local v3, subject:Ljava/lang/String;
    move-object v4, v6

    .end local v6           #thread:Ljava/lang/String;
    .local v4, thread:Ljava/lang/String;
    goto :goto_1

    .line 151
    .local v1, elementName:Ljava/lang/String;
    .local v3, namespace:Ljava/lang/String;
    .local v4, properties:Ljava/util/Map;
    .restart local v5       #subject:Ljava/lang/String;
    .restart local v6       #thread:Ljava/lang/String;
    :cond_2
    const-string v7, "thread"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 152
    if-nez v6, :cond_6

    .line 153
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .end local v6           #thread:Ljava/lang/String;
    .local v1, thread:Ljava/lang/String;
    move-object v3, v5

    .end local v5           #subject:Ljava/lang/String;
    .local v3, subject:Ljava/lang/String;
    move-object v8, v1

    .end local v1           #thread:Ljava/lang/String;
    .local v8, thread:Ljava/lang/String;
    move-object v1, v4

    .end local v4           #properties:Ljava/util/Map;
    .local v1, properties:Ljava/util/Map;
    move-object v4, v8

    .end local v8           #thread:Ljava/lang/String;
    .local v4, thread:Ljava/lang/String;
    goto :goto_1

    .line 156
    .local v1, elementName:Ljava/lang/String;
    .local v3, namespace:Ljava/lang/String;
    .local v4, properties:Ljava/util/Map;
    .restart local v5       #subject:Ljava/lang/String;
    .restart local v6       #thread:Ljava/lang/String;
    :cond_3
    const-string v7, "error"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 157
    invoke-static {p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseError(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    .end local v1           #elementName:Ljava/lang/String;
    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/packet/Message;->setError(Lorg/jivesoftware/smack/packet/XMPPError;)V

    move-object v1, v4

    .end local v4           #properties:Ljava/util/Map;
    .local v1, properties:Ljava/util/Map;
    move-object v3, v5

    .end local v5           #subject:Ljava/lang/String;
    .local v3, subject:Ljava/lang/String;
    move-object v4, v6

    .end local v6           #thread:Ljava/lang/String;
    .local v4, thread:Ljava/lang/String;
    goto :goto_1

    .line 159
    .local v1, elementName:Ljava/lang/String;
    .local v3, namespace:Ljava/lang/String;
    .local v4, properties:Ljava/util/Map;
    .restart local v5       #subject:Ljava/lang/String;
    .restart local v6       #thread:Ljava/lang/String;
    :cond_4
    const-string v7, "properties"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "http://www.jivesoftware.com/xmlns/xmpp/properties"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 162
    invoke-static {p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseProperties(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;

    move-result-object v1

    .end local v4           #properties:Ljava/util/Map;
    .local v1, properties:Ljava/util/Map;
    move-object v4, v6

    .end local v6           #thread:Ljava/lang/String;
    .local v4, thread:Ljava/lang/String;
    move-object v3, v5

    .end local v5           #subject:Ljava/lang/String;
    .local v3, subject:Ljava/lang/String;
    goto :goto_1

    .line 166
    .local v1, elementName:Ljava/lang/String;
    .local v3, namespace:Ljava/lang/String;
    .local v4, properties:Ljava/util/Map;
    .restart local v5       #subject:Ljava/lang/String;
    .restart local v6       #thread:Ljava/lang/String;
    :cond_5
    invoke-static {v1, v3, p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parsePacketExtension(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v1

    .end local v1           #elementName:Ljava/lang/String;
    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .end local v3           #namespace:Ljava/lang/String;
    :cond_6
    move-object v1, v4

    .end local v4           #properties:Ljava/util/Map;
    .local v1, properties:Ljava/util/Map;
    move-object v3, v5

    .end local v5           #subject:Ljava/lang/String;
    .local v3, subject:Ljava/lang/String;
    move-object v4, v6

    .end local v6           #thread:Ljava/lang/String;
    .local v4, thread:Ljava/lang/String;
    goto :goto_1

    .line 170
    .end local v3           #subject:Ljava/lang/String;
    .local v1, eventType:I
    .local v4, properties:Ljava/util/Map;
    .restart local v5       #subject:Ljava/lang/String;
    .restart local v6       #thread:Ljava/lang/String;
    :cond_7
    const/4 v3, 0x3

    if-ne v1, v3, :cond_6

    .line 171
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .end local v1           #eventType:I
    const-string v3, "message"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 172
    const/4 v0, 0x1

    move-object v1, v4

    .end local v4           #properties:Ljava/util/Map;
    .local v1, properties:Ljava/util/Map;
    move-object v3, v5

    .end local v5           #subject:Ljava/lang/String;
    .restart local v3       #subject:Ljava/lang/String;
    move-object v4, v6

    .end local v6           #thread:Ljava/lang/String;
    .local v4, thread:Ljava/lang/String;
    goto :goto_1

    .line 176
    .end local v1           #properties:Ljava/util/Map;
    .end local v3           #subject:Ljava/lang/String;
    .local v4, properties:Ljava/util/Map;
    .restart local v5       #subject:Ljava/lang/String;
    .restart local v6       #thread:Ljava/lang/String;
    :cond_8
    invoke-virtual {v2, v5}, Lorg/jivesoftware/smack/packet/Message;->setSubject(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v2, v6}, Lorg/jivesoftware/smack/packet/Message;->setThread(Ljava/lang/String;)V

    .line 184
    if-eqz v4, :cond_9

    .line 185
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    .end local p0
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .end local v0           #done:Z
    .local p0, i:Ljava/util/Iterator;
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 186
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 187
    .local v0, name:Ljava/lang/String;
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/jivesoftware/smack/packet/Message;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 192
    .end local v0           #name:Ljava/lang/String;
    .end local p0           #i:Ljava/util/Iterator;
    :cond_9
    return-object v2
.end method

.method private static parseMessageBody(Lorg/xmlpull/v1/XmlPullParser;Lorg/jivesoftware/smack/packet/Message;)V
    .locals 5
    .parameter "parser"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, body:Ljava/lang/String;
    const/4 v1, 0x0

    .line 202
    .local v1, done:Z
    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 203
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 204
    .local v2, eventType:I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 206
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parsePacketExtension(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    goto :goto_0

    .line 209
    :cond_1
    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 210
    if-nez v0, :cond_0

    .line 211
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 214
    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 216
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "body"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 217
    const/4 v1, 0x1

    goto :goto_0

    .line 222
    .end local v2           #eventType:I
    :cond_3
    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/Message;->setBody(Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method private static parsePacketExtension(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/PacketExtension;
    .locals 4
    .parameter "protobuf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 857
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    .line 859
    .local v1, id:I
    if-nez v1, :cond_1

    .line 861
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v2

    .line 862
    .local v2, xmlBytes:[B
    new-instance p0, Ljava/io/ByteArrayInputStream;

    .end local p0
    invoke-direct {p0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 864
    .local p0, bais:Ljava/io/ByteArrayInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 865
    .local v1, parser:Lorg/xmlpull/v1/XmlPullParser;
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v3, 0x1

    invoke-interface {v1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 866
    const-string v0, "UTF-8"

    invoke-interface {v1, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 867
    const-string p0, "http://xmlpull.org/v1/doc/features.html#relaxed"

    .end local p0           #bais:Ljava/io/ByteArrayInputStream;
    const/4 v0, 0x1

    invoke-interface {v1, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 870
    :goto_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    .local p0, event:I
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 871
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 873
    :pswitch_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    .line 874
    .local p0, elementName:Ljava/lang/String;
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 875
    .local v0, namespace:Ljava/lang/String;
    invoke-static {p0, v0, v1, v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parsePacketExtension(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;[B)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object p0

    .line 900
    .end local v0           #namespace:Ljava/lang/String;
    .end local v1           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v2           #xmlBytes:[B
    .end local p0           #elementName:Ljava/lang/String;
    :goto_1
    return-object p0

    .line 878
    .restart local v1       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2       #xmlBytes:[B
    .local p0, event:I
    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    .line 881
    .end local v2           #xmlBytes:[B
    .local v1, id:I
    .local p0, protobuf:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v0

    .line 882
    .local v0, data:[B
    invoke-static {}, Lorg/jivesoftware/smack/provider/ProviderManager;->getDefault()Lorg/jivesoftware/smack/provider/ProviderManager;

    move-result-object p0

    .end local p0           #protobuf:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {p0, v1}, Lorg/jivesoftware/smack/provider/ProviderManager;->getExtensionProvider(I)Ljava/lang/Object;

    move-result-object p0

    .line 883
    .local p0, o:Ljava/lang/Object;
    if-nez p0, :cond_2

    .line 884
    const/4 p0, 0x0

    goto :goto_1

    .line 886
    :cond_2
    const/4 v1, 0x0

    .line 887
    .local v1, provider:Lorg/jivesoftware/smack/provider/PacketExtensionProvider;
    instance-of v2, p0, Lorg/jivesoftware/smack/provider/PacketExtensionProvider;

    if-eqz v2, :cond_4

    .line 888
    check-cast p0, Lorg/jivesoftware/smack/provider/PacketExtensionProvider;

    .end local v1           #provider:Lorg/jivesoftware/smack/provider/PacketExtensionProvider;
    .local p0, provider:Lorg/jivesoftware/smack/provider/PacketExtensionProvider;
    move-object v1, p0

    .line 893
    .end local p0           #provider:Lorg/jivesoftware/smack/provider/PacketExtensionProvider;
    .restart local v1       #provider:Lorg/jivesoftware/smack/provider/PacketExtensionProvider;
    :cond_3
    :goto_2
    if-eqz v1, :cond_5

    .line 894
    invoke-interface {v1}, Lorg/jivesoftware/smack/provider/PacketExtensionProvider;->getProtoBufType()Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v2

    .line 895
    .local v2, type:Lcom/google/common/io/protocol/ProtoBufType;
    new-instance p0, Lcom/google/common/io/protocol/ProtoBuf;

    invoke-direct {p0, v2}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 896
    .local p0, extension:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {p0, v0}, Lcom/google/common/io/protocol/ProtoBuf;->parse([B)Lcom/google/common/io/protocol/ProtoBuf;

    .line 898
    invoke-interface {v1, p0}, Lorg/jivesoftware/smack/provider/PacketExtensionProvider;->parseExtension(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object p0

    goto :goto_1

    .line 889
    .end local v2           #type:Lcom/google/common/io/protocol/ProtoBufType;
    .local p0, o:Ljava/lang/Object;
    :cond_4
    instance-of v2, p0, Ljava/lang/Class;

    if-eqz v2, :cond_3

    .line 890
    check-cast p0, Ljava/lang/Class;

    .line 891
    .local p0, clazz:Ljava/lang/Class;
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #clazz:Ljava/lang/Class;
    check-cast p0, Lorg/jivesoftware/smack/provider/PacketExtensionProvider;

    .end local v1           #provider:Lorg/jivesoftware/smack/provider/PacketExtensionProvider;
    .local p0, provider:Lorg/jivesoftware/smack/provider/PacketExtensionProvider;
    move-object v1, p0

    .end local p0           #provider:Lorg/jivesoftware/smack/provider/PacketExtensionProvider;
    .restart local v1       #provider:Lorg/jivesoftware/smack/provider/PacketExtensionProvider;
    goto :goto_2

    .line 900
    :cond_5
    const/4 p0, 0x0

    goto :goto_1

    .line 871
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static parsePacketExtension(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;
    .locals 1
    .parameter "elementName"
    .parameter "namespace"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 792
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parsePacketExtension(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;[B)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    return-object v0
.end method

.method public static parsePacketExtension(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;[B)Lorg/jivesoftware/smack/packet/PacketExtension;
    .locals 9
    .parameter "elementName"
    .parameter "namespace"
    .parameter "parser"
    .parameter "xmlBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 804
    invoke-static {}, Lorg/jivesoftware/smack/provider/ProviderManager;->getDefault()Lorg/jivesoftware/smack/provider/ProviderManager;

    move-result-object v6

    .line 805
    .local v6, providerMgr:Lorg/jivesoftware/smack/provider/ProviderManager;
    invoke-virtual {v6, p0, p1}, Lorg/jivesoftware/smack/provider/ProviderManager;->getExtensionProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 806
    .local v5, provider:Ljava/lang/Object;
    if-eqz v5, :cond_1

    .line 807
    instance-of v8, v5, Lorg/jivesoftware/smack/provider/PacketExtensionProvider;

    if-eqz v8, :cond_0

    .line 808
    move-object v0, v5

    check-cast v0, Lorg/jivesoftware/smack/provider/PacketExtensionProvider;

    move-object v8, v0

    invoke-interface {v8, p2}, Lorg/jivesoftware/smack/provider/PacketExtensionProvider;->parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v8

    .line 846
    .end local p0
    :goto_0
    return-object v8

    .line 809
    .restart local p0
    :cond_0
    instance-of v8, v5, Ljava/lang/Class;

    if-eqz v8, :cond_2

    .line 810
    move-object v0, v5

    check-cast v0, Ljava/lang/Class;

    move-object v8, v0

    invoke-static {p0, v8, p2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseWithIntrospection(Ljava/lang/String;Ljava/lang/Class;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/jivesoftware/smack/packet/PacketExtension;

    move-object v8, p0

    goto :goto_0

    .line 814
    .restart local p0
    :cond_1
    invoke-virtual {v6, p0, p1}, Lorg/jivesoftware/smack/provider/ProviderManager;->getRawXmlExtensionProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 815
    instance-of v8, v5, Lorg/jivesoftware/smack/provider/RawXmlExtensionProvider;

    if-eqz v8, :cond_2

    .line 816
    move-object v0, v5

    check-cast v0, Lorg/jivesoftware/smack/provider/RawXmlExtensionProvider;

    move-object v8, v0

    invoke-virtual {v8, p0, p1, p3}, Lorg/jivesoftware/smack/provider/RawXmlExtensionProvider;->parseRawXml(Ljava/lang/String;Ljava/lang/String;[B)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v8

    goto :goto_0

    .line 821
    :cond_2
    new-instance v3, Lorg/jivesoftware/smack/packet/DefaultPacketExtension;

    invoke-direct {v3, p0, p1}, Lorg/jivesoftware/smack/packet/DefaultPacketExtension;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    .local v3, extension:Lorg/jivesoftware/smack/packet/DefaultPacketExtension;
    const/4 v1, 0x0

    .line 823
    .local v1, done:Z
    :cond_3
    :goto_1
    if-nez v1, :cond_6

    .line 824
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 825
    .local v2, eventType:I
    const/4 v8, 0x2

    if-ne v2, v8, :cond_5

    .line 826
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 828
    .local v4, name:Ljava/lang/String;
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 829
    const-string v8, ""

    invoke-virtual {v3, v4, v8}, Lorg/jivesoftware/smack/packet/DefaultPacketExtension;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 833
    :cond_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 834
    const/4 v8, 0x4

    if-ne v2, v8, :cond_3

    .line 835
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    .line 836
    .local v7, value:Ljava/lang/String;
    invoke-virtual {v3, v4, v7}, Lorg/jivesoftware/smack/packet/DefaultPacketExtension;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 840
    .end local v4           #name:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :cond_5
    const/4 v8, 0x3

    if-ne v2, v8, :cond_3

    .line 841
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 842
    const/4 v1, 0x1

    goto :goto_1

    .end local v2           #eventType:I
    :cond_6
    move-object v8, v3

    .line 846
    goto :goto_0
.end method

.method public static parsePresence(Lcom/google/common/io/protocol/ProtoBuf;J)Lorg/jivesoftware/smack/packet/Packet;
    .locals 21
    .parameter "protobuf"
    .parameter "defaultAccountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 447
    const/4 v5, 0x3

    const-string v6, "ID_NOT_AVAILABLE"

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    invoke-static {v0, v1, v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getStringOrDefault(Lcom/google/common/io/protocol/ProtoBuf;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 449
    .local v9, id:Ljava/lang/String;
    const/4 v5, 0x1

    const-wide/16 v6, -0x1

    move-object/from16 v0, p0

    move v1, v5

    move-wide v2, v6

    invoke-static {v0, v1, v2, v3}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getLongOrDefault(Lcom/google/common/io/protocol/ProtoBuf;IJ)J

    move-result-wide v15

    .line 450
    .local v15, rmqId:J
    const/16 v5, 0xd

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    invoke-static {v0, v1, v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getStringOrDefault(Lcom/google/common/io/protocol/ProtoBuf;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 451
    .local v14, rmq2Id:Ljava/lang/String;
    const/16 v5, 0xf

    const/4 v6, -0x1

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-static {v0, v1, v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getIntOrDefault(Lcom/google/common/io/protocol/ProtoBuf;II)I

    move-result v10

    .line 453
    .local v10, lastStreamId:I
    const/16 v5, 0xe

    const/4 v6, -0x1

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-static {v0, v1, v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getIntOrDefault(Lcom/google/common/io/protocol/ProtoBuf;II)I

    move-result v18

    .line 456
    .local v18, streamId:I
    const/4 v5, 0x5

    const-string v6, ""

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    invoke-static {v0, v1, v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getStringOrDefault(Lcom/google/common/io/protocol/ProtoBuf;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 457
    .local v19, to:Ljava/lang/String;
    const/4 v5, 0x4

    const-string v6, ""

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    invoke-static {v0, v1, v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getStringOrDefault(Lcom/google/common/io/protocol/ProtoBuf;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 458
    .local v8, from:Ljava/lang/String;
    const/16 v5, 0x11

    move-object/from16 v0, p0

    move v1, v5

    move-wide/from16 v2, p1

    invoke-static {v0, v1, v2, v3}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getLongOrDefault(Lcom/google/common/io/protocol/ProtoBuf;IJ)J

    move-result-wide p1

    .line 461
    .local p1, accountId:J
    sget-object v5, Lorg/jivesoftware/smack/packet/Presence$Type;->AVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Type;

    .line 462
    .local v5, type:Lorg/jivesoftware/smack/packet/Presence$Type;
    const/4 v6, 0x2

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 463
    const/4 v6, 0x2

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_0
    move-object/from16 v20, v5

    .line 487
    .end local v5           #type:Lorg/jivesoftware/smack/packet/Presence$Type;
    .local v20, type:Lorg/jivesoftware/smack/packet/Presence$Type;
    :goto_0
    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    invoke-static {v0, v1, v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getStringOrDefault(Lcom/google/common/io/protocol/ProtoBuf;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 488
    .local v17, status:Ljava/lang/String;
    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-static {v0, v1, v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getIntOrDefault(Lcom/google/common/io/protocol/ProtoBuf;II)I

    move-result v13

    .line 490
    .local v13, priority:I
    sget-object v5, Lorg/jivesoftware/smack/packet/Presence$Mode;->AVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Mode;

    .line 492
    .local v5, mode:Lorg/jivesoftware/smack/packet/Presence$Mode;
    const/4 v6, 0x6

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 493
    const/4 v6, 0x6

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v6

    packed-switch v6, :pswitch_data_1

    :cond_1
    move-object v11, v5

    .line 508
    .end local v5           #mode:Lorg/jivesoftware/smack/packet/Presence$Mode;
    .local v11, mode:Lorg/jivesoftware/smack/packet/Presence$Mode;
    :goto_1
    const/4 v5, 0x0

    .line 509
    .local v5, clientType:Lorg/jivesoftware/smack/packet/Presence$ClientType;
    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 510
    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v6

    packed-switch v6, :pswitch_data_2

    :cond_2
    move-object v7, v5

    .line 527
    .end local v5           #clientType:Lorg/jivesoftware/smack/packet/Presence$ClientType;
    .local v7, clientType:Lorg/jivesoftware/smack/packet/Presence$ClientType;
    :goto_2
    const/4 v5, 0x0

    .line 528
    .local v5, caps:I
    const/16 v6, 0x10

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 529
    const/16 v5, 0x10

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    .end local v5           #caps:I
    move-result v5

    .restart local v5       #caps:I
    move v6, v5

    .line 532
    .end local v5           #caps:I
    .local v6, caps:I
    :goto_3
    const/4 v5, 0x0

    .line 533
    .local v5, avatarHash:Ljava/lang/String;
    const/16 v12, 0xc

    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 534
    const/16 v5, 0xc

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    .end local v5           #avatarHash:Ljava/lang/String;
    move-result-object v5

    .line 537
    .restart local v5       #avatarHash:Ljava/lang/String;
    :cond_3
    new-instance v12, Lorg/jivesoftware/smack/packet/Presence;

    move-object v0, v12

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    move v3, v13

    move-object v4, v11

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;Ljava/lang/String;ILorg/jivesoftware/smack/packet/Presence$Mode;)V

    .line 538
    .local v12, presence:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v12, v8}, Lorg/jivesoftware/smack/packet/Presence;->setFrom(Ljava/lang/String;)V

    .line 539
    move-object v0, v12

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 540
    move-object v0, v12

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/packet/Presence;->setAccountId(J)V

    .line 541
    invoke-virtual {v12, v9}, Lorg/jivesoftware/smack/packet/Presence;->setPacketID(Ljava/lang/String;)V

    .line 542
    move-object v0, v12

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/packet/Presence;->setRmqId(J)V

    .line 543
    invoke-virtual {v12, v14}, Lorg/jivesoftware/smack/packet/Presence;->setRmq2Id(Ljava/lang/String;)V

    .line 544
    invoke-virtual {v12, v10}, Lorg/jivesoftware/smack/packet/Presence;->setLastStreamId(I)V

    .line 545
    move-object v0, v12

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;->setStreamId(I)V

    .line 546
    invoke-virtual {v12, v7}, Lorg/jivesoftware/smack/packet/Presence;->setClientType(Lorg/jivesoftware/smack/packet/Presence$ClientType;)V

    .line 547
    invoke-virtual {v12, v5}, Lorg/jivesoftware/smack/packet/Presence;->setAvatarHash(Ljava/lang/String;)V

    .line 548
    invoke-virtual {v12, v6}, Lorg/jivesoftware/smack/packet/Presence;->setCapabilityFlag(I)V

    .line 550
    sget-object p1, Lorg/jivesoftware/smack/packet/Presence$Type;->ERROR:Lorg/jivesoftware/smack/packet/Presence$Type;

    .end local p1           #accountId:J
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_4

    .line 551
    const/16 p1, 0x9

    invoke-virtual/range {p0 .. p1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 552
    const/16 p1, 0x9

    invoke-virtual/range {p0 .. p1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object p1

    .line 554
    .local p1, errorProtobuf:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-static/range {p1 .. p1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseError(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object p1

    .end local p1           #errorProtobuf:Lcom/google/common/io/protocol/ProtoBuf;
    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;->setError(Lorg/jivesoftware/smack/packet/XMPPError;)V

    .line 557
    :cond_4
    const/16 p1, 0xa

    invoke-virtual/range {p0 .. p1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v5

    .line 558
    .local v5, numExtensions:I
    const/16 p1, 0x0

    .local p1, i:I
    move/from16 p2, p1

    .end local p1           #i:I
    .local p2, i:I
    :goto_4
    move/from16 v0, p2

    move v1, v5

    if-ge v0, v1, :cond_6

    .line 559
    const/16 p1, 0xa

    invoke-virtual/range {p0 .. p2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parsePacketExtension(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object p1

    .line 561
    .local p1, extension:Lorg/jivesoftware/smack/packet/PacketExtension;
    if-eqz p1, :cond_5

    .line 562
    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 558
    :cond_5
    add-int/lit8 p1, p2, 0x1

    .end local p2           #i:I
    .local p1, i:I
    move/from16 p2, p1

    .end local p1           #i:I
    .restart local p2       #i:I
    goto :goto_4

    .line 465
    .end local v6           #caps:I
    .end local v7           #clientType:Lorg/jivesoftware/smack/packet/Presence$ClientType;
    .end local v11           #mode:Lorg/jivesoftware/smack/packet/Presence$Mode;
    .end local v12           #presence:Lorg/jivesoftware/smack/packet/Presence;
    .end local v13           #priority:I
    .end local v17           #status:Ljava/lang/String;
    .end local v20           #type:Lorg/jivesoftware/smack/packet/Presence$Type;
    .end local p2           #i:I
    .local v5, type:Lorg/jivesoftware/smack/packet/Presence$Type;
    .local p1, accountId:J
    :pswitch_0
    sget-object v5, Lorg/jivesoftware/smack/packet/Presence$Type;->UNAVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Type;

    move-object/from16 v20, v5

    .line 466
    .end local v5           #type:Lorg/jivesoftware/smack/packet/Presence$Type;
    .restart local v20       #type:Lorg/jivesoftware/smack/packet/Presence$Type;
    goto/16 :goto_0

    .line 468
    .end local v20           #type:Lorg/jivesoftware/smack/packet/Presence$Type;
    .restart local v5       #type:Lorg/jivesoftware/smack/packet/Presence$Type;
    :pswitch_1
    sget-object v5, Lorg/jivesoftware/smack/packet/Presence$Type;->PROBE:Lorg/jivesoftware/smack/packet/Presence$Type;

    move-object/from16 v20, v5

    .line 469
    .end local v5           #type:Lorg/jivesoftware/smack/packet/Presence$Type;
    .restart local v20       #type:Lorg/jivesoftware/smack/packet/Presence$Type;
    goto/16 :goto_0

    .line 471
    .end local v20           #type:Lorg/jivesoftware/smack/packet/Presence$Type;
    .restart local v5       #type:Lorg/jivesoftware/smack/packet/Presence$Type;
    :pswitch_2
    sget-object v5, Lorg/jivesoftware/smack/packet/Presence$Type;->SUBSCRIBE:Lorg/jivesoftware/smack/packet/Presence$Type;

    move-object/from16 v20, v5

    .line 472
    .end local v5           #type:Lorg/jivesoftware/smack/packet/Presence$Type;
    .restart local v20       #type:Lorg/jivesoftware/smack/packet/Presence$Type;
    goto/16 :goto_0

    .line 474
    .end local v20           #type:Lorg/jivesoftware/smack/packet/Presence$Type;
    .restart local v5       #type:Lorg/jivesoftware/smack/packet/Presence$Type;
    :pswitch_3
    sget-object v5, Lorg/jivesoftware/smack/packet/Presence$Type;->SUBSCRIBED:Lorg/jivesoftware/smack/packet/Presence$Type;

    move-object/from16 v20, v5

    .line 475
    .end local v5           #type:Lorg/jivesoftware/smack/packet/Presence$Type;
    .restart local v20       #type:Lorg/jivesoftware/smack/packet/Presence$Type;
    goto/16 :goto_0

    .line 477
    .end local v20           #type:Lorg/jivesoftware/smack/packet/Presence$Type;
    .restart local v5       #type:Lorg/jivesoftware/smack/packet/Presence$Type;
    :pswitch_4
    sget-object v5, Lorg/jivesoftware/smack/packet/Presence$Type;->UNSUBSCRIBE:Lorg/jivesoftware/smack/packet/Presence$Type;

    move-object/from16 v20, v5

    .line 478
    .end local v5           #type:Lorg/jivesoftware/smack/packet/Presence$Type;
    .restart local v20       #type:Lorg/jivesoftware/smack/packet/Presence$Type;
    goto/16 :goto_0

    .line 480
    .end local v20           #type:Lorg/jivesoftware/smack/packet/Presence$Type;
    .restart local v5       #type:Lorg/jivesoftware/smack/packet/Presence$Type;
    :pswitch_5
    sget-object v5, Lorg/jivesoftware/smack/packet/Presence$Type;->UNSUBSCRIBED:Lorg/jivesoftware/smack/packet/Presence$Type;

    move-object/from16 v20, v5

    .line 481
    .end local v5           #type:Lorg/jivesoftware/smack/packet/Presence$Type;
    .restart local v20       #type:Lorg/jivesoftware/smack/packet/Presence$Type;
    goto/16 :goto_0

    .line 483
    .end local v20           #type:Lorg/jivesoftware/smack/packet/Presence$Type;
    .restart local v5       #type:Lorg/jivesoftware/smack/packet/Presence$Type;
    :pswitch_6
    sget-object v5, Lorg/jivesoftware/smack/packet/Presence$Type;->ERROR:Lorg/jivesoftware/smack/packet/Presence$Type;

    move-object/from16 v20, v5

    .end local v5           #type:Lorg/jivesoftware/smack/packet/Presence$Type;
    .restart local v20       #type:Lorg/jivesoftware/smack/packet/Presence$Type;
    goto/16 :goto_0

    .local v5, mode:Lorg/jivesoftware/smack/packet/Presence$Mode;
    .restart local v13       #priority:I
    .restart local v17       #status:Ljava/lang/String;
    :pswitch_7
    move-object v11, v5

    .line 495
    .end local v5           #mode:Lorg/jivesoftware/smack/packet/Presence$Mode;
    .restart local v11       #mode:Lorg/jivesoftware/smack/packet/Presence$Mode;
    goto/16 :goto_1

    .line 497
    .end local v11           #mode:Lorg/jivesoftware/smack/packet/Presence$Mode;
    .restart local v5       #mode:Lorg/jivesoftware/smack/packet/Presence$Mode;
    :pswitch_8
    sget-object v5, Lorg/jivesoftware/smack/packet/Presence$Mode;->AWAY:Lorg/jivesoftware/smack/packet/Presence$Mode;

    move-object v11, v5

    .line 498
    .end local v5           #mode:Lorg/jivesoftware/smack/packet/Presence$Mode;
    .restart local v11       #mode:Lorg/jivesoftware/smack/packet/Presence$Mode;
    goto/16 :goto_1

    .line 500
    .end local v11           #mode:Lorg/jivesoftware/smack/packet/Presence$Mode;
    .restart local v5       #mode:Lorg/jivesoftware/smack/packet/Presence$Mode;
    :pswitch_9
    sget-object v5, Lorg/jivesoftware/smack/packet/Presence$Mode;->EXTENDED_AWAY:Lorg/jivesoftware/smack/packet/Presence$Mode;

    move-object v11, v5

    .line 501
    .end local v5           #mode:Lorg/jivesoftware/smack/packet/Presence$Mode;
    .restart local v11       #mode:Lorg/jivesoftware/smack/packet/Presence$Mode;
    goto/16 :goto_1

    .line 503
    .end local v11           #mode:Lorg/jivesoftware/smack/packet/Presence$Mode;
    .restart local v5       #mode:Lorg/jivesoftware/smack/packet/Presence$Mode;
    :pswitch_a
    sget-object v5, Lorg/jivesoftware/smack/packet/Presence$Mode;->DO_NOT_DISTURB:Lorg/jivesoftware/smack/packet/Presence$Mode;

    move-object v11, v5

    .end local v5           #mode:Lorg/jivesoftware/smack/packet/Presence$Mode;
    .restart local v11       #mode:Lorg/jivesoftware/smack/packet/Presence$Mode;
    goto/16 :goto_1

    .line 512
    .local v5, clientType:Lorg/jivesoftware/smack/packet/Presence$ClientType;
    :pswitch_b
    sget-object v5, Lorg/jivesoftware/smack/packet/Presence$ClientType;->ANDROID:Lorg/jivesoftware/smack/packet/Presence$ClientType;

    move-object v7, v5

    .line 513
    .end local v5           #clientType:Lorg/jivesoftware/smack/packet/Presence$ClientType;
    .restart local v7       #clientType:Lorg/jivesoftware/smack/packet/Presence$ClientType;
    goto/16 :goto_2

    .line 515
    .end local v7           #clientType:Lorg/jivesoftware/smack/packet/Presence$ClientType;
    .restart local v5       #clientType:Lorg/jivesoftware/smack/packet/Presence$ClientType;
    :pswitch_c
    sget-object v5, Lorg/jivesoftware/smack/packet/Presence$ClientType;->MOBILE:Lorg/jivesoftware/smack/packet/Presence$ClientType;

    move-object v7, v5

    .line 516
    .end local v5           #clientType:Lorg/jivesoftware/smack/packet/Presence$ClientType;
    .restart local v7       #clientType:Lorg/jivesoftware/smack/packet/Presence$ClientType;
    goto/16 :goto_2

    .line 566
    .end local p1           #accountId:J
    .local v5, numExtensions:I
    .restart local v6       #caps:I
    .restart local v12       #presence:Lorg/jivesoftware/smack/packet/Presence;
    .restart local p2       #i:I
    :cond_6
    return-object v12

    .end local v6           #caps:I
    .end local v12           #presence:Lorg/jivesoftware/smack/packet/Presence;
    .end local p2           #i:I
    .local v5, caps:I
    .restart local p1       #accountId:J
    :cond_7
    move v6, v5

    .end local v5           #caps:I
    .restart local v6       #caps:I
    goto/16 :goto_3

    .line 463
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_6
    .end packed-switch

    .line 493
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_9
    .end packed-switch

    .line 510
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method public static parsePresence(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Presence;
    .locals 6
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 378
    const-string v0, ""

    const-string v1, "type"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/packet/Presence$Type;->fromString(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v0

    .line 380
    .local v0, type:Lorg/jivesoftware/smack/packet/Presence$Type;
    new-instance v3, Lorg/jivesoftware/smack/packet/Presence;

    invoke-direct {v3, v0}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 381
    .local v3, presence:Lorg/jivesoftware/smack/packet/Presence;
    const-string v0, ""

    .end local v0           #type:Lorg/jivesoftware/smack/packet/Presence$Type;
    const-string v1, "to"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 382
    const-string v0, ""

    const-string v1, "from"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/jivesoftware/smack/packet/Presence;->setFrom(Ljava/lang/String;)V

    .line 383
    const-string v0, ""

    const-string v1, "id"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, id:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, "ID_NOT_AVAILABLE"

    .end local v0           #id:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3, v0}, Lorg/jivesoftware/smack/packet/Presence;->setPacketID(Ljava/lang/String;)V

    .line 386
    const-string v0, ""

    const-string v1, "stanza-id"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseRmqIdFromString(Ljava/lang/String;)J

    move-result-wide v0

    .line 388
    .local v0, rmqId:J
    invoke-virtual {v3, v0, v1}, Lorg/jivesoftware/smack/packet/Presence;->setRmqId(J)V

    .line 391
    const/4 v0, 0x0

    .line 392
    .local v0, done:Z
    :cond_1
    :goto_0
    if-nez v0, :cond_8

    .line 393
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 394
    .local v1, eventType:I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 395
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 396
    .local v1, elementName:Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    .line 397
    .local v2, namespace:Ljava/lang/String;
    const-string v4, "status"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 398
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .end local v1           #elementName:Ljava/lang/String;
    invoke-virtual {v3, v1}, Lorg/jivesoftware/smack/packet/Presence;->setStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 400
    .restart local v1       #elementName:Ljava/lang/String;
    :cond_2
    const-string v4, "priority"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 402
    :try_start_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .end local v1           #elementName:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 403
    .local v1, priority:I
    invoke-virtual {v3, v1}, Lorg/jivesoftware/smack/packet/Presence;->setPriority(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 405
    .end local v1           #priority:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 406
    :catch_1
    move-exception v1

    .line 408
    .local v1, iae:Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lorg/jivesoftware/smack/packet/Presence;->setPriority(I)V

    goto :goto_0

    .line 411
    .local v1, elementName:Ljava/lang/String;
    :cond_3
    const-string v4, "show"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 412
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .end local v1           #elementName:Ljava/lang/String;
    invoke-static {v1}, Lorg/jivesoftware/smack/packet/Presence$Mode;->fromString(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Presence$Mode;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/jivesoftware/smack/packet/Presence;->setMode(Lorg/jivesoftware/smack/packet/Presence$Mode;)V

    goto :goto_0

    .line 414
    .restart local v1       #elementName:Ljava/lang/String;
    :cond_4
    const-string v4, "error"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 415
    invoke-static {p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseError(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    .end local v1           #elementName:Ljava/lang/String;
    invoke-virtual {v3, v1}, Lorg/jivesoftware/smack/packet/Presence;->setError(Lorg/jivesoftware/smack/packet/XMPPError;)V

    goto :goto_0

    .line 417
    .restart local v1       #elementName:Ljava/lang/String;
    :cond_5
    const-string v4, "properties"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "http://www.jivesoftware.com/xmlns/xmpp/properties"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 420
    invoke-static {p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseProperties(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;

    move-result-object v4

    .line 422
    .local v4, properties:Ljava/util/Map;
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .end local v1           #elementName:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2           #namespace:Ljava/lang/String;
    .local v1, i:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 423
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 424
    .local v2, name:Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lorg/jivesoftware/smack/packet/Presence;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 429
    .end local v4           #properties:Ljava/util/Map;
    .local v1, elementName:Ljava/lang/String;
    .local v2, namespace:Ljava/lang/String;
    :cond_6
    invoke-static {v1, v2, p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parsePacketExtension(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v1

    .end local v1           #elementName:Ljava/lang/String;
    invoke-virtual {v3, v1}, Lorg/jivesoftware/smack/packet/Presence;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    goto/16 :goto_0

    .line 433
    .end local v2           #namespace:Ljava/lang/String;
    .local v1, eventType:I
    :cond_7
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 434
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .end local v1           #eventType:I
    const-string v2, "presence"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 435
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 439
    :cond_8
    return-object v3
.end method

.method public static parseProperties(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;
    .locals 13
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    .line 620
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 622
    .local v4, properties:Ljava/util/Map;
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 623
    .local v2, eventType:I
    if-ne v2, v11, :cond_b

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "property"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 625
    const/4 v0, 0x0

    .line 626
    .local v0, done:Z
    const/4 v3, 0x0

    .line 627
    .local v3, name:Ljava/lang/String;
    const/4 v5, 0x0

    .line 628
    .local v5, type:Ljava/lang/String;
    const/4 v7, 0x0

    .line 629
    .local v7, valueText:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, value:Ljava/lang/Object;
    move-object v8, v6

    .line 630
    .end local v6           #value:Ljava/lang/Object;
    :cond_1
    :goto_0
    if-nez v0, :cond_0

    .line 631
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 632
    if-ne v2, v11, :cond_3

    .line 633
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 634
    .local v1, elementName:Ljava/lang/String;
    const-string v9, "name"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 635
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 637
    :cond_2
    const-string v9, "value"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 638
    const-string v9, ""

    const-string v10, "type"

    invoke-interface {p0, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 639
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 642
    .end local v1           #elementName:Ljava/lang/String;
    :cond_3
    if-ne v2, v12, :cond_1

    .line 643
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "property"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 644
    const-string v9, "integer"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 645
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .local v6, value:Ljava/lang/Integer;
    move-object v8, v6

    .line 674
    .end local v6           #value:Ljava/lang/Integer;
    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    if-eqz v8, :cond_5

    .line 675
    invoke-interface {v4, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    .line 647
    :cond_6
    const-string v9, "long"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 648
    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    .local v6, value:Ljava/lang/Long;
    move-object v8, v6

    goto :goto_1

    .line 650
    .end local v6           #value:Ljava/lang/Long;
    :cond_7
    const-string v9, "float"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 651
    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    .local v6, value:Ljava/lang/Float;
    move-object v8, v6

    goto :goto_1

    .line 653
    .end local v6           #value:Ljava/lang/Float;
    :cond_8
    const-string v9, "double"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 654
    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    .local v6, value:Ljava/lang/Double;
    move-object v8, v6

    goto :goto_1

    .line 656
    .end local v6           #value:Ljava/lang/Double;
    :cond_9
    const-string v9, "boolean"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 657
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    .local v6, value:Ljava/lang/Boolean;
    move-object v8, v6

    goto :goto_1

    .line 659
    .end local v6           #value:Ljava/lang/Boolean;
    :cond_a
    const-string v9, "string"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 660
    move-object v6, v7

    .local v6, value:Ljava/lang/String;
    move-object v8, v6

    goto :goto_1

    .line 682
    .end local v0           #done:Z
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #type:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    .end local v7           #valueText:Ljava/lang/String;
    :cond_b
    if-ne v2, v12, :cond_0

    .line 683
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "properties"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 688
    return-object v4
.end method

.method public static parseRmqIdFromString(Ljava/lang/String;)J
    .locals 6
    .parameter "idStr"

    .prologue
    .line 904
    const-wide/16 v1, -0x1

    .line 908
    .local v1, retVal:J
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 910
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 916
    :cond_0
    :goto_0
    return-wide v1

    .line 911
    :catch_0
    move-exception v0

    .line 912
    .local v0, ex:Ljava/lang/NumberFormatException;
    const-string v3, "Smack"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseRmqIdFromString caught "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static parseWithIntrospection(Ljava/lang/String;Ljava/lang/Class;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;
    .locals 2
    .parameter "elementName"
    .parameter "objectClass"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 922
    const/4 v0, 0x0

    .line 923
    .local v0, done:Z
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 946
    .local v1, object:Ljava/lang/Object;
    return-object v1
.end method
