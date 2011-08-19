.class public final Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protos/MobileappsExtensions$UploadEventInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions$UploadEventInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/MobileappsExtensions$UploadEventInfo;",
        "Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;",
        ">;",
        "Lcom/google/protos/MobileappsExtensions$UploadEventInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private action_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;

.field private bitField0_:I

.field private guid_:J

.field private reason_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;

.field private size_:I

.field private totalTimeMs_:I

.field private uploader_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2210
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2332
    sget-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;->UPLOAD_QUEUED:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->action_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;

    .line 2356
    sget-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;->YOUTUBE_UPLOADER:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->uploader_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;

    .line 2422
    sget-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;->FAILED_FILE:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->reason_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;

    .line 2211
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->maybeForceBuilderInitialization()V

    .line 2212
    return-void
.end method

.method static synthetic access$2400()Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;
    .locals 1

    .prologue
    .line 2205
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->create()Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;
    .locals 1

    .prologue
    .line 2217
    new-instance v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 2215
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2205
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->build()Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/MobileappsExtensions$UploadEventInfo;
    .locals 2

    .prologue
    .line 2246
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    move-result-object v0

    .line 2247
    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2248
    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2250
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2205
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/MobileappsExtensions$UploadEventInfo;
    .locals 5

    .prologue
    .line 2254
    new-instance v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/MobileappsExtensions$1;)V

    .line 2255
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->bitField0_:I

    .line 2256
    const/4 v2, 0x0

    .line 2257
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2258
    or-int/lit8 v2, v2, 0x1

    .line 2260
    :cond_0
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->action_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->access$2602(Lcom/google/protos/MobileappsExtensions$UploadEventInfo;Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;

    .line 2261
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 2262
    or-int/lit8 v2, v2, 0x2

    .line 2264
    :cond_1
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->uploader_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->access$2702(Lcom/google/protos/MobileappsExtensions$UploadEventInfo;Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;)Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;

    .line 2265
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 2266
    or-int/lit8 v2, v2, 0x4

    .line 2268
    :cond_2
    iget-wide v3, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->guid_:J

    invoke-static {v0, v3, v4}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->access$2802(Lcom/google/protos/MobileappsExtensions$UploadEventInfo;J)J

    .line 2269
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 2270
    or-int/lit8 v2, v2, 0x8

    .line 2272
    :cond_3
    iget v3, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->size_:I

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->access$2902(Lcom/google/protos/MobileappsExtensions$UploadEventInfo;I)I

    .line 2273
    and-int/lit8 v3, v1, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 2274
    or-int/lit8 v2, v2, 0x10

    .line 2276
    :cond_4
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->reason_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->access$3002(Lcom/google/protos/MobileappsExtensions$UploadEventInfo;Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;)Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;

    .line 2277
    and-int/lit8 v1, v1, 0x20

    const/16 v3, 0x20

    if-ne v1, v3, :cond_5

    .line 2278
    or-int/lit8 v1, v2, 0x20

    .line 2280
    :goto_0
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->totalTimeMs_:I

    invoke-static {v0, v2}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->access$3102(Lcom/google/protos/MobileappsExtensions$UploadEventInfo;I)I

    .line 2281
    invoke-static {v0, v1}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->access$3202(Lcom/google/protos/MobileappsExtensions$UploadEventInfo;I)I

    .line 2282
    return-object v0

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2205
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->clear()Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2205
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->clear()Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2221
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2222
    sget-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;->UPLOAD_QUEUED:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->action_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;

    .line 2223
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->bitField0_:I

    .line 2224
    sget-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;->YOUTUBE_UPLOADER:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->uploader_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;

    .line 2225
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->bitField0_:I

    .line 2226
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->guid_:J

    .line 2227
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->bitField0_:I

    .line 2228
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->size_:I

    .line 2229
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->bitField0_:I

    .line 2230
    sget-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;->FAILED_FILE:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->reason_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;

    .line 2231
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->bitField0_:I

    .line 2232
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->totalTimeMs_:I

    .line 2233
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->bitField0_:I

    .line 2234
    return-object p0
.end method

.method public clearAction()Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;
    .locals 1

    .prologue
    .line 2349
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->bitField0_:I

    .line 2350
    sget-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;->UPLOAD_QUEUED:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->action_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;

    .line 2352
    return-object p0
.end method

.method public clearGuid()Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;
    .locals 2

    .prologue
    .line 2394
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->bitField0_:I

    .line 2395
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->guid_:J

    .line 2397
    return-object p0
.end method

.method public clearReason()Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;
    .locals 1

    .prologue
    .line 2439
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->bitField0_:I

    .line 2440
    sget-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;->FAILED_FILE:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->reason_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;

    .line 2442
    return-object p0
.end method

.method public clearSize()Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;
    .locals 1

    .prologue
    .line 2415
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->bitField0_:I

    .line 2416
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->size_:I

    .line 2418
    return-object p0
.end method

.method public clearTotalTimeMs()Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;
    .locals 1

    .prologue
    .line 2460
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->bitField0_:I

    .line 2461
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->totalTimeMs_:I

    .line 2463
    return-object p0
.end method

.method public clearUploader()Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;
    .locals 1

    .prologue
    .line 2373
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->bitField0_:I

    .line 2374
    sget-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;->YOUTUBE_UPLOADER:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->uploader_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;

    .line 2376
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2205
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->clone()Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2205
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->clone()Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2205
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->clone()Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;
    .locals 2

    .prologue
    .line 2238
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->create()Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$UploadEventInfo;)Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;

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
    .line 2205
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->clone()Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAction()Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;
    .locals 1

    .prologue
    .line 2337
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->action_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 2205
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2205
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$UploadEventInfo;
    .locals 1

    .prologue
    .line 2242
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    move-result-object v0

    return-object v0
