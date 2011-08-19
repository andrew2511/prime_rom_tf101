.class public final Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Alternates.java"

# interfaces
.implements Lcom/google/protos/speech/common/Alternates$RecognitionAlternatesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/common/Alternates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognitionAlternates"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;,
        Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;,
        Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$SlotOrBuilder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;",
            ">;"
        }
    .end annotation
.end field

.field public static final SLOT_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private slot_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1938
    new-instance v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$1;

    invoke-direct {v0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->PARSER:Lcom/google/protobuf/Parser;

    .line 3305
    new-instance v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->defaultInstance:Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;

    .line 3306
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->defaultInstance:Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;

    invoke-direct {v0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->initFields()V

    .line 3307
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
    const/4 v1, 0x0

    const/4 v0, -0x1

    const/4 v5, 0x1

    .line 1897
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3016
    iput-byte v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->memoizedIsInitialized:B

    .line 3039
    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->memoizedSerializedSize:I

    .line 1898
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->initFields()V

    move v0, v1

    .line 1902
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 1903
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 1904
    sparse-switch v2, :sswitch_data_0

    .line 1909
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v5

    .line 1911
    goto :goto_0

    :sswitch_0
    move v0, v5

    .line 1907
    goto :goto_0

    .line 1916
    :sswitch_1
    and-int/lit8 v2, v1, 0x1

    if-eq v2, v5, :cond_1

    .line 1917
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->slot_:Ljava/util/List;

    .line 1918
    or-int/lit8 v1, v1, 0x1

    .line 1920
    :cond_1
    iget-object v2, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->slot_:Ljava/util/List;

    const/4 v3, 0x1

    sget-object v4, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v3, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readGroup(ILcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1926
    :catch_0
    move-exception v0

    .line 1927
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1932
    :catchall_0
    move-exception v0

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v5, :cond_2

    .line 1933
    iget-object v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->slot_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->slot_:Ljava/util/List;

    .line 1935
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->makeExtensionsImmutable()V

    throw v0

    .line 1932
    :cond_3
    and-int/lit8 v0, v1, 0x1

    if-ne v0, v5, :cond_4

    .line 1933
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->slot_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->slot_:Ljava/util/List;

    .line 1935
    :cond_4
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->makeExtensionsImmutable()V

    .line 1937
    return-void

    .line 1928
    :catch_1
    move-exception v0

    .line 1929
    :try_start_2
    new-instance v2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1904
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xb -> :sswitch_1
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
    .line 1875
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1880
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 3016
    iput-byte v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->memoizedIsInitialized:B

    .line 3039
    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->memoizedSerializedSize:I

    .line 1882
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/common/Alternates$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1875
    invoke-direct {p0, p1}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1883
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3016
    iput-byte v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->memoizedIsInitialized:B

    .line 3039
    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->memoizedSerializedSize:I

    .line 1883
    return-void
.end method

.method static synthetic access$4300(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 1875
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->slot_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1875
    iput-object p1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->slot_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;
    .locals 1

    .prologue
    .line 1887
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->defaultInstance:Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 3014
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->slot_:Ljava/util/List;

    .line 3015
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;
    .locals 1

    .prologue
    .line 3112
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->access$4100()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;
    .locals 1
    .parameter

    .prologue
    .line 3115
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->newBuilder()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3092
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3098
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3062
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3068
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3103
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3109
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3082
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3088
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3072
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3078
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1875
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;
    .locals 1

    .prologue
    .line 1891
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->defaultInstance:Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1950
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3041
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->memoizedSerializedSize:I

    .line 3042
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3050
    :goto_0
    return v0

    :cond_0
    move v1, v2

    .line 3045
    :goto_1
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->slot_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 3046
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->slot_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v2

    .line 3045
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_1

    .line 3049
    :cond_1
    iput v2, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->memoizedSerializedSize:I

    move v0, v2

    .line 3050
    goto :goto_0
.end method

.method public getSlot(I)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;
    .locals 1
    .parameter

    .prologue
    .line 3006
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->slot_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;

    return-object p0
.end method

.method public getSlotCount()I
    .locals 1

    .prologue
    .line 3003
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->slot_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSlotList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2996
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->slot_:Ljava/util/List;

    return-object v0
.end method

.method public getSlotOrBuilder(I)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$SlotOrBuilder;
    .locals 1
    .parameter

    .prologue
    .line 3010
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->slot_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$SlotOrBuilder;

    return-object p0
.end method

.method public getSlotOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$SlotOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3000
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->slot_:Ljava/util/List;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3018
    iget-byte v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->memoizedIsInitialized:B

    .line 3019
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 3028
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 3019
    goto :goto_0

    :cond_1
    move v0, v2

    .line 3021
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->getSlotCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 3022
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->getSlot(I)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3023
    iput-byte v2, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->memoizedIsInitialized:B

    move v0, v2

    .line 3024
    goto :goto_0

    .line 3021
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3027
    :cond_3
    iput-byte v3, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->memoizedIsInitialized:B

    move v0, v3

    .line 3028
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1875
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->newBuilderForType()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;
    .locals 1

    .prologue
    .line 3113
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->newBuilder()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1875
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->toBuilder()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;
    .locals 1

    .prologue
    .line 3117
    invoke-static {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->newBuilder(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;

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
    .line 3056
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
    .line 3033
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->getSerializedSize()I

    .line 3034
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->slot_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 3035
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->slot_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeGroup(ILcom/google/protobuf/MessageLite;)V

    .line 3034
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3037
    :cond_0
    return-void
.end method
