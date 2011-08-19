.class public final Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protos/MobileappsExtensions$MobileOrkutEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MobileOrkutEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;,
        Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;,
        Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionType;
    }
.end annotation


# static fields
.field public static final ACTION_FIELD_NUMBER:I = 0x1

.field public static final ACTION_TARGET_TYPE_FIELD_NUMBER:I = 0x2

.field public static final DURATION_MS_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final PHONEACTION_FIELD_NUMBER:I = 0x5

.field public static final REFRESHURL_FIELD_NUMBER:I = 0x6

.field public static final TIME_MS_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;


# instance fields
.field private actionTargetType_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;

.field private action_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionType;

.field private bitField0_:I

.field private durationMs_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private phoneAction_:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

.field private refreshUrl_:Ljava/lang/Object;

.field private timeMs_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10486
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->PARSER:Lcom/google/protobuf/Parser;

    .line 11331
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;-><init>(Z)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->defaultInstance:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    .line 11332
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->defaultInstance:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->initFields()V

    .line 11333
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v0, -0x1

    .line 10411
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 10873
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->memoizedIsInitialized:B

    .line 10909
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->memoizedSerializedSize:I

    .line 10412
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->initFields()V

    .line 10415
    const/4 v0, 0x0

    move v1, v0

    .line 10416
    :goto_0
    if-nez v1, :cond_2

    .line 10417
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 10418
    sparse-switch v0, :sswitch_data_0

    .line 10423
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v4

    :goto_1
    move v1, v0

    .line 10476
    goto :goto_0

    :sswitch_0
    move v0, v4

    .line 10421
    goto :goto_1

    .line 10430
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 10431
    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionType;

    move-result-object v0

    .line 10432
    if-eqz v0, :cond_1

    .line 10433
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->bitField0_:I

    .line 10434
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->action_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionType;

    move v0, v1

    goto :goto_1

    .line 10439
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 10440
    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;

    move-result-object v0

    .line 10441
    if-eqz v0, :cond_1

    .line 10442
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->bitField0_:I

    .line 10443
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->actionTargetType_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;

    move v0, v1

    goto :goto_1

    .line 10448
    :sswitch_3
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->bitField0_:I

    .line 10449
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->durationMs_:I

    move v0, v1

    .line 10450
    goto :goto_1

    .line 10453
    :sswitch_4
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->bitField0_:I

    .line 10454
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->timeMs_:J

    move v0, v1

    .line 10455
    goto :goto_1

    .line 10458
    :sswitch_5
    const/4 v0, 0x0

    .line 10459
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_3

    .line 10460
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->phoneAction_:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->toBuilder()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;

    move-result-object v0

    move-object v2, v0

    .line 10462
    :goto_2
    sget-object v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->phoneAction_:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    .line 10463
    if-eqz v2, :cond_0

    .line 10464
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->phoneAction_:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    invoke-virtual {v2, v0}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;)Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;

    .line 10465
    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->phoneAction_:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    .line 10467
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->bitField0_:I

    move v0, v1

    .line 10468
    goto :goto_1

    .line 10471
    :sswitch_6
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->bitField0_:I

    .line 10472
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->refreshUrl_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    move v0, v1

    goto/16 :goto_1

    .line 10483
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->makeExtensionsImmutable()V

    .line 10485
    return-void

    .line 10477
    :catch_0
    move-exception v0

    .line 10478
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10483
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->makeExtensionsImmutable()V

    throw v0

    .line 10479
    :catch_1
    move-exception v0

    .line 10480
    :try_start_2
    new-instance v1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    move-object v2, v0

    goto :goto_2

    .line 10418
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
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
    .line 10389
    invoke-direct {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 10394
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 10873
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->memoizedIsInitialized:B

    .line 10909
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->memoizedSerializedSize:I

    .line 10396
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/MobileappsExtensions$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10389
    invoke-direct {p0, p1}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 10397
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 10873
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->memoizedIsInitialized:B

    .line 10909
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->memoizedSerializedSize:I

    .line 10397
    return-void
.end method

.method static synthetic access$11902(Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionType;)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionType;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10389
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->action_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionType;

    return-object p1
.end method

.method static synthetic access$12002(Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10389
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->actionTargetType_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;

    return-object p1
.end method

.method static synthetic access$12102(Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10389
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->durationMs_:I

    return p1
.end method

.method static synthetic access$12202(Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10389
    iput-wide p1, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->timeMs_:J

    return-wide p1
.end method

.method static synthetic access$12302(Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;)Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10389
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->phoneAction_:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    return-object p1
.end method

.method static synthetic access$12400(Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 10389
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->refreshUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$12402(Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10389
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->refreshUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$12502(Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10389
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;
    .locals 1

    .prologue
    .line 10401
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->defaultInstance:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    .line 10866
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionType;->API_GET_ACTIVITIES:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->action_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionType;

    .line 10867
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;->SELF:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->actionTargetType_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;

    .line 10868
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->durationMs_:I

    .line 10869
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->timeMs_:J

    .line 10870
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->phoneAction_:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    .line 10871
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->refreshUrl_:Ljava/lang/Object;

    .line 10872
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;
    .locals 1

    .prologue
    .line 11002
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->access$11700()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;
    .locals 1
    .parameter

    .prologue
    .line 11005
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->newBuilder()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10982
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10988
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10952
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10958
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10993
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10999
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10972
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10978
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10962
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10968
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    return-object p0
.end method


# virtual methods
.method public getAction()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionType;
    .locals 1

    .prologue
    .line 10789
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->action_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionType;

    return-object v0
.end method

.method public getActionTargetType()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;
    .locals 1

    .prologue
    .line 10799
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->actionTargetType_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10389
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;
    .locals 1

    .prologue
    .line 10405
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->defaultInstance:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    return-object v0
.end method

.method public getDurationMs()I
    .locals 1

    .prologue
    .line 10809
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->durationMs_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10498
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPhoneAction()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;
    .locals 1

    .prologue
    .line 10829
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->phoneAction_:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    return-object v0
.end method

.method public getRefreshUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 10839
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->refreshUrl_:Ljava/lang/Object;

    .line 10840
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 10841
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 10849
    :goto_0
    return-object v1

    .line 10843
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 10845
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 10846
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10847
    iput-object v2, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->refreshUrl_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 10849
    goto :goto_0
.end method

.method public getRefreshUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 10854
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->refreshUrl_:Ljava/lang/Object;

    .line 10855
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 10856
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10858
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->refreshUrl_:Ljava/lang/Object;

    .line 10861
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

    const/4 v2, 0x1

    .line 10911
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->memoizedSerializedSize:I

    .line 10912
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 10940
    :goto_0
    return v0

    .line 10914
    :cond_0
    const/4 v0, 0x0

    .line 10915
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 10916
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->action_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionType;

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionType;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10919
    :cond_1
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 10920
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->actionTargetType_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;->getNumber()I

    move-result v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10923
    :cond_2
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 10924
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->durationMs_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10927
    :cond_3
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 10928
    iget-wide v1, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->timeMs_:J

    invoke-static {v4, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10931
    :cond_4
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 10932
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->phoneAction_:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10935
    :cond_5
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 10936
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->getRefreshUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10939
    :cond_6
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getTimeMs()J
    .locals 2

    .prologue
    .line 10819
    iget-wide v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->timeMs_:J

    return-wide v0
.end method

.method public hasAction()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 10786
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasActionTargetType()Z
    .locals 2

    .prologue
    .line 10796
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->bitField0_:I

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

.method public hasDurationMs()Z
    .locals 2

    .prologue
    .line 10806
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->bitField0_:I

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

.method public hasPhoneAction()Z
    .locals 2

    .prologue
    .line 10826
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->bitField0_:I

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

.method public hasRefreshUrl()Z
    .locals 2

    .prologue
    .line 10836
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->bitField0_:I

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

.method public hasTimeMs()Z
    .locals 2

    .prologue
    .line 10816
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->bitField0_:I

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
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 10875
    iget-byte v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->memoizedIsInitialized:B

    .line 10876
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 10883
    :goto_0
    return v0

    :cond_0
    move v0, v3

    .line 10876
    goto :goto_0

    .line 10878
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->hasAction()Z

    move-result v0

    if-nez v0, :cond_2

    .line 10879
    iput-byte v3, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->memoizedIsInitialized:B

    move v0, v3

    .line 10880
    goto :goto_0

    .line 10882
    :cond_2
    iput-byte v2, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->memoizedIsInitialized:B

    move v0, v2

    .line 10883
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10389
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->newBuilderForType()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;
    .locals 1

    .prologue
    .line 11003
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->newBuilder()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10389
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->toBuilder()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;
    .locals 1

    .prologue
    .line 11007
    invoke-static {p0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->newBuilder(Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;

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
    .line 10946
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

    .line 10888
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->getSerializedSize()I

    .line 10889
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 10890
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->action_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionType;

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 10892
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 10893
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->actionTargetType_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 10895
    :cond_1
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 10896
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->durationMs_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 10898
    :cond_2
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 10899
    iget-wide v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->timeMs_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 10901
    :cond_3
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 10902
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->phoneAction_:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 10904
    :cond_4
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 10905
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->getRefreshUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 10907
    :cond_5
    return-void
.end method
