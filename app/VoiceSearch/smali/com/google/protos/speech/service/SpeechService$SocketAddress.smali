.class public final Lcom/google/protos/speech/service/SpeechService$SocketAddress;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$SocketAddressOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SocketAddress"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;
    }
.end annotation


# static fields
.field public static final HOST_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$SocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field public static final PORT_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$SocketAddress;


# instance fields
.field private bitField0_:I

.field private host_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private port_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1356
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->PARSER:Lcom/google/protobuf/Parser;

    .line 1709
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    .line 1710
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->initFields()V

    .line 1711
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

    .line 1317
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1419
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->memoizedIsInitialized:B

    .line 1447
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->memoizedSerializedSize:I

    .line 1318
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->initFields()V

    .line 1321
    const/4 v0, 0x0

    .line 1322
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 1323
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1324
    sparse-switch v1, :sswitch_data_0

    .line 1329
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 1331
    goto :goto_0

    :sswitch_0
    move v0, v2

    .line 1327
    goto :goto_0

    .line 1336
    :sswitch_1
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->bitField0_:I

    .line 1337
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->host_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1347
    :catch_0
    move-exception v0

    .line 1348
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1353
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->makeExtensionsImmutable()V

    throw v0

    .line 1341
    :sswitch_2
    :try_start_2
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->bitField0_:I

    .line 1342
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->port_:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1349
    :catch_1
    move-exception v0

    .line 1350
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

    .line 1353
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->makeExtensionsImmutable()V

    .line 1355
    return-void

    .line 1324
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/speech/service/SpeechService$1;)V
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
    .line 1295
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1300
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1419
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->memoizedIsInitialized:B

    .line 1447
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->memoizedSerializedSize:I

    .line 1302
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1295
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1303
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1419
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->memoizedIsInitialized:B

    .line 1447
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->memoizedSerializedSize:I

    .line 1303
    return-void
.end method

.method static synthetic access$1500(Lcom/google/protos/speech/service/SpeechService$SocketAddress;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->host_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/google/protos/speech/service/SpeechService$SocketAddress;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1295
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->host_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/google/protos/speech/service/SpeechService$SocketAddress;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1295
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->port_:I

    return p1
.end method

.method static synthetic access$1702(Lcom/google/protos/speech/service/SpeechService$SocketAddress;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1295
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SocketAddress;
    .locals 1

    .prologue
    .line 1307
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 1416
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->host_:Ljava/lang/Object;

    .line 1417
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->port_:I

    .line 1418
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;
    .locals 1

    .prologue
    .line 1524
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->access$1300()Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$SocketAddress;)Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1527
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->newBuilder()Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SocketAddress;)Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$SocketAddress;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1504
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SocketAddress;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1510
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$SocketAddress;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1474
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SocketAddress;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1480
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/speech/service/SpeechService$SocketAddress;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1515
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SocketAddress;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1521
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$SocketAddress;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1494
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SocketAddress;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1500
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/speech/service/SpeechService$SocketAddress;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1484
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SocketAddress;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1490
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1295
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SocketAddress;
    .locals 1

    .prologue
    .line 1311
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1379
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->host_:Ljava/lang/Object;

    .line 1380
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1381
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 1389
    :goto_0
    return-object v1

    .line 1383
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 1385
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1386
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1387
    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->host_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1389
    goto :goto_0
.end method

.method public getHostBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->host_:Ljava/lang/Object;

    .line 1395
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1396
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1398
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->host_:Ljava/lang/Object;

    .line 1401
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
            "Lcom/google/protos/speech/service/SpeechService$SocketAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1368
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 1412
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->port_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1449
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->memoizedSerializedSize:I

    .line 1450
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1462
    :goto_0
    return v0

    .line 1452
    :cond_0
    const/4 v0, 0x0

    .line 1453
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 1454
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->getHostBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1457
    :cond_1
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 1458
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->port_:I

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1461
    :cond_2
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public hasHost()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1376
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->bitField0_:I

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
    .line 1409
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->bitField0_:I

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

    .line 1421
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->memoizedIsInitialized:B

    .line 1422
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 1433
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 1422
    goto :goto_0

    .line 1424
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->hasHost()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1425
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->memoizedIsInitialized:B

    move v0, v2

    .line 1426
    goto :goto_0

    .line 1428
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->hasPort()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1429
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->memoizedIsInitialized:B

    move v0, v2

    .line 1430
    goto :goto_0

    .line 1432
    :cond_3
    iput-byte v3, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->memoizedIsInitialized:B

    move v0, v3

    .line 1433
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1295
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;
    .locals 1

    .prologue
    .line 1525
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->newBuilder()Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1295
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->toBuilder()Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;
    .locals 1

    .prologue
    .line 1529
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->newBuilder(Lcom/google/protos/speech/service/SpeechService$SocketAddress;)Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

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
    .line 1468
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

    .line 1438
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->getSerializedSize()I

    .line 1439
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 1440
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->getHostBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1442
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 1443
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->port_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1445
    :cond_1
    return-void
.end method
