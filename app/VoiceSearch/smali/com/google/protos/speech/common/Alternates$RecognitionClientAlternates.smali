.class public final Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Alternates.java"

# interfaces
.implements Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternatesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/common/Alternates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognitionClientAlternates"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;
    }
.end annotation


# static fields
.field public static final MAX_SPAN_LENGTH_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;",
            ">;"
        }
    .end annotation
.end field

.field public static final SPAN_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;


# instance fields
.field private bitField0_:I

.field private maxSpanLength_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private span_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/common/Alternates$AlternateSpan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 450
    new-instance v0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$1;

    invoke-direct {v0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->PARSER:Lcom/google/protobuf/Parser;

    .line 837
    new-instance v0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->defaultInstance:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    .line 838
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->defaultInstance:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    invoke-direct {v0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->initFields()V

    .line 839
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    const/4 v4, 0x1

    .line 405
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 501
    iput-byte v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->memoizedIsInitialized:B

    .line 531
    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->memoizedSerializedSize:I

    .line 406
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->initFields()V

    move v0, v1

    .line 410
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 411
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 412
    sparse-switch v2, :sswitch_data_0

    .line 417
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v4

    .line 419
    goto :goto_0

    :sswitch_0
    move v0, v4

    .line 415
    goto :goto_0

    .line 424
    :sswitch_1
    and-int/lit8 v2, v1, 0x1

    if-eq v2, v4, :cond_1

    .line 425
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->span_:Ljava/util/List;

    .line 426
    or-int/lit8 v1, v1, 0x1

    .line 428
    :cond_1
    iget-object v2, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->span_:Ljava/util/List;

    sget-object v3, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 438
    :catch_0
    move-exception v0

    .line 439
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 444
    :catchall_0
    move-exception v0

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_2

    .line 445
    iget-object v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->span_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->span_:Ljava/util/List;

    .line 447
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->makeExtensionsImmutable()V

    throw v0

    .line 432
    :sswitch_2
    :try_start_2
    iget v2, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->bitField0_:I

    .line 433
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->maxSpanLength_:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 440
    :catch_1
    move-exception v0

    .line 441
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

    .line 444
    :cond_3
    and-int/lit8 v0, v1, 0x1

    if-ne v0, v4, :cond_4

    .line 445
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->span_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->span_:Ljava/util/List;

    .line 447
    :cond_4
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->makeExtensionsImmutable()V

    .line 449
    return-void

    .line 412
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/speech/common/Alternates$1;)V
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
    .line 383
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 388
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 501
    iput-byte v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->memoizedIsInitialized:B

    .line 531
    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->memoizedSerializedSize:I

    .line 390
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/common/Alternates$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 383
    invoke-direct {p0, p1}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 391
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 501
    iput-byte v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->memoizedIsInitialized:B

    .line 531
    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->memoizedSerializedSize:I

    .line 391
    return-void
.end method

.method static synthetic access$1002(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 383
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->maxSpanLength_:I

    return p1
.end method

.method static synthetic access$1102(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 383
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->bitField0_:I

    return p1
.end method

.method static synthetic access$900(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 383
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->span_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 383
    iput-object p1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->span_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;
    .locals 1

    .prologue
    .line 395
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->defaultInstance:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 498
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->span_:Ljava/util/List;

    .line 499
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->maxSpanLength_:I

    .line 500
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;
    .locals 1

    .prologue
    .line 608
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->access$700()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;
    .locals 1
    .parameter

    .prologue
    .line 611
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->newBuilder()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 588
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 594
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 558
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 564
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 599
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 605
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 578
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 584
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 568
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 574
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;
    .locals 1

    .prologue
    .line 399
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->defaultInstance:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    return-object v0
.end method

.method public getMaxSpanLength()I
    .locals 1

    .prologue
    .line 494
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->maxSpanLength_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;",
            ">;"
        }
    .end annotation

    .prologue
    .line 462
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 533
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->memoizedSerializedSize:I

    .line 534
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 546
    :goto_0
    return v0

    :cond_0
    move v1, v2

    .line 537
    :goto_1
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->span_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 538
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->span_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v2

    .line 537
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_1

    .line 541
    :cond_1
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_2

    .line 542
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->maxSpanLength_:I

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v0, v2

    .line 545
    :goto_2
    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->memoizedSerializedSize:I

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_2
.end method

.method public getSpan(I)Lcom/google/protos/speech/common/Alternates$AlternateSpan;
    .locals 1
    .parameter

    .prologue
    .line 480
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->span_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    return-object p0
.end method

.method public getSpanCount()I
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->span_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSpanList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/common/Alternates$AlternateSpan;",
            ">;"
        }
    .end annotation

    .prologue
    .line 470
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->span_:Ljava/util/List;

    return-object v0
.end method

.method public getSpanOrBuilder(I)Lcom/google/protos/speech/common/Alternates$AlternateSpanOrBuilder;
    .locals 1
    .parameter

    .prologue
    .line 484
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->span_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$AlternateSpanOrBuilder;

    return-object p0
.end method

.method public getSpanOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protos/speech/common/Alternates$AlternateSpanOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 474
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->span_:Ljava/util/List;

    return-object v0
.end method

.method public hasMaxSpanLength()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 491
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->bitField0_:I

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

    .line 503
    iget-byte v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->memoizedIsInitialized:B

    .line 504
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 517
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 504
    goto :goto_0

    .line 506
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->hasMaxSpanLength()Z

    move-result v0

    if-nez v0, :cond_2

    .line 507
    iput-byte v2, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->memoizedIsInitialized:B

    move v0, v2

    .line 508
    goto :goto_0

    :cond_2
    move v0, v2

    .line 510
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->getSpanCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 511
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->getSpan(I)Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_3

    .line 512
    iput-byte v2, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->memoizedIsInitialized:B

    move v0, v2

    .line 513
    goto :goto_0

    .line 510
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 516
    :cond_4
    iput-byte v3, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->memoizedIsInitialized:B

    move v0, v3

    .line 517
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->newBuilderForType()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;
    .locals 1

    .prologue
    .line 609
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->newBuilder()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->toBuilder()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;
    .locals 1

    .prologue
    .line 613
    invoke-static {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->newBuilder(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

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
    .line 552
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
    const/4 v2, 0x1

    .line 522
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->getSerializedSize()I

    .line 523
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->span_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->span_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 523
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 526
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_1

    .line 527
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->maxSpanLength_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 529
    :cond_1
    return-void
.end method
