.class public final Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$CreateSessionRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CreateSessionRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;
    }
.end annotation


# static fields
.field public static final CLIENT_EXPERIMENT_CONFIG_HASH_FIELD_NUMBER:I = 0x8

.field public static final CLIENT_ID_FIELD_NUMBER:I = 0x1

.field public static final COOKIE_FIELD_NUMBER:I = 0x4

.field public static final CREATE_SESSION_REQUEST_FIELD_NUMBER:I = 0xa

.field public static final INPUT_AUDIO_PARAMETERS_FIELD_NUMBER:I = 0x3

.field public static final LOCALE_FIELD_NUMBER:I = 0x6

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROTOCOL_FEATURES_FIELD_NUMBER:I = 0x7

.field public static final PROTOCOL_FIELD_NUMBER:I = 0x2

.field public static final SPECULATIVE_FIELD_NUMBER:I = 0x5

.field public static final createSessionRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
            "Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;


# instance fields
.field private bitField0_:I

.field private clientExperimentConfigHash_:I

.field private clientId_:Ljava/lang/Object;

.field private cookie_:Ljava/lang/Object;

.field private inputAudioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

.field private locale_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private protocolFeatures_:Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

.field private protocol_:Lcom/google/protos/speech/service/SpeechService$Protocol;

.field private speculative_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 11408
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 12222
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;

    .line 12223
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->initFields()V

    .line 12231
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xa

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->createSessionRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

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

    const/4 v3, 0x1

    const/4 v0, -0x1

    .line 11319
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 11583
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->memoizedIsInitialized:B

    .line 11635
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->memoizedSerializedSize:I

    .line 11320
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->initFields()V

    .line 11323
    const/4 v0, 0x0

    move v1, v0

    .line 11324
    :goto_0
    if-nez v1, :cond_3

    .line 11325
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 11326
    sparse-switch v0, :sswitch_data_0

    .line 11331
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    move v1, v0

    .line 11398
    goto :goto_0

    :sswitch_0
    move v0, v3

    .line 11329
    goto :goto_1

    .line 11338
    :sswitch_1
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    .line 11339
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->clientId_:Ljava/lang/Object;

    move v0, v1

    .line 11340
    goto :goto_1

    .line 11343
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 11344
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$Protocol;->valueOf(I)Lcom/google/protos/speech/service/SpeechService$Protocol;

    move-result-object v0

    .line 11345
    if-eqz v0, :cond_2

    .line 11346
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    .line 11347
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->protocol_:Lcom/google/protos/speech/service/SpeechService$Protocol;

    move v0, v1

    goto :goto_1

    .line 11353
    :sswitch_3
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    .line 11354
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->inputAudioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->toBuilder()Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;

    move-result-object v0

    move-object v2, v0

    .line 11356
    :goto_2
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->inputAudioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    .line 11357
    if-eqz v2, :cond_0

    .line 11358
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->inputAudioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    invoke-virtual {v2, v0}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$AudioParameters;)Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;

    .line 11359
    invoke-virtual {v2}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->inputAudioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    .line 11361
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    move v0, v1

    .line 11362
    goto :goto_1

    .line 11365
    :sswitch_4
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    .line 11366
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->cookie_:Ljava/lang/Object;

    move v0, v1

    .line 11367
    goto :goto_1

    .line 11370
    :sswitch_5
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    .line 11371
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->speculative_:Z

    move v0, v1

    .line 11372
    goto :goto_1

    .line 11375
    :sswitch_6
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    .line 11376
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->locale_:Ljava/lang/Object;

    move v0, v1

    .line 11377
    goto :goto_1

    .line 11381
    :sswitch_7
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v2, 0x40

    if-ne v0, v2, :cond_4

    .line 11382
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->protocolFeatures_:Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->toBuilder()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    move-result-object v0

    move-object v2, v0

    .line 11384
    :goto_3
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->protocolFeatures_:Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    .line 11385
    if-eqz v2, :cond_1

    .line 11386
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->protocolFeatures_:Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    invoke-virtual {v2, v0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    .line 11387
    invoke-virtual {v2}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->protocolFeatures_:Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    .line 11389
    :cond_1
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    move v0, v1

    .line 11390
    goto/16 :goto_1

    .line 11393
    :sswitch_8
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    .line 11394
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFixed32()I

    move-result v0

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->clientExperimentConfigHash_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    move v0, v1

    goto/16 :goto_1

    .line 11405
    :cond_3
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->makeExtensionsImmutable()V

    .line 11407
    return-void

    .line 11399
    :catch_0
    move-exception v0

    .line 11400
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11405
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->makeExtensionsImmutable()V

    throw v0

    .line 11401
    :catch_1
    move-exception v0

    .line 11402
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

    .line 11326
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x45 -> :sswitch_8
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
    .line 11297
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 11302
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 11583
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->memoizedIsInitialized:B

    .line 11635
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->memoizedSerializedSize:I

    .line 11304
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11297
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 11305
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 11583
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->memoizedIsInitialized:B

    .line 11635
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->memoizedSerializedSize:I

    .line 11305
    return-void
.end method

.method static synthetic access$13400(Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 11297
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->clientId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$13402(Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11297
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->clientId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$13502(Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;Lcom/google/protos/speech/service/SpeechService$Protocol;)Lcom/google/protos/speech/service/SpeechService$Protocol;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11297
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->protocol_:Lcom/google/protos/speech/service/SpeechService$Protocol;

    return-object p1
.end method

.method static synthetic access$13602(Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;Lcom/google/protos/speech/service/SpeechService$AudioParameters;)Lcom/google/protos/speech/service/SpeechService$AudioParameters;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11297
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->inputAudioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    return-object p1
.end method

.method static synthetic access$13700(Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 11297
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->cookie_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$13702(Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11297
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->cookie_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$13802(Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11297
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->speculative_:Z

    return p1
.end method

.method static synthetic access$13900(Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 11297
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->locale_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$13902(Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11297
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->locale_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$14002(Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11297
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->protocolFeatures_:Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    return-object p1
.end method

.method static synthetic access$14102(Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11297
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->clientExperimentConfigHash_:I

    return p1
.end method

.method static synthetic access$14202(Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11297
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;
    .locals 1

    .prologue
    .line 11309
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11574
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->clientId_:Ljava/lang/Object;

    .line 11575
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Protocol;->TCP_STUN:Lcom/google/protos/speech/service/SpeechService$Protocol;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->protocol_:Lcom/google/protos/speech/service/SpeechService$Protocol;

    .line 11576
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->inputAudioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    .line 11577
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->cookie_:Ljava/lang/Object;

    .line 11578
    iput-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->speculative_:Z

    .line 11579
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->locale_:Ljava/lang/Object;

    .line 11580
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->protocolFeatures_:Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    .line 11581
    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->clientExperimentConfigHash_:I

    .line 11582
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;
    .locals 1

    .prologue
    .line 11736
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->access$13200()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 11739
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->newBuilder()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11716
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11722
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11686
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11692
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11727
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11733
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11706
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11712
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11696
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11702
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;

    return-object p0
.end method


# virtual methods
.method public getClientExperimentConfigHash()I
    .locals 1

    .prologue
    .line 11570
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->clientExperimentConfigHash_:I

    return v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 11431
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->clientId_:Ljava/lang/Object;

    .line 11432
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 11433
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 11441
    :goto_0
    return-object v1

    .line 11435
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 11437
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 11438
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11439
    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->clientId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 11441
    goto :goto_0
.end method

.method public getClientIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 11446
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->clientId_:Ljava/lang/Object;

    .line 11447
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11448
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11450
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->clientId_:Ljava/lang/Object;

    .line 11453
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getCookie()Ljava/lang/String;
    .locals 3

    .prologue
    .line 11484
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->cookie_:Ljava/lang/Object;

    .line 11485
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 11486
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 11494
    :goto_0
    return-object v1

    .line 11488
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 11490
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 11491
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11492
    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->cookie_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 11494
    goto :goto_0
.end method

.method public getCookieBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 11499
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->cookie_:Ljava/lang/Object;

    .line 11500
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11501
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11503
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->cookie_:Ljava/lang/Object;

    .line 11506
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11297
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;
    .locals 1

    .prologue
    .line 11313
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;

    return-object v0
.end method

.method public getInputAudioParameters()Lcom/google/protos/speech/service/SpeechService$AudioParameters;
    .locals 1

    .prologue
    .line 11474
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->inputAudioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 3

    .prologue
    .line 11527
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->locale_:Ljava/lang/Object;

    .line 11528
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 11529
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 11537
    :goto_0
    return-object v1

    .line 11531
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 11533
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 11534
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11535
    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->locale_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 11537
    goto :goto_0
.end method

.method public getLocaleBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 11542
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->locale_:Ljava/lang/Object;

    .line 11543
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11544
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11546
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->locale_:Ljava/lang/Object;

    .line 11549
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
            "Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11420
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getProtocol()Lcom/google/protos/speech/service/SpeechService$Protocol;
    .locals 1

    .prologue
    .line 11464
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->protocol_:Lcom/google/protos/speech/service/SpeechService$Protocol;

    return-object v0
.end method

.method public getProtocolFeatures()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;
    .locals 1

    .prologue
    .line 11560
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->protocolFeatures_:Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 11637
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->memoizedSerializedSize:I

    .line 11638
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 11674
    :goto_0
    return v0

    .line 11640
    :cond_0
    const/4 v0, 0x0

    .line 11641
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 11642
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->getClientIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11645
    :cond_1
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 11646
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->protocol_:Lcom/google/protos/speech/service/SpeechService$Protocol;

    invoke-virtual {v1}, Lcom/google/protos/speech/service/SpeechService$Protocol;->getNumber()I

    move-result v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11649
    :cond_2
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 11650
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->inputAudioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11653
    :cond_3
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_4

    .line 11654
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->getCookieBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11657
    :cond_4
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 11658
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->speculative_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 11661
    :cond_5
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 11662
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->getLocaleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11665
    :cond_6
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    .line 11666
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->protocolFeatures_:Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11669
    :cond_7
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    .line 11670
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->clientExperimentConfigHash_:I

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11673
    :cond_8
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->memoizedSerializedSize:I

    goto/16 :goto_0
.end method

.method public getSpeculative()Z
    .locals 1

    .prologue
    .line 11517
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->speculative_:Z

    return v0
.end method

.method public hasClientExperimentConfigHash()Z
    .locals 2

    .prologue
    .line 11567
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasClientId()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 11428
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCookie()Z
    .locals 2

    .prologue
    .line 11481
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

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

.method public hasInputAudioParameters()Z
    .locals 2

    .prologue
    .line 11471
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

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

.method public hasLocale()Z
    .locals 2

    .prologue
    .line 11524
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasProtocol()Z
    .locals 2

    .prologue
    .line 11461
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

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

.method public hasProtocolFeatures()Z
    .locals 2

    .prologue
    .line 11557
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSpeculative()Z
    .locals 2

    .prologue
    .line 11514
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

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

    .line 11585
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->memoizedIsInitialized:B

    .line 11586
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 11603
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 11586
    goto :goto_0

    .line 11588
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->hasClientId()Z

    move-result v0

    if-nez v0, :cond_2

    .line 11589
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->memoizedIsInitialized:B

    move v0, v2

    .line 11590
    goto :goto_0

    .line 11592
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->hasProtocol()Z

    move-result v0

    if-nez v0, :cond_3

    .line 11593
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->memoizedIsInitialized:B

    move v0, v2

    .line 11594
    goto :goto_0

    .line 11596
    :cond_3
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->hasInputAudioParameters()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11597
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->getInputAudioParameters()Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    .line 11598
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->memoizedIsInitialized:B

    move v0, v2

    .line 11599
    goto :goto_0

    .line 11602
    :cond_4
    iput-byte v3, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->memoizedIsInitialized:B

    move v0, v3

    .line 11603
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11297
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;
    .locals 1

    .prologue
    .line 11737
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->newBuilder()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11297
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->toBuilder()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;
    .locals 1

    .prologue
    .line 11741
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->newBuilder(Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

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
    .line 11680
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 11608
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->getSerializedSize()I

    .line 11609
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 11610
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->getClientIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 11612
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 11613
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->protocol_:Lcom/google/protos/speech/service/SpeechService$Protocol;

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$Protocol;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 11615
    :cond_1
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 11616
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->inputAudioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 11618
    :cond_2
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 11619
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->getCookieBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 11621
    :cond_3
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 11622
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->speculative_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 11624
    :cond_4
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 11625
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->getLocaleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 11627
    :cond_5
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 11628
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->protocolFeatures_:Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 11630
    :cond_6
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 11631
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->clientExperimentConfigHash_:I

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFixed32(II)V

    .line 11633
    :cond_7
    return-void
.end method
