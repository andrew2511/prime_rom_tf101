.class public final Lcom/google/protos/speech/common/Alternates$Alternate;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Alternates.java"

# interfaces
.implements Lcom/google/protos/speech/common/Alternates$AlternateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/common/Alternates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Alternate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/common/Alternates$Alternate$Builder;
    }
.end annotation


# static fields
.field public static final CONFIDENCE_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/common/Alternates$Alternate;",
            ">;"
        }
    .end annotation
.end field

.field public static final TEXT_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/protos/speech/common/Alternates$Alternate;


# instance fields
.field private bitField0_:I

.field private confidence_:F

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private text_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1514
    new-instance v0, Lcom/google/protos/speech/common/Alternates$Alternate$1;

    invoke-direct {v0}, Lcom/google/protos/speech/common/Alternates$Alternate$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/common/Alternates$Alternate;->PARSER:Lcom/google/protobuf/Parser;

    .line 1859
    new-instance v0, Lcom/google/protos/speech/common/Alternates$Alternate;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/common/Alternates$Alternate;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/common/Alternates$Alternate;->defaultInstance:Lcom/google/protos/speech/common/Alternates$Alternate;

    .line 1860
    sget-object v0, Lcom/google/protos/speech/common/Alternates$Alternate;->defaultInstance:Lcom/google/protos/speech/common/Alternates$Alternate;

    invoke-direct {v0}, Lcom/google/protos/speech/common/Alternates$Alternate;->initFields()V

    .line 1861
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v0, -0x1

    .line 1475
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1577
    iput-byte v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->memoizedIsInitialized:B

    .line 1601
    iput v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->memoizedSerializedSize:I

    .line 1476
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$Alternate;->initFields()V

    .line 1479
    const/4 v0, 0x0

    .line 1480
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 1481
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1482
    sparse-switch v1, :sswitch_data_0

    .line 1487
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/speech/common/Alternates$Alternate;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 1489
    goto :goto_0

    :sswitch_0
    move v0, v2

    .line 1485
    goto :goto_0

    .line 1494
    :sswitch_1
    iget v1, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->bitField0_:I

    .line 1495
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->text_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1505
    :catch_0
    move-exception v0

    .line 1506
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1511
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$Alternate;->makeExtensionsImmutable()V

    throw v0

    .line 1499
    :sswitch_2
    :try_start_2
    iget v1, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->bitField0_:I

    .line 1500
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->confidence_:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1507
    :catch_1
    move-exception v0

    .line 1508
    :try_start_3
    new-instance v1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1511
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$Alternate;->makeExtensionsImmutable()V

    .line 1513
    return-void

    .line 1482
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x15 -> :sswitch_2
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/speech/common/Alternates$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1453
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/common/Alternates$Alternate;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1458
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1577
    iput-byte v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->memoizedIsInitialized:B

    .line 1601
    iput v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->memoizedSerializedSize:I

    .line 1460
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/common/Alternates$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1453
    invoke-direct {p0, p1}, Lcom/google/protos/speech/common/Alternates$Alternate;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1461
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1577
    iput-byte v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->memoizedIsInitialized:B

    .line 1601
    iput v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->memoizedSerializedSize:I

    .line 1461
    return-void
.end method

