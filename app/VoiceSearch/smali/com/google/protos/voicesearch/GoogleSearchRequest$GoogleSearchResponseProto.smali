.class public final Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "GoogleSearchRequest.java"

# interfaces
.implements Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/voicesearch/GoogleSearchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GoogleSearchResponseProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;,
        Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;,
        Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$ResultOrBuilder;
    }
.end annotation


# static fields
.field public static final HTTP_HEADER_FIELD_NUMBER:I = 0x5

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULT_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;


# instance fields
.field private httpHeader_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private result_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1965
    new-instance v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$1;

    invoke-direct {v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$1;-><init>()V

    sput-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 3041
    new-instance v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;-><init>(Z)V

    sput-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->defaultInstance:Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;

    .line 3042
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->defaultInstance:Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;

    invoke-direct {v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->initFields()V

    .line 3043
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
    const/4 v1, 0x0

    const/4 v0, -0x1

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1913
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2627
    iput-byte v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->memoizedIsInitialized:B

    .line 2659
    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->memoizedSerializedSize:I

    .line 1914
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->initFields()V

    move v0, v1

    .line 1918
    :cond_0
    :goto_0
    if-nez v0, :cond_5

    .line 1919
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 1920
    sparse-switch v2, :sswitch_data_0

    .line 1925
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v5

    .line 1927
    goto :goto_0

    :sswitch_0
    move v0, v5

    .line 1923
    goto :goto_0

    .line 1932
    :sswitch_1
    and-int/lit8 v2, v1, 0x1

    if-eq v2, v5, :cond_1

    .line 1933
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->result_:Ljava/util/List;

    .line 1934
    or-int/lit8 v1, v1, 0x1

    .line 1936
    :cond_1
    iget-object v2, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->result_:Ljava/util/List;

    const/4 v3, 0x1

    sget-object v4, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v3, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readGroup(ILcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1950
    :catch_0
    move-exception v0

    .line 1951
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1956
    :catchall_0
    move-exception v0

    and-int/lit8 v2, v1, 0x1

    if-ne v2, v5, :cond_2

    .line 1957
    iget-object v2, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->result_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->result_:Ljava/util/List;

    .line 1959
    :cond_2
    and-int/lit8 v1, v1, 0x2

    if-ne v1, v6, :cond_3

    .line 1960
    iget-object v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->httpHeader_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->httpHeader_:Ljava/util/List;

    .line 1962
    :cond_3
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->makeExtensionsImmutable()V

    throw v0

    .line 1941
    :sswitch_2
    and-int/lit8 v2, v1, 0x2

    if-eq v2, v6, :cond_4

    .line 1942
    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->httpHeader_:Ljava/util/List;

    .line 1943
    or-int/lit8 v1, v1, 0x2

    .line 1945
    :cond_4
    iget-object v2, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->httpHeader_:Ljava/util/List;

    sget-object v3, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1952
    :catch_1
    move-exception v0

    .line 1953
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

    .line 1956
    :cond_5
    and-int/lit8 v0, v1, 0x1

    if-ne v0, v5, :cond_6

    .line 1957
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->result_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->result_:Ljava/util/List;

    .line 1959
    :cond_6
    and-int/lit8 v0, v1, 0x2

    if-ne v0, v6, :cond_7

    .line 1960
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->httpHeader_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->httpHeader_:Ljava/util/List;

    .line 1962
    :cond_7
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->makeExtensionsImmutable()V

    .line 1964
    return-void

    .line 1920
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xb -> :sswitch_1
        0x2a -> :sswitch_2
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/voicesearch/GoogleSearchRequest$1;)V
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
    .line 1891
    invoke-direct {p0, p1, p2}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1896
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2627
    iput-byte v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->memoizedIsInitialized:B

    .line 2659
    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->memoizedSerializedSize:I

    .line 1898
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/voicesearch/GoogleSearchRequest$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1891
    invoke-direct {p0, p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1899
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2627
    iput-byte v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->memoizedIsInitialized:B

    .line 2659
    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->memoizedSerializedSize:I

    .line 1899
    return-void
.end method

.method static synthetic access$2900(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 1891
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->result_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1891
    iput-object p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->result_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 1891
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->httpHeader_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1891
    iput-object p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->httpHeader_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;
    .locals 1

    .prologue
    .line 1903
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->defaultInstance:Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 2624
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->result_:Ljava/util/List;

    .line 2625
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->httpHeader_:Ljava/util/List;

    .line 2626
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;
    .locals 1

    .prologue
    .line 2736
    invoke-static {}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->access$2700()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2739
    invoke-static {}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->newBuilder()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->mergeFrom(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2716
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2722
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2686
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2692
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2727
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2733
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2706
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2712
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2696
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2702
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1891
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->getDefaultInstanceForType()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;
    .locals 1

    .prologue
    .line 1907
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->defaultInstance:Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;

    return-object v0
.end method

.method public getHttpHeader(I)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;
    .locals 1
    .parameter

    .prologue
    .line 2616
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->httpHeader_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    return-object p0
.end method

.method public getHttpHeaderCount()I
    .locals 1

    .prologue
    .line 2613
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->httpHeader_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHttpHeaderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2606
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->httpHeader_:Ljava/util/List;

    return-object v0
.end method

.method public getHttpHeaderOrBuilder(I)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProtoOrBuilder;
    .locals 1
    .parameter

    .prologue
    .line 2620
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->httpHeader_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProtoOrBuilder;

    return-object p0
.end method

.method public getHttpHeaderOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProtoOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2610
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->httpHeader_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1977
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getResult(I)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;
    .locals 1
    .parameter

    .prologue
    .line 2595
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->result_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;

    return-object p0
.end method

.method public getResultCount()I
    .locals 1

    .prologue
    .line 2592
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->result_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResultList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2585
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->result_:Ljava/util/List;

    return-object v0
.end method

.method public getResultOrBuilder(I)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$ResultOrBuilder;
    .locals 1
    .parameter

    .prologue
    .line 2599
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->result_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$ResultOrBuilder;

    return-object p0
.end method

.method public getResultOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$ResultOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2589
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->result_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2661
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->memoizedSerializedSize:I

    .line 2662
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2674
    :goto_0
    return v0

    :cond_0
    move v1, v4

    move v2, v4

    .line 2665
    :goto_1
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->result_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 2666
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->result_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v2

    .line 2665
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v1, v4

    .line 2669
    :goto_2
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->httpHeader_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 2670
    const/4 v3, 0x5

    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->httpHeader_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v2

    .line 2669
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    .line 2673
    :cond_2
    iput v2, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->memoizedSerializedSize:I

    move v0, v2

    .line 2674
    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2629
    iget-byte v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->memoizedIsInitialized:B

    .line 2630
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 2645
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 2630
    goto :goto_0

    :cond_1
    move v0, v2

    .line 2632
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->getResultCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 2633
    invoke-virtual {p0, v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->getResult(I)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2634
    iput-byte v2, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->memoizedIsInitialized:B

    move v0, v2

    .line 2635
    goto :goto_0

    .line 2632
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    .line 2638
    :goto_2
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->getHttpHeaderCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 2639
    invoke-virtual {p0, v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->getHttpHeader(I)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2640
    iput-byte v2, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->memoizedIsInitialized:B

    move v0, v2

    .line 2641
    goto :goto_0

    .line 2638
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2644
    :cond_5
    iput-byte v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->memoizedIsInitialized:B

    move v0, v3

    .line 2645
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1891
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->newBuilderForType()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;
    .locals 1

    .prologue
    .line 2737
    invoke-static {}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->newBuilder()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1891
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->toBuilder()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;
    .locals 1

    .prologue
    .line 2741
    invoke-static {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->newBuilder(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;

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
    .line 2680
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
    const/4 v3, 0x0

    .line 2650
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->getSerializedSize()I

    move v1, v3

    .line 2651
    :goto_0
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->result_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 2652
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->result_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeGroup(ILcom/google/protobuf/MessageLite;)V

    .line 2651
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v3

    .line 2654
    :goto_1
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->httpHeader_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 2655
    const/4 v2, 0x5

    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->httpHeader_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2654
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 2657
    :cond_1
    return-void
.end method
