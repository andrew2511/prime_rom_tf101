.class public final Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecordedEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final QUEUE_TIME_FIELD_NUMBER:I = 0x14

.field public static final REQUEST_ID_FIELD_NUMBER:I = 0xe

.field public static final TIME_MS_FIELD_NUMBER:I = 0xf

.field public static final TRANSMIT_TIME_FIELD_NUMBER:I = 0x15

.field private static final defaultInstance:Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private queueTime_:J

.field private requestId_:J

.field private timeMs_:I

.field private transmitTime_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15831
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->PARSER:Lcom/google/protobuf/Parser;

    .line 16223
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;-><init>(Z)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->defaultInstance:Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    .line 16224
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->defaultInstance:Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->initFields()V

    .line 16225
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

    .line 15782
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 15893
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->memoizedIsInitialized:B

    .line 15927
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->memoizedSerializedSize:I

    .line 15783
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->initFields()V

    .line 15786
    const/4 v0, 0x0

    .line 15787
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 15788
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 15789
    sparse-switch v1, :sswitch_data_0

    .line 15794
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v3

    .line 15796
    goto :goto_0

    :sswitch_0
    move v0, v3

    .line 15792
    goto :goto_0

    .line 15801
    :sswitch_1
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->bitField0_:I

    .line 15802
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->requestId_:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 15822
    :catch_0
    move-exception v0

    .line 15823
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15828
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->makeExtensionsImmutable()V

    throw v0

    .line 15806
    :sswitch_2
    :try_start_2
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->bitField0_:I

    .line 15807
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->timeMs_:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 15824
    :catch_1
    move-exception v0

    .line 15825
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

    .line 15811
    :sswitch_3
    :try_start_4
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->bitField0_:I

    .line 15812
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->queueTime_:J

    goto :goto_0

    .line 15816
    :sswitch_4
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->bitField0_:I

    .line 15817
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->transmitTime_:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 15828
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->makeExtensionsImmutable()V

    .line 15830
    return-void

    .line 15789
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x70 -> :sswitch_1
        0x78 -> :sswitch_2
        0xa0 -> :sswitch_3
        0xa8 -> :sswitch_4
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
    .line 15760
    invoke-direct {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 15765
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 15893
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->memoizedIsInitialized:B

    .line 15927
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->memoizedSerializedSize:I

    .line 15767
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/MobileappsExtensions$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15760
    invoke-direct {p0, p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 15768
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 15893
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->memoizedIsInitialized:B

    .line 15927
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->memoizedSerializedSize:I

    .line 15768
    return-void
.end method

.method static synthetic access$18002(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15760
    iput-wide p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->requestId_:J

    return-wide p1
.end method

.method static synthetic access$18102(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15760
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->timeMs_:I

    return p1
.end method

.method static synthetic access$18202(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15760
    iput-wide p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->queueTime_:J

    return-wide p1
.end method

.method static synthetic access$18302(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15760
    iput-wide p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->transmitTime_:J

    return-wide p1
.end method

.method static synthetic access$18402(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15760
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;
    .locals 1

    .prologue
    .line 15772
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->defaultInstance:Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    return-object v0
.end method

.method private initFields()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 15888
    iput-wide v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->requestId_:J

    .line 15889
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->timeMs_:I

    .line 15890
    iput-wide v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->queueTime_:J

    .line 15891
    iput-wide v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->transmitTime_:J

    .line 15892
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;
    .locals 1

    .prologue
    .line 16012
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->access$17800()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;
    .locals 1
    .parameter

    .prologue
    .line 16015
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->newBuilder()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15992
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15998
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15962
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15968
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16003
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16009
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15982
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15988
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15972
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15978
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 15760
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;
    .locals 1

    .prologue
    .line 15776
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->defaultInstance:Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15843
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getQueueTime()J
    .locals 2

    .prologue
    .line 15874
    iget-wide v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->queueTime_:J

    return-wide v0
.end method

.method public getRequestId()J
    .locals 2

    .prologue
    .line 15854
    iget-wide v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->requestId_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 15929
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->memoizedSerializedSize:I

    .line 15930
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 15950
    :goto_0
    return v0

    .line 15932
    :cond_0
    const/4 v0, 0x0

    .line 15933
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 15934
    const/16 v1, 0xe

    iget-wide v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->requestId_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 15937
    :cond_1
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 15938
    const/16 v1, 0xf

    iget v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->timeMs_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 15941
    :cond_2
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 15942
    const/16 v1, 0x14

    iget-wide v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->queueTime_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 15945
    :cond_3
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 15946
    const/16 v1, 0x15

    iget-wide v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->transmitTime_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 15949
    :cond_4
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getTimeMs()I
    .locals 1

    .prologue
    .line 15864
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->timeMs_:I

    return v0
.end method

.method public getTransmitTime()J
    .locals 2

    .prologue
    .line 15884
    iget-wide v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->transmitTime_:J

    return-wide v0
.end method

.method public hasQueueTime()Z
    .locals 2

    .prologue
    .line 15871
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->bitField0_:I

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

.method public hasRequestId()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 15851
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimeMs()Z
    .locals 2

    .prologue
    .line 15861
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->bitField0_:I

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

.method public hasTransmitTime()Z
    .locals 2

    .prologue
    .line 15881
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->bitField0_:I

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

    .line 15895
    iget-byte v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->memoizedIsInitialized:B

    .line 15896
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 15907
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 15896
    goto :goto_0

    .line 15898
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->hasRequestId()Z

    move-result v0

    if-nez v0, :cond_2

    .line 15899
    iput-byte v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->memoizedIsInitialized:B

    move v0, v2

    .line 15900
    goto :goto_0

    .line 15902
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->hasTimeMs()Z

    move-result v0

    if-nez v0, :cond_3

    .line 15903
    iput-byte v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->memoizedIsInitialized:B

    move v0, v2

    .line 15904
    goto :goto_0

    .line 15906
    :cond_3
    iput-byte v3, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->memoizedIsInitialized:B

    move v0, v3

    .line 15907
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 15760
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->newBuilderForType()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;
    .locals 1

    .prologue
    .line 16013
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->newBuilder()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 15760
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->toBuilder()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;
    .locals 1

    .prologue
    .line 16017
    invoke-static {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->newBuilder(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;

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
    .line 15956
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
    .line 15912
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->getSerializedSize()I

    .line 15913
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 15914
    const/16 v0, 0xe

    iget-wide v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->requestId_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 15916
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 15917
    const/16 v0, 0xf

    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->timeMs_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 15919
    :cond_1
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 15920
    const/16 v0, 0x14

    iget-wide v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->queueTime_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 15922
    :cond_2
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 15923
    const/16 v0, 0x15

    iget-wide v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->transmitTime_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 15925
    :cond_3
    return-void
.end method
