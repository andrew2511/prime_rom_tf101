.class public final Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protos/MobileappsExtensions$PlacesEventInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;",
        "Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;",
        ">;",
        "Lcom/google/protos/MobileappsExtensions$PlacesEventInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private action_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ActionType;

.field private bitField0_:I

.field private category_:Ljava/lang/Object;

.field private clientTimestampMsSinceEpoch_:J

.field private connectionType_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;

.field private currentView_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

.field private durationMs_:I

.field private error_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

.field private hasJustification_:Z

.field private hasNegativeJustification_:Z

.field private hasPositiveJustification_:Z

.field private isLoggedIn_:Z

.field private language_:Ljava/lang/Object;

.field private latSpanDegreesDeltaE6_:I

.field private locationAccuracyMeters_:I

.field private locationDeltaMeters_:I

.field private longSpanDegreesDeltaE6_:I

.field private nextView_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

.field private rating_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;",
            ">;"
        }
    .end annotation
.end field

.field private resultPosition_:I

.field private reviewSource_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14203
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 14465
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ActionType;->APP_LAUNCH:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ActionType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->action_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ActionType;

    .line 14489
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->FIRST_LAUNCH:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->currentView_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    .line 14513
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->FIRST_LAUNCH:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->nextView_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    .line 14537
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->rating_:Ljava/util/List;

    .line 14588
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;->NO_RESULTS:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->error_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    .line 14780
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->language_:Ljava/lang/Object;

    .line 14833
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;->GPRS:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->connectionType_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;

    .line 14857
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->category_:Ljava/lang/Object;

    .line 14952
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->reviewSource_:Ljava/lang/Object;

    .line 14204
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->maybeForceBuilderInitialization()V

    .line 14205
    return-void
.end method

.method static synthetic access$14600()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 1

    .prologue
    .line 14198
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->create()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 1

    .prologue
    .line 14210
    new-instance v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;-><init>()V

    return-object v0
.end method

.method private ensureRatingIsMutable()V
    .locals 2

    .prologue
    .line 14540
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 14541
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->rating_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->rating_:Ljava/util/List;

    .line 14542
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14544
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 14208
    return-void
.end method


# virtual methods
.method public addAllRating(Ljava/lang/Iterable;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;",
            ">;)",
            "Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;"
        }
    .end annotation

    .prologue
    .line 14575
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->ensureRatingIsMutable()V

    .line 14576
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->rating_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 14578
    return-object p0
.end method

