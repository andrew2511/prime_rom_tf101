.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GoToResponseItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;
    }
.end annotation


# static fields
.field public static final DISPLAY_URL_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final URL_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;


# instance fields
.field private bitField0_:I

.field private displayUrl_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private url_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14391
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$1;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$1;-><init>()V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    .line 14890
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;-><init>(Z)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    .line 14891
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->initFields()V

    .line 14892
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

    .line 14347
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 14511
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->memoizedIsInitialized:B

    .line 14534
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->memoizedSerializedSize:I

    .line 14348
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->initFields()V

    .line 14351
    const/4 v0, 0x0

    .line 14352
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 14353
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 14354
    sparse-switch v1, :sswitch_data_0

    .line 14359
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 14361
    goto :goto_0

    :sswitch_0
    move v0, v2

    .line 14357
    goto :goto_0

    .line 14366
    :sswitch_1
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->bitField0_:I

    .line 14367
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->url_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 14382
    :catch_0
    move-exception v0

    .line 14383
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14388
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->makeExtensionsImmutable()V

    throw v0

    .line 14371
    :sswitch_2
    :try_start_2
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->bitField0_:I

    .line 14372
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->displayUrl_:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 14384
    :catch_1
    move-exception v0

    .line 14385
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

    .line 14376
    :sswitch_3
    :try_start_4
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->bitField0_:I

    .line 14377
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->name_:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 14388
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->makeExtensionsImmutable()V

    .line 14390
    return-void

    .line 14354
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 14325
    invoke-direct {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 14330
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 14511
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->memoizedIsInitialized:B

    .line 14534
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->memoizedSerializedSize:I

    .line 14332
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14325
    invoke-direct {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 14333
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 14511
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->memoizedIsInitialized:B

    .line 14534
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->memoizedSerializedSize:I

    .line 14333
    return-void
.end method

.method static synthetic access$17300(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 14325
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->url_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$17302(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14325
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->url_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$17400(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 14325
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->displayUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$17402(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14325
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->displayUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$17500(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 14325
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$17502(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14325
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$17602(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14325
    iput p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;
    .locals 1

    .prologue
    .line 14337
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 14507
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->url_:Ljava/lang/Object;

    .line 14508
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->displayUrl_:Ljava/lang/Object;

    .line 14509
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->name_:Ljava/lang/Object;

    .line 14510
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;
    .locals 1

    .prologue
    .line 14615
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->access$17100()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14618
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14595
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14601
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14565
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14571
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14606
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14612
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14585
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14591
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14575
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14581
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14325
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;
    .locals 1

    .prologue
    .line 14341
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    return-object v0
.end method

.method public getDisplayUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 14447
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->displayUrl_:Ljava/lang/Object;

    .line 14448
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 14449
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 14457
    :goto_0
    return-object v1

    .line 14451
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 14453
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 14454
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 14455
    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->displayUrl_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 14457
    goto :goto_0
.end method

.method public getDisplayUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 14462
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->displayUrl_:Ljava/lang/Object;

    .line 14463
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14464
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14466
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->displayUrl_:Ljava/lang/Object;

    .line 14469
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 14480
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->name_:Ljava/lang/Object;

    .line 14481
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 14482
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 14490
    :goto_0
    return-object v1

    .line 14484
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 14486
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 14487
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 14488
    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->name_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 14490
    goto :goto_0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 14495
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->name_:Ljava/lang/Object;

    .line 14496
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14497
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14499
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->name_:Ljava/lang/Object;

    .line 14502
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
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14403
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 14536
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->memoizedSerializedSize:I

    .line 14537
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 14553
    :goto_0
    return v0

    .line 14539
    :cond_0
    const/4 v0, 0x0

    .line 14540
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 14541
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14544
    :cond_1
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 14545
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->getDisplayUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14548
    :cond_2
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 14549
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14552
    :cond_3
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 14414
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->url_:Ljava/lang/Object;

    .line 14415
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 14416
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 14424
    :goto_0
    return-object v1

    .line 14418
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 14420
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 14421
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 14422
    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->url_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 14424
    goto :goto_0
.end method

.method public getUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 14429
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->url_:Ljava/lang/Object;

    .line 14430
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14431
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14433
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->url_:Ljava/lang/Object;

    .line 14436
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasDisplayUrl()Z
    .locals 2

    .prologue
    .line 14444
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->bitField0_:I

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

.method public hasName()Z
    .locals 2

    .prologue
    .line 14477
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->bitField0_:I

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

.method public hasUrl()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 14411
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->bitField0_:I

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

    .line 14513
    iget-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->memoizedIsInitialized:B

    .line 14514
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 14517
    :goto_0
    return v0

    .line 14514
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 14516
    :cond_1
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->memoizedIsInitialized:B

    move v0, v2

    .line 14517
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14325
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;
    .locals 1

    .prologue
    .line 14616
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14325
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;
    .locals 1

    .prologue
    .line 14620
    invoke-static {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

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
    .line 14559
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

    .line 14522
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->getSerializedSize()I

    .line 14523
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 14524
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 14526
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 14527
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->getDisplayUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 14529
    :cond_1
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 14530
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 14532
    :cond_2
    return-void
.end method
