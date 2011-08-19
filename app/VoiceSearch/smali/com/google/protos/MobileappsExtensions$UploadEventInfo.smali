.class public final Lcom/google/protos/MobileappsExtensions$UploadEventInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protos/MobileappsExtensions$UploadEventInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UploadEventInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;,
        Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;,
        Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;,
        Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;
    }
.end annotation


# static fields
.field public static final ACTION_FIELD_NUMBER:I = 0x1

.field public static final GUID_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/MobileappsExtensions$UploadEventInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final REASON_FIELD_NUMBER:I = 0x5

.field public static final SIZE_FIELD_NUMBER:I = 0x4

.field public static final TOTAL_TIME_MS_FIELD_NUMBER:I = 0x6

.field public static final UPLOADER_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/protos/MobileappsExtensions$UploadEventInfo;


# instance fields
.field private action_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;

.field private bitField0_:I

.field private guid_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private reason_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;

.field private size_:I

.field private totalTimeMs_:I

.field private uploader_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1848
    new-instance v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 2470
    new-instance v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;-><init>(Z)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->defaultInstance:Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    .line 2471
    sget-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->defaultInstance:Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->initFields()V

    .line 2472
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

    .line 1777
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2073
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->memoizedIsInitialized:B

    .line 2105
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->memoizedSerializedSize:I

    .line 1778
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->initFields()V

    .line 1781
    const/4 v0, 0x0

    .line 1782
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 1783
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1784
    sparse-switch v1, :sswitch_data_0

    .line 1789
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v3

    .line 1791
    goto :goto_0

    :sswitch_0
    move v0, v3

    .line 1787
    goto :goto_0

    .line 1796
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v1

    .line 1797
    invoke-static {v1}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;

    move-result-object v1

    .line 1798
    if-eqz v1, :cond_0

    .line 1799
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->bitField0_:I

    .line 1800
    iput-object v1, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->action_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1839
    :catch_0
    move-exception v0

    .line 1840
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1845
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->makeExtensionsImmutable()V

    throw v0

    .line 1805
    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v1

    .line 1806
    invoke-static {v1}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;

    move-result-object v1

    .line 1807
    if-eqz v1, :cond_0

    .line 1808
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->bitField0_:I

    .line 1809
    iput-object v1, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->uploader_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1841
    :catch_1
    move-exception v0

    .line 1842
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

    .line 1814
    :sswitch_3
    :try_start_4
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->bitField0_:I

    .line 1815
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->guid_:J

    goto :goto_0

    .line 1819
    :sswitch_4
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->bitField0_:I

    .line 1820
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->size_:I

    goto :goto_0

    .line 1824
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v1

    .line 1825
    invoke-static {v1}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;

    move-result-object v1

    .line 1826
    if-eqz v1, :cond_0

    .line 1827
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->bitField0_:I

    .line 1828
    iput-object v1, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->reason_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;

    goto :goto_0

    .line 1833
    :sswitch_6
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->bitField0_:I

    .line 1834
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->totalTimeMs_:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 1845
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->makeExtensionsImmutable()V

    .line 1847
    return-void

    .line 1784
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/MobileappsExtensions$1;)V
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
    .line 1755
    invoke-direct {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1760
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2073
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->memoizedIsInitialized:B

    .line 2105
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->memoizedSerializedSize:I

    .line 1762
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/MobileappsExtensions$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1755
    invoke-direct {p0, p1}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1763
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2073
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->memoizedIsInitialized:B

    .line 2105
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->memoizedSerializedSize:I

    .line 1763
    return-void
.end method

.method static synthetic access$2602(Lcom/google/protos/MobileappsExtensions$UploadEventInfo;Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1755
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->action_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/google/protos/MobileappsExtensions$UploadEventInfo;Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;)Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1755
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->uploader_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/google/protos/MobileappsExtensions$UploadEventInfo;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1755
    iput-wide p1, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->guid_:J

    return-wide p1
.end method

.method static synthetic access$2902(Lcom/google/protos/MobileappsExtensions$UploadEventInfo;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1755
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->size_:I

    return p1
.end method

.method static synthetic access$3002(Lcom/google/protos/MobileappsExtensions$UploadEventInfo;Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;)Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1755
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->reason_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/google/protos/MobileappsExtensions$UploadEventInfo;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1755
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->totalTimeMs_:I

    return p1
.end method

.method static synthetic access$3202(Lcom/google/protos/MobileappsExtensions$UploadEventInfo;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1755
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/MobileappsExtensions$UploadEventInfo;
    .locals 1

    .prologue
    .line 1767
    sget-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->defaultInstance:Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    return-object v0
.end method

.method private initFields()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2066
    sget-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;->UPLOAD_QUEUED:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->action_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;

    .line 2067
    sget-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;->YOUTUBE_UPLOADER:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->uploader_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;

    .line 2068
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->guid_:J

    .line 2069
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->size_:I

    .line 2070
    sget-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;->FAILED_FILE:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->reason_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;

    .line 2071
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->totalTimeMs_:I

    .line 2072
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;
    .locals 1

    .prologue
    .line 2198
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->access$2400()Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/MobileappsExtensions$UploadEventInfo;)Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2201
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$UploadEventInfo;)Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/MobileappsExtensions$UploadEventInfo;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2178
    sget-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$UploadEventInfo;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2184
    sget-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/MobileappsExtensions$UploadEventInfo;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2148
    sget-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$UploadEventInfo;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2154
    sget-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/MobileappsExtensions$UploadEventInfo;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2189
    sget-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$UploadEventInfo;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2195
    sget-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/MobileappsExtensions$UploadEventInfo;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2168
    sget-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$UploadEventInfo;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2174
    sget-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/MobileappsExtensions$UploadEventInfo;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2158
    sget-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$UploadEventInfo;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2164
    sget-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    return-object p0
.end method


# virtual methods
.method public getAction()Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;
    .locals 1

    .prologue
    .line 2012
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->action_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1755
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$UploadEventInfo;
    .locals 1

    .prologue
    .line 1771
    sget-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->defaultInstance:Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    return-object v0
.end method

.method public getGuid()J
    .locals 2

    .prologue
    .line 2032
    iget-wide v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->guid_:J

    return-wide v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/MobileappsExtensions$UploadEventInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1860
    sget-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getReason()Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;
    .locals 1

    .prologue
    .line 2052
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->reason_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2107
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->memoizedSerializedSize:I

    .line 2108
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2136
    :goto_0
    return v0

    .line 2110
    :cond_0
    const/4 v0, 0x0

    .line 2111
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 2112
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->action_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2115
    :cond_1
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 2116
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->uploader_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;->getNumber()I

    move-result v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2119
    :cond_2
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 2120
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->guid_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2123
    :cond_3
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 2124
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->size_:I

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2127
    :cond_4
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 2128
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->reason_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;

    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2131
    :cond_5
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 2132
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->totalTimeMs_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2135
    :cond_6
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 2042
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->size_:I

    return v0
.end method

.method public getTotalTimeMs()I
    .locals 1

    .prologue
    .line 2062
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->totalTimeMs_:I

    return v0
.end method

.method public getUploader()Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;
    .locals 1

    .prologue
    .line 2022
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->uploader_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;

    return-object v0
.end method

.method public hasAction()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2009
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGuid()Z
    .locals 2

    .prologue
    .line 2029
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->bitField0_:I

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

.method public hasReason()Z
    .locals 2

    .prologue
    .line 2049
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->bitField0_:I

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

.method public hasSize()Z
    .locals 2

    .prologue
    .line 2039
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->bitField0_:I

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

.method public hasTotalTimeMs()Z
    .locals 2

    .prologue
    .line 2059
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUploader()Z
    .locals 2

    .prologue
    .line 2019
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->bitField0_:I

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
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2075
    iget-byte v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->memoizedIsInitialized:B

    .line 2076
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 2079
    :goto_0
    return v0

    .line 2076
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2078
    :cond_1
    iput-byte v2, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->memoizedIsInitialized:B

    move v0, v2

    .line 2079
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1755
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->newBuilderForType()Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;
    .locals 1

    .prologue
    .line 2199
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1755
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->toBuilder()Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;
    .locals 1

    .prologue
    .line 2203
    invoke-static {p0}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->newBuilder(Lcom/google/protos/MobileappsExtensions$UploadEventInfo;)Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;

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
    .line 2142
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

    .line 2084
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->getSerializedSize()I

    .line 2085
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 2086
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->action_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2088
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 2089
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->uploader_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2091
    :cond_1
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 2092
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->guid_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 2094
    :cond_2
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 2095
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->size_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2097
    :cond_3
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 2098
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->reason_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2100
    :cond_4
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 2101
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->totalTimeMs_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2103
    :cond_5
    return-void
.end method
