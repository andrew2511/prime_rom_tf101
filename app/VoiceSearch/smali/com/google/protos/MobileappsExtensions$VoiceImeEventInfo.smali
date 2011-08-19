.class public final Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VoiceImeEventInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;,
        Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;,
        Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;,
        Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;,
        Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;
    }
.end annotation


# static fields
.field public static final ACTION_FIELD_NUMBER:I = 0x1

.field public static final APP_IDENTITY_TYPE_FIELD_NUMBER:I = 0xc

.field public static final DIALOG_TYPE_FIELD_NUMBER:I = 0x2

.field public static final ERROR_TYPE_FIELD_NUMBER:I = 0x3

.field public static final INDEX_FIELD_NUMBER:I = 0x9

.field public static final INPUT_LANGUAGE_FIELD_NUMBER:I = 0xb

.field public static final INPUT_LENGTH_FIELD_NUMBER:I = 0x8

.field public static final INPUT_SELECTION_BEGIN_FIELD_NUMBER:I = 0x6

.field public static final INPUT_SELECTION_END_FIELD_NUMBER:I = 0x7

.field public static final N_BEST_CHOOSE_AFTER_VALUE_FIELD_NUMBER:I = 0xe

.field public static final N_BEST_CHOOSE_BEFORE_VALUE_FIELD_NUMBER:I = 0xd

.field public static final N_BEST_CHOOSE_REPLACED_PHRASE_LENGTH_FIELD_NUMBER:I = 0xf

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final SESSION_ID_REQUEST_ID_FIELD_NUMBER:I = 0x4

.field public static final TEXT_MODIFICATION_ACTION_TYPE_FIELD_NUMBER:I = 0x5

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0xa

.field private static final defaultInstance:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;


# instance fields
.field private action_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

.field private appIdentityType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

.field private bitField0_:I

.field private dialogType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

.field private errorType_:I

.field private index_:I

.field private inputLanguage_:Ljava/lang/Object;

.field private inputLength_:I

.field private inputSelectionBegin_:I

.field private inputSelectionEnd_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private nBestChooseAfterValue_:Ljava/lang/Object;

.field private nBestChooseBeforeValue_:Ljava/lang/Object;

.field private nBestChooseReplacedPhraseLength_:I

.field private sessionIdRequestId_:Ljava/lang/Object;

