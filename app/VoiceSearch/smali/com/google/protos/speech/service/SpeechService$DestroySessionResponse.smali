.class public final Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$DestroySessionResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DestroySessionResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse$Builder;
    }
.end annotation


# static fields
.field public static final DESTROY_SESSION_RESPONSE_FIELD_NUMBER:I = 0xb

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;

.field public static final destroySessionResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ResponseMessage;",
            "Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;",
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
    .line 13161
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 13340
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;

    .line 13341
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;->initFields()V

    .line 13349
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xb

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;->destroySessionResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

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

    .line 13133
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 13178
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;->memoizedIsInitialized:B

    .line 13192
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;->memoizedSerializedSize:I

    .line 13134
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;->initFields()V

    .line 13136
    const/4 v0, 0x0

    .line 13137
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 13138
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 13139
    packed-switch v1, :pswitch_data_0

    .line 13144
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 13146
    goto :goto_0

    :pswitch_0
    move v0, v2

    .line 13142
    goto :goto_0

    .line 13158
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;->makeExtensionsImmutable()V

    .line 13160
    return-void

    .line 13152
    :catch_0
    move-exception v0

    .line 13153
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13158
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;->makeExtensionsImmutable()V

    throw v0

    .line 13154
    :catch_1
    move-exception v0

    .line 13155
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

    .line 13139
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
    .line 13111
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 13116
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 13178
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;->memoizedIsInitialized:B

    .line 13192
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;->memoizedSerializedSize:I

    .line 13118
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13111
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 13119
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 13178
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;->memoizedIsInitialized:B

    .line 13192
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;->memoizedSerializedSize:I

    .line 13119
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;
    .locals 1

    .prologue
    .line 13123
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 13177
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse$Builder;
    .locals 1

    .prologue
    .line 13261
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse$Builder;->access$15500()Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;)Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse$Builder;
    .locals 1
    .parameter

    .prologue
    .line 13264
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;->newBuilder()Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;)Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13241
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13247
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13211
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13217
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13252
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13258
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13231
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13237
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13221
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13227
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13111
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;
    .locals 1

    .prologue
    .line 13127
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13173
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 2

    .prologue
    .line 13194
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;->memoizedSerializedSize:I

    .line 13195
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 13199
    :goto_0
    return v0

    .line 13197
    :cond_0
    const/4 v0, 0x0

    .line 13198
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 13180
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;->memoizedIsInitialized:B

    .line 13181
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 13184
    :goto_0
    return v0

    .line 13181
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 13183
    :cond_1
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;->memoizedIsInitialized:B

    move v0, v2

    .line 13184
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13111
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse$Builder;
    .locals 1

    .prologue
    .line 13262
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;->newBuilder()Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13111
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;->toBuilder()Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse$Builder;
    .locals 1

    .prologue
    .line 13266
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;->newBuilder(Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;)Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse$Builder;

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
    .line 13205
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
    .line 13189
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;->getSerializedSize()I

    .line 13190
    return-void
.end method
