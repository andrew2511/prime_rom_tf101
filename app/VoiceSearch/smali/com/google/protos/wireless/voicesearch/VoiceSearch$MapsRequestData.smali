.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MapsRequestData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;
    }
.end annotation


# static fields
.field public static final GMM_BINARY_HEADER_FIELD_NUMBER:I = 0x2

.field public static final GMM_SEARCH_REQUEST_PROTO_FIELD_NUMBER:I = 0x3

.field public static final GMM_SERVER_RESPONSE_ENCODING_FIELD_NUMBER:I = 0x5

.field public static final MAPS_SERVER_URL_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;",
            ">;"
        }
    .end annotation
.end field

.field public static final USER_AGENT_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;


# instance fields
.field private bitField0_:I

.field private gmmBinaryHeader_:Lcom/google/protobuf/ByteString;

.field private gmmSearchRequestProto_:Lcom/google/protobuf/ByteString;

.field private gmmServerResponseEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

.field private mapsServerUrl_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private userAgent_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8139
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$1;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$1;-><init>()V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->PARSER:Lcom/google/protobuf/Parser;

    .line 8718
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;-><init>(Z)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    .line 8719
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->initFields()V

    .line 8720
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

    .line 8081
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8258
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->memoizedIsInitialized:B

    .line 8303
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->memoizedSerializedSize:I

    .line 8082
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->initFields()V

    .line 8085
    const/4 v0, 0x0

    .line 8086
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 8087
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 8088
    sparse-switch v1, :sswitch_data_0

    .line 8093
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v3

    .line 8095
    goto :goto_0

    :sswitch_0
    move v0, v3

    .line 8091
    goto :goto_0

    .line 8100
    :sswitch_1
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    .line 8101
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->mapsServerUrl_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 8130
    :catch_0
    move-exception v0

    .line 8131
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8136
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->makeExtensionsImmutable()V

    throw v0

    .line 8105
    :sswitch_2
    :try_start_2
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    .line 8106
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmBinaryHeader_:Lcom/google/protobuf/ByteString;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 8132
    :catch_1
    move-exception v0

    .line 8133
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

    .line 8110
    :sswitch_3
    :try_start_4
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    .line 8111
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmSearchRequestProto_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 8115
    :sswitch_4
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    .line 8116
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->userAgent_:Ljava/lang/Object;

    goto :goto_0

    .line 8120
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v1

    .line 8121
    invoke-static {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->valueOf(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    move-result-object v1

    .line 8122
    if-eqz v1, :cond_0

    .line 8123
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    .line 8124
    iput-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmServerResponseEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 8136
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->makeExtensionsImmutable()V

    .line 8138
    return-void

    .line 8088
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
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
    .line 8059
    invoke-direct {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 8064
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 8258
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->memoizedIsInitialized:B

    .line 8303
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->memoizedSerializedSize:I

    .line 8066
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8059
    invoke-direct {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 8067
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8258
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->memoizedIsInitialized:B

    .line 8303
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->memoizedSerializedSize:I

    .line 8067
    return-void
.end method

.method static synthetic access$10000(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 8059
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->userAgent_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$10002(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8059
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->userAgent_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$10102(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8059
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmServerResponseEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    return-object p1
.end method

.method static synthetic access$10202(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8059
    iput p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    return p1
.end method

.method static synthetic access$9700(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 8059
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->mapsServerUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$9702(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8059
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->mapsServerUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$9802(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8059
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmBinaryHeader_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$9902(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8059
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmSearchRequestProto_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;
    .locals 1

    .prologue
    .line 8071
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 8252
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->mapsServerUrl_:Ljava/lang/Object;

    .line 8253
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmBinaryHeader_:Lcom/google/protobuf/ByteString;

    .line 8254
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmSearchRequestProto_:Lcom/google/protobuf/ByteString;

    .line 8255
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->userAgent_:Ljava/lang/Object;

    .line 8256
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->NONE:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmServerResponseEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    .line 8257
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;
    .locals 1

    .prologue
    .line 8392
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->access$9500()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;
    .locals 1
    .parameter

    .prologue
    .line 8395
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8372
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8378
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8342
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8348
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8383
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8389
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8362
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8368
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8352
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8358
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8059
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;
    .locals 1

    .prologue
    .line 8075
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    return-object v0
.end method

.method public getGmmBinaryHeader()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 8195
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmBinaryHeader_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getGmmSearchRequestProto()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 8205
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmSearchRequestProto_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getGmmServerResponseEncoding()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
    .locals 1

    .prologue
    .line 8248
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmServerResponseEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    return-object v0
.end method

.method public getMapsServerUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 8162
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->mapsServerUrl_:Ljava/lang/Object;

    .line 8163
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 8164
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 8172
    :goto_0
    return-object v1

    .line 8166
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 8168
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 8169
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8170
    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->mapsServerUrl_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 8172
    goto :goto_0
.end method

.method public getMapsServerUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 8177
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->mapsServerUrl_:Ljava/lang/Object;

    .line 8178
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8179
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8181
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->mapsServerUrl_:Ljava/lang/Object;

    .line 8184
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
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8151
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 8305
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->memoizedSerializedSize:I

    .line 8306
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 8330
    :goto_0
    return v0

    .line 8308
    :cond_0
    const/4 v0, 0x0

    .line 8309
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 8310
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->getMapsServerUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8313
    :cond_1
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 8314
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmBinaryHeader_:Lcom/google/protobuf/ByteString;

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8317
    :cond_2
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 8318
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmSearchRequestProto_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8321
    :cond_3
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 8322
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->getUserAgentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8325
    :cond_4
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 8326
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmServerResponseEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    invoke-virtual {v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8329
    :cond_5
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 8215
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->userAgent_:Ljava/lang/Object;

    .line 8216
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 8217
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 8225
    :goto_0
    return-object v1

    .line 8219
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 8221
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 8222
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8223
    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->userAgent_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 8225
    goto :goto_0
.end method

.method public getUserAgentBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 8230
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->userAgent_:Ljava/lang/Object;

    .line 8231
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8232
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8234
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->userAgent_:Ljava/lang/Object;

    .line 8237
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasGmmBinaryHeader()Z
    .locals 2

    .prologue
    .line 8192
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

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

.method public hasGmmSearchRequestProto()Z
    .locals 2

    .prologue
    .line 8202
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

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

.method public hasGmmServerResponseEncoding()Z
    .locals 2

    .prologue
    .line 8245
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

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

.method public hasMapsServerUrl()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 8159
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUserAgent()Z
    .locals 2

    .prologue
    .line 8212
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

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
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8260
    iget-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->memoizedIsInitialized:B

    .line 8261
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 8280
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 8261
    goto :goto_0

    .line 8263
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->hasMapsServerUrl()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8264
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->memoizedIsInitialized:B

    move v0, v2

    .line 8265
    goto :goto_0

    .line 8267
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->hasGmmBinaryHeader()Z

    move-result v0

    if-nez v0, :cond_3

    .line 8268
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->memoizedIsInitialized:B

    move v0, v2

    .line 8269
    goto :goto_0

    .line 8271
    :cond_3
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->hasGmmSearchRequestProto()Z

    move-result v0

    if-nez v0, :cond_4

    .line 8272
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->memoizedIsInitialized:B

    move v0, v2

    .line 8273
    goto :goto_0

    .line 8275
    :cond_4
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->hasUserAgent()Z

    move-result v0

    if-nez v0, :cond_5

    .line 8276
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->memoizedIsInitialized:B

    move v0, v2

    .line 8277
    goto :goto_0

    .line 8279
    :cond_5
    iput-byte v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->memoizedIsInitialized:B

    move v0, v3

    .line 8280
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8059
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;
    .locals 1

    .prologue
    .line 8393
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8059
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;
    .locals 1

    .prologue
    .line 8397
    invoke-static {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;

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
    .line 8336
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

    .line 8285
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->getSerializedSize()I

    .line 8286
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 8287
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->getMapsServerUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 8289
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 8290
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmBinaryHeader_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 8292
    :cond_1
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 8293
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmSearchRequestProto_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 8295
    :cond_2
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 8296
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->getUserAgentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 8298
    :cond_3
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 8299
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmServerResponseEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 8301
    :cond_4
    return-void
.end method