.field private textModificationActionType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11551
    new-instance v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 12931
    new-instance v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;-><init>(Z)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->defaultInstance:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    .line 12932
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->defaultInstance:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->initFields()V

    .line 12933
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

    .line 11431
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 12062
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->memoizedIsInitialized:B

    .line 12121
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->memoizedSerializedSize:I

    .line 11432
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->initFields()V

    .line 11435
    const/4 v0, 0x0

    .line 11436
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 11437
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 11438
    sparse-switch v1, :sswitch_data_0

    .line 11443
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v3

    .line 11445
    goto :goto_0

    :sswitch_0
    move v0, v3

    .line 11441
    goto :goto_0

    .line 11450
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v1

    .line 11451
    invoke-static {v1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    move-result-object v1

    .line 11452
    if-eqz v1, :cond_0

    .line 11453
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    .line 11454
    iput-object v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->action_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 11542
    :catch_0
    move-exception v0

    .line 11543
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11548
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->makeExtensionsImmutable()V

    throw v0

    .line 11459
    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v1

    .line 11460
    invoke-static {v1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    move-result-object v1

    .line 11461
    if-eqz v1, :cond_0

    .line 11462
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    .line 11463
    iput-object v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->dialogType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 11544
    :catch_1
    move-exception v0

    .line 11545
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

    .line 11468
    :sswitch_3
    :try_start_4
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    .line 11469
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->errorType_:I

    goto :goto_0

    .line 11473
    :sswitch_4
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    .line 11474
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->sessionIdRequestId_:Ljava/lang/Object;

    goto :goto_0

    .line 11478
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v1

    .line 11479
    invoke-static {v1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    move-result-object v1

    .line 11480
    if-eqz v1, :cond_0

    .line 11481
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    .line 11482
    iput-object v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->textModificationActionType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    goto :goto_0

    .line 11487
    :sswitch_6
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    .line 11488
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputSelectionBegin_:I

    goto/16 :goto_0

    .line 11492
    :sswitch_7
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    .line 11493
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputSelectionEnd_:I

    goto/16 :goto_0

    .line 11497
    :sswitch_8
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    .line 11498
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputLength_:I

    goto/16 :goto_0

    .line 11502
    :sswitch_9
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    .line 11503
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->index_:I

    goto/16 :goto_0

    .line 11507
    :sswitch_a
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    .line 11508
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->timestamp_:J

    goto/16 :goto_0

    .line 11512
    :sswitch_b
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    .line 11513
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputLanguage_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 11517
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v1

    .line 11518
    invoke-static {v1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    move-result-object v1

    .line 11519
    if-eqz v1, :cond_0

    .line 11520
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    or-int/lit16 v2, v2, 0x800

    iput v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    .line 11521
    iput-object v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->appIdentityType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    goto/16 :goto_0

    .line 11526
    :sswitch_d
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    .line 11527
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->nBestChooseBeforeValue_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 11531
    :sswitch_e
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    .line 11532
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->nBestChooseAfterValue_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 11536
    :sswitch_f
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    .line 11537
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->nBestChooseReplacedPhraseLength_:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 11548
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->makeExtensionsImmutable()V

    .line 11550
    return-void

    .line 11438
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x78 -> :sswitch_f
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
    .line 11409
    invoke-direct {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 11414
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 12062
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->memoizedIsInitialized:B

    .line 12121
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->memoizedSerializedSize:I

    .line 11416
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/MobileappsExtensions$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11409
    invoke-direct {p0, p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 11417
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 12062
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->memoizedIsInitialized:B

    .line 12121
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->memoizedSerializedSize:I

    .line 11417
    return-void
.end method

.method static synthetic access$12902(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11409
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->action_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    return-object p1
.end method

.method static synthetic access$13002(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11409
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->dialogType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    return-object p1
.end method

.method static synthetic access$13102(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11409
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->errorType_:I

    return p1
.end method

.method static synthetic access$13200(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 11409
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->sessionIdRequestId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$13202(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11409
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->sessionIdRequestId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$13302(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11409
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->textModificationActionType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    return-object p1
.end method

.method static synthetic access$13402(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11409
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputSelectionBegin_:I

    return p1
.end method

.method static synthetic access$13502(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11409
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputSelectionEnd_:I

    return p1
.end method

.method static synthetic access$13602(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11409
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputLength_:I

    return p1
.end method

.method static synthetic access$13702(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11409
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->index_:I

    return p1
.end method

.method static synthetic access$13802(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11409
    iput-wide p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$13900(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 11409
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputLanguage_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$13902(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11409
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputLanguage_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$14002(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11409
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->appIdentityType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    return-object p1
.end method

.method static synthetic access$14100(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 11409
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->nBestChooseBeforeValue_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$14102(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11409
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->nBestChooseBeforeValue_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$14200(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 11409
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->nBestChooseAfterValue_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$14202(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11409
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->nBestChooseAfterValue_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$14302(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11409
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->nBestChooseReplacedPhraseLength_:I

    return p1
.end method

.method static synthetic access$14402(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11409
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;
    .locals 1

    .prologue
    .line 11421
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->defaultInstance:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    return-object v0
.end method

.method private initFields()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 12046
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->DIALOG_SHOWN:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->action_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    .line 12047
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;->VOICE_WARNING_KEYBOARD:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->dialogType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    .line 12048
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->errorType_:I

    .line 12049
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->sessionIdRequestId_:Ljava/lang/Object;

    .line 12050
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;->VOICE_INSERTION:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->textModificationActionType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    .line 12051
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputSelectionBegin_:I

    .line 12052
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputSelectionEnd_:I

    .line 12053
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputLength_:I

    .line 12054
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->index_:I

    .line 12055
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->timestamp_:J

    .line 12056
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputLanguage_:Ljava/lang/Object;

    .line 12057
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;->UNKNOWN_APP:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->appIdentityType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    .line 12058
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->nBestChooseBeforeValue_:Ljava/lang/Object;

    .line 12059
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->nBestChooseAfterValue_:Ljava/lang/Object;

    .line 12060
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->nBestChooseReplacedPhraseLength_:I

    .line 12061
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1

    .prologue
    .line 12250
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->access$12700()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 12253
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12230
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12236
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12200
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12206
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12241
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12247
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12220
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12226
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12210
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12216
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    return-object p0
.end method


# virtual methods
.method public getAction()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;
    .locals 1

    .prologue
    .line 11810
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->action_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    return-object v0
.end method

.method public getAppIdentityType()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;
    .locals 1

    .prologue
    .line 11966
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->appIdentityType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11409
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;
    .locals 1

    .prologue
    .line 11425
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->defaultInstance:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    return-object v0
.end method

.method public getDialogType()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;
    .locals 1

    .prologue
    .line 11820
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->dialogType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    return-object v0
.end method

.method public getErrorType()I
    .locals 1

    .prologue
    .line 11830
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->errorType_:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 11913
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->index_:I

    return v0
.end method

.method public getInputLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 11933
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputLanguage_:Ljava/lang/Object;

    .line 11934
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 11935
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 11943
    :goto_0
    return-object v1

    .line 11937
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 11939
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 11940
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11941
    iput-object v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputLanguage_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 11943
    goto :goto_0
.end method

.method public getInputLanguageBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 11948
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputLanguage_:Ljava/lang/Object;

    .line 11949
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11950
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11952
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputLanguage_:Ljava/lang/Object;

    .line 11955
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getInputLength()I
    .locals 1

    .prologue
    .line 11903
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputLength_:I

    return v0
.end method

.method public getInputSelectionBegin()I
    .locals 1

    .prologue
    .line 11883
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputSelectionBegin_:I

    return v0
.end method

.method public getInputSelectionEnd()I
    .locals 1

    .prologue
    .line 11893
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputSelectionEnd_:I

    return v0
.end method

.method public getNBestChooseAfterValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 12009
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->nBestChooseAfterValue_:Ljava/lang/Object;

    .line 12010
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 12011
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 12019
    :goto_0
    return-object v1

    .line 12013
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 12015
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 12016
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12017
    iput-object v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->nBestChooseAfterValue_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 12019
    goto :goto_0
.end method

.method public getNBestChooseAfterValueBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 12024
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->nBestChooseAfterValue_:Ljava/lang/Object;

    .line 12025
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12026
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 12028
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->nBestChooseAfterValue_:Ljava/lang/Object;

    .line 12031
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getNBestChooseBeforeValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 11976
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->nBestChooseBeforeValue_:Ljava/lang/Object;

    .line 11977
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 11978
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 11986
    :goto_0
    return-object v1

    .line 11980
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 11982
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 11983
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11984
    iput-object v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->nBestChooseBeforeValue_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 11986
    goto :goto_0
.end method

.method public getNBestChooseBeforeValueBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 11991
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->nBestChooseBeforeValue_:Ljava/lang/Object;

    .line 11992
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11993
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11995
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->nBestChooseBeforeValue_:Ljava/lang/Object;

    .line 11998
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getNBestChooseReplacedPhraseLength()I
    .locals 1

    .prologue
    .line 12042
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->nBestChooseReplacedPhraseLength_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11563
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 12123
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->memoizedSerializedSize:I

    .line 12124
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 12188
    :goto_0
    return v0

    .line 12126
    :cond_0
    const/4 v0, 0x0

    .line 12127
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 12128
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->action_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12131
    :cond_1
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 12132
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->dialogType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;->getNumber()I

    move-result v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12135
    :cond_2
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 12136
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->errorType_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12139
    :cond_3
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_4

    .line 12140
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getSessionIdRequestIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12143
    :cond_4
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 12144
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->textModificationActionType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12147
    :cond_5
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 12148
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputSelectionBegin_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12151
    :cond_6
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    .line 12152
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputSelectionEnd_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12155
    :cond_7
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    .line 12156
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputLength_:I

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12159
    :cond_8
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_9

    .line 12160
    const/16 v1, 0x9

    iget v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->index_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12163
    :cond_9
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_a

    .line 12164
    const/16 v1, 0xa

    iget-wide v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->timestamp_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12167
    :cond_a
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_b

    .line 12168
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getInputLanguageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12171
    :cond_b
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_c

    .line 12172
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->appIdentityType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12175
    :cond_c
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_d

    .line 12176
    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getNBestChooseBeforeValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12179
    :cond_d
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x2000

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_e

    .line 12180
    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getNBestChooseAfterValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12183
    :cond_e
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_f

    .line 12184
    const/16 v1, 0xf

    iget v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->nBestChooseReplacedPhraseLength_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12187
    :cond_f
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->memoizedSerializedSize:I

    goto/16 :goto_0
.end method

.method public getSessionIdRequestId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 11840
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->sessionIdRequestId_:Ljava/lang/Object;

    .line 11841
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 11842
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 11850
    :goto_0
    return-object v1

    .line 11844
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 11846
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 11847
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11848
    iput-object v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->sessionIdRequestId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 11850
    goto :goto_0
.end method

.method public getSessionIdRequestIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 11855
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->sessionIdRequestId_:Ljava/lang/Object;

    .line 11856
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11857
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11859
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->sessionIdRequestId_:Ljava/lang/Object;

    .line 11862
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getTextModificationActionType()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;
    .locals 1

    .prologue
    .line 11873
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->textModificationActionType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 11923
    iget-wide v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->timestamp_:J

    return-wide v0
.end method

.method public hasAction()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 11807
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAppIdentityType()Z
    .locals 2

    .prologue
    .line 11963
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

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

.method public hasDialogType()Z
    .locals 2

    .prologue
    .line 11817
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

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

.method public hasErrorType()Z
    .locals 2

    .prologue
    .line 11827
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

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

.method public hasIndex()Z
    .locals 2

    .prologue
    .line 11910
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

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

.method public hasInputLanguage()Z
    .locals 2

    .prologue
    .line 11930
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

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

.method public hasInputLength()Z
    .locals 2

    .prologue
    .line 11900
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

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

.method public hasInputSelectionBegin()Z
    .locals 2

    .prologue
    .line 11880
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

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

.method public hasInputSelectionEnd()Z
    .locals 2

    .prologue
    .line 11890
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

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

.method public hasNBestChooseAfterValue()Z
    .locals 2

    .prologue
    .line 12006
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNBestChooseBeforeValue()Z
    .locals 2

    .prologue
    .line 11973
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

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

.method public hasNBestChooseReplacedPhraseLength()Z
    .locals 2

    .prologue
    .line 12039
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSessionIdRequestId()Z
    .locals 2

    .prologue
    .line 11837
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

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

.method public hasTextModificationActionType()Z
    .locals 2

    .prologue
    .line 11870
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

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

.method public hasTimestamp()Z
    .locals 2

    .prologue
    .line 11920
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 12064
    iget-byte v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->memoizedIsInitialized:B

    .line 12065
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 12068
    :goto_0
    return v0

    .line 12065
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 12067
    :cond_1
    iput-byte v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->memoizedIsInitialized:B

    move v0, v2

    .line 12068
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11409
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->newBuilderForType()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1

    .prologue
    .line 12251
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11409
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->toBuilder()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1

    .prologue
    .line 12255
    invoke-static {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->newBuilder(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

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
    .line 12194
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

    .line 12073
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getSerializedSize()I

    .line 12074
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 12075
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->action_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 12077
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 12078
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->dialogType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 12080
    :cond_1
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 12081
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->errorType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 12083
    :cond_2
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 12084
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getSessionIdRequestIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 12086
    :cond_3
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 12087
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->textModificationActionType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 12089
    :cond_4
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 12090
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputSelectionBegin_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 12092
    :cond_5
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 12093
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputSelectionEnd_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 12095
    :cond_6
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 12096
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputLength_:I

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 12098
    :cond_7
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 12099
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->index_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 12101
    :cond_8
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    .line 12102
    const/16 v0, 0xa

    iget-wide v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->timestamp_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 12104
    :cond_9
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    .line 12105
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getInputLanguageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 12107
    :cond_a
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_b

    .line 12108
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->appIdentityType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 12110
    :cond_b
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_c

    .line 12111
    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getNBestChooseBeforeValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 12113
    :cond_c
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_d

    .line 12114
    const/16 v0, 0xe

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getNBestChooseAfterValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 12116
    :cond_d
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_e

    .line 12117
    const/16 v0, 0xf

    iget v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->nBestChooseReplacedPhraseLength_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 12119
    :cond_e
    return-void
.end method
