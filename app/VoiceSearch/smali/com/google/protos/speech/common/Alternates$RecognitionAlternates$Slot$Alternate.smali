.class public final Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Alternates.java"

# interfaces
.implements Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$AlternateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Alternate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;
    }
.end annotation


# static fields
.field public static final CONFIDENCE_FIELD_NUMBER:I = 0x6

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;",
            ">;"
        }
    .end annotation
.end field

.field public static final TEXT_FIELD_NUMBER:I = 0x5

.field private static final defaultInstance:Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;


# instance fields
.field private bitField0_:I

.field private confidence_:F

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private text_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2141
    new-instance v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$1;

    invoke-direct {v0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->PARSER:Lcom/google/protobuf/Parser;

    .line 2494
    new-instance v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->defaultInstance:Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    .line 2495
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->defaultInstance:Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    invoke-direct {v0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->initFields()V

    .line 2496
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

    .line 2102
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2204
    iput-byte v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->memoizedIsInitialized:B

    .line 2232
    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->memoizedSerializedSize:I

    .line 2103
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->initFields()V

    .line 2106
    const/4 v0, 0x0

    .line 2107
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 2108
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 2109
    sparse-switch v1, :sswitch_data_0

    .line 2114
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 2116
    goto :goto_0

    :sswitch_0
    move v0, v2

    .line 2112
    goto :goto_0

    .line 2121
    :sswitch_1
    iget v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->bitField0_:I

    .line 2122
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->text_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2132
    :catch_0
    move-exception v0

    .line 2133
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2138
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->makeExtensionsImmutable()V

    throw v0

    .line 2126
    :sswitch_2
    :try_start_2
    iget v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->bitField0_:I

    .line 2127
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->confidence_:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2134
    :catch_1
    move-exception v0

    .line 2135
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

    .line 2138
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->makeExtensionsImmutable()V

    .line 2140
    return-void

    .line 2109
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2a -> :sswitch_1
        0x35 -> :sswitch_2
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
    .line 2080
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2085
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2204
    iput-byte v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->memoizedIsInitialized:B

    .line 2232
    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->memoizedSerializedSize:I

    .line 2087
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/common/Alternates$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2080
    invoke-direct {p0, p1}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2088
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2204
    iput-byte v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->memoizedIsInitialized:B

    .line 2232
    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->memoizedSerializedSize:I

    .line 2088
    return-void
.end method

.method static synthetic access$3100(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 2080
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->text_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2080
    iput-object p1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->text_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2080
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->confidence_:F

    return p1
.end method

.method static synthetic access$3302(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2080
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    .locals 1

    .prologue
    .line 2092
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->defaultInstance:Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 2201
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->text_:Ljava/lang/Object;

    .line 2202
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->confidence_:F

    .line 2203
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;
    .locals 1

    .prologue
    .line 2309
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->access$2900()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2312
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->newBuilder()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2289
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2295
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2259
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2265
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2300
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2306
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2279
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2285
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2269
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2275
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    return-object p0
.end method


# virtual methods
.method public getConfidence()F
    .locals 1

    .prologue
    .line 2197
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->confidence_:F

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2080
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    .locals 1

    .prologue
    .line 2096
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->defaultInstance:Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2153
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2234
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->memoizedSerializedSize:I

    .line 2235
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2247
    :goto_0
    return v0

    .line 2237
    :cond_0
    const/4 v0, 0x0

    .line 2238
    iget v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2239
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2242
    :cond_1
    iget v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 2243
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->confidence_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2246
    :cond_2
    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2164
    iget-object v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->text_:Ljava/lang/Object;

    .line 2165
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2166
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 2174
    :goto_0
    return-object v1

    .line 2168
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 2170
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2171
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2172
    iput-object v2, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->text_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 2174
    goto :goto_0
.end method

.method public getTextBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2179
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->text_:Ljava/lang/Object;

    .line 2180
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2181
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2183
    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->text_:Ljava/lang/Object;

    .line 2186
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasConfidence()Z
    .locals 2

    .prologue
    .line 2194
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->bitField0_:I

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

.method public hasText()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2161
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->bitField0_:I

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

    .line 2206
    iget-byte v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->memoizedIsInitialized:B

    .line 2207
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 2218
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 2207
    goto :goto_0

    .line 2209
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->hasText()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2210
    iput-byte v2, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->memoizedIsInitialized:B

    move v0, v2

    .line 2211
    goto :goto_0

    .line 2213
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->hasConfidence()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2214
    iput-byte v2, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->memoizedIsInitialized:B

    move v0, v2

    .line 2215
    goto :goto_0

    .line 2217
    :cond_3
    iput-byte v3, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->memoizedIsInitialized:B

    move v0, v3

    .line 2218
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2080
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->newBuilderForType()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;
    .locals 1

    .prologue
    .line 2310
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->newBuilder()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2080
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->toBuilder()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;
    .locals 1

    .prologue
    .line 2314
    invoke-static {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->newBuilder(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;

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
    .line 2253
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2223
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->getSerializedSize()I

    .line 2224
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2225
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2227
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2228
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->confidence_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 2230
    :cond_1
    return-void
.end method
