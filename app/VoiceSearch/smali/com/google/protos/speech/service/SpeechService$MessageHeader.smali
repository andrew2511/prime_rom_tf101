.class public final Lcom/google/protos/speech/service/SpeechService$MessageHeader;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$MessageHeaderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageHeader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;
    }
.end annotation


# static fields
.field public static final APPLICATION_ID_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$MessageHeader;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_ID_FIELD_NUMBER:I = 0x2

.field public static final SESSION_ID_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$MessageHeader;


# instance fields
.field private applicationId_:Ljava/lang/Object;

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private requestId_:I

.field private sessionId_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 5198
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->PARSER:Lcom/google/protobuf/Parser;

    .line 5640
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    .line 5641
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->initFields()V

    .line 5642
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

    .line 5154
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 5295
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->memoizedIsInitialized:B

    .line 5318
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->memoizedSerializedSize:I

    .line 5155
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->initFields()V

    .line 5158
    const/4 v0, 0x0

    .line 5159
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 5160
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 5161
    sparse-switch v1, :sswitch_data_0

    .line 5166
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 5168
    goto :goto_0

    :sswitch_0
    move v0, v2

    .line 5164
    goto :goto_0

    .line 5173
    :sswitch_1
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->bitField0_:I

    .line 5174
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->sessionId_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 5189
    :catch_0
    move-exception v0

    .line 5190
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5195
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->makeExtensionsImmutable()V

    throw v0

    .line 5178
    :sswitch_2
    :try_start_2
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->bitField0_:I

    .line 5179
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->requestId_:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 5191
    :catch_1
    move-exception v0

    .line 5192
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

    .line 5183
    :sswitch_3
    :try_start_4
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->bitField0_:I

    .line 5184
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->applicationId_:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 5195
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->makeExtensionsImmutable()V

    .line 5197
    return-void

    .line 5161
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 5132
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 5295
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->memoizedIsInitialized:B

    .line 5318
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->memoizedSerializedSize:I

    .line 5139
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5132
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 5140
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 5295
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->memoizedIsInitialized:B

    .line 5318
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->memoizedSerializedSize:I

    .line 5140
    return-void
.end method

.method static synthetic access$6000(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 5132
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->sessionId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6002(Lcom/google/protos/speech/service/SpeechService$MessageHeader;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5132
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->sessionId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6102(Lcom/google/protos/speech/service/SpeechService$MessageHeader;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5132
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->requestId_:I

    return p1
.end method

.method static synthetic access$6200(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 5132
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->applicationId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6202(Lcom/google/protos/speech/service/SpeechService$MessageHeader;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5132
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->applicationId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6302(Lcom/google/protos/speech/service/SpeechService$MessageHeader;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5132
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$MessageHeader;
    .locals 1

    .prologue
    .line 5144
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 5291
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->sessionId_:Ljava/lang/Object;

    .line 5292
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->requestId_:I

    .line 5293
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->applicationId_:Ljava/lang/Object;

    .line 5294
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;
    .locals 1

    .prologue
    .line 5399
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->access$5800()Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;
    .locals 1
    .parameter

    .prologue
    .line 5402
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->newBuilder()Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$MessageHeader;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5379
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$MessageHeader;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5385
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$MessageHeader;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5349
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$MessageHeader;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5355
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/speech/service/SpeechService$MessageHeader;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5390
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$MessageHeader;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5396
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$MessageHeader;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5369
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$MessageHeader;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5375
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/speech/service/SpeechService$MessageHeader;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5359
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$MessageHeader;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5365
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    return-object p0
.end method


# virtual methods
.method public getApplicationId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5264
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->applicationId_:Ljava/lang/Object;

    .line 5265
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5266
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 5274
    :goto_0
    return-object v1

    .line 5268
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 5270
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5271
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5272
    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->applicationId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 5274
    goto :goto_0
.end method

.method public getApplicationIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 5279
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->applicationId_:Ljava/lang/Object;

    .line 5280
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5281
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5283
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->applicationId_:Ljava/lang/Object;

    .line 5286
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5132
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$MessageHeader;
    .locals 1

    .prologue
    .line 5148
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$MessageHeader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5210
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRequestId()I
    .locals 1

    .prologue
    .line 5254
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->requestId_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 5320
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->memoizedSerializedSize:I

    .line 5321
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 5337
    :goto_0
    return v0

    .line 5323
    :cond_0
    const/4 v0, 0x0

    .line 5324
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 5325
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->getSessionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5328
    :cond_1
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 5329
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->requestId_:I

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5332
    :cond_2
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 5333
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->getApplicationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5336
    :cond_3
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5221
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->sessionId_:Ljava/lang/Object;

    .line 5222
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5223
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 5231
    :goto_0
    return-object v1

    .line 5225
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 5227
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5228
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5229
    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->sessionId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 5231
    goto :goto_0
.end method

.method public getSessionIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 5236
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->sessionId_:Ljava/lang/Object;

    .line 5237
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5238
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5240
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->sessionId_:Ljava/lang/Object;

    .line 5243
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasApplicationId()Z
    .locals 2

    .prologue
    .line 5261
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->bitField0_:I

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

.method public hasRequestId()Z
    .locals 2

    .prologue
    .line 5251
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->bitField0_:I

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

.method public hasSessionId()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5218
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->bitField0_:I

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
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 5297
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->memoizedIsInitialized:B

    .line 5298
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 5301
    :goto_0
    return v0

    .line 5298
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 5300
    :cond_1
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->memoizedIsInitialized:B

    move v0, v2

    .line 5301
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5132
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;
    .locals 1

    .prologue
    .line 5400
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->newBuilder()Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5132
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->toBuilder()Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;
    .locals 1

    .prologue
    .line 5404
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->newBuilder(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

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
    .line 5343
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

    .line 5306
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->getSerializedSize()I

    .line 5307
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 5308
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->getSessionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5310
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 5311
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->requestId_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 5313
    :cond_1
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 5314
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->getApplicationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5316
    :cond_2
    return-void
.end method
