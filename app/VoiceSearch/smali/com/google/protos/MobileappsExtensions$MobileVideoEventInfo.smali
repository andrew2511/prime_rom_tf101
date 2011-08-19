.class public final Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MobileVideoEventInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;,
        Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;,
        Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;,
        Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoCategory;,
        Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;
    }
.end annotation


# static fields
.field public static final ACTION_FIELD_NUMBER:I = 0x1

.field public static final AVG_BYTES_PER_SECOND_FIELD_NUMBER:I = 0xa

.field public static final AVG_US_BETWEEN_FRAMES_FIELD_NUMBER:I = 0x9

.field public static final BEARER_FIELD_NUMBER:I = 0x7

.field public static final CATEGORY_FIELD_NUMBER:I = 0x2

.field public static final DURATION_FIELD_NUMBER:I = 0x4

.field public static final ERROR_CODE_FIELD_NUMBER:I = 0x8

.field public static final FORMAT_FIELD_NUMBER:I = 0x6

.field public static final HEAT_MAP_FIELD_NUMBER:I = 0xd

.field public static final NUM_BUFFERING_PAUSES_FIELD_NUMBER:I = 0xb

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final POSITION_FIELD_NUMBER:I = 0x3

.field public static final TOTAL_BUFFERING_MS_FIELD_NUMBER:I = 0xc

.field public static final UPLOAD_ID_FIELD_NUMBER:I = 0x5

.field private static final defaultInstance:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;


# instance fields
.field private action_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

.field private avgBytesPerSecond_:I

.field private avgUsBetweenFrames_:I

.field private bearer_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;

.field private bitField0_:I

.field private category_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoCategory;

.field private duration_:J

.field private errorCode_:I

.field private format_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;

.field private heatMap_:Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private numBufferingPauses_:I

.field private position_:J

.field private totalBufferingMs_:I

