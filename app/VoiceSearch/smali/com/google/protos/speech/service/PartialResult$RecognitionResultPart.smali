.class public final Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PartialResult.java"

# interfaces
.implements Lcom/google/protos/speech/service/PartialResult$RecognitionResultPartOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/PartialResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognitionResultPart"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;",
            ">;"
        }
    .end annotation
.end field

.field public static final STABILITY_CONFIDENCE_FIELD_NUMBER:I = 0x2

.field public static final TRANSCRIPT_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private stabilityConfidence_:D

.field private transcript_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 479
    new-instance v0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->PARSER:Lcom/google/protobuf/Parser;

    .line 816
    new-instance v0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->defaultInstance:Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    .line 817
    sget-object v0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->defaultInstance:Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    invoke-direct {v0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->initFields()V

    .line 818
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

    .line 440
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 542
    iput-byte v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->memoizedIsInitialized:B

    .line 562
    iput v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->memoizedSerializedSize:I

    .line 441
    invoke-direct {p0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->initFields()V

    .line 444
    const/4 v0, 0x0

    .line 445
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 446
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 447
    sparse-switch v1, :sswitch_data_0

    .line 452
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v3

    .line 454
    goto :goto_0

    :sswitch_0
    move v0, v3

    .line 450
    goto :goto_0

    .line 459
    :sswitch_1
    iget v1, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->bitField0_:I

    .line 460
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->transcript_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 470
    :catch_0
    move-exception v0

    .line 471
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->makeExtensionsImmutable()V

    throw v0

    .line 464
    :sswitch_2
    :try_start_2
    iget v1, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->bitField0_:I

    .line 465
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->stabilityConfidence_:D
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 472
    :catch_1
    move-exception v0

    .line 473
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

    .line 476
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->makeExtensionsImmutable()V

    .line 478
    return-void

    .line 447
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/speech/service/PartialResult$1;)V
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
    .line 418
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 423
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 542
    iput-byte v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->memoizedIsInitialized:B

    .line 562
    iput v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->memoizedSerializedSize:I

    .line 425
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/PartialResult$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 418
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 426
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 542
    iput-byte v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->memoizedIsInitialized:B

    .line 562
    iput v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->memoizedSerializedSize:I

    .line 426
    return-void
.end method

.method static synthetic access$700(Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 418
    iget-object v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->transcript_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 418
    iput-object p1, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->transcript_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;D)D
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 418
    iput-wide p1, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->stabilityConfidence_:D

    return-wide p1
.end method

.method static synthetic access$902(Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 418
    iput p1, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;
    .locals 1

    .prologue
    .line 430
    sget-object v0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->defaultInstance:Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    .line 539
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->transcript_:Ljava/lang/Object;

    .line 540
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->stabilityConfidence_:D

    .line 541
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;
    .locals 1

    .prologue
    .line 639
    invoke-static {}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->access$500()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;)Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;
    .locals 1
    .parameter

    .prologue
    .line 642
    invoke-static {}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->newBuilder()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->mergeFrom(Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;)Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 619
    sget-object v0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 625
    sget-object v0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 589
    sget-object v0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 595
    sget-object v0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 630
    sget-object v0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 636
    sget-object v0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 609
    sget-object v0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 615
    sget-object v0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 599
    sget-object v0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 605
    sget-object v0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->getDefaultInstanceForType()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;
    .locals 1

    .prologue
    .line 434
    sget-object v0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->defaultInstance:Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;",
            ">;"
        }
    .end annotation

    .prologue
    .line 491
    sget-object v0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 564
    iget v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->memoizedSerializedSize:I

    .line 565
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 577
    :goto_0
    return v0

    .line 567
    :cond_0
    const/4 v0, 0x0

    .line 568
    iget v1, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 569
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->getTranscriptBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 572
    :cond_1
    iget v1, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 573
    iget-wide v1, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->stabilityConfidence_:D

    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 576
    :cond_2
    iput v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getStabilityConfidence()D
    .locals 2

    .prologue
    .line 535
    iget-wide v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->stabilityConfidence_:D

    return-wide v0
.end method

.method public getTranscript()Ljava/lang/String;
    .locals 3

    .prologue
    .line 502
    iget-object v1, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->transcript_:Ljava/lang/Object;

    .line 503
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 504
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 512
    :goto_0
    return-object v1

    .line 506
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 508
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 509
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 510
    iput-object v2, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->transcript_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 512
    goto :goto_0
.end method

.method public getTranscriptBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->transcript_:Ljava/lang/Object;

    .line 518
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 519
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 521
    iput-object v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->transcript_:Ljava/lang/Object;

    .line 524
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasStabilityConfidence()Z
    .locals 2

    .prologue
    .line 532
    iget v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->bitField0_:I

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

.method public hasTranscript()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 499
    iget v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->bitField0_:I

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

    .line 544
    iget-byte v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->memoizedIsInitialized:B

    .line 545
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 548
    :goto_0
    return v0

    .line 545
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 547
    :cond_1
    iput-byte v2, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->memoizedIsInitialized:B

    move v0, v2

    .line 548
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->newBuilderForType()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;
    .locals 1

    .prologue
    .line 640
    invoke-static {}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->newBuilder()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->toBuilder()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;
    .locals 1

    .prologue
    .line 644
    invoke-static {p0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->newBuilder(Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;)Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;

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
    .line 583
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

    .line 553
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->getSerializedSize()I

    .line 554
    iget v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->getTranscriptBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 557
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 558
    iget-wide v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->stabilityConfidence_:D

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 560
    :cond_1
    return-void
.end method
