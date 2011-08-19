.class public final Lcom/google/protos/speech/service/SpeechService$LanguageTag;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$LanguageTagOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LanguageTag"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;
    }
.end annotation


# static fields
.field public static final BASE_LANGUAGE_FIELD_NUMBER:I = 0x2

.field public static final LANGUAGE_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$LanguageTag;",
            ">;"
        }
    .end annotation
.end field

.field public static final REGION_FIELD_NUMBER:I = 0x3

.field public static final SCRIPT_FIELD_NUMBER:I = 0x4

.field public static final VARIANT_FIELD_NUMBER:I = 0x5

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$LanguageTag;


# instance fields
.field private baseLanguage_:Ljava/lang/Object;

.field private bitField0_:I

.field private language_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private region_:Ljava/lang/Object;

.field private script_:Ljava/lang/Object;

.field private variant_:Lcom/google/protobuf/LazyStringList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9799
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->PARSER:Lcom/google/protobuf/Parser;

    .line 10517
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    .line 10518
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->initFields()V

    .line 10519
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

    .line 9739
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 9972
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->memoizedIsInitialized:B

    .line 10001
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->memoizedSerializedSize:I

    .line 9740
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->initFields()V

    move v0, v1

    .line 9744
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 9745
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 9746
    sparse-switch v2, :sswitch_data_0

    .line 9751
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v5

    .line 9753
    goto :goto_0

    :sswitch_0
    move v0, v5

    .line 9749
    goto :goto_0

    .line 9758
    :sswitch_1
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->bitField0_:I

    .line 9759
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->language_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 9787
    :catch_0
    move-exception v0

    .line 9788
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9793
    :catchall_0
    move-exception v0

    and-int/lit8 v1, v1, 0x10

    if-ne v1, v4, :cond_1

    .line 9794
    new-instance v1, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->variant_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v1, v2}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v1, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->variant_:Lcom/google/protobuf/LazyStringList;

    .line 9796
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->makeExtensionsImmutable()V

    throw v0

    .line 9763
    :sswitch_2
    :try_start_2
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->bitField0_:I

    .line 9764
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->baseLanguage_:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 9789
    :catch_1
    move-exception v0

    .line 9790
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

    .line 9768
    :sswitch_3
    :try_start_4
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->bitField0_:I

    .line 9769
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->region_:Ljava/lang/Object;

    goto :goto_0

    .line 9773
    :sswitch_4
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->bitField0_:I

    .line 9774
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->script_:Ljava/lang/Object;

    goto :goto_0

    .line 9778
    :sswitch_5
    and-int/lit8 v2, v1, 0x10

    if-eq v2, v4, :cond_2

    .line 9779
    new-instance v2, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v2}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->variant_:Lcom/google/protobuf/LazyStringList;

    .line 9780
    or-int/lit8 v1, v1, 0x10

    .line 9782
    :cond_2
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->variant_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 9793
    :cond_3
    and-int/lit8 v0, v1, 0x10

    if-ne v0, v4, :cond_4

    .line 9794
    new-instance v0, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->variant_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->variant_:Lcom/google/protobuf/LazyStringList;

    .line 9796
    :cond_4
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->makeExtensionsImmutable()V

    .line 9798
    return-void

    .line 9746
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 9717
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 9722
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 9972
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->memoizedIsInitialized:B

    .line 10001
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->memoizedSerializedSize:I

    .line 9724
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9717
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 9725
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 9972
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->memoizedIsInitialized:B

    .line 10001
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->memoizedSerializedSize:I

    .line 9725
    return-void
.end method

