.class public final Lcom/google/protos/speech/service/SpeechService$CancelRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$CancelRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CancelRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$CancelRequest$Builder;
    }
.end annotation


# static fields
.field public static final CANCEL_REQUEST_FIELD_NUMBER:I = 0xe

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$CancelRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final cancelRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
            "Lcom/google/protos/speech/service/SpeechService$CancelRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$CancelRequest;


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 20152
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$CancelRequest$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$CancelRequest$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$CancelRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 20331
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$CancelRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$CancelRequest;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$CancelRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$CancelRequest;

    .line 20332
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CancelRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$CancelRequest;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$CancelRequest;->initFields()V

    .line 20340
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CancelRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CancelRequest;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CancelRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CancelRequest;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xe

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$CancelRequest;->cancelRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

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

    .line 20124
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 20169
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$CancelRequest;->memoizedIsInitialized:B

    .line 20183
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CancelRequest;->memoizedSerializedSize:I

    .line 20125
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$CancelRequest;->initFields()V

    .line 20127
    const/4 v0, 0x0

    .line 20128
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 20129
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 20130
    packed-switch v1, :pswitch_data_0

    .line 20135
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/speech/service/SpeechService$CancelRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 20137
    goto :goto_0

    :pswitch_0
    move v0, v2

    .line 20133
    goto :goto_0

    .line 20149
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CancelRequest;->makeExtensionsImmutable()V

    .line 20151
    return-void

    .line 20143
    :catch_0
    move-exception v0

    .line 20144
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20149
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CancelRequest;->makeExtensionsImmutable()V

    throw v0

    .line 20145
    :catch_1
    move-exception v0

    .line 20146
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

    .line 20130
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
    .line 20102
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$CancelRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 20107
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 20169
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$CancelRequest;->memoizedIsInitialized:B

    .line 20183
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CancelRequest;->memoizedSerializedSize:I

    .line 20109
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20102
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$CancelRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 20110
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 20169
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$CancelRequest;->memoizedIsInitialized:B

    .line 20183
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CancelRequest;->memoizedSerializedSize:I

    .line 20110
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CancelRequest;
    .locals 1

    .prologue
    .line 20114
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CancelRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$CancelRequest;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 20168
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$CancelRequest$Builder;
    .locals 1

    .prologue
    .line 20252
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CancelRequest$Builder;->access$24900()Lcom/google/protos/speech/service/SpeechService$CancelRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$CancelRequest;)Lcom/google/protos/speech/service/SpeechService$CancelRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 20255
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CancelRequest;->newBuilder()Lcom/google/protos/speech/service/SpeechService$CancelRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$CancelRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$CancelRequest;)Lcom/google/protos/speech/service/SpeechService$CancelRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$CancelRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20232
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CancelRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CancelRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CancelRequest;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20238
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CancelRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CancelRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$CancelRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20202
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CancelRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CancelRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CancelRequest;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20208
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CancelRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CancelRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/speech/service/SpeechService$CancelRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20243
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CancelRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CancelRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CancelRequest;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20249
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CancelRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CancelRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$CancelRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20222
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CancelRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CancelRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CancelRequest;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20228
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CancelRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CancelRequest;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/speech/service/SpeechService$CancelRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20212
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CancelRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CancelRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CancelRequest;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20218
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CancelRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CancelRequest;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 20102
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CancelRequest;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$CancelRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$CancelRequest;
    .locals 1

    .prologue
    .line 20118
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CancelRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$CancelRequest;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$CancelRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20164
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CancelRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 2

    .prologue
    .line 20185
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CancelRequest;->memoizedSerializedSize:I

    .line 20186
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 20190
    :goto_0
    return v0

    .line 20188
    :cond_0
    const/4 v0, 0x0

    .line 20189
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CancelRequest;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 20171
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$CancelRequest;->memoizedIsInitialized:B

    .line 20172
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 20175
    :goto_0
    return v0

    .line 20172
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 20174
    :cond_1
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$CancelRequest;->memoizedIsInitialized:B

    move v0, v2

    .line 20175
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 20102
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CancelRequest;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$CancelRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$CancelRequest$Builder;
    .locals 1

    .prologue
    .line 20253
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CancelRequest;->newBuilder()Lcom/google/protos/speech/service/SpeechService$CancelRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 20102
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CancelRequest;->toBuilder()Lcom/google/protos/speech/service/SpeechService$CancelRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$CancelRequest$Builder;
    .locals 1

    .prologue
    .line 20257
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$CancelRequest;->newBuilder(Lcom/google/protos/speech/service/SpeechService$CancelRequest;)Lcom/google/protos/speech/service/SpeechService$CancelRequest$Builder;

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
    .line 20196
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
    .line 20180
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CancelRequest;->getSerializedSize()I

    .line 20181
    return-void
.end method
