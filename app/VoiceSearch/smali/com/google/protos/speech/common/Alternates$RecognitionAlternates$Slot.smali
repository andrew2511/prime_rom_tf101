.class public final Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Alternates.java"

# interfaces
.implements Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$SlotOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Slot"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;,
        Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;,
        Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$AlternateOrBuilder;
    }
.end annotation


# static fields
.field public static final ALTERNATE_FIELD_NUMBER:I = 0x4

.field public static final FIRST_WORD_FIELD_NUMBER:I = 0x2

.field public static final ORIGINAL_PHRASE_CONFIDENCE_FIELD_NUMBER:I = 0x7

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;",
            ">;"
        }
    .end annotation
.end field

.field public static final PHRASE_LENGTH_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;


# instance fields
.field private alternate_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private firstWord_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private originalPhraseConfidence_:F

.field private phraseLength_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2052
    new-instance v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$1;

    invoke-direct {v0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->PARSER:Lcom/google/protobuf/Parser;

    .line 2985
    new-instance v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->defaultInstance:Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;

    .line 2986
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->defaultInstance:Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;

    invoke-direct {v0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->initFields()V

    .line 2987
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    const/4 v5, 0x4

    .line 1996
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2559
    iput-byte v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->memoizedIsInitialized:B

    .line 2603
    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->memoizedSerializedSize:I

    .line 1997
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->initFields()V

    move v0, v1

    .line 2001
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 2002
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 2003
    sparse-switch v2, :sswitch_data_0

    .line 2008
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v6

    .line 2010
    goto :goto_0

    :sswitch_0
    move v0, v6

    .line 2006
    goto :goto_0

    .line 2015
    :sswitch_1
    iget v2, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->bitField0_:I

    .line 2016
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->firstWord_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2040
    :catch_0
    move-exception v0

    .line 2041
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2046
    :catchall_0
    move-exception v0

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v5, :cond_1

    .line 2047
    iget-object v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->alternate_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->alternate_:Ljava/util/List;

    .line 2049
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->makeExtensionsImmutable()V

    throw v0

    .line 2020
    :sswitch_2
    :try_start_2
    iget v2, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->bitField0_:I

    .line 2021
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->phraseLength_:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2042
    :catch_1
    move-exception v0

    .line 2043
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

    .line 2025
    :sswitch_3
    and-int/lit8 v2, v1, 0x4

    if-eq v2, v5, :cond_2

    .line 2026
    :try_start_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->alternate_:Ljava/util/List;

    .line 2027
    or-int/lit8 v1, v1, 0x4

    .line 2029
    :cond_2
    iget-object v2, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->alternate_:Ljava/util/List;

    const/4 v3, 0x4

    sget-object v4, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v3, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readGroup(ILcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2034
    :sswitch_4
    iget v2, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->bitField0_:I

    .line 2035
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->originalPhraseConfidence_:F
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 2046
    :cond_3
    and-int/lit8 v0, v1, 0x4

    if-ne v0, v5, :cond_4

    .line 2047
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->alternate_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->alternate_:Ljava/util/List;

    .line 2049
    :cond_4
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->makeExtensionsImmutable()V

    .line 2051
    return-void

    .line 2003
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10 -> :sswitch_1
        0x18 -> :sswitch_2
        0x23 -> :sswitch_3
        0x3d -> :sswitch_4
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
    .line 1974
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1979
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2559
    iput-byte v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->memoizedIsInitialized:B

    .line 2603
    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->memoizedSerializedSize:I

    .line 1981
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/common/Alternates$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1974
    invoke-direct {p0, p1}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1982
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2559
    iput-byte v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->memoizedIsInitialized:B

    .line 2603
    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->memoizedSerializedSize:I

    .line 1982
    return-void
.end method

.method static synthetic access$3602(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1974
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->firstWord_:I

    return p1
.end method

.method static synthetic access$3702(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1974
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->phraseLength_:I

    return p1
.end method

.method static synthetic access$3800(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 1974
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->alternate_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1974
    iput-object p1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->alternate_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3902(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1974
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->originalPhraseConfidence_:F

    return p1
.end method

.method static synthetic access$4002(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1974
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;
    .locals 1

    .prologue
    .line 1986
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->defaultInstance:Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2554
    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->firstWord_:I

    .line 2555
    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->phraseLength_:I

    .line 2556
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->alternate_:Ljava/util/List;

    .line 2557
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->originalPhraseConfidence_:F

    .line 2558
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;
    .locals 1

    .prologue
    .line 2688
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->access$3400()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2691
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->newBuilder()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2668
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2674
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2638
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2644
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2679
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2685
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2658
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2664
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2648
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2654
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;

    return-object p0
.end method


# virtual methods
.method public getAlternate(I)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    .locals 1
    .parameter

    .prologue
    .line 2536
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->alternate_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    return-object p0
.end method

.method public getAlternateCount()I
    .locals 1

    .prologue
    .line 2533
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->alternate_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAlternateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2526
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->alternate_:Ljava/util/List;

    return-object v0
.end method

.method public getAlternateOrBuilder(I)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$AlternateOrBuilder;
    .locals 1
    .parameter

    .prologue
    .line 2540
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->alternate_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$AlternateOrBuilder;

    return-object p0
.end method

.method public getAlternateOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$AlternateOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2530
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->alternate_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1974
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;
    .locals 1

    .prologue
    .line 1990
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->defaultInstance:Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;

    return-object v0
.end method

.method public getFirstWord()I
    .locals 1

    .prologue
    .line 2509
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->firstWord_:I

    return v0
.end method

.method public getOriginalPhraseConfidence()F
    .locals 1

    .prologue
    .line 2550
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->originalPhraseConfidence_:F

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2064
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPhraseLength()I
    .locals 1

    .prologue
    .line 2519
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->phraseLength_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 2605
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->memoizedSerializedSize:I

    .line 2606
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2626
    :goto_0
    return v0

    .line 2609
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 2610
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->firstWord_:I

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v0, v3

    .line 2613
    :goto_1
    iget v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v2, :cond_1

    .line 2614
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->phraseLength_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    move v1, v3

    move v2, v0

    .line 2617
    :goto_2
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->alternate_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 2618
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->alternate_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v2

    .line 2617
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    .line 2621
    :cond_2
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_3

    .line 2622
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->originalPhraseConfidence_:F

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v0

    add-int/2addr v0, v2

    .line 2625
    :goto_3
    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->memoizedSerializedSize:I

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v3

    goto :goto_1
.end method

.method public hasFirstWord()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2506
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOriginalPhraseConfidence()Z
    .locals 2

    .prologue
    .line 2547
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->bitField0_:I

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

.method public hasPhraseLength()Z
    .locals 2

    .prologue
    .line 2516
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->bitField0_:I

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

    .line 2561
    iget-byte v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->memoizedIsInitialized:B

    .line 2562
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 2583
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 2562
    goto :goto_0

    .line 2564
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->hasFirstWord()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2565
    iput-byte v2, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->memoizedIsInitialized:B

    move v0, v2

    .line 2566
    goto :goto_0

    .line 2568
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->hasPhraseLength()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2569
    iput-byte v2, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->memoizedIsInitialized:B

    move v0, v2

    .line 2570
    goto :goto_0

    .line 2572
    :cond_3
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->hasOriginalPhraseConfidence()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2573
    iput-byte v2, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->memoizedIsInitialized:B

    move v0, v2

    .line 2574
    goto :goto_0

    :cond_4
    move v0, v2

    .line 2576
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->getAlternateCount()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 2577
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->getAlternate(I)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2578
    iput-byte v2, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->memoizedIsInitialized:B

    move v0, v2

    .line 2579
    goto :goto_0

    .line 2576
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2582
    :cond_6
    iput-byte v3, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->memoizedIsInitialized:B

    move v0, v3

    .line 2583
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1974
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->newBuilderForType()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;
    .locals 1

    .prologue
    .line 2689
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->newBuilder()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1974
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->toBuilder()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;
    .locals 1

    .prologue
    .line 2693
    invoke-static {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->newBuilder(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;

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
    .line 2632
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

    .line 2588
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->getSerializedSize()I

    .line 2589
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2590
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->firstWord_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2592
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 2593
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->phraseLength_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2595
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->alternate_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 2596
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->alternate_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeGroup(ILcom/google/protobuf/MessageLite;)V

    .line 2595
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2598
    :cond_2
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_3

    .line 2599
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->originalPhraseConfidence_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 2601
    :cond_3
    return-void
.end method
