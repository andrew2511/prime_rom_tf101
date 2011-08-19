.class public final Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "GoogleSearchRequest.java"

# interfaces
.implements Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/voicesearch/GoogleSearchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestAttributeProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;
    }
.end annotation


# static fields
.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1459
    new-instance v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$1;

    invoke-direct {v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$1;-><init>()V

    sput-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 1869
    new-instance v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;-><init>(Z)V

    sput-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->defaultInstance:Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    .line 1870
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->defaultInstance:Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    invoke-direct {v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->initFields()V

    .line 1871
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

    .line 1420
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1545
    iput-byte v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->memoizedIsInitialized:B

    .line 1573
    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->memoizedSerializedSize:I

    .line 1421
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->initFields()V

    .line 1424
    const/4 v0, 0x0

    .line 1425
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 1426
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1427
    sparse-switch v1, :sswitch_data_0

    .line 1432
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 1434
    goto :goto_0

    :sswitch_0
    move v0, v2

    .line 1430
    goto :goto_0

    .line 1439
    :sswitch_1
    iget v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->bitField0_:I

    .line 1440
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->name_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1450
    :catch_0
    move-exception v0

    .line 1451
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1456
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->makeExtensionsImmutable()V

    throw v0

    .line 1444
    :sswitch_2
    :try_start_2
    iget v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->bitField0_:I

    .line 1445
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->value_:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1452
    :catch_1
    move-exception v0

    .line 1453
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

    .line 1456
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->makeExtensionsImmutable()V

    .line 1458
    return-void

    .line 1427
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/voicesearch/GoogleSearchRequest$1;)V
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
    .line 1398
    invoke-direct {p0, p1, p2}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1403
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1545
    iput-byte v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->memoizedIsInitialized:B

    .line 1573
    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->memoizedSerializedSize:I

    .line 1405
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/voicesearch/GoogleSearchRequest$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1398
    invoke-direct {p0, p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1406
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1545
    iput-byte v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->memoizedIsInitialized:B

    .line 1573
    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->memoizedSerializedSize:I

    .line 1406
    return-void
.end method

.method static synthetic access$1600(Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1398
    iput-object p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->value_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1398
    iput-object p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1398
    iput p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;
    .locals 1

    .prologue
    .line 1410
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->defaultInstance:Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 1542
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->name_:Ljava/lang/Object;

    .line 1543
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->value_:Ljava/lang/Object;

    .line 1544
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;
    .locals 1

    .prologue
    .line 1650
    invoke-static {}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->access$1400()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1653
    invoke-static {}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->newBuilder()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->mergeFrom(Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1630
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1636
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1600
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1606
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1641
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1647
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1620
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1626
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1610
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1616
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1398
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->getDefaultInstanceForType()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;
    .locals 1

    .prologue
    .line 1414
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->defaultInstance:Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1482
    iget-object v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->name_:Ljava/lang/Object;

    .line 1483
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1484
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 1492
    :goto_0
    return-object v1

    .line 1486
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 1488
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1489
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1490
    iput-object v2, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->name_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1492
    goto :goto_0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 1497
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->name_:Ljava/lang/Object;

    .line 1498
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1499
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1501
    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->name_:Ljava/lang/Object;

    .line 1504
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1471
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1575
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->memoizedSerializedSize:I

    .line 1576
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1588
    :goto_0
    return v0

    .line 1578
    :cond_0
    const/4 v0, 0x0

    .line 1579
    iget v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 1580
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1583
    :cond_1
    iget v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 1584
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1587
    :cond_2
    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1515
    iget-object v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->value_:Ljava/lang/Object;

    .line 1516
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1517
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 1525
    :goto_0
    return-object v1

    .line 1519
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 1521
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1522
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1523
    iput-object v2, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->value_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1525
    goto :goto_0
.end method

.method public getValueBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 1530
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->value_:Ljava/lang/Object;

    .line 1531
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1532
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1534
    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->value_:Ljava/lang/Object;

    .line 1537
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasName()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1479
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValue()Z
    .locals 2

    .prologue
    .line 1512
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->bitField0_:I

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
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1547
    iget-byte v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->memoizedIsInitialized:B

    .line 1548
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 1559
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 1548
    goto :goto_0

    .line 1550
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->hasName()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1551
    iput-byte v2, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->memoizedIsInitialized:B

    move v0, v2

    .line 1552
    goto :goto_0

    .line 1554
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->hasValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1555
    iput-byte v2, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->memoizedIsInitialized:B

    move v0, v2

    .line 1556
    goto :goto_0

    .line 1558
    :cond_3
    iput-byte v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->memoizedIsInitialized:B

    move v0, v3

    .line 1559
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1398
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->newBuilderForType()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;
    .locals 1

    .prologue
    .line 1651
    invoke-static {}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->newBuilder()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1398
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->toBuilder()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;
    .locals 1

    .prologue
    .line 1655
    invoke-static {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->newBuilder(Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;

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
    .line 1594
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

    .line 1564
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->getSerializedSize()I

    .line 1565
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 1566
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1568
    :cond_0
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 1569
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1571
    :cond_1
    return-void
.end method