.method static synthetic access$11700(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 9717
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->language_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$11702(Lcom/google/protos/speech/service/SpeechService$LanguageTag;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9717
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->language_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$11800(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 9717
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->baseLanguage_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$11802(Lcom/google/protos/speech/service/SpeechService$LanguageTag;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9717
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->baseLanguage_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$11900(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 9717
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->region_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$11902(Lcom/google/protos/speech/service/SpeechService$LanguageTag;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9717
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->region_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$12000(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 9717
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->script_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$12002(Lcom/google/protos/speech/service/SpeechService$LanguageTag;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9717
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->script_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$12100(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Lcom/google/protobuf/LazyStringList;
    .locals 1
    .parameter

    .prologue
    .line 9717
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->variant_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$12102(Lcom/google/protos/speech/service/SpeechService$LanguageTag;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9717
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->variant_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$12202(Lcom/google/protos/speech/service/SpeechService$LanguageTag;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9717
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$LanguageTag;
    .locals 1

    .prologue
    .line 9729
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 9966
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->language_:Ljava/lang/Object;

    .line 9967
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->baseLanguage_:Ljava/lang/Object;

    .line 9968
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->region_:Ljava/lang/Object;

    .line 9969
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->script_:Ljava/lang/Object;

    .line 9970
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->variant_:Lcom/google/protobuf/LazyStringList;

    .line 9971
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;
    .locals 1

    .prologue
    .line 10095
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->access$11500()Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;
    .locals 1
    .parameter

    .prologue
    .line 10098
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->newBuilder()Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$LanguageTag;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10075
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$LanguageTag;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10081
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$LanguageTag;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10045
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$LanguageTag;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10051
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/speech/service/SpeechService$LanguageTag;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10086
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$LanguageTag;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10092
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$LanguageTag;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10065
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$LanguageTag;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10071
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/speech/service/SpeechService$LanguageTag;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10055
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$LanguageTag;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10061
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    return-object p0
.end method


# virtual methods
.method public getBaseLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 9855
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->baseLanguage_:Ljava/lang/Object;

    .line 9856
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 9857
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 9865
    :goto_0
    return-object v1

    .line 9859
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 9861
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 9862
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9863
    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->baseLanguage_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 9865
    goto :goto_0
.end method

.method public getBaseLanguageBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 9870
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->baseLanguage_:Ljava/lang/Object;

    .line 9871
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9872
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 9874
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->baseLanguage_:Ljava/lang/Object;

    .line 9877
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9717
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$LanguageTag;
    .locals 1

    .prologue
    .line 9733
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 9822
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->language_:Ljava/lang/Object;

    .line 9823
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 9824
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 9832
    :goto_0
    return-object v1

    .line 9826
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 9828
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 9829
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9830
    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->language_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 9832
    goto :goto_0
.end method

.method public getLanguageBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 9837
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->language_:Ljava/lang/Object;

    .line 9838
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9839
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 9841
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->language_:Ljava/lang/Object;

    .line 9844
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
            "Lcom/google/protos/speech/service/SpeechService$LanguageTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9811
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 9888
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->region_:Ljava/lang/Object;

    .line 9889
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 9890
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 9898
    :goto_0
    return-object v1

    .line 9892
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 9894
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 9895
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9896
    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->region_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 9898
    goto :goto_0
.end method

.method public getRegionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 9903
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->region_:Ljava/lang/Object;

    .line 9904
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9905
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 9907
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->region_:Ljava/lang/Object;

    .line 9910
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getScript()Ljava/lang/String;
    .locals 3

    .prologue
    .line 9921
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->script_:Ljava/lang/Object;

    .line 9922
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 9923
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 9931
    :goto_0
    return-object v1

    .line 9925
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 9927
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 9928
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9929
    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->script_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 9931
    goto :goto_0
.end method

.method public getScriptBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 9936
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->script_:Ljava/lang/Object;

    .line 9937
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9938
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 9940
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->script_:Ljava/lang/Object;

    .line 9943
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

    .line 10003
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->memoizedSerializedSize:I

    .line 10004
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 10033
    :goto_0
    return v0

    .line 10007
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_5

    .line 10008
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->getLanguageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v0, v3

    .line 10011
    :goto_1
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_1

    .line 10012
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->getBaseLanguageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10015
    :cond_1
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v5, :cond_2

    .line 10016
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->getRegionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10019
    :cond_2
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 10020
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->getScriptBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    move v1, v3

    move v2, v3

    .line 10025
    :goto_2
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->variant_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 10026
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->variant_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v2, v3

    .line 10025
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 10029
    :cond_4
    add-int/2addr v0, v2

    .line 10030
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->getVariantList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 10032
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->memoizedSerializedSize:I

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_1
.end method

.method public getVariant(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 9958
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->variant_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getVariantBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter

    .prologue
    .line 9962
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->variant_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getVariantCount()I
    .locals 1

    .prologue
    .line 9955
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->variant_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getVariantList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9952
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->variant_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public hasBaseLanguage()Z
    .locals 2

    .prologue
    .line 9852
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->bitField0_:I

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

.method public hasLanguage()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 9819
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRegion()Z
    .locals 2

    .prologue
    .line 9885
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->bitField0_:I

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

.method public hasScript()Z
    .locals 2

    .prologue
    .line 9918
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 9974
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->memoizedIsInitialized:B

    .line 9975
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 9978
    :goto_0
    return v0

    .line 9975
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 9977
    :cond_1
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->memoizedIsInitialized:B

    move v0, v2

    .line 9978
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9717
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;
    .locals 1

    .prologue
    .line 10096
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->newBuilder()Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9717
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->toBuilder()Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;
    .locals 1

    .prologue
    .line 10100
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->newBuilder(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

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
    .line 10039
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

    .line 9983
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->getSerializedSize()I

    .line 9984
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 9985
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->getLanguageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 9987
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 9988
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->getBaseLanguageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 9990
    :cond_1
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 9991
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->getRegionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 9993
    :cond_2
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 9994
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->getScriptBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 9996
    :cond_3
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->variant_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 9997
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->variant_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 9996
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9999
    :cond_4
    return-void
.end method
