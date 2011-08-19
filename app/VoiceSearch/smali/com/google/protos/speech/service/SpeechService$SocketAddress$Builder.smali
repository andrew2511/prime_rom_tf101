.class public final Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$SocketAddressOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$SocketAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$SocketAddress;",
        "Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$SocketAddressOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private host_:Ljava/lang/Object;

.field private port_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1536
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1632
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->host_:Ljava/lang/Object;

    .line 1537
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->maybeForceBuilderInitialization()V

    .line 1538
    return-void
.end method

.method static synthetic access$1300()Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;
    .locals 1

    .prologue
    .line 1531
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->create()Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;
    .locals 1

    .prologue
    .line 1543
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 1541
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1531
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->build()Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$SocketAddress;
    .locals 2

    .prologue
    .line 1564
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    move-result-object v0

    .line 1565
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1566
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1568
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1531
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$SocketAddress;
    .locals 5

    .prologue
    .line 1572
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 1573
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->bitField0_:I

    .line 1574
    const/4 v2, 0x0

    .line 1575
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1576
    or-int/lit8 v2, v2, 0x1

    .line 1578
    :cond_0
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->host_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->access$1502(Lcom/google/protos/speech/service/SpeechService$SocketAddress;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1579
    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 1580
    or-int/lit8 v1, v2, 0x2

    .line 1582
    :goto_0
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->port_:I

    invoke-static {v0, v2}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->access$1602(Lcom/google/protos/speech/service/SpeechService$SocketAddress;I)I

    .line 1583
    invoke-static {v0, v1}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->access$1702(Lcom/google/protos/speech/service/SpeechService$SocketAddress;I)I

    .line 1584
    return-object v0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1531
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1531
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;
    .locals 1

    .prologue
    .line 1547
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1548
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->host_:Ljava/lang/Object;

    .line 1549
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->bitField0_:I

    .line 1550
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->port_:I

    .line 1551
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->bitField0_:I

    .line 1552
    return-object p0
.end method

.method public clearHost()Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;
    .locals 1

    .prologue
    .line 1668
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->bitField0_:I

    .line 1669
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->host_:Ljava/lang/Object;

    .line 1671
    return-object p0
.end method

.method public clearPort()Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;
    .locals 1

    .prologue
    .line 1699
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->bitField0_:I

    .line 1700
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->port_:I

    .line 1702
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1531
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1531
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1531
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;
    .locals 2

    .prologue
    .line 1556
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->create()Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SocketAddress;)Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1531
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1531
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1531
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SocketAddress;
    .locals 1

    .prologue
    .line 1560
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1637
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->host_:Ljava/lang/Object;

    .line 1638
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1639
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1640
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->host_:Ljava/lang/Object;

    .line 1643
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getHostBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 1648
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->host_:Ljava/lang/Object;

    .line 1649
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1650
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1652
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->host_:Ljava/lang/Object;

    .line 1655
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 1690
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->port_:I

    return v0
.end method

.method public hasHost()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1634
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPort()Z
    .locals 2

    .prologue
    .line 1687
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1601
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->hasHost()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 1609
    :goto_0
    return v0

    .line 1605
    :cond_0
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->hasPort()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 1607
    goto :goto_0

    .line 1609
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1531
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1531
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SocketAddress;)Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1531
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1616
    const/4 v1, 0x0

    .line 1618
    :try_start_0
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1623
    if-eqz v0, :cond_0

    .line 1624
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SocketAddress;)Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    .line 1627
    :cond_0
    return-object p0

    .line 1619
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 1620
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1621
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1623
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 1624
    invoke-virtual {p0, v1}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SocketAddress;)Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    :cond_1
    throw v0

    .line 1623
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$SocketAddress;)Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1588
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 1597
    :goto_0
    return-object v0

    .line 1589
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->hasHost()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1590
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->bitField0_:I

    .line 1591
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->access$1500(Lcom/google/protos/speech/service/SpeechService$SocketAddress;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->host_:Ljava/lang/Object;

    .line 1594
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->hasPort()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1595
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->getPort()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->setPort(I)Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    :cond_2
    move-object v0, p0

    .line 1597
    goto :goto_0
.end method

.method public setHost(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1659
    if-nez p1, :cond_0

    .line 1660
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1662
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->bitField0_:I

    .line 1663
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->host_:Ljava/lang/Object;

    .line 1665
    return-object p0
.end method

.method public setHostBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1675
    if-nez p1, :cond_0

    .line 1676
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1678
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->bitField0_:I

    .line 1679
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->host_:Ljava/lang/Object;

    .line 1681
    return-object p0
.end method

.method public setPort(I)Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1693
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->bitField0_:I

    .line 1694
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->port_:I

    .line 1696
    return-object p0
.end method
