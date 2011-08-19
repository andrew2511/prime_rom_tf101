.class public final Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$MultiResponseMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MultiResponseMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESPONSE_MESSAGE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private responseMessage_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ResponseMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7907
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 8235
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;

    .line 8236
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->initFields()V

    .line 8237
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

    .line 7867
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7946
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->memoizedIsInitialized:B

    .line 7969
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->memoizedSerializedSize:I

    .line 7868
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->initFields()V

    move v0, v1

    .line 7872
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 7873
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 7874
    sparse-switch v2, :sswitch_data_0

    .line 7879
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v4

    .line 7881
    goto :goto_0

    :sswitch_0
    move v0, v4

    .line 7877
    goto :goto_0

    .line 7886
    :sswitch_1
    and-int/lit8 v2, v1, 0x1

    if-eq v2, v4, :cond_1

    .line 7887
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->responseMessage_:Ljava/util/List;

    .line 7888
    or-int/lit8 v1, v1, 0x1

    .line 7890
    :cond_1
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->responseMessage_:Ljava/util/List;

    sget-object v3, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 7895
    :catch_0
    move-exception v0

    .line 7896
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7901
    :catchall_0
    move-exception v0

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_2

    .line 7902
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->responseMessage_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->responseMessage_:Ljava/util/List;

    .line 7904
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->makeExtensionsImmutable()V

    throw v0

    .line 7901
    :cond_3
    and-int/lit8 v0, v1, 0x1

    if-ne v0, v4, :cond_4

    .line 7902
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->responseMessage_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->responseMessage_:Ljava/util/List;

    .line 7904
    :cond_4
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->makeExtensionsImmutable()V

    .line 7906
    return-void

    .line 7897
    :catch_1
    move-exception v0

    .line 7898
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

    .line 7874
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
    .line 7845
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 7850
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 7946
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->memoizedIsInitialized:B

    .line 7969
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->memoizedSerializedSize:I

    .line 7852
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7845
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 7853
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7946
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->memoizedIsInitialized:B

    .line 7969
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->memoizedSerializedSize:I

    .line 7853
    return-void
.end method

.method static synthetic access$9400(Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 7845
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->responseMessage_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$9402(Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7845
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->responseMessage_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;
    .locals 1

    .prologue
    .line 7857
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 7944
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->responseMessage_:Ljava/util/List;

    .line 7945
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;
    .locals 1

    .prologue
    .line 8042
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->access$9200()Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;)Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;
    .locals 1
    .parameter

    .prologue
    .line 8045
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->newBuilder()Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;)Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8022
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8028
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7992
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7998
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8033
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8039
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8012
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8018
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8002
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8008
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7845
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;
    .locals 1

    .prologue
    .line 7861
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7919
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getResponseMessage(I)Lcom/google/protos/speech/service/SpeechService$ResponseMessage;
    .locals 1
    .parameter

    .prologue
    .line 7936
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->responseMessage_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    return-object p0
.end method

.method public getResponseMessageCount()I
    .locals 1

    .prologue
    .line 7933
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->responseMessage_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResponseMessageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ResponseMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7926
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->responseMessage_:Ljava/util/List;

    return-object v0
.end method

.method public getResponseMessageOrBuilder(I)Lcom/google/protos/speech/service/SpeechService$ResponseMessageOrBuilder;
    .locals 1
    .parameter

    .prologue
    .line 7940
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->responseMessage_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessageOrBuilder;

    return-object p0
.end method

.method public getResponseMessageOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protos/speech/service/SpeechService$ResponseMessageOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7930
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->responseMessage_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 7971
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->memoizedSerializedSize:I

    .line 7972
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 7980
    :goto_0
    return v0

    :cond_0
    move v1, v2

    .line 7975
    :goto_1
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->responseMessage_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 7976
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->responseMessage_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v2

    .line 7975
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_1

    .line 7979
    :cond_1
    iput v2, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->memoizedSerializedSize:I

    move v0, v2

    .line 7980
    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7948
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->memoizedIsInitialized:B

    .line 7949
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 7958
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 7949
    goto :goto_0

    :cond_1
    move v0, v2

    .line 7951
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->getResponseMessageCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 7952
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->getResponseMessage(I)Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_2

    .line 7953
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->memoizedIsInitialized:B

    move v0, v2

    .line 7954
    goto :goto_0

    .line 7951
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7957
    :cond_3
    iput-byte v3, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->memoizedIsInitialized:B

    move v0, v3

    .line 7958
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7845
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;
    .locals 1

    .prologue
    .line 8043
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->newBuilder()Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7845
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->toBuilder()Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;
    .locals 1

    .prologue
    .line 8047
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->newBuilder(Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;)Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;

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
    .line 7986
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
    .line 7963
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->getSerializedSize()I

    .line 7964
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->responseMessage_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 7965
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->responseMessage_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7964
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 7967
    :cond_0
    return-void
.end method
