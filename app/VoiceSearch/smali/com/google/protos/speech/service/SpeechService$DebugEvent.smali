.class public final Lcom/google/protos/speech/service/SpeechService$DebugEvent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$DebugEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DebugEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;
    }
.end annotation


# static fields
.field public static final DURATION_MS_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$DebugEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final START_TIME_MS_FIELD_NUMBER:I = 0x1

.field public static final SUBEVENT_FIELD_NUMBER:I = 0x4

.field public static final TEXT_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$DebugEvent;


# instance fields
.field private bitField0_:I

.field private durationMs_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private startTimeMs_:J

.field private subevent_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$DebugEvent;",
            ">;"
        }
    .end annotation
.end field

.field private text_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6680
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->PARSER:Lcom/google/protobuf/Parser;

    .line 7200
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    .line 7201
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->initFields()V

    .line 7202
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

    const/16 v4, 0x8

    .line 6625
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6776
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->memoizedIsInitialized:B

    .line 6802
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->memoizedSerializedSize:I

    .line 6626
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->initFields()V

    move v0, v1

    .line 6630
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 6631
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 6632
    sparse-switch v2, :sswitch_data_0

    .line 6637
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v5

    .line 6639
    goto :goto_0

    :sswitch_0
    move v0, v5

    .line 6635
    goto :goto_0

    .line 6644
    :sswitch_1
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->bitField0_:I

    .line 6645
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->startTimeMs_:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 6668
    :catch_0
    move-exception v0

    .line 6669
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6674
    :catchall_0
    move-exception v0

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v4, :cond_1

    .line 6675
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->subevent_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->subevent_:Ljava/util/List;

    .line 6677
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->makeExtensionsImmutable()V

    throw v0

    .line 6649
    :sswitch_2
    :try_start_2
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->bitField0_:I

    .line 6650
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->durationMs_:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 6670
    :catch_1
    move-exception v0

    .line 6671
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

    .line 6654
    :sswitch_3
    :try_start_4
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->bitField0_:I

    .line 6655
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->text_:Ljava/lang/Object;

    goto :goto_0

    .line 6659
    :sswitch_4
    and-int/lit8 v2, v1, 0x8

    if-eq v2, v4, :cond_2

    .line 6660
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->subevent_:Ljava/util/List;

    .line 6661
    or-int/lit8 v1, v1, 0x8

    .line 6663
    :cond_2
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->subevent_:Ljava/util/List;

    sget-object v3, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 6674
    :cond_3
    and-int/lit8 v0, v1, 0x8

    if-ne v0, v4, :cond_4

    .line 6675
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->subevent_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->subevent_:Ljava/util/List;

    .line 6677
    :cond_4
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->makeExtensionsImmutable()V

    .line 6679
    return-void

    .line 6632
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
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
    .line 6603
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 6608
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 6776
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->memoizedIsInitialized:B

    .line 6802
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->memoizedSerializedSize:I

    .line 6610
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6603
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 6611
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6776
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->memoizedIsInitialized:B

    .line 6802
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->memoizedSerializedSize:I

    .line 6611
    return-void
.end method