.field private uploadId_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 565
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 1721
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;-><init>(Z)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->defaultInstance:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    .line 1722
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->defaultInstance:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->initFields()V

    .line 1723
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

    .line 447
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1040
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->memoizedIsInitialized:B

    .line 1093
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->memoizedSerializedSize:I

    .line 448
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->initFields()V

    .line 451
    const/4 v0, 0x0

    move v1, v0

    .line 452
    :goto_0
    if-nez v1, :cond_1

    .line 453
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 454
    sparse-switch v0, :sswitch_data_0

    .line 459
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v4

    :goto_1
    move v1, v0

    .line 555
    goto :goto_0

    :sswitch_0
    move v0, v4

    .line 457
    goto :goto_1

    .line 466
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 467
    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    move-result-object v0

    .line 468
    if-eqz v0, :cond_3

    .line 469
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    .line 470
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->action_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    move v0, v1

    goto :goto_1

    .line 475
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 476
    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoCategory;->valueOf(I)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoCategory;

    move-result-object v0

    .line 477
    if-eqz v0, :cond_3

    .line 478
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    .line 479
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->category_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoCategory;

    move v0, v1

    goto :goto_1

    .line 484
    :sswitch_3
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    .line 485
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->position_:J

    move v0, v1

    .line 486
    goto :goto_1

    .line 489
    :sswitch_4
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    .line 490
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->duration_:J

    move v0, v1

    .line 491
    goto :goto_1

    .line 494
    :sswitch_5
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    .line 495
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->uploadId_:J

    move v0, v1

    .line 496
    goto :goto_1

    .line 499
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 500
    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;->valueOf(I)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;

    move-result-object v0

    .line 501
    if-eqz v0, :cond_3

    .line 502
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    .line 503
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->format_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;

    move v0, v1

    goto :goto_1

    .line 508
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 509
    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;

    move-result-object v0

    .line 510
    if-eqz v0, :cond_3

    .line 511
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    .line 512
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bearer_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;

    move v0, v1

    goto :goto_1

    .line 517
    :sswitch_8
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    .line 518
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->errorCode_:I

    move v0, v1

    .line 519
    goto/16 :goto_1

    .line 522
    :sswitch_9
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    .line 523
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->avgUsBetweenFrames_:I

    move v0, v1

    .line 524
    goto/16 :goto_1

    .line 527
    :sswitch_a
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    .line 528
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->avgBytesPerSecond_:I

    move v0, v1

    .line 529
    goto/16 :goto_1

    .line 532
    :sswitch_b
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    .line 533
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->numBufferingPauses_:I

    move v0, v1

    .line 534
    goto/16 :goto_1

    .line 537
    :sswitch_c
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    .line 538
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->totalBufferingMs_:I

    move v0, v1

    .line 539
    goto/16 :goto_1

    .line 542
    :sswitch_d
    const/4 v0, 0x0

    .line 543
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    and-int/lit16 v2, v2, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_2

    .line 544
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->heatMap_:Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->toBuilder()Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap$Builder;

    move-result-object v0

    move-object v2, v0

    .line 546
    :goto_2
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->heatMap_:Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

    .line 547
    if-eqz v2, :cond_0

    .line 548
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->heatMap_:Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

    invoke-virtual {v2, v0}, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;)Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap$Builder;

    .line 549
    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->heatMap_:Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

    .line 551
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    .line 552
    goto/16 :goto_1

    .line 562
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->makeExtensionsImmutable()V

    .line 564
    return-void

    .line 556
    :catch_0
    move-exception v0

    .line 557
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 562
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->makeExtensionsImmutable()V

    throw v0

    .line 558
    :catch_1
    move-exception v0

    .line 559
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

    :cond_2
    move-object v2, v0

    goto :goto_2

    :cond_3
    move v0, v1

    goto/16 :goto_1

    .line 454
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x6a -> :sswitch_d
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
    .line 425
    invoke-direct {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 430
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1040
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->memoizedIsInitialized:B

    .line 1093
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->memoizedSerializedSize:I

    .line 432
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/MobileappsExtensions$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 425
    invoke-direct {p0, p1}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 433
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1040
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->memoizedIsInitialized:B

    .line 1093
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->memoizedSerializedSize:I

    .line 433
    return-void
.end method

.method static synthetic access$1002(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoCategory;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoCategory;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->category_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoCategory;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 425
    iput-wide p1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->position_:J

    return-wide p1
.end method

.method static synthetic access$1202(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 425
    iput-wide p1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->duration_:J

    return-wide p1
.end method

.method static synthetic access$1302(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 425
    iput-wide p1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->uploadId_:J

    return-wide p1
.end method

.method static synthetic access$1402(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->format_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bearer_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 425
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->errorCode_:I

    return p1
.end method

.method static synthetic access$1702(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 425
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->avgUsBetweenFrames_:I

    return p1
.end method

.method static synthetic access$1802(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 425
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->avgBytesPerSecond_:I

    return p1
.end method

.method static synthetic access$1902(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 425
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->numBufferingPauses_:I

    return p1
.end method

.method static synthetic access$2002(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 425
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->totalBufferingMs_:I

    return p1
.end method

.method static synthetic access$2102(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;)Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->heatMap_:Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 425
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    return p1
.end method

.method static synthetic access$902(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->action_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;
    .locals 1

    .prologue
    .line 437
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->defaultInstance:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    return-object v0
.end method

.method private initFields()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 1026
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->PLAY_SELECTED:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->action_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    .line 1027
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoCategory;->SEARCH_RESULTS:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoCategory;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->category_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoCategory;

    .line 1028
    iput-wide v2, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->position_:J

    .line 1029
    iput-wide v2, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->duration_:J

    .line 1030
    iput-wide v2, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->uploadId_:J

    .line 1031
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;->MP4_80:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->format_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;

    .line 1032
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;->MOBILE_NETWORK:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bearer_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;

    .line 1033
    iput v1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->errorCode_:I

    .line 1034
    iput v1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->avgUsBetweenFrames_:I

    .line 1035
    iput v1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->avgBytesPerSecond_:I

    .line 1036
    iput v1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->numBufferingPauses_:I

    .line 1037
    iput v1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->totalBufferingMs_:I

    .line 1038
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->heatMap_:Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

    .line 1039
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;
    .locals 1

    .prologue
    .line 1214
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->access$700()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1217
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1194
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1200
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1164
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1170
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1205
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1211
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1184
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1190
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1174
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1180
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    return-object p0
.end method


# virtual methods
.method public getAction()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;
    .locals 1

    .prologue
    .line 902
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->action_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    return-object v0
.end method

.method public getAvgBytesPerSecond()I
    .locals 1

    .prologue
    .line 992
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->avgBytesPerSecond_:I

    return v0
.end method

.method public getAvgUsBetweenFrames()I
    .locals 1

    .prologue
    .line 982
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->avgUsBetweenFrames_:I

    return v0
.end method

.method public getBearer()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;
    .locals 1

    .prologue
    .line 962
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bearer_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;

    return-object v0
.end method

.method public getCategory()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoCategory;
    .locals 1

    .prologue
    .line 912
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->category_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoCategory;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;
    .locals 1

    .prologue
    .line 441
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->defaultInstance:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 932
    iget-wide v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->duration_:J

    return-wide v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 972
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->errorCode_:I

    return v0
.end method

.method public getFormat()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;
    .locals 1

    .prologue
    .line 952
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->format_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;

    return-object v0
.end method

.method public getHeatMap()Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->heatMap_:Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

    return-object v0
.end method

.method public getNumBufferingPauses()I
    .locals 1

    .prologue
    .line 1002
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->numBufferingPauses_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 577
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPosition()J
    .locals 2

    .prologue
    .line 922
    iget-wide v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->position_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1095
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->memoizedSerializedSize:I

    .line 1096
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1152
    :goto_0
    return v0

    .line 1098
    :cond_0
    const/4 v0, 0x0

    .line 1099
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 1100
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->action_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1103
    :cond_1
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 1104
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->category_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoCategory;

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoCategory;->getNumber()I

    move-result v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1107
    :cond_2
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 1108
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->position_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1111
    :cond_3
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_4

    .line 1112
    iget-wide v1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->duration_:J

    invoke-static {v4, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1115
    :cond_4
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 1116
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->uploadId_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1119
    :cond_5
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 1120
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->format_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;

    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1123
    :cond_6
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    .line 1124
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bearer_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;

    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1127
    :cond_7
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    .line 1128
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->errorCode_:I

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1131
    :cond_8
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_9

    .line 1132
    const/16 v1, 0x9

    iget v2, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->avgUsBetweenFrames_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1135
    :cond_9
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_a

    .line 1136
    const/16 v1, 0xa

    iget v2, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->avgBytesPerSecond_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1139
    :cond_a
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_b

    .line 1140
    const/16 v1, 0xb

    iget v2, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->numBufferingPauses_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1143
    :cond_b
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_c

    .line 1144
    const/16 v1, 0xc

    iget v2, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->totalBufferingMs_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1147
    :cond_c
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_d

    .line 1148
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->heatMap_:Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1151
    :cond_d
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->memoizedSerializedSize:I

    goto/16 :goto_0
.end method

.method public getTotalBufferingMs()I
    .locals 1

    .prologue
    .line 1012
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->totalBufferingMs_:I

    return v0
.end method

.method public getUploadId()J
    .locals 2

    .prologue
    .line 942
    iget-wide v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->uploadId_:J

    return-wide v0
.end method

.method public hasAction()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 899
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAvgBytesPerSecond()Z
    .locals 2

    .prologue
    .line 989
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAvgUsBetweenFrames()Z
    .locals 2

    .prologue
    .line 979
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBearer()Z
    .locals 2

    .prologue
    .line 959
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCategory()Z
    .locals 2

    .prologue
    .line 909
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

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

.method public hasDuration()Z
    .locals 2

    .prologue
    .line 929
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

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

.method public hasErrorCode()Z
    .locals 2

    .prologue
    .line 969
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFormat()Z
    .locals 2

    .prologue
    .line 949
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

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

.method public hasHeatMap()Z
    .locals 2

    .prologue
    .line 1019
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNumBufferingPauses()Z
    .locals 2

    .prologue
    .line 999
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

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
    .line 919
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

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

.method public hasTotalBufferingMs()Z
    .locals 2

    .prologue
    .line 1009
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUploadId()Z
    .locals 2

    .prologue
    .line 939
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

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
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1042
    iget-byte v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->memoizedIsInitialized:B

    .line 1043
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 1046
    :goto_0
    return v0

    .line 1043
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1045
    :cond_1
    iput-byte v2, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->memoizedIsInitialized:B

    move v0, v2

    .line 1046
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->newBuilderForType()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;
    .locals 1

    .prologue
    .line 1215
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->toBuilder()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;
    .locals 1

    .prologue
    .line 1219
    invoke-static {p0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->newBuilder(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;

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
    .line 1158
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
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1051
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->getSerializedSize()I

    .line 1052
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->action_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1055
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 1056
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->category_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoCategory;

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoCategory;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1058
    :cond_1
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 1059
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->position_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1061
    :cond_2
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 1062
    iget-wide v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->duration_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1064
    :cond_3
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 1065
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->uploadId_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1067
    :cond_4
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 1068
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->format_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1070
    :cond_5
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 1071
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bearer_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1073
    :cond_6
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 1074
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->errorCode_:I

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1076
    :cond_7
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 1077
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->avgUsBetweenFrames_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1079
    :cond_8
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    .line 1080
    const/16 v0, 0xa

    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->avgBytesPerSecond_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1082
    :cond_9
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    .line 1083
    const/16 v0, 0xb

    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->numBufferingPauses_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1085
    :cond_a
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_b

    .line 1086
    const/16 v0, 0xc

    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->totalBufferingMs_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1088
    :cond_b
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_c

    .line 1089
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->heatMap_:Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1091
    :cond_c
    return-void
.end method
