.class public final Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$SynthesizeAckOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SynthesizeAck"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;",
            ">;"
        }
    .end annotation
.end field

.field public static final SYNTHESIZE_ACK_FIELD_NUMBER:I = 0x13

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;

.field public static final synthesizeAck:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ResponseMessage;",
            "Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 23103
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;->PARSER:Lcom/google/protobuf/Parser;

    .line 23282
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;

    .line 23283
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;->initFields()V

    .line 23291
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x13

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;->synthesizeAck:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

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

    .line 23075
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 23120
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;->memoizedIsInitialized:B

    .line 23134
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;->memoizedSerializedSize:I

    .line 23076
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;->initFields()V

    .line 23078
    const/4 v0, 0x0

    .line 23079
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 23080
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 23081
    packed-switch v1, :pswitch_data_0

    .line 23086
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 23088
    goto :goto_0

    :pswitch_0
    move v0, v2

    .line 23084
    goto :goto_0

    .line 23100
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;->makeExtensionsImmutable()V

    .line 23102
    return-void

    .line 23094
    :catch_0
    move-exception v0

    .line 23095
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23100
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;->makeExtensionsImmutable()V

    throw v0

    .line 23096
    :catch_1
    move-exception v0

    .line 23097
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

    .line 23081
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
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
    .line 23053
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 23058
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 23120
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;->memoizedIsInitialized:B

    .line 23134
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;->memoizedSerializedSize:I

    .line 23060
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23053
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 23061
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 23120
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;->memoizedIsInitialized:B

    .line 23134
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;->memoizedSerializedSize:I

    .line 23061
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;
    .locals 1

    .prologue
    .line 23065
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 23119
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;
    .locals 1

    .prologue
    .line 23203
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;->access$28800()Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;)Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;
    .locals 1
    .parameter

    .prologue
    .line 23206
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;->newBuilder()Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;)Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23183
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23189
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 23153
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 23159
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23194
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23200
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23173
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23179
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 23163
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 23169
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 23053
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;
    .locals 1

    .prologue
    .line 23069
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23115
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 2

    .prologue
    .line 23136
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;->memoizedSerializedSize:I

    .line 23137
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 23141
    :goto_0
    return v0

    .line 23139
    :cond_0
    const/4 v0, 0x0

    .line 23140
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 23122
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;->memoizedIsInitialized:B

    .line 23123
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 23126
    :goto_0
    return v0

    .line 23123
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 23125
    :cond_1
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;->memoizedIsInitialized:B

    move v0, v2

    .line 23126
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 23053
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;
    .locals 1

    .prologue
    .line 23204
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;->newBuilder()Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 23053
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;->toBuilder()Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;
    .locals 1

    .prologue
    .line 23208
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;->newBuilder(Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;)Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;

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
    .line 23147
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23131
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;->getSerializedSize()I

    .line 23132
    return-void
.end method
