.class public final Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$MultiRequestMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MultiRequestMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_MESSAGE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private requestMessage_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6245
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 6573
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;

    .line 6574
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->initFields()V

    .line 6575
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
    const/4 v1, 0x0

    const/4 v0, -0x1

    const/4 v4, 0x1

    .line 6205
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6284
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->memoizedIsInitialized:B

    .line 6307
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->memoizedSerializedSize:I

    .line 6206
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->initFields()V

    move v0, v1

    .line 6210
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 6211
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 6212
    sparse-switch v2, :sswitch_data_0

    .line 6217
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v4

    .line 6219
    goto :goto_0

    :sswitch_0
    move v0, v4

    .line 6215
    goto :goto_0

    .line 6224
    :sswitch_1
    and-int/lit8 v2, v1, 0x1

    if-eq v2, v4, :cond_1

    .line 6225
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->requestMessage_:Ljava/util/List;

    .line 6226
    or-int/lit8 v1, v1, 0x1

    .line 6228
    :cond_1
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->requestMessage_:Ljava/util/List;

    sget-object v3, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 6233
    :catch_0
    move-exception v0

    .line 6234
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6239
    :catchall_0
    move-exception v0

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_2

    .line 6240
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->requestMessage_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->requestMessage_:Ljava/util/List;

    .line 6242
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->makeExtensionsImmutable()V

    throw v0

    .line 6239
    :cond_3
    and-int/lit8 v0, v1, 0x1

    if-ne v0, v4, :cond_4

    .line 6240
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->requestMessage_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->requestMessage_:Ljava/util/List;

    .line 6242
    :cond_4
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->makeExtensionsImmutable()V

    .line 6244
    return-void

    .line 6235
    :catch_1
    move-exception v0

    .line 6236
    :try_start_2
    new-instance v2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6212
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
    .line 6183
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 6188
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 6284
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->memoizedIsInitialized:B

    .line 6307
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->memoizedSerializedSize:I

    .line 6190
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6183
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 6191
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6284
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->memoizedIsInitialized:B

    .line 6307
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->memoizedSerializedSize:I

    .line 6191
    return-void
.end method

.method static synthetic access$7400(Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 6183
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->requestMessage_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7402(Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6183
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->requestMessage_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;
    .locals 1

    .prologue
    .line 6195
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 6282
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->requestMessage_:Ljava/util/List;

    .line 6283
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;
    .locals 1

    .prologue
    .line 6380
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->access$7200()Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;)Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;
    .locals 1
    .parameter

    .prologue
    .line 6383
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->newBuilder()Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;)Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6360
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6366
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6330
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6336
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6371
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6377
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6350
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6356
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6340
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6346
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6183
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;
    .locals 1

    .prologue
    .line 6199
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6257
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRequestMessage(I)Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    .locals 1
    .parameter

    .prologue
    .line 6274
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->requestMessage_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    return-object p0
.end method

.method public getRequestMessageCount()I
    .locals 1

    .prologue
    .line 6271
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->requestMessage_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRequestMessageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6264
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->requestMessage_:Ljava/util/List;

    return-object v0
.end method

.method public getRequestMessageOrBuilder(I)Lcom/google/protos/speech/service/SpeechService$RequestMessageOrBuilder;
    .locals 1
    .parameter

    .prologue
    .line 6278
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->requestMessage_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RequestMessageOrBuilder;

    return-object p0
.end method

.method public getRequestMessageOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessageOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6268
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->requestMessage_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 6309
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->memoizedSerializedSize:I

    .line 6310
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 6318
    :goto_0
    return v0

    :cond_0
    move v1, v2

    .line 6313
    :goto_1
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->requestMessage_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 6314
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->requestMessage_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v2

    .line 6313
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_1

    .line 6317
    :cond_1
    iput v2, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->memoizedSerializedSize:I

    move v0, v2

    .line 6318
    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6286
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->memoizedIsInitialized:B

    .line 6287
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 6296
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 6287
    goto :goto_0

    :cond_1
    move v0, v2

    .line 6289
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->getRequestMessageCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 6290
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->getRequestMessage(I)Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6291
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->memoizedIsInitialized:B

    move v0, v2

    .line 6292
    goto :goto_0

    .line 6289
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6295
    :cond_3
    iput-byte v3, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->memoizedIsInitialized:B

    move v0, v3

    .line 6296
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6183
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;
    .locals 1

    .prologue
    .line 6381
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->newBuilder()Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6183
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->toBuilder()Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;
    .locals 1

    .prologue
    .line 6385
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->newBuilder(Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;)Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;

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
    .line 6324
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
    .line 6301
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->getSerializedSize()I

    .line 6302
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->requestMessage_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 6303
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->requestMessage_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 6302
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 6305
    :cond_0
    return-void
.end method
