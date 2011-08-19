.class public final Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesisOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognitionHypothesis"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
    }
.end annotation


# static fields
.field public static final CONFIDENCE_FIELD_NUMBER:I = 0x2

.field public static final GRAMMAR_ID_FIELD_NUMBER:I = 0x4

.field public static final INTERPRETATION_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;",
            ">;"
        }
    .end annotation
.end field

.field public static final SENTENCE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;


# instance fields
.field private bitField0_:I

.field private confidence_:D

.field private grammarId_:Ljava/lang/Object;

.field private interpretation_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private sentence_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3574
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->PARSER:Lcom/google/protobuf/Parser;

    .line 4179
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    .line 4180
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->initFields()V

    .line 4181
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

    const/4 v4, 0x4

    .line 3519
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3693
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->memoizedIsInitialized:B

    .line 3733
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->memoizedSerializedSize:I

    .line 3520
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->initFields()V

    move v0, v1

    .line 3524
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 3525
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 3526
    sparse-switch v2, :sswitch_data_0

    .line 3531
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v5

    .line 3533
    goto :goto_0

    :sswitch_0
    move v0, v5

    .line 3529
    goto :goto_0

    .line 3538
    :sswitch_1
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

    .line 3539
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->sentence_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3562
    :catch_0
    move-exception v0

    .line 3563
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3568
    :catchall_0
    move-exception v0

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_1

    .line 3569
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    .line 3571
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->makeExtensionsImmutable()V

    throw v0

    .line 3543
    :sswitch_2
    :try_start_2
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

    .line 3544
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->confidence_:D
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 3564
    :catch_1
    move-exception v0

    .line 3565
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

    .line 3548
    :sswitch_3
    and-int/lit8 v2, v1, 0x4

    if-eq v2, v4, :cond_2

    .line 3549
    :try_start_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    .line 3550
    or-int/lit8 v1, v1, 0x4

    .line 3552
    :cond_2
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    sget-object v3, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3556
    :sswitch_4
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

    .line 3557
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->grammarId_:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 3568
    :cond_3
    and-int/lit8 v0, v1, 0x4

    if-ne v0, v4, :cond_4

    .line 3569
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    .line 3571
    :cond_4
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->makeExtensionsImmutable()V

    .line 3573
    return-void

    .line 3526
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x11 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
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
    .line 3497
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 3502
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 3693
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->memoizedIsInitialized:B

    .line 3733
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->memoizedSerializedSize:I

    .line 3504
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3497
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 3505
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3693
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->memoizedIsInitialized:B

    .line 3733
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->memoizedSerializedSize:I

    .line 3505
    return-void
.end method

.method static synthetic access$4000(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 3497
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->sentence_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3497
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->sentence_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4102(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;D)D
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3497
    iput-wide p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->confidence_:D

    return-wide p1
.end method

.method static synthetic access$4200(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 3497
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3497
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 3497
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->grammarId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3497
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->grammarId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4402(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3497
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;
    .locals 1

    .prologue
    .line 3509
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    .line 3688
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->sentence_:Ljava/lang/Object;

    .line 3689
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->confidence_:D

    .line 3690
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    .line 3691
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->grammarId_:Ljava/lang/Object;

    .line 3692
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
    .locals 1

    .prologue
    .line 3818
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->access$3800()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
    .locals 1
    .parameter

    .prologue
    .line 3821
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->newBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3798
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3804
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3768
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3774
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3809
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3815
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3788
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3794
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3778
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3784
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    return-object p0
.end method


# virtual methods
.method public getConfidence()D
    .locals 2

    .prologue
    .line 3630
    iget-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->confidence_:D

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3497
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;
    .locals 1

    .prologue
    .line 3513
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    return-object v0
.end method

.method public getGrammarId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3661
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->grammarId_:Ljava/lang/Object;

    .line 3662
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3663
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 3671
    :goto_0
    return-object v1

    .line 3665
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 3667
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3668
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3669
    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->grammarId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 3671
    goto :goto_0
.end method

.method public getGrammarIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 3676
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->grammarId_:Ljava/lang/Object;

    .line 3677
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3678
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3680
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->grammarId_:Ljava/lang/Object;

    .line 3683
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getInterpretation(I)Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;
    .locals 1
    .parameter

    .prologue
    .line 3647
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;

    return-object p0
.end method

.method public getInterpretationCount()I
    .locals 1

    .prologue
    .line 3644
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInterpretationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3637
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    return-object v0
.end method

.method public getInterpretationOrBuilder(I)Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretationOrBuilder;
    .locals 1
    .parameter

    .prologue
    .line 3651
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretationOrBuilder;

    return-object p0
.end method

.method public getInterpretationOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretationOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3641
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3586
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSentence()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3597
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->sentence_:Ljava/lang/Object;

    .line 3598
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3599
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 3607
    :goto_0
    return-object v1

    .line 3601
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 3603
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3604
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3605
    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->sentence_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 3607
    goto :goto_0
.end method

.method public getSentenceBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 3612
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->sentence_:Ljava/lang/Object;

    .line 3613
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3614
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3616
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->sentence_:Ljava/lang/Object;

    .line 3619
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3735
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->memoizedSerializedSize:I

    .line 3736
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3756
    :goto_0
    return v0

    .line 3739
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_4

    .line 3740
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->getSentenceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v0, v3

    .line 3743
    :goto_1
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_1

    .line 3744
    iget-wide v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->confidence_:D

    invoke-static {v4, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    move v1, v3

    move v2, v0

    .line 3747
    :goto_2
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 3748
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v2

    .line 3747
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    .line 3751
    :cond_2
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v5, :cond_3

    .line 3752
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->getGrammarIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v0, v2

    .line 3755
    :goto_3
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->memoizedSerializedSize:I

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v3

    goto :goto_1
.end method

.method public hasConfidence()Z
    .locals 2

    .prologue
    .line 3627
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

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

.method public hasGrammarId()Z
    .locals 2

    .prologue
    .line 3658
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

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

.method public hasSentence()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3594
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

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
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3695
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->memoizedIsInitialized:B

    .line 3696
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 3713
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 3696
    goto :goto_0

    .line 3698
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->hasSentence()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3699
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->memoizedIsInitialized:B

    move v0, v2

    .line 3700
    goto :goto_0

    .line 3702
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->hasConfidence()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3703
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->memoizedIsInitialized:B

    move v0, v2

    .line 3704
    goto :goto_0

    :cond_3
    move v0, v2

    .line 3706
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->getInterpretationCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 3707
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->getInterpretation(I)Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3708
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->memoizedIsInitialized:B

    move v0, v2

    .line 3709
    goto :goto_0

    .line 3706
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3712
    :cond_5
    iput-byte v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->memoizedIsInitialized:B

    move v0, v3

    .line 3713
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3497
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
    .locals 1

    .prologue
    .line 3819
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->newBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3497
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->toBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
    .locals 1

    .prologue
    .line 3823
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->newBuilder(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

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
    .line 3762
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
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 3718
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->getSerializedSize()I

    .line 3719
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 3720
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->getSentenceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3722
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 3723
    iget-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->confidence_:D

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 3725
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 3726
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3725
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3728
    :cond_2
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_3

    .line 3729
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->getGrammarIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3731
    :cond_3
    return-void
.end method