.end method

.method public getGuid()J
    .locals 2

    .prologue
    .line 2385
    iget-wide v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->guid_:J

    return-wide v0
.end method

.method public getReason()Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;
    .locals 1

    .prologue
    .line 2427
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->reason_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 2406
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->size_:I

    return v0
.end method

.method public getTotalTimeMs()I
    .locals 1

    .prologue
    .line 2451
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->totalTimeMs_:I

    return v0
.end method

.method public getUploader()Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;
    .locals 1

    .prologue
    .line 2361
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->uploader_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;

    return-object v0
.end method

.method public hasAction()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2334
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->bitField0_:I

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
    .line 2382
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->bitField0_:I

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
    .line 2424
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->bitField0_:I

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
    .line 2403
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->bitField0_:I

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
    .line 2448
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->bitField0_:I

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
    .line 2358
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->bitField0_:I

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
    .locals 1

    .prologue
    .line 2309
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
    .line 2205
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2205
    check-cast p1, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    invoke-virtual {p0, p1}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$UploadEventInfo;)Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;

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
    .line 2205
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2316
    const/4 v1, 0x0

    .line 2318
    :try_start_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2323
    if-eqz v0, :cond_0

    .line 2324
    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$UploadEventInfo;)Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;

    .line 2327
    :cond_0
    return-object p0

    .line 2319
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 2320
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2321
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2323
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 2324
    invoke-virtual {p0, v1}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$UploadEventInfo;)Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;

    :cond_1
    throw v0

    .line 2323
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/MobileappsExtensions$UploadEventInfo;)Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;
    .locals 2
    .parameter

    .prologue
    .line 2286
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 2305
    :goto_0
    return-object v0

    .line 2287
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->hasAction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2288
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->getAction()Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;

    .line 2290
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->hasUploader()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2291
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->getUploader()Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->setUploader(Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;)Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;

    .line 2293
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->hasGuid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2294
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->getGuid()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->setGuid(J)Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;

    .line 2296
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->hasSize()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2297
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->getSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->setSize(I)Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;

    .line 2299
    :cond_4
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->hasReason()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2300
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->getReason()Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->setReason(Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;)Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;

    .line 2302
    :cond_5
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->hasTotalTimeMs()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2303
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->getTotalTimeMs()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->setTotalTimeMs(I)Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;

    :cond_6
    move-object v0, p0

    .line 2305
    goto :goto_0
.end method

.method public setAction(Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2340
    if-nez p1, :cond_0

    .line 2341
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2343
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->bitField0_:I

    .line 2344
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->action_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;

    .line 2346
    return-object p0
.end method

.method public setGuid(J)Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2388
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->bitField0_:I

    .line 2389
    iput-wide p1, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->guid_:J

    .line 2391
    return-object p0
.end method

.method public setReason(Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;)Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2430
    if-nez p1, :cond_0

    .line 2431
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2433
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->bitField0_:I

    .line 2434
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->reason_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;

    .line 2436
    return-object p0
.end method

.method public setSize(I)Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2409
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->bitField0_:I

    .line 2410
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->size_:I

    .line 2412
    return-object p0
.end method

.method public setTotalTimeMs(I)Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2454
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->bitField0_:I

    .line 2455
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->totalTimeMs_:I

    .line 2457
    return-object p0
.end method

.method public setUploader(Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;)Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2364
    if-nez p1, :cond_0

    .line 2365
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2367
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->bitField0_:I

    .line 2368
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->uploader_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;

    .line 2370
    return-object p0
.end method
