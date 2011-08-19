.class public final Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GoogleVoiceDialerEventInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;,
        Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;,
        Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$ActionType;
    }
.end annotation


# static fields
.field public static final ACTION_FIELD_NUMBER:I = 0x1

.field public static final COUNT_FIELD_NUMBER:I = 0x5

.field public static final DURATION_FIELD_NUMBER:I = 0x3

.field public static final LABEL_FIELD_NUMBER:I = 0x4

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final POSITION_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;


# instance fields
.field private action_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$ActionType;

.field private bitField0_:I

.field private count_:J

.field private duration_:J

.field private label_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private position_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8962
    new-instance v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 9809
    new-instance v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;-><init>(Z)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->defaultInstance:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    .line 9810
    sget-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->defaultInstance:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->initFields()V

    .line 9811
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

    .line 8900
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 9444
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->memoizedIsInitialized:B

    .line 9477
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->memoizedSerializedSize:I

    .line 8901
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->initFields()V

    .line 8904
    const/4 v0, 0x0

    .line 8905
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 8906
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 8907
    sparse-switch v1, :sswitch_data_0

    .line 8912
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v3

    .line 8914
    goto :goto_0

    :sswitch_0
    move v0, v3

    .line 8910
    goto :goto_0

    .line 8919
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v1

    .line 8920
    invoke-static {v1}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$ActionType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$ActionType;

    move-result-object v1

    .line 8921
    if-eqz v1, :cond_0

    .line 8922
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->bitField0_:I

    .line 8923
    iput-object v1, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->action_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$ActionType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 8953
    :catch_0
    move-exception v0

    .line 8954
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8959
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->makeExtensionsImmutable()V

    throw v0

    .line 8928
    :sswitch_2
    :try_start_2
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->bitField0_:I

    .line 8929
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->position_:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 8955
    :catch_1
    move-exception v0

    .line 8956
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

    .line 8933
    :sswitch_3
    :try_start_4
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->bitField0_:I

    .line 8934
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->duration_:J

    goto :goto_0

    .line 8938
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v1

    .line 8939
    invoke-static {v1}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->valueOf(I)Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    move-result-object v1

    .line 8940
    if-eqz v1, :cond_0

    .line 8941
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->bitField0_:I

    .line 8942
    iput-object v1, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->label_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    goto :goto_0

    .line 8947
    :sswitch_5
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->bitField0_:I

    .line 8948
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->count_:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 8959
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->makeExtensionsImmutable()V

    .line 8961
    return-void

    .line 8907
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
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
    .line 8878
    invoke-direct {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 8883
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 9444
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->memoizedIsInitialized:B

    .line 9477
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->memoizedSerializedSize:I

    .line 8885
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/MobileappsExtensions$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8878
    invoke-direct {p0, p1}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 8886
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 9444
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->memoizedIsInitialized:B

    .line 9477
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->memoizedSerializedSize:I

    .line 8886
    return-void
.end method

.method static synthetic access$10302(Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$ActionType;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8878
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->action_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$ActionType;

    return-object p1
.end method

.method static synthetic access$10402(Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8878
    iput-wide p1, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->position_:J

    return-wide p1
.end method

.method static synthetic access$10502(Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8878
    iput-wide p1, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->duration_:J

    return-wide p1
.end method

.method static synthetic access$10602(Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;)Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8878
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->label_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    return-object p1
.end method

.method static synthetic access$10702(Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8878
    iput-wide p1, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->count_:J

    return-wide p1
.end method

.method static synthetic access$10802(Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8878
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;
    .locals 1

    .prologue
    .line 8890
    sget-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->defaultInstance:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    return-object v0
.end method

.method private initFields()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 9438
    sget-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$ActionType;->FIRST_STARTUP:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$ActionType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->action_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$ActionType;

    .line 9439
    iput-wide v1, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->position_:J

    .line 9440
    iput-wide v1, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->duration_:J

    .line 9441
    sget-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->INBOX:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->label_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    .line 9442
    iput-wide v1, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->count_:J

    .line 9443
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;
    .locals 1

    .prologue
    .line 9566
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->access$10100()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;)Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 9569
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;)Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9546
    sget-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9552
    sget-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9516
    sget-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9522
    sget-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9557
    sget-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9563
    sget-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9536
    sget-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9542
    sget-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9526
    sget-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9532
    sget-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    return-object p0
.end method


# virtual methods
.method public getAction()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$ActionType;
    .locals 1

    .prologue
    .line 9394
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->action_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$ActionType;

    return-object v0
.end method

.method public getCount()J
    .locals 2

    .prologue
    .line 9434
    iget-wide v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->count_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8878
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;
    .locals 1

    .prologue
    .line 8894
    sget-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->defaultInstance:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 9414
    iget-wide v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->duration_:J

    return-wide v0
.end method

.method public getLabel()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;
    .locals 1

    .prologue
    .line 9424
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->label_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8974
    sget-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPosition()J
    .locals 2

    .prologue
    .line 9404
    iget-wide v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->position_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 9479
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->memoizedSerializedSize:I

    .line 9480
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 9504
    :goto_0
    return v0

    .line 9482
    :cond_0
    const/4 v0, 0x0

    .line 9483
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 9484
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->action_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$ActionType;

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$ActionType;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9487
    :cond_1
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 9488
    iget-wide v1, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->position_:J

    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9491
    :cond_2
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 9492
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->duration_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9495
    :cond_3
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 9496
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->label_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->getNumber()I

    move-result v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9499
    :cond_4
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 9500
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->count_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9503
    :cond_5
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public hasAction()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 9391
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCount()Z
    .locals 2

    .prologue
    .line 9431
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->bitField0_:I

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

.method public hasDuration()Z
    .locals 2

    .prologue
    .line 9411
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->bitField0_:I

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

.method public hasLabel()Z
    .locals 2

    .prologue
    .line 9421
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->bitField0_:I

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

.method public hasPosition()Z
    .locals 2

    .prologue
    .line 9401
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->bitField0_:I

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
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 9446
    iget-byte v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->memoizedIsInitialized:B

    .line 9447
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 9454
    :goto_0
    return v0

    :cond_0
    move v0, v3

    .line 9447
    goto :goto_0

    .line 9449
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->hasAction()Z

    move-result v0

    if-nez v0, :cond_2

    .line 9450
    iput-byte v3, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->memoizedIsInitialized:B

    move v0, v3

    .line 9451
    goto :goto_0

    .line 9453
    :cond_2
    iput-byte v2, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->memoizedIsInitialized:B

    move v0, v2

    .line 9454
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8878
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->newBuilderForType()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;
    .locals 1

    .prologue
    .line 9567
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8878
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->toBuilder()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;
    .locals 1

    .prologue
    .line 9571
    invoke-static {p0}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->newBuilder(Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;)Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;

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
    .line 9510
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

    .line 9459
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->getSerializedSize()I

    .line 9460
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 9461
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->action_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$ActionType;

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$ActionType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 9463
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 9464
    iget-wide v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->position_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 9466
    :cond_1
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 9467
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->duration_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 9469
    :cond_2
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 9470
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->label_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->getNumber()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 9472
    :cond_3
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 9473
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->count_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 9475
    :cond_4
    return-void
.end method
