.class public final Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$RecognitionSlotOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognitionSlot"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$RecognitionSlotOrBuilder;"
    }
.end annotation


# static fields
.field public static final CONFIDENCE_FIELD_NUMBER:I = 0x3

.field public static final LITERAL_FIELD_NUMBER:I = 0x4

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUBSLOT_FIELD_NUMBER:I = 0x5

.field public static final VALUE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;


# instance fields
.field private bitField0_:I

.field private confidence_:F

.field private literal_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private subslot_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;",
            ">;"
        }
    .end annotation
.end field

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2336
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->PARSER:Lcom/google/protobuf/Parser;

    .line 3059
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    .line 3060
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->initFields()V

    .line 3061
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    const/16 v4, 0x10

    .line 2276
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    .line 2489
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->memoizedIsInitialized:B

    .line 2540
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->memoizedSerializedSize:I

    .line 2277
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->initFields()V

    move v0, v1

    .line 2281
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 2282
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 2283
    sparse-switch v2, :sswitch_data_0

    .line 2288
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v5

    .line 2290
    goto :goto_0

    :sswitch_0
    move v0, v5

    .line 2286
    goto :goto_0

    .line 2295
    :sswitch_1
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->bitField0_:I

    .line 2296
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->name_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2324
    :catch_0
    move-exception v0

    .line 2325
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2330
    :catchall_0
    move-exception v0

    and-int/lit8 v1, v1, 0x10

    if-ne v1, v4, :cond_1

    .line 2331
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->subslot_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->subslot_:Ljava/util/List;

    .line 2333
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->makeExtensionsImmutable()V

    throw v0

    .line 2300
    :sswitch_2
    :try_start_2
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->bitField0_:I

    .line 2301
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->value_:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2326
    :catch_1
    move-exception v0

    .line 2327
    :try_start_3
    new-instance v2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2305
    :sswitch_3
    :try_start_4
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->bitField0_:I

    .line 2306
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->confidence_:F

    goto :goto_0

    .line 2310
    :sswitch_4
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->bitField0_:I

    .line 2311
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->literal_:Ljava/lang/Object;

    goto :goto_0

    .line 2315
    :sswitch_5
    and-int/lit8 v2, v1, 0x10

    if-eq v2, v4, :cond_2

    .line 2316
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->subslot_:Ljava/util/List;

    .line 2317
    or-int/lit8 v1, v1, 0x10

    .line 2319
    :cond_2
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->subslot_:Ljava/util/List;

    sget-object v3, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 2330
    :cond_3
    and-int/lit8 v0, v1, 0x10

    if-ne v0, v4, :cond_4

    .line 2331
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->subslot_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->subslot_:Ljava/util/List;

    .line 2333
    :cond_4
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->makeExtensionsImmutable()V

    .line 2335
    return-void

    .line 2283
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1d -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
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
    .line 2254
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;",
            "*>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 2259
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;)V

    .line 2489
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->memoizedIsInitialized:B

    .line 2540
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->memoizedSerializedSize:I

    .line 2261
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2254
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2262
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    .line 2489
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->memoizedIsInitialized:B

    .line 2540
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->memoizedSerializedSize:I

    .line 2262
    return-void
.end method

