.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GaiaStatus"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;
    }
.end annotation


# static fields
.field public static final ERROR_MESSAGE_FIELD_NUMBER:I = 0x2

.field public static final ERROR_STATUS_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;


# instance fields
.field private bitField0_:I

.field private errorMessage_:Ljava/lang/Object;

.field private errorStatus_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7279
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$1;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$1;-><init>()V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->PARSER:Lcom/google/protobuf/Parser;

    .line 7619
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;-><init>(Z)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    .line 7620
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->initFields()V

    .line 7621
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v0, -0x1

    .line 7236
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7342
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->memoizedIsInitialized:B

    .line 7362
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->memoizedSerializedSize:I

    .line 7237
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->initFields()V

    .line 7240
    const/4 v0, 0x0

    .line 7241
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 7242
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 7243
    sparse-switch v1, :sswitch_data_0

    .line 7248
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v3

    .line 7250
    goto :goto_0

    :sswitch_0
    move v0, v3

    .line 7246
    goto :goto_0

    .line 7255
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v1

    .line 7256
    invoke-static {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->valueOf(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    move-result-object v1

    .line 7257
    if-eqz v1, :cond_0

    .line 7258
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->bitField0_:I

    .line 7259
    iput-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->errorStatus_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 7270
    :catch_0
    move-exception v0

    .line 7271
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7276
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->makeExtensionsImmutable()V

    throw v0

    .line 7264
    :sswitch_2
    :try_start_2
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->bitField0_:I

    .line 7265
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->errorMessage_:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 7272
    :catch_1
    move-exception v0

    .line 7273
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

    .line 7276
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->makeExtensionsImmutable()V

    .line 7278
    return-void

    .line 7243
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
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
    .line 7214
    invoke-direct {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 7219
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 7342
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->memoizedIsInitialized:B

    .line 7362
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->memoizedSerializedSize:I

    .line 7221
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7214
    invoke-direct {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 7222
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7342
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->memoizedIsInitialized:B

    .line 7362
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->memoizedSerializedSize:I

    .line 7222
    return-void
.end method

.method static synthetic access$8702(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7214
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->errorStatus_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    return-object p1
.end method

.method static synthetic access$8800(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 7214
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->errorMessage_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$8802(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7214
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->errorMessage_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8902(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7214
    iput p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;
    .locals 1

    .prologue
    .line 7226
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 7339
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->UNKNOWN_ERROR:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->errorStatus_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    .line 7340
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->errorMessage_:Ljava/lang/Object;

    .line 7341
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;
    .locals 1

    .prologue
    .line 7439
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->access$8500()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;
    .locals 1
    .parameter

    .prologue
    .line 7442
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7419
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7425
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7389
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7395
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7430
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7436
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7409
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7415
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7399
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7405
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7214
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;
    .locals 1

    .prologue
    .line 7230
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 7312
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->errorMessage_:Ljava/lang/Object;

    .line 7313
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 7314
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 7322
    :goto_0
    return-object v1

    .line 7316
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 7318
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 7319
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7320
    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->errorMessage_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 7322
    goto :goto_0
.end method

.method public getErrorMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 7327
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->errorMessage_:Ljava/lang/Object;

    .line 7328
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7329
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7331
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->errorMessage_:Ljava/lang/Object;

    .line 7334
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getErrorStatus()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;
    .locals 1

    .prologue
    .line 7302
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->errorStatus_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7291
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 7364
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->memoizedSerializedSize:I

    .line 7365
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 7377
    :goto_0
    return v0

    .line 7367
    :cond_0
    const/4 v0, 0x0

    .line 7368
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 7369
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->errorStatus_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7372
    :cond_1
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 7373
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->getErrorMessageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7376
    :cond_2
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public hasErrorMessage()Z
    .locals 2

    .prologue
    .line 7309
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->bitField0_:I

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

.method public hasErrorStatus()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 7299
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->bitField0_:I

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

    .line 7344
    iget-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->memoizedIsInitialized:B

    .line 7345
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 7348
    :goto_0
    return v0

    .line 7345
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 7347
    :cond_1
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->memoizedIsInitialized:B

    move v0, v2

    .line 7348
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7214
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;
    .locals 1

    .prologue
    .line 7440
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7214
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;
    .locals 1

    .prologue
    .line 7444
    invoke-static {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;

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
    .line 7383
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

    .line 7353
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->getSerializedSize()I

    .line 7354
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 7355
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->errorStatus_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 7357
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 7358
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->getErrorMessageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7360
    :cond_1
    return-void
.end method