.method public addRating(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14565
    if-nez p1, :cond_0

    .line 14566
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14568
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->ensureRatingIsMutable()V

    .line 14569
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->rating_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14571
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14198
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->build()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;
    .locals 2

    .prologue
    .line 14267
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    move-result-object v0

    .line 14268
    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 14269
    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 14271
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14198
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;
    .locals 10

    .prologue
    const/high16 v9, 0x8

    const/high16 v8, 0x4

    const/high16 v7, 0x2

    const/high16 v6, 0x1

    const v5, 0x8000

    .line 14275
    new-instance v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/MobileappsExtensions$1;)V

    .line 14276
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14277
    const/4 v2, 0x0

    .line 14278
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 14279
    or-int/lit8 v2, v2, 0x1

    .line 14281
    :cond_0
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->action_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ActionType;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->access$14802(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ActionType;

    .line 14282
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 14283
    or-int/lit8 v2, v2, 0x2

    .line 14285
    :cond_1
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->currentView_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->access$14902(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    .line 14286
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 14287
    or-int/lit8 v2, v2, 0x4

    .line 14289
    :cond_2
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->nextView_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->access$15002(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    .line 14290
    iget v3, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 14291
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->rating_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->rating_:Ljava/util/List;

    .line 14292
    iget v3, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14294
    :cond_3
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->rating_:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->access$15102(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;Ljava/util/List;)Ljava/util/List;

    .line 14295
    and-int/lit8 v3, v1, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 14296
    or-int/lit8 v2, v2, 0x8

    .line 14298
    :cond_4
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->error_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->access$15202(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    .line 14299
    and-int/lit8 v3, v1, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 14300
    or-int/lit8 v2, v2, 0x10

    .line 14302
    :cond_5
    iget v3, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->durationMs_:I

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->access$15302(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;I)I

    .line 14303
    and-int/lit8 v3, v1, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 14304
    or-int/lit8 v2, v2, 0x20

    .line 14306
    :cond_6
    iget v3, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->resultPosition_:I

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->access$15402(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;I)I

    .line 14307
    and-int/lit16 v3, v1, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 14308
    or-int/lit8 v2, v2, 0x40

    .line 14310
    :cond_7
    iget-boolean v3, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->hasJustification_:Z

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->access$15502(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;Z)Z

    .line 14311
    and-int/lit16 v3, v1, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 14312
    or-int/lit16 v2, v2, 0x80

    .line 14314
    :cond_8
    iget v3, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->locationAccuracyMeters_:I

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->access$15602(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;I)I

    .line 14315
    and-int/lit16 v3, v1, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 14316
    or-int/lit16 v2, v2, 0x100

    .line 14318
    :cond_9
    iget v3, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->locationDeltaMeters_:I

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->access$15702(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;I)I

    .line 14319
    and-int/lit16 v3, v1, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 14320
    or-int/lit16 v2, v2, 0x200

    .line 14322
    :cond_a
    iget v3, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->latSpanDegreesDeltaE6_:I

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->access$15802(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;I)I

    .line 14323
    and-int/lit16 v3, v1, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    .line 14324
    or-int/lit16 v2, v2, 0x400

    .line 14326
    :cond_b
    iget v3, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->longSpanDegreesDeltaE6_:I

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->access$15902(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;I)I

    .line 14327
    and-int/lit16 v3, v1, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_c

    .line 14328
    or-int/lit16 v2, v2, 0x800

    .line 14330
    :cond_c
    iget-wide v3, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->clientTimestampMsSinceEpoch_:J

    invoke-static {v0, v3, v4}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->access$16002(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;J)J

    .line 14331
    and-int/lit16 v3, v1, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_d

    .line 14332
    or-int/lit16 v2, v2, 0x1000

    .line 14334
    :cond_d
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->language_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->access$16102(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14335
    and-int/lit16 v3, v1, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_e

    .line 14336
    or-int/lit16 v2, v2, 0x2000

    .line 14338
    :cond_e
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->connectionType_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->access$16202(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;

    .line 14339
    and-int v3, v1, v5

    if-ne v3, v5, :cond_f

    .line 14340
    or-int/lit16 v2, v2, 0x4000

    .line 14342
    :cond_f
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->category_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->access$16302(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14343
    and-int v3, v1, v6

    if-ne v3, v6, :cond_10

    .line 14344
    or-int/2addr v2, v5

    .line 14346
    :cond_10
    iget-boolean v3, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->hasNegativeJustification_:Z

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->access$16402(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;Z)Z

    .line 14347
    and-int v3, v1, v7

    if-ne v3, v7, :cond_11

    .line 14348
    or-int/2addr v2, v6

    .line 14350
    :cond_11
    iget-boolean v3, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->hasPositiveJustification_:Z

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->access$16502(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;Z)Z

    .line 14351
    and-int v3, v1, v8

    if-ne v3, v8, :cond_12

    .line 14352
    or-int/2addr v2, v7

    .line 14354
    :cond_12
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->reviewSource_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->access$16602(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14355
    and-int/2addr v1, v9

    if-ne v1, v9, :cond_13

    .line 14356
    or-int v1, v2, v8

    .line 14358
    :goto_0
    iget-boolean v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->isLoggedIn_:Z

    invoke-static {v0, v2}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->access$16702(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;Z)Z

    .line 14359
    invoke-static {v0, v1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->access$16802(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;I)I

    .line 14360
    return-object v0

    :cond_13
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 14198
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->clear()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14198
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->clear()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 14214
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 14215
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ActionType;->APP_LAUNCH:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ActionType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->action_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ActionType;

    .line 14216
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14217
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->FIRST_LAUNCH:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->currentView_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    .line 14218
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14219
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->FIRST_LAUNCH:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->nextView_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    .line 14220
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14221
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->rating_:Ljava/util/List;

    .line 14222
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14223
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;->NO_RESULTS:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->error_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    .line 14224
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14225
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->durationMs_:I

    .line 14226
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14227
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->resultPosition_:I

    .line 14228
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14229
    iput-boolean v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->hasJustification_:Z

    .line 14230
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14231
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->locationAccuracyMeters_:I

    .line 14232
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14233
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->locationDeltaMeters_:I

    .line 14234
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14235
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->latSpanDegreesDeltaE6_:I

    .line 14236
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14237
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->longSpanDegreesDeltaE6_:I

    .line 14238
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14239
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->clientTimestampMsSinceEpoch_:J

    .line 14240
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14241
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->language_:Ljava/lang/Object;

    .line 14242
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14243
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;->GPRS:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->connectionType_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;

    .line 14244
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14245
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->category_:Ljava/lang/Object;

    .line 14246
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14247
    iput-boolean v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->hasNegativeJustification_:Z

    .line 14248
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14249
    iput-boolean v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->hasPositiveJustification_:Z

    .line 14250
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14251
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->reviewSource_:Ljava/lang/Object;

    .line 14252
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14253
    iput-boolean v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->isLoggedIn_:Z

    .line 14254
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14255
    return-object p0
.end method

.method public clearAction()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 1

    .prologue
    .line 14482
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14483
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ActionType;->APP_LAUNCH:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ActionType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->action_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ActionType;

    .line 14485
    return-object p0
.end method

.method public clearCategory()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 2

    .prologue
    .line 14893
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14894
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->getCategory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->category_:Ljava/lang/Object;

    .line 14896
    return-object p0
.end method

.method public clearClientTimestampMsSinceEpoch()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 2

    .prologue
    .line 14773
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14774
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->clientTimestampMsSinceEpoch_:J

    .line 14776
    return-object p0
.end method

.method public clearConnectionType()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 1

    .prologue
    .line 14850
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14851
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;->GPRS:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->connectionType_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;

    .line 14853
    return-object p0
.end method

.method public clearCurrentView()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 1

    .prologue
    .line 14506
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14507
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->FIRST_LAUNCH:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->currentView_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    .line 14509
    return-object p0
.end method

.method public clearDurationMs()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 1

    .prologue
    .line 14626
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14627
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->durationMs_:I

    .line 14629
    return-object p0
.end method

.method public clearError()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 1

    .prologue
    .line 14605
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14606
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;->NO_RESULTS:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->error_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    .line 14608
    return-object p0
.end method

.method public clearHasJustification()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 1

    .prologue
    .line 14668
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14669
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->hasJustification_:Z

    .line 14671
    return-object p0
.end method

.method public clearHasNegativeJustification()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 2

    .prologue
    .line 14924
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14925
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->hasNegativeJustification_:Z

    .line 14927
    return-object p0
.end method

.method public clearHasPositiveJustification()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 2

    .prologue
    .line 14945
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14946
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->hasPositiveJustification_:Z

    .line 14948
    return-object p0
.end method

.method public clearIsLoggedIn()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 2

    .prologue
    .line 15019
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 15020
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->isLoggedIn_:Z

    .line 15022
    return-object p0
.end method

.method public clearLanguage()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 1

    .prologue
    .line 14816
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14817
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->language_:Ljava/lang/Object;

    .line 14819
    return-object p0
.end method

.method public clearLatSpanDegreesDeltaE6()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 1

    .prologue
    .line 14731
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14732
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->latSpanDegreesDeltaE6_:I

    .line 14734
    return-object p0
.end method

.method public clearLocationAccuracyMeters()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 1

    .prologue
    .line 14689
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14690
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->locationAccuracyMeters_:I

    .line 14692
    return-object p0
.end method

.method public clearLocationDeltaMeters()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 1

    .prologue
    .line 14710
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14711
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->locationDeltaMeters_:I

    .line 14713
    return-object p0
.end method

.method public clearLongSpanDegreesDeltaE6()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 1

    .prologue
    .line 14752
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14753
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->longSpanDegreesDeltaE6_:I

    .line 14755
    return-object p0
.end method

.method public clearNextView()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 1

    .prologue
    .line 14530
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14531
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->FIRST_LAUNCH:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->nextView_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    .line 14533
    return-object p0
.end method

.method public clearRating()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 1

    .prologue
    .line 14581
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->rating_:Ljava/util/List;

    .line 14582
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14584
    return-object p0
.end method

.method public clearResultPosition()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 1

    .prologue
    .line 14647
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14648
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->resultPosition_:I

    .line 14650
    return-object p0
.end method

.method public clearReviewSource()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 2

    .prologue
    .line 14988
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14989
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->getReviewSource()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->reviewSource_:Ljava/lang/Object;

    .line 14991
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 14198
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->clone()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 14198
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->clone()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14198
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->clone()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 2

    .prologue
    .line 14259
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->create()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;

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
    .line 14198
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->clone()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAction()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ActionType;
    .locals 1

    .prologue
    .line 14470
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->action_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ActionType;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 14862
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->category_:Ljava/lang/Object;

    .line 14863
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 14864
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 14865
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->category_:Ljava/lang/Object;

    .line 14868
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getCategoryBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 14873
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->category_:Ljava/lang/Object;

    .line 14874
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14875
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14877
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->category_:Ljava/lang/Object;

    .line 14880
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getClientTimestampMsSinceEpoch()J
    .locals 2

    .prologue
    .line 14764
    iget-wide v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->clientTimestampMsSinceEpoch_:J

    return-wide v0
.end method

.method public getConnectionType()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;
    .locals 1

    .prologue
    .line 14838
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->connectionType_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;

    return-object v0
.end method

.method public getCurrentView()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;
    .locals 1

    .prologue
    .line 14494
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->currentView_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 14198
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14198
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;
    .locals 1

    .prologue
    .line 14263
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDurationMs()I
    .locals 1

    .prologue
    .line 14617
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->durationMs_:I

    return v0
.end method

.method public getError()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;
    .locals 1

    .prologue
    .line 14593
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->error_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    return-object v0
.end method

.method public getHasJustification()Z
    .locals 1

    .prologue
    .line 14659
    iget-boolean v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->hasJustification_:Z

    return v0
.end method

.method public getHasNegativeJustification()Z
    .locals 1

    .prologue
    .line 14915
    iget-boolean v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->hasNegativeJustification_:Z

    return v0
.end method

.method public getHasPositiveJustification()Z
    .locals 1

    .prologue
    .line 14936
    iget-boolean v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->hasPositiveJustification_:Z

    return v0
.end method

.method public getIsLoggedIn()Z
    .locals 1

    .prologue
    .line 15010
    iget-boolean v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->isLoggedIn_:Z

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 14785
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->language_:Ljava/lang/Object;

    .line 14786
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 14787
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 14788
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->language_:Ljava/lang/Object;

    .line 14791
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getLanguageBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 14796
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->language_:Ljava/lang/Object;

    .line 14797
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14798
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14800
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->language_:Ljava/lang/Object;

    .line 14803
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getLatSpanDegreesDeltaE6()I
    .locals 1

    .prologue
    .line 14722
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->latSpanDegreesDeltaE6_:I

    return v0
.end method

.method public getLocationAccuracyMeters()I
    .locals 1

    .prologue
    .line 14680
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->locationAccuracyMeters_:I

    return v0
.end method

.method public getLocationDeltaMeters()I
    .locals 1

    .prologue
    .line 14701
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->locationDeltaMeters_:I

    return v0
.end method

.method public getLongSpanDegreesDeltaE6()I
    .locals 1

    .prologue
    .line 14743
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->longSpanDegreesDeltaE6_:I

    return v0
.end method

.method public getNextView()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;
    .locals 1

    .prologue
    .line 14518
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->nextView_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    return-object v0
.end method

.method public getRating(I)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;
    .locals 1
    .parameter

    .prologue
    .line 14552
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->rating_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    return-object p0
.end method

.method public getRatingCount()I
    .locals 1

    .prologue
    .line 14549
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->rating_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRatingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14546
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->rating_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getResultPosition()I
    .locals 1

    .prologue
    .line 14638
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->resultPosition_:I

    return v0
.end method

.method public getReviewSource()Ljava/lang/String;
    .locals 2

    .prologue
    .line 14957
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->reviewSource_:Ljava/lang/Object;

    .line 14958
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 14959
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 14960
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->reviewSource_:Ljava/lang/Object;

    .line 14963
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getReviewSourceBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 14968
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->reviewSource_:Ljava/lang/Object;

    .line 14969
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14970
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14972
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->reviewSource_:Ljava/lang/Object;

    .line 14975
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasAction()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 14467
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCategory()Z
    .locals 2

    .prologue
    const v1, 0x8000

    .line 14859
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasClientTimestampMsSinceEpoch()Z
    .locals 2

    .prologue
    .line 14761
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

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

.method public hasConnectionType()Z
    .locals 2

    .prologue
    .line 14835
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

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

.method public hasCurrentView()Z
    .locals 2

    .prologue
    .line 14491
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

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
    .line 14614
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

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

.method public hasError()Z
    .locals 2

    .prologue
    .line 14590
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

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

.method public hasHasJustification()Z
    .locals 2

    .prologue
    .line 14656
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

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

.method public hasHasNegativeJustification()Z
    .locals 2

    .prologue
    const/high16 v1, 0x1

    .line 14912
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHasPositiveJustification()Z
    .locals 2

    .prologue
    const/high16 v1, 0x2

    .line 14933
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsLoggedIn()Z
    .locals 2

    .prologue
    const/high16 v1, 0x8

    .line 15007
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLanguage()Z
    .locals 2

    .prologue
    .line 14782
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

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

.method public hasLatSpanDegreesDeltaE6()Z
    .locals 2

    .prologue
    .line 14719
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

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

.method public hasLocationAccuracyMeters()Z
    .locals 2

    .prologue
    .line 14677
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

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

.method public hasLocationDeltaMeters()Z
    .locals 2

    .prologue
    .line 14698
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

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

.method public hasLongSpanDegreesDeltaE6()Z
    .locals 2

    .prologue
    .line 14740
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

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

.method public hasNextView()Z
    .locals 2

    .prologue
    .line 14515
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

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

.method public hasResultPosition()Z
    .locals 2

    .prologue
    .line 14635
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

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

.method public hasReviewSource()Z
    .locals 2

    .prologue
    const/high16 v1, 0x4

    .line 14954
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    and-int/2addr v0, v1

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
    .line 14442
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
    .line 14198
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14198
    check-cast p1, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    invoke-virtual {p0, p1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;

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
    .line 14198
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14449
    const/4 v1, 0x0

    .line 14451
    :try_start_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14456
    if-eqz v0, :cond_0

    .line 14457
    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;

    .line 14460
    :cond_0
    return-object p0

    .line 14452
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 14453
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14454
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14456
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 14457
    invoke-virtual {p0, v1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;

    :cond_1
    throw v0

    .line 14456
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 2
    .parameter

    .prologue
    .line 14364
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 14438
    :goto_0
    return-object v0

    .line 14365
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->hasAction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14366
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->getAction()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ActionType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;

    .line 14368
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->hasCurrentView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14369
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->getCurrentView()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->setCurrentView(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;

    .line 14371
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->hasNextView()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14372
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->getNextView()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->setNextView(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;

    .line 14374
    :cond_3
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->access$15100(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 14375
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->rating_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 14376
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->access$15100(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->rating_:Ljava/util/List;

    .line 14377
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14384
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->hasError()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14385
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->getError()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->setError(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;

    .line 14387
    :cond_5
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->hasDurationMs()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14388
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->getDurationMs()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->setDurationMs(I)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;

    .line 14390
    :cond_6
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->hasResultPosition()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 14391
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->getResultPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->setResultPosition(I)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;

    .line 14393
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->hasHasJustification()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 14394
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->getHasJustification()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->setHasJustification(Z)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;

    .line 14396
    :cond_8
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->hasLocationAccuracyMeters()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 14397
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->getLocationAccuracyMeters()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->setLocationAccuracyMeters(I)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;

    .line 14399
    :cond_9
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->hasLocationDeltaMeters()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 14400
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->getLocationDeltaMeters()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->setLocationDeltaMeters(I)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;

    .line 14402
    :cond_a
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->hasLatSpanDegreesDeltaE6()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 14403
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->getLatSpanDegreesDeltaE6()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->setLatSpanDegreesDeltaE6(I)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;

    .line 14405
    :cond_b
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->hasLongSpanDegreesDeltaE6()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 14406
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->getLongSpanDegreesDeltaE6()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->setLongSpanDegreesDeltaE6(I)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;

    .line 14408
    :cond_c
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->hasClientTimestampMsSinceEpoch()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 14409
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->getClientTimestampMsSinceEpoch()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->setClientTimestampMsSinceEpoch(J)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;

    .line 14411
    :cond_d
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->hasLanguage()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 14412
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14413
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->access$16100(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->language_:Ljava/lang/Object;

    .line 14416
    :cond_e
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->hasConnectionType()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 14417
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->getConnectionType()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->setConnectionType(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;

    .line 14419
    :cond_f
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->hasCategory()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 14420
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14421
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->access$16300(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->category_:Ljava/lang/Object;

    .line 14424
    :cond_10
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->hasHasNegativeJustification()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 14425
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->getHasNegativeJustification()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->setHasNegativeJustification(Z)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;

    .line 14427
    :cond_11
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->hasHasPositiveJustification()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 14428
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->getHasPositiveJustification()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->setHasPositiveJustification(Z)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;

    .line 14430
    :cond_12
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->hasReviewSource()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 14431
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14432
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->access$16600(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->reviewSource_:Ljava/lang/Object;

    .line 14435
    :cond_13
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->hasIsLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 14436
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->getIsLoggedIn()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->setIsLoggedIn(Z)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;

    :cond_14
    move-object v0, p0

    .line 14438
    goto/16 :goto_0

    .line 14379
    :cond_15
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->ensureRatingIsMutable()V

    .line 14380
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->rating_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->access$15100(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1
.end method

.method public setAction(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14473
    if-nez p1, :cond_0

    .line 14474
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14476
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14477
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->action_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ActionType;

    .line 14479
    return-object p0
.end method

.method public setCategory(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 2
    .parameter

    .prologue
    .line 14884
    if-nez p1, :cond_0

    .line 14885
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14887
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14888
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->category_:Ljava/lang/Object;

    .line 14890
    return-object p0
.end method

.method public setCategoryBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 2
    .parameter

    .prologue
    .line 14900
    if-nez p1, :cond_0

    .line 14901
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14903
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14904
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->category_:Ljava/lang/Object;

    .line 14906
    return-object p0
.end method

.method public setClientTimestampMsSinceEpoch(J)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14767
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14768
    iput-wide p1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->clientTimestampMsSinceEpoch_:J

    .line 14770
    return-object p0
.end method

.method public setConnectionType(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14841
    if-nez p1, :cond_0

    .line 14842
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14844
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14845
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->connectionType_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;

    .line 14847
    return-object p0
.end method

.method public setCurrentView(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14497
    if-nez p1, :cond_0

    .line 14498
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14500
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14501
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->currentView_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    .line 14503
    return-object p0
.end method

.method public setDurationMs(I)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14620
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14621
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->durationMs_:I

    .line 14623
    return-object p0
.end method

.method public setError(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14596
    if-nez p1, :cond_0

    .line 14597
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14599
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14600
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->error_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    .line 14602
    return-object p0
.end method

.method public setHasJustification(Z)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14662
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14663
    iput-boolean p1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->hasJustification_:Z

    .line 14665
    return-object p0
.end method

.method public setHasNegativeJustification(Z)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 2
    .parameter

    .prologue
    .line 14918
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14919
    iput-boolean p1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->hasNegativeJustification_:Z

    .line 14921
    return-object p0
.end method

.method public setHasPositiveJustification(Z)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 2
    .parameter

    .prologue
    .line 14939
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14940
    iput-boolean p1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->hasPositiveJustification_:Z

    .line 14942
    return-object p0
.end method

.method public setIsLoggedIn(Z)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 2
    .parameter

    .prologue
    .line 15013
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 15014
    iput-boolean p1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->isLoggedIn_:Z

    .line 15016
    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14807
    if-nez p1, :cond_0

    .line 14808
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14810
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14811
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->language_:Ljava/lang/Object;

    .line 14813
    return-object p0
.end method

.method public setLanguageBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14823
    if-nez p1, :cond_0

    .line 14824
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14826
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14827
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->language_:Ljava/lang/Object;

    .line 14829
    return-object p0
.end method

.method public setLatSpanDegreesDeltaE6(I)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14725
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14726
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->latSpanDegreesDeltaE6_:I

    .line 14728
    return-object p0
.end method

.method public setLocationAccuracyMeters(I)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14683
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14684
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->locationAccuracyMeters_:I

    .line 14686
    return-object p0
.end method

.method public setLocationDeltaMeters(I)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14704
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14705
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->locationDeltaMeters_:I

    .line 14707
    return-object p0
.end method

.method public setLongSpanDegreesDeltaE6(I)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14746
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14747
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->longSpanDegreesDeltaE6_:I

    .line 14749
    return-object p0
.end method

.method public setNextView(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14521
    if-nez p1, :cond_0

    .line 14522
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14524
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14525
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->nextView_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    .line 14527
    return-object p0
.end method

.method public setRating(ILcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 14556
    if-nez p2, :cond_0

    .line 14557
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14559
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->ensureRatingIsMutable()V

    .line 14560
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->rating_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 14562
    return-object p0
.end method

.method public setResultPosition(I)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14641
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14642
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->resultPosition_:I

    .line 14644
    return-object p0
.end method

.method public setReviewSource(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 2
    .parameter

    .prologue
    .line 14979
    if-nez p1, :cond_0

    .line 14980
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14982
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14983
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->reviewSource_:Ljava/lang/Object;

    .line 14985
    return-object p0
.end method

.method public setReviewSourceBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 2
    .parameter

    .prologue
    .line 14995
    if-nez p1, :cond_0

    .line 14996
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14998
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->bitField0_:I

    .line 14999
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->reviewSource_:Ljava/lang/Object;

    .line 15001
    return-object p0
.end method