.method static synthetic access$2700(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 2254
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2254
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 2254
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->value_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2254
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2902(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2254
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->confidence_:F

    return p1
.end method

.method static synthetic access$3000(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 2254
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->literal_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2254
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->literal_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 2254
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->subslot_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2254
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->subslot_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2254
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;
    .locals 1

    .prologue
    .line 2266
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 2483
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->name_:Ljava/lang/Object;

    .line 2484
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->value_:Ljava/lang/Object;

    .line 2485
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->confidence_:F

    .line 2486
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->literal_:Ljava/lang/Object;

    .line 2487
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->subslot_:Ljava/util/List;

    .line 2488
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;
    .locals 1

    .prologue
    .line 2630
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->access$2500()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2633
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->newBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2610
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2616
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2580
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2586
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2621
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2627
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2600
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2606
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2590
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2596
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    return-object p0
.end method


# virtual methods
.method public getConfidence()F
    .locals 1

    .prologue
    .line 2425
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->confidence_:F

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2254
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;
    .locals 1

    .prologue
    .line 2270
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    return-object v0
.end method

.method public getLiteral()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2435
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->literal_:Ljava/lang/Object;

    .line 2436
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2437
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 2445
    :goto_0
    return-object v1

    .line 2439
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 2441
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2442
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2443
    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->literal_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 2445
    goto :goto_0
.end method

.method public getLiteralBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2450
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->literal_:Ljava/lang/Object;

    .line 2451
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2452
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2454
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->literal_:Ljava/lang/Object;

    .line 2457
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2359
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->name_:Ljava/lang/Object;

    .line 2360
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2361
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 2369
    :goto_0
    return-object v1

    .line 2363
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 2365
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2366
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2367
    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->name_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 2369
    goto :goto_0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2374
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->name_:Ljava/lang/Object;

    .line 2375
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2376
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2378
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->name_:Ljava/lang/Object;

    .line 2381
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
            "Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2348
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2542
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->memoizedSerializedSize:I

    .line 2543
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2568
    :goto_0
    return v0

    .line 2546
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_5

    .line 2547
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v0, v3

    .line 2550
    :goto_1
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_1

    .line 2551
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2554
    :cond_1
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v5, :cond_2

    .line 2555
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->confidence_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2558
    :cond_2
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 2559
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->getLiteralBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    move v1, v3

    move v2, v0

    .line 2562
    :goto_2
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->subslot_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 2563
    const/4 v3, 0x5

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->subslot_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v2

    .line 2562
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    .line 2566
    :cond_4
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->extensionsSerializedSize()I

    move-result v0

    add-int/2addr v0, v2

    .line 2567
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->memoizedSerializedSize:I

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_1
.end method

.method public getSubslot(I)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;
    .locals 1
    .parameter

    .prologue
    .line 2475
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->subslot_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    return-object p0
.end method

.method public getSubslotCount()I
    .locals 1

    .prologue
    .line 2472
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->subslot_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSubslotList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2465
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->subslot_:Ljava/util/List;

    return-object v0
.end method

.method public getSubslotOrBuilder(I)Lcom/google/protos/speech/service/SpeechService$RecognitionSlotOrBuilder;
    .locals 1
    .parameter

    .prologue
    .line 2479
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->subslot_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlotOrBuilder;

    return-object p0
.end method

.method public getSubslotOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionSlotOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2469
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->subslot_:Ljava/util/List;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2392
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->value_:Ljava/lang/Object;

    .line 2393
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2394
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 2402
    :goto_0
    return-object v1

    .line 2396
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 2398
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2399
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2400
    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->value_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 2402
    goto :goto_0
.end method

.method public getValueBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2407
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->value_:Ljava/lang/Object;

    .line 2408
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2409
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2411
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->value_:Ljava/lang/Object;

    .line 2414
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasConfidence()Z
    .locals 2

    .prologue
    .line 2422
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->bitField0_:I

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

.method public hasLiteral()Z
    .locals 2

    .prologue
    .line 2432
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

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
    const/4 v1, 0x1

    .line 2356
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValue()Z
    .locals 2

    .prologue
    .line 2389
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->bitField0_:I

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
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2491
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->memoizedIsInitialized:B

    .line 2492
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 2513
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 2492
    goto :goto_0

    .line 2494
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->hasName()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2495
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->memoizedIsInitialized:B

    move v0, v2

    .line 2496
    goto :goto_0

    .line 2498
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->hasValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2499
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->memoizedIsInitialized:B

    move v0, v2

    .line 2500
    goto :goto_0

    :cond_3
    move v0, v2

    .line 2502
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->getSubslotCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 2503
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->getSubslot(I)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2504
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->memoizedIsInitialized:B

    move v0, v2

    .line 2505
    goto :goto_0

    .line 2502
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2508
    :cond_5
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->extensionsAreInitialized()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2509
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->memoizedIsInitialized:B

    move v0, v2

    .line 2510
    goto :goto_0

    .line 2512
    :cond_6
    iput-byte v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->memoizedIsInitialized:B

    move v0, v3

    .line 2513
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2254
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;
    .locals 1

    .prologue
    .line 2631
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->newBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2254
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->toBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;
    .locals 1

    .prologue
    .line 2635
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->newBuilder(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;

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
    .line 2574
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2518
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->getSerializedSize()I

    .line 2520
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->newExtensionWriter()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;

    move-result-object v1

    .line 2522
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 2523
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2525
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    .line 2526
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2528
    :cond_1
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    .line 2529
    const/4 v0, 0x3

    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->confidence_:F

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 2531
    :cond_2
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v2, 0x8

    if-ne v0, v2, :cond_3

    .line 2532
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->getLiteralBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2534
    :cond_3
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->subslot_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 2535
    const/4 v3, 0x5

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->subslot_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2534
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 2537
    :cond_4
    const/high16 v0, 0x2000

    invoke-virtual {v1, v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 2538
    return-void
.end method
