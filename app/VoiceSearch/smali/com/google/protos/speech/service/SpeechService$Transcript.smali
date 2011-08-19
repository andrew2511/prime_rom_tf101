.class public final Lcom/google/protos/speech/service/SpeechService$Transcript;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$TranscriptOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Transcript"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$Transcript;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSCRIPT_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$Transcript;


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private transcript_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15065
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$Transcript$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$Transcript$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$Transcript;->PARSER:Lcom/google/protobuf/Parser;

    .line 15362
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$Transcript;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$Transcript;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$Transcript;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$Transcript;

    .line 15363
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Transcript;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$Transcript;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$Transcript;->initFields()V

    .line 15364
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

    .line 15031
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 15117
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->memoizedIsInitialized:B

    .line 15138
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->memoizedSerializedSize:I

    .line 15032
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$Transcript;->initFields()V

    .line 15035
    const/4 v0, 0x0

    .line 15036
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 15037
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 15038
    sparse-switch v1, :sswitch_data_0

    .line 15043
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/speech/service/SpeechService$Transcript;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 15045
    goto :goto_0

    :sswitch_0
    move v0, v2

    .line 15041
    goto :goto_0

    .line 15050
    :sswitch_1
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->bitField0_:I

    .line 15051
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->transcript_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 15056
    :catch_0
    move-exception v0

    .line 15057
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15062
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Transcript;->makeExtensionsImmutable()V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Transcript;->makeExtensionsImmutable()V

    .line 15064
    return-void

    .line 15058
    :catch_1
    move-exception v0

    .line 15059
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

    .line 15038
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 15009
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$Transcript;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 15014
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 15117
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->memoizedIsInitialized:B

    .line 15138
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->memoizedSerializedSize:I

    .line 15016
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15009
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$Transcript;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 15017
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 15117
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->memoizedIsInitialized:B

    .line 15138
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->memoizedSerializedSize:I

    .line 15017
    return-void
.end method

.method static synthetic access$18200(Lcom/google/protos/speech/service/SpeechService$Transcript;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 15009
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->transcript_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$18202(Lcom/google/protos/speech/service/SpeechService$Transcript;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15009
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->transcript_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$18302(Lcom/google/protos/speech/service/SpeechService$Transcript;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15009
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$Transcript;
    .locals 1

    .prologue
    .line 15021
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Transcript;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$Transcript;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 15115
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->transcript_:Ljava/lang/Object;

    .line 15116
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;
    .locals 1

    .prologue
    .line 15211
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->access$18000()Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$Transcript;)Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;
    .locals 1
    .parameter

    .prologue
    .line 15214
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$Transcript;->newBuilder()Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$Transcript;)Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$Transcript;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15191
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Transcript;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$Transcript;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$Transcript;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15197
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Transcript;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$Transcript;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$Transcript;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15161
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Transcript;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$Transcript;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$Transcript;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15167
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Transcript;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$Transcript;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/speech/service/SpeechService$Transcript;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15202
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Transcript;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$Transcript;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$Transcript;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15208
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Transcript;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$Transcript;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$Transcript;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15181
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Transcript;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$Transcript;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$Transcript;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15187
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Transcript;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$Transcript;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/speech/service/SpeechService$Transcript;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15171
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Transcript;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$Transcript;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$Transcript;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15177
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Transcript;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$Transcript;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 15009
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Transcript;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$Transcript;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$Transcript;
    .locals 1

    .prologue
    .line 15025
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Transcript;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$Transcript;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$Transcript;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15077
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Transcript;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 15140
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->memoizedSerializedSize:I

    .line 15141
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 15149
    :goto_0
    return v0

    .line 15143
    :cond_0
    const/4 v0, 0x0

    .line 15144
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 15145
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Transcript;->getTranscriptBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15148
    :cond_1
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getTranscript()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 15088
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->transcript_:Ljava/lang/Object;

    .line 15089
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 15090
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 15098
    :goto_0
    return-object v1

    .line 15092
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 15094
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 15095
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15096
    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->transcript_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 15098
    goto :goto_0
.end method

.method public getTranscriptBytes()Lcom/google/protobuf/ByteString;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 15103
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->transcript_:Ljava/lang/Object;

    .line 15104
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 15105
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 15107
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->transcript_:Ljava/lang/Object;

    .line 15110
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasTranscript()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 15085
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->bitField0_:I

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

    .line 15119
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->memoizedIsInitialized:B

    .line 15120
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 15127
    :goto_0
    return v0

    :cond_0
    move v0, v3

    .line 15120
    goto :goto_0

    .line 15122
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Transcript;->hasTranscript()Z

    move-result v0

    if-nez v0, :cond_2

    .line 15123
    iput-byte v3, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->memoizedIsInitialized:B

    move v0, v3

    .line 15124
    goto :goto_0

    .line 15126
    :cond_2
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->memoizedIsInitialized:B

    move v0, v2

    .line 15127
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 15009
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Transcript;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;
    .locals 1

    .prologue
    .line 15212
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$Transcript;->newBuilder()Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 15009
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Transcript;->toBuilder()Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;
    .locals 1

    .prologue
    .line 15216
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$Transcript;->newBuilder(Lcom/google/protos/speech/service/SpeechService$Transcript;)Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;

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
    .line 15155
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 15132
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Transcript;->getSerializedSize()I

    .line 15133
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 15134
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Transcript;->getTranscriptBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 15136
    :cond_0
    return-void
.end method
