.class public final Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$CreateSessionResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CreateSessionResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;
    }
.end annotation


# static fields
.field public static final CLIENT_EXPERIMENT_CONFIG_FIELD_NUMBER:I = 0x3

.field public static final CLIENT_EXPERIMENT_CONFIG_HASH_FIELD_NUMBER:I = 0x4

.field public static final CREATE_SESSION_RESPONSE_FIELD_NUMBER:I = 0xa

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final SERVER_ADDRESS_FIELD_NUMBER:I = 0x1

.field public static final STUN_ID_FIELD_NUMBER:I = 0x2

.field public static final createSessionResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ResponseMessage;",
            "Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;


# instance fields
.field private bitField0_:I

.field private clientExperimentConfigHash_:I

.field private clientExperimentConfig_:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private serverAddress_:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

.field private stunId_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 12349
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 12838
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    .line 12839
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->initFields()V

    .line 12847
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xa

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->createSessionResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v0, -0x1

    const/4 v3, 0x1

    .line 12284
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 12434
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->memoizedIsInitialized:B

    .line 12466
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->memoizedSerializedSize:I

    .line 12285
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->initFields()V

    .line 12288
    const/4 v0, 0x0

    move v1, v0

    .line 12289
    :goto_0
    if-nez v1, :cond_3

    .line 12290
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 12291
    sparse-switch v0, :sswitch_data_0

    .line 12296
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    move v1, v0

    .line 12339
    goto :goto_0

    :sswitch_0
    move v0, v3

    .line 12294
    goto :goto_1

    .line 12304
    :sswitch_1
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_5

    .line 12305
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->serverAddress_:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->toBuilder()Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    move-result-object v0

    move-object v2, v0

    .line 12307
    :goto_2
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->serverAddress_:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    .line 12308
    if-eqz v2, :cond_0

    .line 12309
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->serverAddress_:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    invoke-virtual {v2, v0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SocketAddress;)Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    .line 12310
    invoke-virtual {v2}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->serverAddress_:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    .line 12312
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->bitField0_:I

    move v0, v1

    .line 12313
    goto :goto_1

    .line 12316
    :sswitch_2
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->bitField0_:I

    .line 12317
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->stunId_:Ljava/lang/Object;

    move v0, v1

    .line 12318
    goto :goto_1

    .line 12322
    :sswitch_3
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    .line 12323
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->clientExperimentConfig_:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    invoke-virtual {v0}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->toBuilder()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;

    move-result-object v0

    move-object v2, v0

    .line 12325
    :goto_3
    sget-object v0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->clientExperimentConfig_:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    .line 12326
    if-eqz v2, :cond_1

    .line 12327
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->clientExperimentConfig_:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    invoke-virtual {v2, v0}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;->mergeFrom(Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;)Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;

    .line 12328
    invoke-virtual {v2}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;->buildPartial()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->clientExperimentConfig_:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    .line 12330
    :cond_1
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->bitField0_:I

    move v0, v1

    .line 12331
    goto :goto_1

    .line 12334
    :sswitch_4
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->bitField0_:I

    .line 12335
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFixed32()I

    move-result v0

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->clientExperimentConfigHash_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    move v0, v1

    goto :goto_1

    .line 12346
    :cond_3
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->makeExtensionsImmutable()V

    .line 12348
    return-void

    .line 12340
    :catch_0
    move-exception v0

    .line 12341
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12346
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->makeExtensionsImmutable()V

    throw v0

    .line 12342
    :catch_1
    move-exception v0

    .line 12343
    :try_start_2
    new-instance v1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    move-object v2, v4

    goto :goto_3

    :cond_5
    move-object v2, v4

    goto/16 :goto_2

    .line 12291
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x25 -> :sswitch_4
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
    .line 12262
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 12267
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 12434
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->memoizedIsInitialized:B

    .line 12466
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->memoizedSerializedSize:I

    .line 12269
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12262
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 12270
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 12434
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->memoizedIsInitialized:B

    .line 12466
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->memoizedSerializedSize:I

    .line 12270
    return-void
.end method

