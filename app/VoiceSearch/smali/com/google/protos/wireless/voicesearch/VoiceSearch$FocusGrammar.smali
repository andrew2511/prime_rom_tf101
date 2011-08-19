.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammarOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FocusGrammar"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;
    }
.end annotation


# static fields
.field public static final DEPRECATED_GAIA_ID_FIELD_NUMBER:I = 0x1

.field public static final FOCUS_GRAMMAR_FIELD_NUMBER:I = 0xe

.field public static final GAIA_AUTHENTICATION_TOKEN_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;

.field public static final focusGrammar:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$Grammar;",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private deprecatedGaiaId_:J

.field private gaiaAuthenticationToken_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 2450
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$1;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$1;-><init>()V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->PARSER:Lcom/google/protobuf/Parser;

    .line 2795
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;-><init>(Z)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;

    .line 2796
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->initFields()V

    .line 2804
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$Grammar;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$Grammar;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xe

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->focusGrammar:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

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

    .line 2411
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2513
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->memoizedIsInitialized:B

    .line 2537
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->memoizedSerializedSize:I

    .line 2412
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->initFields()V

    .line 2415
    const/4 v0, 0x0

    .line 2416
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 2417
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 2418
    sparse-switch v1, :sswitch_data_0

    .line 2423
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v3

    .line 2425
    goto :goto_0

    :sswitch_0
    move v0, v3

    .line 2421
    goto :goto_0

    .line 2430
    :sswitch_1
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->bitField0_:I

    .line 2431
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->deprecatedGaiaId_:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2441
    :catch_0
    move-exception v0

    .line 2442
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2447
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->makeExtensionsImmutable()V

    throw v0

    .line 2435
    :sswitch_2
    :try_start_2
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->bitField0_:I

    .line 2436
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->gaiaAuthenticationToken_:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2443
    :catch_1
    move-exception v0

    .line 2444
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

    .line 2447
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->makeExtensionsImmutable()V

    .line 2449
    return-void

    .line 2418
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
    .line 2389
    invoke-direct {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2394
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2513
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->memoizedIsInitialized:B

    .line 2537
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->memoizedSerializedSize:I

    .line 2396
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2389
    invoke-direct {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2397
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2513
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->memoizedIsInitialized:B

    .line 2537
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->memoizedSerializedSize:I

    .line 2397
    return-void
.end method

.method static synthetic access$2802(Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2389
    iput-wide p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->deprecatedGaiaId_:J

    return-wide p1
.end method

.method static synthetic access$2900(Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 2389
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->gaiaAuthenticationToken_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2389
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->gaiaAuthenticationToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3002(Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2389
    iput p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;
    .locals 1

    .prologue
    .line 2401
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    .line 2510
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->deprecatedGaiaId_:J

    .line 2511
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->gaiaAuthenticationToken_:Ljava/lang/Object;

    .line 2512
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;
    .locals 1

    .prologue
    .line 2614
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->access$2600()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2617
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2594
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2600
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2564
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2570
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2605
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2611
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2584
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2590
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2574
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2580
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2389
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;
    .locals 1

    .prologue
    .line 2405
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;

    return-object v0
.end method

.method public getDeprecatedGaiaId()J
    .locals 2

    .prologue
    .line 2473
    iget-wide v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->deprecatedGaiaId_:J

    return-wide v0
.end method

.method public getGaiaAuthenticationToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2483
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->gaiaAuthenticationToken_:Ljava/lang/Object;

    .line 2484
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2485
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 2493
    :goto_0
    return-object v1

    .line 2487
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 2489
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2490
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2491
    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->gaiaAuthenticationToken_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 2493
    goto :goto_0
.end method

.method public getGaiaAuthenticationTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2498
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->gaiaAuthenticationToken_:Ljava/lang/Object;

    .line 2499
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2500
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2502
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->gaiaAuthenticationToken_:Ljava/lang/Object;

    .line 2505
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
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2462
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2539
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->memoizedSerializedSize:I

    .line 2540
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2552
    :goto_0
    return v0

    .line 2542
    :cond_0
    const/4 v0, 0x0

    .line 2543
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_1

    .line 2544
    iget-wide v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->deprecatedGaiaId_:J

    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2547
    :cond_1
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_2

    .line 2548
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->getGaiaAuthenticationTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2551
    :cond_2
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public hasDeprecatedGaiaId()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2470
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGaiaAuthenticationToken()Z
    .locals 2

    .prologue
    .line 2480
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2515
    iget-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->memoizedIsInitialized:B

    .line 2516
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 2523
    :goto_0
    return v0

    :cond_0
    move v0, v3

    .line 2516
    goto :goto_0

    .line 2518
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->hasGaiaAuthenticationToken()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2519
    iput-byte v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->memoizedIsInitialized:B

    move v0, v3

    .line 2520
    goto :goto_0

    .line 2522
    :cond_2
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->memoizedIsInitialized:B

    move v0, v2

    .line 2523
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2389
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;
    .locals 1

    .prologue
    .line 2615
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2389
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;
    .locals 1

    .prologue
    .line 2619
    invoke-static {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;

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
    .line 2558
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2528
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->getSerializedSize()I

    .line 2529
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 2530
    iget-wide v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->deprecatedGaiaId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 2532
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    .line 2533
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->getGaiaAuthenticationTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2535
    :cond_1
    return-void
.end method
