.class public final Lcom/google/protos/speech/service/SpeechService$CancelResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$CancelResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CancelResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;
    }
.end annotation


# static fields
.field public static final CANCEL_RESPONSE_FIELD_NUMBER:I = 0xe

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$CancelResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final cancelResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ResponseMessage;",
            "Lcom/google/protos/speech/service/SpeechService$CancelResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$CancelResponse;


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 20403
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$CancelResponse$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$CancelResponse$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$CancelResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 20582
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$CancelResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$CancelResponse;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$CancelResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$CancelResponse;

    .line 20583
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CancelResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$CancelResponse;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$CancelResponse;->initFields()V

    .line 20591
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CancelResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CancelResponse;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CancelResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CancelResponse;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xe

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$CancelResponse;->cancelResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

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

    .line 20375
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 20420
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$CancelResponse;->memoizedIsInitialized:B

    .line 20434
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CancelResponse;->memoizedSerializedSize:I

    .line 20376
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$CancelResponse;->initFields()V

    .line 20378
    const/4 v0, 0x0

    .line 20379
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 20380
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 20381
    packed-switch v1, :pswitch_data_0

    .line 20386
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/speech/service/SpeechService$CancelResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 20388
    goto :goto_0

    :pswitch_0
    move v0, v2

    .line 20384
    goto :goto_0

    .line 20400
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CancelResponse;->makeExtensionsImmutable()V

    .line 20402
    return-void

    .line 20394
    :catch_0
    move-exception v0

    .line 20395
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20400
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CancelResponse;->makeExtensionsImmutable()V

    throw v0

    .line 20396
    :catch_1
    move-exception v0

    .line 20397
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

    .line 20381
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
    .line 20353
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$CancelResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 20358
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 20420
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$CancelResponse;->memoizedIsInitialized:B

    .line 20434
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CancelResponse;->memoizedSerializedSize:I

    .line 20360
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20353
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$CancelResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 20361
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 20420
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$CancelResponse;->memoizedIsInitialized:B

    .line 20434
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CancelResponse;->memoizedSerializedSize:I

    .line 20361
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CancelResponse;
    .locals 1

    .prologue
    .line 20365
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CancelResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$CancelResponse;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 20419
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;
    .locals 1

    .prologue
    .line 20503
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;->access$25200()Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$CancelResponse;)Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;
    .locals 1
    .parameter

    .prologue
    .line 20506
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CancelResponse;->newBuilder()Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$CancelResponse;)Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$CancelResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20483
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CancelResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CancelResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CancelResponse;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20489
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CancelResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CancelResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$CancelResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20453
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CancelResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CancelResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CancelResponse;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20459
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CancelResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CancelResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/speech/service/SpeechService$CancelResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20494
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CancelResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CancelResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CancelResponse;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20500
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CancelResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CancelResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$CancelResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20473
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CancelResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CancelResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CancelResponse;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20479
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CancelResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CancelResponse;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/speech/service/SpeechService$CancelResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20463
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CancelResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CancelResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CancelResponse;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20469
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CancelResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CancelResponse;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 20353
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CancelResponse;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$CancelResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$CancelResponse;
    .locals 1

    .prologue
    .line 20369
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CancelResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$CancelResponse;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$CancelResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20415
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CancelResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 2

    .prologue
    .line 20436
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CancelResponse;->memoizedSerializedSize:I

    .line 20437
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 20441
    :goto_0
    return v0

    .line 20439
    :cond_0
    const/4 v0, 0x0

    .line 20440
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CancelResponse;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 20422
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$CancelResponse;->memoizedIsInitialized:B

    .line 20423
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 20426
    :goto_0
    return v0

    .line 20423
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 20425
    :cond_1
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$CancelResponse;->memoizedIsInitialized:B

    move v0, v2

    .line 20426
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 20353
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CancelResponse;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;
    .locals 1

    .prologue
    .line 20504
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CancelResponse;->newBuilder()Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 20353
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CancelResponse;->toBuilder()Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;
    .locals 1

    .prologue
    .line 20508
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$CancelResponse;->newBuilder(Lcom/google/protos/speech/service/SpeechService$CancelResponse;)Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;

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
    .line 20447
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
    .line 20431
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CancelResponse;->getSerializedSize()I

    .line 20432
    return-void
.end method