.method static synthetic access$2300(Lcom/google/protos/speech/common/Alternates$Alternate;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1453
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->text_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/google/protos/speech/common/Alternates$Alternate;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1453
    iput-object p1, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->text_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/google/protos/speech/common/Alternates$Alternate;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1453
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->confidence_:F

    return p1
.end method

.method static synthetic access$2502(Lcom/google/protos/speech/common/Alternates$Alternate;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1453
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/common/Alternates$Alternate;
    .locals 1

    .prologue
    .line 1465
    sget-object v0, Lcom/google/protos/speech/common/Alternates$Alternate;->defaultInstance:Lcom/google/protos/speech/common/Alternates$Alternate;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 1574
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->text_:Ljava/lang/Object;

    .line 1575
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->confidence_:F

    .line 1576
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/common/Alternates$Alternate$Builder;
    .locals 1

    .prologue
    .line 1678
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->access$2100()Lcom/google/protos/speech/common/Alternates$Alternate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/common/Alternates$Alternate;)Lcom/google/protos/speech/common/Alternates$Alternate$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1681
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$Alternate;->newBuilder()Lcom/google/protos/speech/common/Alternates$Alternate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$Alternate;)Lcom/google/protos/speech/common/Alternates$Alternate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/common/Alternates$Alternate;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1658
    sget-object v0, Lcom/google/protos/speech/common/Alternates$Alternate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$Alternate;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$Alternate;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1664
    sget-object v0, Lcom/google/protos/speech/common/Alternates$Alternate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$Alternate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/common/Alternates$Alternate;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1628
    sget-object v0, Lcom/google/protos/speech/common/Alternates$Alternate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$Alternate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$Alternate;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1634
    sget-object v0, Lcom/google/protos/speech/common/Alternates$Alternate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$Alternate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/speech/common/Alternates$Alternate;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1669
    sget-object v0, Lcom/google/protos/speech/common/Alternates$Alternate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$Alternate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$Alternate;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1675
    sget-object v0, Lcom/google/protos/speech/common/Alternates$Alternate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$Alternate;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/common/Alternates$Alternate;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1648
    sget-object v0, Lcom/google/protos/speech/common/Alternates$Alternate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$Alternate;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$Alternate;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1654
    sget-object v0, Lcom/google/protos/speech/common/Alternates$Alternate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$Alternate;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/speech/common/Alternates$Alternate;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1638
    sget-object v0, Lcom/google/protos/speech/common/Alternates$Alternate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$Alternate;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$Alternate;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1644
    sget-object v0, Lcom/google/protos/speech/common/Alternates$Alternate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$Alternate;

    return-object p0
.end method


# virtual methods
.method public getConfidence()F
    .locals 1

    .prologue
    .line 1570
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->confidence_:F

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1453
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$Alternate;->getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$Alternate;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$Alternate;
    .locals 1

    .prologue
    .line 1469
    sget-object v0, Lcom/google/protos/speech/common/Alternates$Alternate;->defaultInstance:Lcom/google/protos/speech/common/Alternates$Alternate;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/common/Alternates$Alternate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1526
    sget-object v0, Lcom/google/protos/speech/common/Alternates$Alternate;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1603
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->memoizedSerializedSize:I

    .line 1604
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1616
    :goto_0
    return v0

    .line 1606
    :cond_0
    const/4 v0, 0x0

    .line 1607
    iget v1, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 1608
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$Alternate;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1611
    :cond_1
    iget v1, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 1612
    iget v1, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->confidence_:F

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1615
    :cond_2
    iput v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1537
    iget-object v1, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->text_:Ljava/lang/Object;

    .line 1538
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1539
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 1547
    :goto_0
    return-object v1

    .line 1541
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 1543
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1544
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1545
    iput-object v2, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->text_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1547
    goto :goto_0
.end method

.method public getTextBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->text_:Ljava/lang/Object;

    .line 1553
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1554
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1556
    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->text_:Ljava/lang/Object;

    .line 1559
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasConfidence()Z
    .locals 2

    .prologue
    .line 1567
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->bitField0_:I

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

.method public hasText()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1534
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1579
    iget-byte v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->memoizedIsInitialized:B

    .line 1580
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 1587
    :goto_0
    return v0

    :cond_0
    move v0, v3

    .line 1580
    goto :goto_0

    .line 1582
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$Alternate;->hasText()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1583
    iput-byte v3, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->memoizedIsInitialized:B

    move v0, v3

    .line 1584
    goto :goto_0

    .line 1586
    :cond_2
    iput-byte v2, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->memoizedIsInitialized:B

    move v0, v2

    .line 1587
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1453
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$Alternate;->newBuilderForType()Lcom/google/protos/speech/common/Alternates$Alternate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/common/Alternates$Alternate$Builder;
    .locals 1

    .prologue
    .line 1679
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$Alternate;->newBuilder()Lcom/google/protos/speech/common/Alternates$Alternate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1453
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$Alternate;->toBuilder()Lcom/google/protos/speech/common/Alternates$Alternate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/common/Alternates$Alternate$Builder;
    .locals 1

    .prologue
    .line 1683
    invoke-static {p0}, Lcom/google/protos/speech/common/Alternates$Alternate;->newBuilder(Lcom/google/protos/speech/common/Alternates$Alternate;)Lcom/google/protos/speech/common/Alternates$Alternate$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1622
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1592
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$Alternate;->getSerializedSize()I

    .line 1593
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 1594
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$Alternate;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1596
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 1597
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->confidence_:F

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 1599
    :cond_1
    return-void
.end method
