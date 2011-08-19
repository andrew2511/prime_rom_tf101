.class public final Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;",
        "Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;",
        ">;",
        "Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfoOrBuilder;"
    }
.end annotation


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

.field private nBestChooseAfterValue_:Ljava/lang/Object;

.field private nBestChooseBeforeValue_:Ljava/lang/Object;

.field private nBestChooseReplacedPhraseLength_:I

.field private sessionIdRequestId_:Ljava/lang/Object;

.field private textModificationActionType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

.field private timestamp_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12262
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 12473
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->DIALOG_SHOWN:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->action_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    .line 12497
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;->VOICE_WARNING_KEYBOARD:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->dialogType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    .line 12542
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->sessionIdRequestId_:Ljava/lang/Object;

    .line 12595
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;->VOICE_INSERTION:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->textModificationActionType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    .line 12724
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->inputLanguage_:Ljava/lang/Object;

    .line 12777
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;->UNKNOWN_APP:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->appIdentityType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    .line 12801
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->nBestChooseBeforeValue_:Ljava/lang/Object;

    .line 12854
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->nBestChooseAfterValue_:Ljava/lang/Object;

    .line 12263
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->maybeForceBuilderInitialization()V

    .line 12264
    return-void
.end method

.method static synthetic access$12700()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1

    .prologue
    .line 12257
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->create()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1

    .prologue
    .line 12269
    new-instance v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 12267
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12257
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->build()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;
    .locals 2

    .prologue
    .line 12316
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    move-result-object v0

    .line 12317
    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 12318
    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 12320
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12257
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;
    .locals 5

    .prologue
    .line 12324
    new-instance v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/MobileappsExtensions$1;)V

    .line 12325
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12326
    const/4 v2, 0x0

    .line 12327
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 12328
    or-int/lit8 v2, v2, 0x1

    .line 12330
    :cond_0
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->action_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->access$12902(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    .line 12331
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 12332
    or-int/lit8 v2, v2, 0x2

    .line 12334
    :cond_1
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->dialogType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->access$13002(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    .line 12335
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 12336
    or-int/lit8 v2, v2, 0x4

    .line 12338
    :cond_2
    iget v3, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->errorType_:I

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->access$13102(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;I)I

    .line 12339
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 12340
    or-int/lit8 v2, v2, 0x8

    .line 12342
    :cond_3
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->sessionIdRequestId_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->access$13202(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12343
    and-int/lit8 v3, v1, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 12344
    or-int/lit8 v2, v2, 0x10

    .line 12346
    :cond_4
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->textModificationActionType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->access$13302(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    .line 12347
    and-int/lit8 v3, v1, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 12348
    or-int/lit8 v2, v2, 0x20

    .line 12350
    :cond_5
    iget v3, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->inputSelectionBegin_:I

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->access$13402(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;I)I

    .line 12351
    and-int/lit8 v3, v1, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 12352
    or-int/lit8 v2, v2, 0x40

    .line 12354
    :cond_6
    iget v3, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->inputSelectionEnd_:I

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->access$13502(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;I)I

    .line 12355
    and-int/lit16 v3, v1, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 12356
    or-int/lit16 v2, v2, 0x80

    .line 12358
    :cond_7
    iget v3, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->inputLength_:I

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->access$13602(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;I)I

    .line 12359
    and-int/lit16 v3, v1, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 12360
    or-int/lit16 v2, v2, 0x100

    .line 12362
    :cond_8
    iget v3, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->index_:I

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->access$13702(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;I)I

    .line 12363
    and-int/lit16 v3, v1, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 12364
    or-int/lit16 v2, v2, 0x200

    .line 12366
    :cond_9
    iget-wide v3, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->timestamp_:J

    invoke-static {v0, v3, v4}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->access$13802(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;J)J

    .line 12367
    and-int/lit16 v3, v1, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 12368
    or-int/lit16 v2, v2, 0x400

    .line 12370
    :cond_a
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->inputLanguage_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->access$13902(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12371
    and-int/lit16 v3, v1, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    .line 12372
    or-int/lit16 v2, v2, 0x800

    .line 12374
    :cond_b
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->appIdentityType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->access$14002(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    .line 12375
    and-int/lit16 v3, v1, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_c

    .line 12376
    or-int/lit16 v2, v2, 0x1000

    .line 12378
    :cond_c
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->nBestChooseBeforeValue_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->access$14102(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12379
    and-int/lit16 v3, v1, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_d

    .line 12380
    or-int/lit16 v2, v2, 0x2000

    .line 12382
    :cond_d
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->nBestChooseAfterValue_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->access$14202(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12383
    and-int/lit16 v1, v1, 0x4000

    const/16 v3, 0x4000

    if-ne v1, v3, :cond_e

    .line 12384
    or-int/lit16 v1, v2, 0x4000

    .line 12386
    :goto_0
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->nBestChooseReplacedPhraseLength_:I

    invoke-static {v0, v2}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->access$14302(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;I)I

    .line 12387
    invoke-static {v0, v1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->access$14402(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;I)I

    .line 12388
    return-object v0

    :cond_e
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 12257
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->clear()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 12257
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->clear()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 12273
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 12274
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->DIALOG_SHOWN:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->action_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    .line 12275
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12276
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;->VOICE_WARNING_KEYBOARD:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->dialogType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    .line 12277
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12278
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->errorType_:I

    .line 12279
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12280
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->sessionIdRequestId_:Ljava/lang/Object;

    .line 12281
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12282
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;->VOICE_INSERTION:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->textModificationActionType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    .line 12283
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12284
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->inputSelectionBegin_:I

    .line 12285
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12286
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->inputSelectionEnd_:I

    .line 12287
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12288
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->inputLength_:I

    .line 12289
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12290
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->index_:I

    .line 12291
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12292
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->timestamp_:J

    .line 12293
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12294
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->inputLanguage_:Ljava/lang/Object;

    .line 12295
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12296
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;->UNKNOWN_APP:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->appIdentityType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    .line 12297
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12298
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->nBestChooseBeforeValue_:Ljava/lang/Object;

    .line 12299
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12300
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->nBestChooseAfterValue_:Ljava/lang/Object;

    .line 12301
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12302
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->nBestChooseReplacedPhraseLength_:I

    .line 12303
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12304
    return-object p0
.end method

.method public clearAction()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1

    .prologue
    .line 12490
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12491
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->DIALOG_SHOWN:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->action_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    .line 12493
    return-object p0
.end method

.method public clearAppIdentityType()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1

    .prologue
    .line 12794
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12795
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;->UNKNOWN_APP:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->appIdentityType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    .line 12797
    return-object p0
.end method

.method public clearDialogType()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1

    .prologue
    .line 12514
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12515
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;->VOICE_WARNING_KEYBOARD:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->dialogType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    .line 12517
    return-object p0
.end method

.method public clearErrorType()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1

    .prologue
    .line 12535
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12536
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->errorType_:I

    .line 12538
    return-object p0
.end method

.method public clearIndex()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1

    .prologue
    .line 12696
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12697
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->index_:I

    .line 12699
    return-object p0
.end method

.method public clearInputLanguage()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1

    .prologue
    .line 12760
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12761
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getInputLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->inputLanguage_:Ljava/lang/Object;

    .line 12763
    return-object p0
.end method

.method public clearInputLength()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1

    .prologue
    .line 12675
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12676
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->inputLength_:I

    .line 12678
    return-object p0
.end method

.method public clearInputSelectionBegin()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1

    .prologue
    .line 12633
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12634
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->inputSelectionBegin_:I

    .line 12636
    return-object p0
.end method

.method public clearInputSelectionEnd()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1

    .prologue
    .line 12654
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12655
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->inputSelectionEnd_:I

    .line 12657
    return-object p0
.end method

.method public clearNBestChooseAfterValue()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1

    .prologue
    .line 12890
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12891
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getNBestChooseAfterValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->nBestChooseAfterValue_:Ljava/lang/Object;

    .line 12893
    return-object p0
.end method

.method public clearNBestChooseBeforeValue()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1

    .prologue
    .line 12837
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12838
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getNBestChooseBeforeValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->nBestChooseBeforeValue_:Ljava/lang/Object;

    .line 12840
    return-object p0
.end method

.method public clearNBestChooseReplacedPhraseLength()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1

    .prologue
    .line 12921
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12922
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->nBestChooseReplacedPhraseLength_:I

    .line 12924
    return-object p0
.end method

.method public clearSessionIdRequestId()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1

    .prologue
    .line 12578
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12579
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getSessionIdRequestId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->sessionIdRequestId_:Ljava/lang/Object;

    .line 12581
    return-object p0
.end method

.method public clearTextModificationActionType()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1

    .prologue
    .line 12612
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12613
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;->VOICE_INSERTION:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->textModificationActionType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    .line 12615
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 2

    .prologue
    .line 12717
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12718
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->timestamp_:J

    .line 12720
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 12257
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->clone()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 12257
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->clone()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 12257
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->clone()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 2

    .prologue
    .line 12308
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->create()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 12257
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->clone()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAction()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;
    .locals 1

    .prologue
    .line 12478
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->action_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    return-object v0
.end method

.method public getAppIdentityType()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;
    .locals 1

    .prologue
    .line 12782
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->appIdentityType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 12257
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12257
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;
    .locals 1

    .prologue
    .line 12312
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDialogType()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;
    .locals 1

    .prologue
    .line 12502
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->dialogType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    return-object v0
.end method

.method public getErrorType()I
    .locals 1

    .prologue
    .line 12526
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->errorType_:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 12687
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->index_:I

    return v0
.end method

.method public getInputLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 12729
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->inputLanguage_:Ljava/lang/Object;

    .line 12730
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 12731
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 12732
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->inputLanguage_:Ljava/lang/Object;

    .line 12735
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getInputLanguageBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 12740
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->inputLanguage_:Ljava/lang/Object;

    .line 12741
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12742
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 12744
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->inputLanguage_:Ljava/lang/Object;

    .line 12747
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getInputLength()I
    .locals 1

    .prologue
    .line 12666
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->inputLength_:I

    return v0
.end method

.method public getInputSelectionBegin()I
    .locals 1

    .prologue
    .line 12624
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->inputSelectionBegin_:I

    return v0
.end method

.method public getInputSelectionEnd()I
    .locals 1

    .prologue
    .line 12645
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->inputSelectionEnd_:I

    return v0
.end method

.method public getNBestChooseAfterValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 12859
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->nBestChooseAfterValue_:Ljava/lang/Object;

    .line 12860
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 12861
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 12862
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->nBestChooseAfterValue_:Ljava/lang/Object;

    .line 12865
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getNBestChooseAfterValueBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 12870
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->nBestChooseAfterValue_:Ljava/lang/Object;

    .line 12871
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12872
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 12874
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->nBestChooseAfterValue_:Ljava/lang/Object;

    .line 12877
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getNBestChooseBeforeValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 12806
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->nBestChooseBeforeValue_:Ljava/lang/Object;

    .line 12807
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 12808
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 12809
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->nBestChooseBeforeValue_:Ljava/lang/Object;

    .line 12812
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getNBestChooseBeforeValueBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 12817
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->nBestChooseBeforeValue_:Ljava/lang/Object;

    .line 12818
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12819
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 12821
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->nBestChooseBeforeValue_:Ljava/lang/Object;

    .line 12824
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getNBestChooseReplacedPhraseLength()I
    .locals 1

    .prologue
    .line 12912
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->nBestChooseReplacedPhraseLength_:I

    return v0
.end method

.method public getSessionIdRequestId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 12547
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->sessionIdRequestId_:Ljava/lang/Object;

    .line 12548
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 12549
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 12550
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->sessionIdRequestId_:Ljava/lang/Object;

    .line 12553
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getSessionIdRequestIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 12558
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->sessionIdRequestId_:Ljava/lang/Object;

    .line 12559
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12560
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 12562
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->sessionIdRequestId_:Ljava/lang/Object;

    .line 12565
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getTextModificationActionType()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;
    .locals 1

    .prologue
    .line 12600
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->textModificationActionType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 12708
    iget-wide v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->timestamp_:J

    return-wide v0
.end method

.method public hasAction()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 12475
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

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
    .line 12779
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

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
    .line 12499
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

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
    .line 12523
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

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
    .line 12684
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

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
    .line 12726
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

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
    .line 12663
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

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
    .line 12621
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

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
    .line 12642
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

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
    .line 12856
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

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
    .line 12803
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

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
    .line 12909
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

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
    .line 12544
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

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
    .line 12597
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

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
    .line 12705
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

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
    .locals 1

    .prologue
    .line 12450
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12257
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 12257
    check-cast p1, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    invoke-virtual {p0, p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12257
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12457
    const/4 v1, 0x0

    .line 12459
    :try_start_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12464
    if-eqz v0, :cond_0

    .line 12465
    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    .line 12468
    :cond_0
    return-object p0

    .line 12460
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 12461
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12462
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12464
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 12465
    invoke-virtual {p0, v1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    :cond_1
    throw v0

    .line 12464
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 2
    .parameter

    .prologue
    .line 12392
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 12446
    :goto_0
    return-object v0

    .line 12393
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->hasAction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12394
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getAction()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    .line 12396
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->hasDialogType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12397
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getDialogType()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setDialogType(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    .line 12399
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->hasErrorType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12400
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getErrorType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setErrorType(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    .line 12402
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->hasSessionIdRequestId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12403
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12404
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->access$13200(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->sessionIdRequestId_:Ljava/lang/Object;

    .line 12407
    :cond_4
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->hasTextModificationActionType()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12408
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getTextModificationActionType()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setTextModificationActionType(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    .line 12410
    :cond_5
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->hasInputSelectionBegin()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 12411
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getInputSelectionBegin()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setInputSelectionBegin(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    .line 12413
    :cond_6
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->hasInputSelectionEnd()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 12414
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getInputSelectionEnd()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setInputSelectionEnd(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    .line 12416
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->hasInputLength()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 12417
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getInputLength()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setInputLength(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    .line 12419
    :cond_8
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->hasIndex()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 12420
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setIndex(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    .line 12422
    :cond_9
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 12423
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setTimestamp(J)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    .line 12425
    :cond_a
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->hasInputLanguage()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 12426
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12427
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->access$13900(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->inputLanguage_:Ljava/lang/Object;

    .line 12430
    :cond_b
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->hasAppIdentityType()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 12431
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getAppIdentityType()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setAppIdentityType(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    .line 12433
    :cond_c
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->hasNBestChooseBeforeValue()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 12434
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12435
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->access$14100(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->nBestChooseBeforeValue_:Ljava/lang/Object;

    .line 12438
    :cond_d
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->hasNBestChooseAfterValue()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 12439
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12440
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->access$14200(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->nBestChooseAfterValue_:Ljava/lang/Object;

    .line 12443
    :cond_e
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->hasNBestChooseReplacedPhraseLength()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 12444
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getNBestChooseReplacedPhraseLength()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setNBestChooseReplacedPhraseLength(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    :cond_f
    move-object v0, p0

    .line 12446
    goto/16 :goto_0
.end method

.method public setAction(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 12481
    if-nez p1, :cond_0

    .line 12482
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12484
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12485
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->action_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    .line 12487
    return-object p0
.end method

.method public setAppIdentityType(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 12785
    if-nez p1, :cond_0

    .line 12786
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12788
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12789
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->appIdentityType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    .line 12791
    return-object p0
.end method

.method public setDialogType(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 12505
    if-nez p1, :cond_0

    .line 12506
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12508
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12509
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->dialogType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    .line 12511
    return-object p0
.end method

.method public setErrorType(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 12529
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12530
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->errorType_:I

    .line 12532
    return-object p0
.end method

.method public setIndex(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 12690
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12691
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->index_:I

    .line 12693
    return-object p0
.end method

.method public setInputLanguage(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 12751
    if-nez p1, :cond_0

    .line 12752
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12754
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12755
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->inputLanguage_:Ljava/lang/Object;

    .line 12757
    return-object p0
.end method

.method public setInputLanguageBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 12767
    if-nez p1, :cond_0

    .line 12768
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12770
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12771
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->inputLanguage_:Ljava/lang/Object;

    .line 12773
    return-object p0
.end method

.method public setInputLength(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 12669
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12670
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->inputLength_:I

    .line 12672
    return-object p0
.end method

.method public setInputSelectionBegin(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 12627
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12628
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->inputSelectionBegin_:I

    .line 12630
    return-object p0
.end method

.method public setInputSelectionEnd(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 12648
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12649
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->inputSelectionEnd_:I

    .line 12651
    return-object p0
.end method

.method public setNBestChooseAfterValue(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 12881
    if-nez p1, :cond_0

    .line 12882
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12884
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12885
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->nBestChooseAfterValue_:Ljava/lang/Object;

    .line 12887
    return-object p0
.end method

.method public setNBestChooseAfterValueBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 12897
    if-nez p1, :cond_0

    .line 12898
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12900
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12901
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->nBestChooseAfterValue_:Ljava/lang/Object;

    .line 12903
    return-object p0
.end method

.method public setNBestChooseBeforeValue(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 12828
    if-nez p1, :cond_0

    .line 12829
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12831
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12832
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->nBestChooseBeforeValue_:Ljava/lang/Object;

    .line 12834
    return-object p0
.end method

.method public setNBestChooseBeforeValueBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 12844
    if-nez p1, :cond_0

    .line 12845
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12847
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12848
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->nBestChooseBeforeValue_:Ljava/lang/Object;

    .line 12850
    return-object p0
.end method

.method public setNBestChooseReplacedPhraseLength(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 12915
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12916
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->nBestChooseReplacedPhraseLength_:I

    .line 12918
    return-object p0
.end method

.method public setSessionIdRequestId(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 12569
    if-nez p1, :cond_0

    .line 12570
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12572
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12573
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->sessionIdRequestId_:Ljava/lang/Object;

    .line 12575
    return-object p0
.end method

.method public setSessionIdRequestIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 12585
    if-nez p1, :cond_0

    .line 12586
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12588
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12589
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->sessionIdRequestId_:Ljava/lang/Object;

    .line 12591
    return-object p0
.end method

.method public setTextModificationActionType(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 12603
    if-nez p1, :cond_0

    .line 12604
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12606
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12607
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->textModificationActionType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    .line 12609
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 12711
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12712
    iput-wide p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->timestamp_:J

    .line 12714
    return-object p0
.end method
