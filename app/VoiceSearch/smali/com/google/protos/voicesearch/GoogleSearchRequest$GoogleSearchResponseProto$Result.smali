.class public final Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "GoogleSearchRequest.java"

# interfaces
.implements Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$ResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;
    }
.end annotation


# static fields
.field public static final PAGE_HTML_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;",
            ">;"
        }
    .end annotation
.end field

.field public static final QUERY_FIELD_NUMBER:I = 0x2

.field public static final URL_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private pageHtml_:Ljava/lang/Object;

.field private query_:Ljava/lang/Object;

.field private url_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2067
    new-instance v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$1;

    invoke-direct {v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$1;-><init>()V

    sput-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->PARSER:Lcom/google/protobuf/Parser;

    .line 2574
    new-instance v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;-><init>(Z)V

    sput-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->defaultInstance:Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;

    .line 2575
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->defaultInstance:Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;

    invoke-direct {v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->initFields()V

    .line 2576
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

    .line 2023
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2187
    iput-byte v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->memoizedIsInitialized:B

    .line 2214
    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->memoizedSerializedSize:I

    .line 2024
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->initFields()V

    .line 2027
    const/4 v0, 0x0

    .line 2028
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 2029
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 2030
    sparse-switch v1, :sswitch_data_0

    .line 2035
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 2037
    goto :goto_0

    :sswitch_0
    move v0, v2

    .line 2033
    goto :goto_0

    .line 2042
    :sswitch_1
    iget v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->bitField0_:I

    .line 2043
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->query_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2058
    :catch_0
    move-exception v0

    .line 2059
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2064
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->makeExtensionsImmutable()V

    throw v0

    .line 2047
    :sswitch_2
    :try_start_2
    iget v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->bitField0_:I

    .line 2048
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->pageHtml_:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2060
    :catch_1
    move-exception v0

    .line 2061
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

    .line 2052
    :sswitch_3
    :try_start_4
    iget v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->bitField0_:I

    .line 2053
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->url_:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 2064
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->makeExtensionsImmutable()V

    .line 2066
    return-void

    .line 2030
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x1a -> :sswitch_2
        0x22 -> :sswitch_3
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
    .line 2001
    invoke-direct {p0, p1, p2}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2006
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2187
    iput-byte v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->memoizedIsInitialized:B

    .line 2214
    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->memoizedSerializedSize:I

    .line 2008
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/voicesearch/GoogleSearchRequest$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2001
    invoke-direct {p0, p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2009
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2187
    iput-byte v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->memoizedIsInitialized:B

    .line 2214
    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->memoizedSerializedSize:I

    .line 2009
    return-void
.end method

.method static synthetic access$2300(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 2001
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->query_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2001
    iput-object p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->query_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 2001
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->pageHtml_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2001
    iput-object p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->pageHtml_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 2001
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->url_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2001
    iput-object p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->url_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2001
    iput p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;
    .locals 1

    .prologue
    .line 2013
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->defaultInstance:Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 2183
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->query_:Ljava/lang/Object;

    .line 2184
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->pageHtml_:Ljava/lang/Object;

    .line 2185
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->url_:Ljava/lang/Object;

    .line 2186
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;
    .locals 1

    .prologue
    .line 2295
    invoke-static {}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->access$2100()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2298
    invoke-static {}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->newBuilder()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->mergeFrom(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2275
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2281
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2245
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2251
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2286
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2292
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2265
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2271
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2255
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2261
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2001
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->getDefaultInstanceForType()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;
    .locals 1

    .prologue
    .line 2017
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->defaultInstance:Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;

    return-object v0
.end method

.method public getPageHtml()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2123
    iget-object v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->pageHtml_:Ljava/lang/Object;

    .line 2124
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2125
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 2133
    :goto_0
    return-object v1

    .line 2127
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 2129
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2130
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2131
    iput-object v2, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->pageHtml_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 2133
    goto :goto_0
.end method

.method public getPageHtmlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2138
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->pageHtml_:Ljava/lang/Object;

    .line 2139
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2140
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2142
    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->pageHtml_:Ljava/lang/Object;

    .line 2145
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
            "Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2079
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2090
    iget-object v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->query_:Ljava/lang/Object;

    .line 2091
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2092
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 2100
    :goto_0
    return-object v1

    .line 2094
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 2096
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2097
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2098
    iput-object v2, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->query_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 2100
    goto :goto_0
.end method

.method public getQueryBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2105
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->query_:Ljava/lang/Object;

    .line 2106
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2107
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2109
    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->query_:Ljava/lang/Object;

    .line 2112
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 2216
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->memoizedSerializedSize:I

    .line 2217
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2233
    :goto_0
    return v0

    .line 2219
    :cond_0
    const/4 v0, 0x0

    .line 2220
    iget v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2221
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->getQueryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2224
    :cond_1
    iget v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 2225
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->getPageHtmlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2228
    :cond_2
    iget v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 2229
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2232
    :cond_3
    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2156
    iget-object v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->url_:Ljava/lang/Object;

    .line 2157
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2158
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 2166
    :goto_0
    return-object v1

    .line 2160
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 2162
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2163
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2164
    iput-object v2, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->url_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 2166
    goto :goto_0
.end method

.method public getUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2171
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->url_:Ljava/lang/Object;

    .line 2172
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2173
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2175
    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->url_:Ljava/lang/Object;

    .line 2178
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasPageHtml()Z
    .locals 2

    .prologue
    .line 2120
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->bitField0_:I

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

.method public hasQuery()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2087
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUrl()Z
    .locals 2

    .prologue
    .line 2153
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2189
    iget-byte v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->memoizedIsInitialized:B

    .line 2190
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 2197
    :goto_0
    return v0

    :cond_0
    move v0, v3

    .line 2190
    goto :goto_0

    .line 2192
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->hasQuery()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2193
    iput-byte v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->memoizedIsInitialized:B

    move v0, v3

    .line 2194
    goto :goto_0

    .line 2196
    :cond_2
    iput-byte v2, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->memoizedIsInitialized:B

    move v0, v2

    .line 2197
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2001
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->newBuilderForType()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;
    .locals 1

    .prologue
    .line 2296
    invoke-static {}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->newBuilder()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2001
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->toBuilder()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;
    .locals 1

    .prologue
    .line 2300
    invoke-static {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->newBuilder(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;

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
    .line 2239
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

    .line 2202
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->getSerializedSize()I

    .line 2203
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2204
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->getQueryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2206
    :cond_0
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 2207
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->getPageHtmlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2209
    :cond_1
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 2210
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2212
    :cond_2
    return-void
.end method