.method static synthetic access$7802(Lcom/google/protos/speech/service/SpeechService$DebugEvent;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6603
    iput-wide p1, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->startTimeMs_:J

    return-wide p1
.end method

.method static synthetic access$7902(Lcom/google/protos/speech/service/SpeechService$DebugEvent;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6603
    iput-wide p1, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->durationMs_:J

    return-wide p1
.end method

.method static synthetic access$8000(Lcom/google/protos/speech/service/SpeechService$DebugEvent;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 6603
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->text_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$8002(Lcom/google/protos/speech/service/SpeechService$DebugEvent;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6603
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->text_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8100(Lcom/google/protos/speech/service/SpeechService$DebugEvent;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 6603
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->subevent_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8102(Lcom/google/protos/speech/service/SpeechService$DebugEvent;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6603
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->subevent_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$8202(Lcom/google/protos/speech/service/SpeechService$DebugEvent;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6603
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$DebugEvent;
    .locals 1

    .prologue
    .line 6615
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 6771
    iput-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->startTimeMs_:J

    .line 6772
    iput-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->durationMs_:J

    .line 6773
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->text_:Ljava/lang/Object;

    .line 6774
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->subevent_:Ljava/util/List;

    .line 6775
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;
    .locals 1

    .prologue
    .line 6887
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->access$7600()Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$DebugEvent;)Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;
    .locals 1
    .parameter

    .prologue
    .line 6890
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->newBuilder()Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$DebugEvent;)Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$DebugEvent;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6867
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$DebugEvent;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6873
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$DebugEvent;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6837
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$DebugEvent;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6843
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/speech/service/SpeechService$DebugEvent;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6878
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$DebugEvent;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6884
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$DebugEvent;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6857
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$DebugEvent;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6863
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/speech/service/SpeechService$DebugEvent;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6847
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$DebugEvent;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6853
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6603
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$DebugEvent;
    .locals 1

    .prologue
    .line 6619
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    return-object v0
.end method

.method public getDurationMs()J
    .locals 2

    .prologue
    .line 6713
    iget-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->durationMs_:J

    return-wide v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$DebugEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6692
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6804
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->memoizedSerializedSize:I

    .line 6805
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 6825
    :goto_0
    return v0

    .line 6808
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_4

    .line 6809
    iget-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->startTimeMs_:J

    invoke-static {v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v0, v3

    .line 6812
    :goto_1
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_1

    .line 6813
    iget-wide v1, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->durationMs_:J

    invoke-static {v4, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6816
    :cond_1
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v5, :cond_2

    .line 6817
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    move v1, v3

    move v2, v0

    .line 6820
    :goto_2
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->subevent_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 6821
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->subevent_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v2

    .line 6820
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    .line 6824
    :cond_3
    iput v2, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->memoizedSerializedSize:I

    move v0, v2

    .line 6825
    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_1
.end method

.method public getStartTimeMs()J
    .locals 2

    .prologue
    .line 6703
    iget-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->startTimeMs_:J

    return-wide v0
.end method

.method public getSubevent(I)Lcom/google/protos/speech/service/SpeechService$DebugEvent;
    .locals 1
    .parameter

    .prologue
    .line 6763
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->subevent_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    return-object p0
.end method

.method public getSubeventCount()I
    .locals 1

    .prologue
    .line 6760
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->subevent_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSubeventList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$DebugEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6753
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->subevent_:Ljava/util/List;

    return-object v0
.end method

.method public getSubeventOrBuilder(I)Lcom/google/protos/speech/service/SpeechService$DebugEventOrBuilder;
    .locals 1
    .parameter

    .prologue
    .line 6767
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->subevent_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$DebugEventOrBuilder;

    return-object p0
.end method

.method public getSubeventOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protos/speech/service/SpeechService$DebugEventOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6757
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->subevent_:Ljava/util/List;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 6723
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->text_:Ljava/lang/Object;

    .line 6724
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 6725
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 6733
    :goto_0
    return-object v1

    .line 6727
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 6729
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 6730
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6731
    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->text_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 6733
    goto :goto_0
.end method

.method public getTextBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 6738
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->text_:Ljava/lang/Object;

    .line 6739
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6740
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6742
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->text_:Ljava/lang/Object;

    .line 6745
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasDurationMs()Z
    .locals 2

    .prologue
    .line 6710
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->bitField0_:I

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

.method public hasStartTimeMs()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 6700
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasText()Z
    .locals 2

    .prologue
    .line 6720
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->bitField0_:I

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
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 6778
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->memoizedIsInitialized:B

    .line 6779
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 6782
    :goto_0
    return v0

    .line 6779
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 6781
    :cond_1
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->memoizedIsInitialized:B

    move v0, v2

    .line 6782
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6603
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;
    .locals 1

    .prologue
    .line 6888
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->newBuilder()Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6603
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->toBuilder()Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;
    .locals 1

    .prologue
    .line 6892
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->newBuilder(Lcom/google/protos/speech/service/SpeechService$DebugEvent;)Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

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
    .line 6831
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 6787
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->getSerializedSize()I

    .line 6788
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 6789
    iget-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->startTimeMs_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 6791
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    .line 6792
    iget-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->durationMs_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 6794
    :cond_1
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    .line 6795
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6797
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->subevent_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 6798
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->subevent_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 6797
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 6800
    :cond_3
    return-void
.end method
