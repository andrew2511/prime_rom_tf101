.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WebSearchRequestData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;
    }
.end annotation


# static fields
.field public static final GOOGLE_SEARCH_REQUEST_PROTO_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESPONSE_CONTENT_ENCODING_FIELD_NUMBER:I = 0x1

.field public static final SERVER_HTTP_URL_FIELD_NUMBER:I = 0x3

.field public static final SERVER_PROTO_URL_FIELD_NUMBER:I = 0x4

.field public static final SKIP_WEBSEARCH_ACTION_FIELD_NUMBER:I = 0x5

.field public static final SKIP_WEBSEARCH_ALWAYS_FIELD_NUMBER:I = 0x6

.field private static final defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;


# instance fields
.field private bitField0_:I

.field private googleSearchRequestProto_:Lcom/google/protobuf/ByteString;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private responseContentEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

.field private serverHttpUrl_:Ljava/lang/Object;

.field private serverProtoUrl_:Ljava/lang/Object;

.field private skipWebsearchAction_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;",
            ">;"
        }
    .end annotation
.end field

.field private skipWebsearchAlways_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8869
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$1;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$1;-><init>()V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->PARSER:Lcom/google/protobuf/Parser;

    .line 9515
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;-><init>(Z)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    .line 9516
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->initFields()V

    .line 9517
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

    const/16 v5, 0x10

    .line 8779
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 9002
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->memoizedIsInitialized:B

    .line 9038
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->memoizedSerializedSize:I

    .line 8780
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->initFields()V

    move v0, v1

    .line 8784
    :cond_0
    :goto_0
    if-nez v0, :cond_6

    .line 8785
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 8786
    sparse-switch v2, :sswitch_data_0

    .line 8791
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v6

    .line 8793
    goto :goto_0

    :sswitch_0
    move v0, v6

    .line 8789
    goto :goto_0

    .line 8798
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 8799
    invoke-static {v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->valueOf(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    move-result-object v2

    .line 8800
    if-eqz v2, :cond_0

    .line 8801
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

    .line 8802
    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->responseContentEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 8857
    :catch_0
    move-exception v0

    .line 8858
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8863
    :catchall_0
    move-exception v0

    and-int/lit8 v1, v1, 0x10

    if-ne v1, v5, :cond_1

    .line 8864
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAction_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAction_:Ljava/util/List;

    .line 8866
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->makeExtensionsImmutable()V

    throw v0

    .line 8807
    :sswitch_2
    :try_start_2
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

    .line 8808
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->googleSearchRequestProto_:Lcom/google/protobuf/ByteString;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 8859
    :catch_1
    move-exception v0

    .line 8860
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

    .line 8812
    :sswitch_3
    :try_start_4
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

    .line 8813
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->serverHttpUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 8817
    :sswitch_4
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

    .line 8818
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->serverProtoUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 8822
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 8823
    invoke-static {v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->valueOf(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    move-result-object v2

    .line 8824
    if-eqz v2, :cond_0

    .line 8825
    and-int/lit8 v3, v1, 0x10

    if-eq v3, v5, :cond_2

    .line 8826
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAction_:Ljava/util/List;

    .line 8827
    or-int/lit8 v1, v1, 0x10

    .line 8829
    :cond_2
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAction_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 8834
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v2

    .line 8835
    invoke-virtual {p1, v2}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v2

    .line 8836
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_5

    .line 8837
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 8838
    invoke-static {v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->valueOf(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    move-result-object v3

    .line 8839
    if-eqz v3, :cond_3

    .line 8840
    and-int/lit8 v4, v1, 0x10

    if-eq v4, v5, :cond_4

    .line 8841
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAction_:Ljava/util/List;

    .line 8842
    or-int/lit8 v1, v1, 0x10

    .line 8844
    :cond_4
    iget-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAction_:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8847
    :cond_5
    invoke-virtual {p1, v2}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    .line 8851
    :sswitch_7
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

    .line 8852
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAlways_:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 8863
    :cond_6
    and-int/lit8 v0, v1, 0x10

    if-ne v0, v5, :cond_7

    .line 8864
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAction_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAction_:Ljava/util/List;

    .line 8866
    :cond_7
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->makeExtensionsImmutable()V

    .line 8868
    return-void

    .line 8786
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x2a -> :sswitch_6
        0x30 -> :sswitch_7
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
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
    .line 8757
    invoke-direct {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 8762
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 9002
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->memoizedIsInitialized:B

    .line 9038
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->memoizedSerializedSize:I

    .line 8764
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8757
    invoke-direct {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 8765
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 9002
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->memoizedIsInitialized:B

    .line 9038
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->memoizedSerializedSize:I

    .line 8765
    return-void
.end method

.method static synthetic access$10602(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8757
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->responseContentEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    return-object p1
.end method

.method static synthetic access$10702(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8757
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->googleSearchRequestProto_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$10800(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 8757
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->serverHttpUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$10802(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8757
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->serverHttpUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$10900(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 8757
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->serverProtoUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$10902(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8757
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->serverProtoUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$11000(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 8757
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAction_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$11002(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8757
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAction_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$11102(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8757
    iput-boolean p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAlways_:Z

    return p1
.end method

.method static synthetic access$11202(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8757
    iput p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;
    .locals 1

    .prologue
    .line 8769
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 8995
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->NONE:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->responseContentEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    .line 8996
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->googleSearchRequestProto_:Lcom/google/protobuf/ByteString;

    .line 8997
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->serverHttpUrl_:Ljava/lang/Object;

    .line 8998
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->serverProtoUrl_:Ljava/lang/Object;

    .line 8999
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAction_:Ljava/util/List;

    .line 9000
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAlways_:Z

    .line 9001
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;
    .locals 1

    .prologue
    .line 9136
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->access$10400()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;
    .locals 1
    .parameter

    .prologue
    .line 9139
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9116
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9122
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9086
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9092
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9127
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9133
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9106
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9112
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9096
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9102
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8757
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;
    .locals 1

    .prologue
    .line 8773
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    return-object v0
.end method

.method public getGoogleSearchRequestProto()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 8902
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->googleSearchRequestProto_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8881
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getResponseContentEncoding()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
    .locals 1

    .prologue
    .line 8892
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->responseContentEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 9040
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->memoizedSerializedSize:I

    .line 9041
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 9074
    :goto_0
    return v0

    .line 9044
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_6

    .line 9045
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->responseContentEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->getNumber()I

    move-result v0

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int/2addr v0, v3

    .line 9048
    :goto_1
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_1

    .line 9049
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->googleSearchRequestProto_:Lcom/google/protobuf/ByteString;

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9052
    :cond_1
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v5, :cond_2

    .line 9053
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->getServerHttpUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9056
    :cond_2
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    .line 9057
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->getServerProtoUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    move v1, v0

    :goto_2
    move v2, v3

    .line 9062
    :goto_3
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 9063
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAction_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->getNumber()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v0

    add-int/2addr v0, v3

    .line 9062
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_3

    .line 9066
    :cond_3
    add-int v0, v1, v3

    .line 9067
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAction_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 9069
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4

    .line 9070
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAlways_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9073
    :cond_4
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->memoizedSerializedSize:I

    goto :goto_0

    :cond_5
    move v1, v0

    goto :goto_2

    :cond_6
    move v0, v3

    goto :goto_1
.end method

.method public getServerHttpUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 8912
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->serverHttpUrl_:Ljava/lang/Object;

    .line 8913
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 8914
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 8922
    :goto_0
    return-object v1

    .line 8916
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 8918
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 8919
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8920
    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->serverHttpUrl_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 8922
    goto :goto_0
.end method

.method public getServerHttpUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 8927
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->serverHttpUrl_:Ljava/lang/Object;

    .line 8928
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8929
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8931
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->serverHttpUrl_:Ljava/lang/Object;

    .line 8934
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getServerProtoUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 8945
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->serverProtoUrl_:Ljava/lang/Object;

    .line 8946
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 8947
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 8955
    :goto_0
    return-object v1

    .line 8949
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 8951
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 8952
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8953
    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->serverProtoUrl_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 8955
    goto :goto_0
.end method

.method public getServerProtoUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 8960
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->serverProtoUrl_:Ljava/lang/Object;

    .line 8961
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8962
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8964
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->serverProtoUrl_:Ljava/lang/Object;

    .line 8967
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getSkipWebsearchAction(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;
    .locals 1
    .parameter

    .prologue
    .line 8981
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    return-object p0
.end method

.method public getSkipWebsearchActionCount()I
    .locals 1

    .prologue
    .line 8978
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSkipWebsearchActionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8975
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAction_:Ljava/util/List;

    return-object v0
.end method

.method public getSkipWebsearchAlways()Z
    .locals 1

    .prologue
    .line 8991
    iget-boolean v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAlways_:Z

    return v0
.end method

.method public hasGoogleSearchRequestProto()Z
    .locals 2

    .prologue
    .line 8899
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

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

.method public hasResponseContentEncoding()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 8889
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasServerHttpUrl()Z
    .locals 2

    .prologue
    .line 8909
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

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

.method public hasServerProtoUrl()Z
    .locals 2

    .prologue
    .line 8942
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

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

.method public hasSkipWebsearchAlways()Z
    .locals 2

    .prologue
    .line 8988
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

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

    .line 9004
    iget-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->memoizedIsInitialized:B

    .line 9005
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 9012
    :goto_0
    return v0

    :cond_0
    move v0, v3

    .line 9005
    goto :goto_0

    .line 9007
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->hasGoogleSearchRequestProto()Z

    move-result v0

    if-nez v0, :cond_2

    .line 9008
    iput-byte v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->memoizedIsInitialized:B

    move v0, v3

    .line 9009
    goto :goto_0

    .line 9011
    :cond_2
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->memoizedIsInitialized:B

    move v0, v2

    .line 9012
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8757
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;
    .locals 1

    .prologue
    .line 9137
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8757
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;
    .locals 1

    .prologue
    .line 9141
    invoke-static {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

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
    .line 9080
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

    .line 9017
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->getSerializedSize()I

    .line 9018
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 9019
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->responseContentEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 9021
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 9022
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->googleSearchRequestProto_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 9024
    :cond_1
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 9025
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->getServerHttpUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 9027
    :cond_2
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 9028
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->getServerProtoUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 9030
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 9031
    const/4 v2, 0x5

    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAction_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 9030
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 9033
    :cond_4
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_5

    .line 9034
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAlways_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 9036
    :cond_5
    return-void
.end method