.method static synthetic access$14602(Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;Lcom/google/protos/speech/service/SpeechService$SocketAddress;)Lcom/google/protos/speech/service/SpeechService$SocketAddress;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12262
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->serverAddress_:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    return-object p1
.end method

.method static synthetic access$14700(Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 12262
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->stunId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$14702(Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12262
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->stunId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$14802(Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;)Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12262
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->clientExperimentConfig_:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    return-object p1
.end method

.method static synthetic access$14902(Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12262
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->clientExperimentConfigHash_:I

    return p1
.end method

.method static synthetic access$15002(Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12262
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;
    .locals 1

    .prologue
    .line 12274
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 12429
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->serverAddress_:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    .line 12430
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->stunId_:Ljava/lang/Object;

    .line 12431
    invoke-static {}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->getDefaultInstance()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->clientExperimentConfig_:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    .line 12432
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->clientExperimentConfigHash_:I

    .line 12433
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;
    .locals 1

    .prologue
    .line 12551
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->access$14400()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;
    .locals 1
    .parameter

    .prologue
    .line 12554
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->newBuilder()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12531
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12537
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12501
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12507
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12542
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12548
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12521
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12527
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12511
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12517
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    return-object p0
.end method


# virtual methods
.method public getClientExperimentConfig()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;
    .locals 1

    .prologue
    .line 12415
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->clientExperimentConfig_:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    return-object v0
.end method

.method public getClientExperimentConfigHash()I
    .locals 1

    .prologue
    .line 12425
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->clientExperimentConfigHash_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12262
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;
    .locals 1

    .prologue
    .line 12278
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12361
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 12468
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->memoizedSerializedSize:I

    .line 12469
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 12489
    :goto_0
    return v0

    .line 12471
    :cond_0
    const/4 v0, 0x0

    .line 12472
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 12473
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->serverAddress_:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12476
    :cond_1
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 12477
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->getStunIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12480
    :cond_2
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 12481
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->clientExperimentConfig_:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12484
    :cond_3
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 12485
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->clientExperimentConfigHash_:I

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12488
    :cond_4
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getServerAddress()Lcom/google/protos/speech/service/SpeechService$SocketAddress;
    .locals 1

    .prologue
    .line 12372
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->serverAddress_:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    return-object v0
.end method

.method public getStunId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 12382
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->stunId_:Ljava/lang/Object;

    .line 12383
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 12384
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 12392
    :goto_0
    return-object v1

    .line 12386
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 12388
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 12389
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12390
    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->stunId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 12392
    goto :goto_0
.end method

.method public getStunIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 12397
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->stunId_:Ljava/lang/Object;

    .line 12398
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12399
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 12401
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->stunId_:Ljava/lang/Object;

    .line 12404
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasClientExperimentConfig()Z
    .locals 2

    .prologue
    .line 12412
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasClientExperimentConfigHash()Z
    .locals 2

    .prologue
    .line 12422
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasServerAddress()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 12369
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStunId()Z
    .locals 2

    .prologue
    .line 12379
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->bitField0_:I

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
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 12436
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->memoizedIsInitialized:B

    .line 12437
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 12446
    :goto_0
    return v0

    :cond_0
    move v0, v3

    .line 12437
    goto :goto_0

    .line 12439
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->hasServerAddress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12440
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->getServerAddress()Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 12441
    iput-byte v3, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->memoizedIsInitialized:B

    move v0, v3

    .line 12442
    goto :goto_0

    .line 12445
    :cond_2
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->memoizedIsInitialized:B

    move v0, v2

    .line 12446
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 12262
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;
    .locals 1

    .prologue
    .line 12552
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->newBuilder()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 12262
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->toBuilder()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;
    .locals 1

    .prologue
    .line 12556
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->newBuilder(Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;

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
    .line 12495
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 12451
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->getSerializedSize()I

    .line 12452
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 12453
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->serverAddress_:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 12455
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 12456
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->getStunIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 12458
    :cond_1
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 12459
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->clientExperimentConfig_:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 12461
    :cond_2
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 12462
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->clientExperimentConfigHash_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFixed32(II)V

    .line 12464
    :cond_3
    return-void
.end method
