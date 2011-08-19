.class public final Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;",
        "Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;",
        ">;",
        "Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProtoOrBuilder;"
    }
.end annotation


# instance fields
.field private applicationName_:Ljava/lang/Object;

.field private applicationVersion_:Ljava/lang/Object;

.field private backendRequests_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private clientLocale_:Ljava/lang/Object;

.field private distributionChannel_:Ljava/lang/Object;

.field private installInstanceId_:J

.field private isActivationEvent_:Z

.field private platformId_:Ljava/lang/Object;

.field private protocolVersion_:I

.field private recordedEvent_:Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

.field private requestId_:J

.field private userEvents_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 17605
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 17874
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->applicationName_:Ljava/lang/Object;

    .line 17927
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->applicationVersion_:Ljava/lang/Object;

    .line 17980
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->platformId_:Ljava/lang/Object;

    .line 18033
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->distributionChannel_:Ljava/lang/Object;

    .line 18086
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->clientLocale_:Ljava/lang/Object;

    .line 18181
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->backendRequests_:Ljava/util/List;

    .line 18270
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->recordedEvent_:Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    .line 18334
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->userEvents_:Ljava/util/List;

    .line 17606
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->maybeForceBuilderInitialization()V

    .line 17607
    return-void
.end method

.method static synthetic access$19600()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 1

    .prologue
    .line 17600
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->create()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 1

    .prologue
    .line 17612
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;-><init>()V

    return-object v0
.end method

.method private ensureBackendRequestsIsMutable()V
    .locals 2

    .prologue
    .line 18184
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-eq v0, v1, :cond_0

    .line 18185
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->backendRequests_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->backendRequests_:Ljava/util/List;

    .line 18186
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 18188
    :cond_0
    return-void
.end method

.method private ensureUserEventsIsMutable()V
    .locals 2

    .prologue
    .line 18337
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-eq v0, v1, :cond_0

    .line 18338
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->userEvents_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->userEvents_:Ljava/util/List;

    .line 18339
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 18341
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 17610
    return-void
.end method


# virtual methods
.method public addAllBackendRequests(Ljava/lang/Iterable;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;",
            ">;)",
            "Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;"
        }
    .end annotation

    .prologue
    .line 18251
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->ensureBackendRequestsIsMutable()V

    .line 18252
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->backendRequests_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 18254
    return-object p0
.end method

.method public addAllUserEvents(Ljava/lang/Iterable;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;",
            ">;)",
            "Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;"
        }
    .end annotation

    .prologue
    .line 18404
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->ensureUserEventsIsMutable()V

    .line 18405
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->userEvents_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 18407
    return-object p0
.end method

.method public addBackendRequests(ILcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 18244
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->ensureBackendRequestsIsMutable()V

    .line 18245
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->backendRequests_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->build()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 18247
    return-object p0
.end method

.method public addBackendRequests(ILcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18227
    if-nez p2, :cond_0

    .line 18228
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18230
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->ensureBackendRequestsIsMutable()V

    .line 18231
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->backendRequests_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 18233
    return-object p0
.end method

.method public addBackendRequests(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 2
    .parameter

    .prologue
    .line 18237
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->ensureBackendRequestsIsMutable()V

    .line 18238
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->backendRequests_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->build()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18240
    return-object p0
.end method

.method public addBackendRequests(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18217
    if-nez p1, :cond_0

    .line 18218
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18220
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->ensureBackendRequestsIsMutable()V

    .line 18221
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->backendRequests_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18223
    return-object p0
.end method

.method public addUserEvents(ILcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 18397
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->ensureUserEventsIsMutable()V

    .line 18398
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->userEvents_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->build()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 18400
    return-object p0
.end method

.method public addUserEvents(ILcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18380
    if-nez p2, :cond_0

    .line 18381
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18383
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->ensureUserEventsIsMutable()V

    .line 18384
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->userEvents_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 18386
    return-object p0
.end method

.method public addUserEvents(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 2
    .parameter

    .prologue
    .line 18390
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->ensureUserEventsIsMutable()V

    .line 18391
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->userEvents_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->build()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18393
    return-object p0
.end method

.method public addUserEvents(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18370
    if-nez p1, :cond_0

    .line 18371
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18373
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->ensureUserEventsIsMutable()V

    .line 18374
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->userEvents_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18376
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 17600
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->build()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;
    .locals 2

    .prologue
    .line 17653
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;

    move-result-object v0

    .line 17654
    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 17655
    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 17657
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 17600
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;
    .locals 5

    .prologue
    .line 17661
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/MobileappsExtensions$1;)V

    .line 17662
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 17663
    const/4 v2, 0x0

    .line 17664
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 17665
    or-int/lit8 v2, v2, 0x1

    .line 17667
    :cond_0
    iget v3, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->protocolVersion_:I

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->access$19802(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;I)I

    .line 17668
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 17669
    or-int/lit8 v2, v2, 0x2

    .line 17671
    :cond_1
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->applicationName_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->access$19902(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17672
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 17673
    or-int/lit8 v2, v2, 0x4

    .line 17675
    :cond_2
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->applicationVersion_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->access$20002(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17676
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 17677
    or-int/lit8 v2, v2, 0x8

    .line 17679
    :cond_3
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->platformId_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->access$20102(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17680
    and-int/lit8 v3, v1, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 17681
    or-int/lit8 v2, v2, 0x10

    .line 17683
    :cond_4
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->distributionChannel_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->access$20202(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17684
    and-int/lit8 v3, v1, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 17685
    or-int/lit8 v2, v2, 0x20

    .line 17687
    :cond_5
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->clientLocale_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->access$20302(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17688
    and-int/lit8 v3, v1, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 17689
    or-int/lit8 v2, v2, 0x40

    .line 17691
    :cond_6
    iget-wide v3, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->installInstanceId_:J

    invoke-static {v0, v3, v4}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->access$20402(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;J)J

    .line 17692
    and-int/lit16 v3, v1, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 17693
    or-int/lit16 v2, v2, 0x80

    .line 17695
    :cond_7
    iget-wide v3, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->requestId_:J

    invoke-static {v0, v3, v4}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->access$20502(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;J)J

    .line 17696
    iget v3, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 17697
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->backendRequests_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->backendRequests_:Ljava/util/List;

    .line 17698
    iget v3, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x101

    iput v3, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 17700
    :cond_8
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->backendRequests_:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->access$20602(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;Ljava/util/List;)Ljava/util/List;

    .line 17701
    and-int/lit16 v3, v1, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 17702
    or-int/lit16 v2, v2, 0x100

    .line 17704
    :cond_9
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->recordedEvent_:Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->access$20702(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    .line 17705
    and-int/lit16 v1, v1, 0x400

    const/16 v3, 0x400

    if-ne v1, v3, :cond_b

    .line 17706
    or-int/lit16 v1, v2, 0x200

    .line 17708
    :goto_0
    iget-boolean v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->isActivationEvent_:Z

    invoke-static {v0, v2}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->access$20802(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;Z)Z

    .line 17709
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_a

    .line 17710
    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->userEvents_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->userEvents_:Ljava/util/List;

    .line 17711
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x801

    iput v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 17713
    :cond_a
    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->userEvents_:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->access$20902(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;Ljava/util/List;)Ljava/util/List;

    .line 17714
    invoke-static {v0, v1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->access$21002(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;I)I

    .line 17715
    return-object v0

    :cond_b
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 17600
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->clear()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 17600
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->clear()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 17616
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 17617
    iput v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->protocolVersion_:I

    .line 17618
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 17619
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->applicationName_:Ljava/lang/Object;

    .line 17620
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 17621
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->applicationVersion_:Ljava/lang/Object;

    .line 17622
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 17623
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->platformId_:Ljava/lang/Object;

    .line 17624
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 17625
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->distributionChannel_:Ljava/lang/Object;

    .line 17626
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 17627
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->clientLocale_:Ljava/lang/Object;

    .line 17628
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 17629
    iput-wide v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->installInstanceId_:J

    .line 17630
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 17631
    iput-wide v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->requestId_:J

    .line 17632
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 17633
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->backendRequests_:Ljava/util/List;

    .line 17634
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 17635
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->recordedEvent_:Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    .line 17636
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 17637
    iput-boolean v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->isActivationEvent_:Z

    .line 17638
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 17639
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->userEvents_:Ljava/util/List;

    .line 17640
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 17641
    return-object p0
.end method

.method public clearApplicationName()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 1

    .prologue
    .line 17910
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 17911
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->getApplicationName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->applicationName_:Ljava/lang/Object;

    .line 17913
    return-object p0
.end method

.method public clearApplicationVersion()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 1

    .prologue
    .line 17963
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 17964
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->getApplicationVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->applicationVersion_:Ljava/lang/Object;

    .line 17966
    return-object p0
.end method

.method public clearBackendRequests()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 1

    .prologue
    .line 18257
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->backendRequests_:Ljava/util/List;

    .line 18258
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 18260
    return-object p0
.end method

.method public clearClientLocale()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 1

    .prologue
    .line 18122
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 18123
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->getClientLocale()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->clientLocale_:Ljava/lang/Object;

    .line 18125
    return-object p0
.end method

.method public clearDistributionChannel()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 1

    .prologue
    .line 18069
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 18070
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->getDistributionChannel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->distributionChannel_:Ljava/lang/Object;

    .line 18072
    return-object p0
.end method

.method public clearInstallInstanceId()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 2

    .prologue
    .line 18153
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 18154
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->installInstanceId_:J

    .line 18156
    return-object p0
.end method

.method public clearIsActivationEvent()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 1

    .prologue
    .line 18327
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 18328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->isActivationEvent_:Z

    .line 18330
    return-object p0
.end method

.method public clearPlatformId()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 1

    .prologue
    .line 18016
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 18017
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->getPlatformId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->platformId_:Ljava/lang/Object;

    .line 18019
    return-object p0
.end method

.method public clearProtocolVersion()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 1

    .prologue
    .line 17867
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 17868
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->protocolVersion_:I

    .line 17870
    return-object p0
.end method

.method public clearRecordedEvent()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 1

    .prologue
    .line 18306
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->recordedEvent_:Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    .line 18308
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 18309
    return-object p0
.end method

.method public clearRequestId()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 2

    .prologue
    .line 18174
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 18175
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->requestId_:J

    .line 18177
    return-object p0
.end method

.method public clearUserEvents()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 1

    .prologue
    .line 18410
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->userEvents_:Ljava/util/List;

    .line 18411
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 18413
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 17600
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->clone()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 17600
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->clone()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 17600
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->clone()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 2

    .prologue
    .line 17645
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->create()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;

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
    .line 17600
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->clone()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 17879
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->applicationName_:Ljava/lang/Object;

    .line 17880
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 17881
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 17882
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->applicationName_:Ljava/lang/Object;

    .line 17885
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getApplicationNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 17890
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->applicationName_:Ljava/lang/Object;

    .line 17891
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17892
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17894
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->applicationName_:Ljava/lang/Object;

    .line 17897
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getApplicationVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 17932
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->applicationVersion_:Ljava/lang/Object;

    .line 17933
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 17934
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 17935
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->applicationVersion_:Ljava/lang/Object;

    .line 17938
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getApplicationVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 17943
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->applicationVersion_:Ljava/lang/Object;

    .line 17944
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17945
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17947
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->applicationVersion_:Ljava/lang/Object;

    .line 17950
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getBackendRequests(I)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;
    .locals 1
    .parameter

    .prologue
    .line 18197
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->backendRequests_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;

    return-object p0
.end method

.method public getBackendRequestsCount()I
    .locals 1

    .prologue
    .line 18194
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->backendRequests_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getBackendRequestsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18191
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->backendRequests_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getClientLocale()Ljava/lang/String;
    .locals 2

    .prologue
    .line 18091
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->clientLocale_:Ljava/lang/Object;

    .line 18092
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 18093
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 18094
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->clientLocale_:Ljava/lang/Object;

    .line 18097
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getClientLocaleBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 18102
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->clientLocale_:Ljava/lang/Object;

    .line 18103
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 18104
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 18106
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->clientLocale_:Ljava/lang/Object;

    .line 18109
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 17600
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 17600
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;
    .locals 1

    .prologue
    .line 17649
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;

    move-result-object v0

    return-object v0
.end method

.method public getDistributionChannel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 18038
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->distributionChannel_:Ljava/lang/Object;

    .line 18039
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 18040
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 18041
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->distributionChannel_:Ljava/lang/Object;

    .line 18044
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getDistributionChannelBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 18049
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->distributionChannel_:Ljava/lang/Object;

    .line 18050
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 18051
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 18053
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->distributionChannel_:Ljava/lang/Object;

    .line 18056
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getInstallInstanceId()J
    .locals 2

    .prologue
    .line 18144
    iget-wide v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->installInstanceId_:J

    return-wide v0
.end method

.method public getIsActivationEvent()Z
    .locals 1

    .prologue
    .line 18318
    iget-boolean v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->isActivationEvent_:Z

    return v0
.end method

.method public getPlatformId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 17985
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->platformId_:Ljava/lang/Object;

    .line 17986
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 17987
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 17988
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->platformId_:Ljava/lang/Object;

    .line 17991
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getPlatformIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 17996
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->platformId_:Ljava/lang/Object;

    .line 17997
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17998
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 18000
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->platformId_:Ljava/lang/Object;

    .line 18003
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getProtocolVersion()I
    .locals 1

    .prologue
    .line 17858
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->protocolVersion_:I

    return v0
.end method

.method public getRecordedEvent()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;
    .locals 1

    .prologue
    .line 18275
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->recordedEvent_:Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    return-object v0
.end method

.method public getRequestId()J
    .locals 2

    .prologue
    .line 18165
    iget-wide v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->requestId_:J

    return-wide v0
.end method

.method public getUserEvents(I)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;
    .locals 1
    .parameter

    .prologue
    .line 18350
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->userEvents_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;

    return-object p0
.end method

.method public getUserEventsCount()I
    .locals 1

    .prologue
    .line 18347
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->userEvents_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUserEventsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18344
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->userEvents_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasApplicationName()Z
    .locals 2

    .prologue
    .line 17876
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

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

.method public hasApplicationVersion()Z
    .locals 2

    .prologue
    .line 17929
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

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

.method public hasClientLocale()Z
    .locals 2

    .prologue
    .line 18088
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

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

.method public hasDistributionChannel()Z
    .locals 2

    .prologue
    .line 18035
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

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

.method public hasInstallInstanceId()Z
    .locals 2

    .prologue
    .line 18141
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

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

.method public hasIsActivationEvent()Z
    .locals 2

    .prologue
    .line 18315
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

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

.method public hasPlatformId()Z
    .locals 2

    .prologue
    .line 17982
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

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

.method public hasProtocolVersion()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 17855
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRecordedEvent()Z
    .locals 2

    .prologue
    .line 18272
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

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

.method public hasRequestId()Z
    .locals 2

    .prologue
    .line 18162
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 17784
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->hasProtocolVersion()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 17830
    :goto_0
    return v0

    .line 17788
    :cond_0
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->hasApplicationName()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 17790
    goto :goto_0

    .line 17792
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->hasApplicationVersion()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    .line 17794
    goto :goto_0

    .line 17796
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->hasPlatformId()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    .line 17798
    goto :goto_0

    .line 17800
    :cond_3
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->hasDistributionChannel()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    .line 17802
    goto :goto_0

    .line 17804
    :cond_4
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->hasClientLocale()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    .line 17806
    goto :goto_0

    .line 17808
    :cond_5
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->hasRequestId()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    .line 17810
    goto :goto_0

    :cond_6
    move v0, v2

    .line 17812
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->getBackendRequestsCount()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 17813
    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->getBackendRequests(I)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_7

    move v0, v2

    .line 17815
    goto :goto_0

    .line 17812
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 17818
    :cond_8
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->hasRecordedEvent()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 17819
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->getRecordedEvent()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v2

    .line 17821
    goto :goto_0

    :cond_9
    move v0, v2

    .line 17824
    :goto_2
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->getUserEventsCount()I

    move-result v1

    if-ge v0, v1, :cond_b

    .line 17825
    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->getUserEvents(I)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_a

    move v0, v2

    .line 17827
    goto :goto_0

    .line 17824
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 17830
    :cond_b
    const/4 v0, 0x1

    goto :goto_0
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
    .line 17600
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 17600
    check-cast p1, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;

    invoke-virtual {p0, p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;

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
    .line 17600
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17837
    const/4 v1, 0x0

    .line 17839
    :try_start_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17844
    if-eqz v0, :cond_0

    .line 17845
    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;

    .line 17848
    :cond_0
    return-object p0

    .line 17840
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 17841
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 17842
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17844
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 17845
    invoke-virtual {p0, v1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;

    :cond_1
    throw v0

    .line 17844
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 2
    .parameter

    .prologue
    .line 17719
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 17780
    :goto_0
    return-object v0

    .line 17720
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->hasProtocolVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17721
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->getProtocolVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->setProtocolVersion(I)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;

    .line 17723
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->hasApplicationName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17724
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 17725
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->access$19900(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->applicationName_:Ljava/lang/Object;

    .line 17728
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->hasApplicationVersion()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17729
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 17730
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->access$20000(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->applicationVersion_:Ljava/lang/Object;

    .line 17733
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->hasPlatformId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17734
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 17735
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->access$20100(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->platformId_:Ljava/lang/Object;

    .line 17738
    :cond_4
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->hasDistributionChannel()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17739
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 17740
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->access$20200(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->distributionChannel_:Ljava/lang/Object;

    .line 17743
    :cond_5
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->hasClientLocale()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 17744
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 17745
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->access$20300(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->clientLocale_:Ljava/lang/Object;

    .line 17748
    :cond_6
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->hasInstallInstanceId()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 17749
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->getInstallInstanceId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->setInstallInstanceId(J)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;

    .line 17751
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->hasRequestId()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 17752
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->getRequestId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->setRequestId(J)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;

    .line 17754
    :cond_8
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->access$20600(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 17755
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->backendRequests_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 17756
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->access$20600(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->backendRequests_:Ljava/util/List;

    .line 17757
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 17764
    :cond_9
    :goto_1
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->hasRecordedEvent()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 17765
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->getRecordedEvent()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->mergeRecordedEvent(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;

    .line 17767
    :cond_a
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->hasIsActivationEvent()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 17768
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->getIsActivationEvent()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->setIsActivationEvent(Z)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;

    .line 17770
    :cond_b
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->access$20900(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 17771
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->userEvents_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 17772
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->access$20900(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->userEvents_:Ljava/util/List;

    .line 17773
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    :cond_c
    :goto_2
    move-object v0, p0

    .line 17780
    goto/16 :goto_0

    .line 17759
    :cond_d
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->ensureBackendRequestsIsMutable()V

    .line 17760
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->backendRequests_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->access$20600(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 17775
    :cond_e
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->ensureUserEventsIsMutable()V

    .line 17776
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->userEvents_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->access$20900(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method

.method public mergeRecordedEvent(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 2
    .parameter

    .prologue
    .line 18294
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->recordedEvent_:Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 18296
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->recordedEvent_:Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->newBuilder(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->recordedEvent_:Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    .line 18302
    :goto_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 18303
    return-object p0

    .line 18299
    :cond_0
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->recordedEvent_:Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    goto :goto_0
.end method

.method public removeBackendRequests(I)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18263
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->ensureBackendRequestsIsMutable()V

    .line 18264
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->backendRequests_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 18266
    return-object p0
.end method

.method public removeUserEvents(I)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18416
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->ensureUserEventsIsMutable()V

    .line 18417
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->userEvents_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 18419
    return-object p0
.end method

.method public setApplicationName(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 17901
    if-nez p1, :cond_0

    .line 17902
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17904
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 17905
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->applicationName_:Ljava/lang/Object;

    .line 17907
    return-object p0
.end method

.method public setApplicationNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 17917
    if-nez p1, :cond_0

    .line 17918
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17920
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 17921
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->applicationName_:Ljava/lang/Object;

    .line 17923
    return-object p0
.end method

.method public setApplicationVersion(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 17954
    if-nez p1, :cond_0

    .line 17955
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17957
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 17958
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->applicationVersion_:Ljava/lang/Object;

    .line 17960
    return-object p0
.end method

.method public setApplicationVersionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 17970
    if-nez p1, :cond_0

    .line 17971
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17973
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 17974
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->applicationVersion_:Ljava/lang/Object;

    .line 17976
    return-object p0
.end method

.method public setBackendRequests(ILcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 18211
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->ensureBackendRequestsIsMutable()V

    .line 18212
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->backendRequests_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->build()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 18214
    return-object p0
.end method

.method public setBackendRequests(ILcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18201
    if-nez p2, :cond_0

    .line 18202
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18204
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->ensureBackendRequestsIsMutable()V

    .line 18205
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->backendRequests_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 18207
    return-object p0
.end method

.method public setClientLocale(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18113
    if-nez p1, :cond_0

    .line 18114
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18116
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 18117
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->clientLocale_:Ljava/lang/Object;

    .line 18119
    return-object p0
.end method

.method public setClientLocaleBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18129
    if-nez p1, :cond_0

    .line 18130
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18132
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 18133
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->clientLocale_:Ljava/lang/Object;

    .line 18135
    return-object p0
.end method

.method public setDistributionChannel(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18060
    if-nez p1, :cond_0

    .line 18061
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18063
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 18064
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->distributionChannel_:Ljava/lang/Object;

    .line 18066
    return-object p0
.end method

.method public setDistributionChannelBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18076
    if-nez p1, :cond_0

    .line 18077
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18079
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 18080
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->distributionChannel_:Ljava/lang/Object;

    .line 18082
    return-object p0
.end method

.method public setInstallInstanceId(J)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18147
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 18148
    iput-wide p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->installInstanceId_:J

    .line 18150
    return-object p0
.end method

.method public setIsActivationEvent(Z)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18321
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 18322
    iput-boolean p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->isActivationEvent_:Z

    .line 18324
    return-object p0
.end method

.method public setPlatformId(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18007
    if-nez p1, :cond_0

    .line 18008
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18010
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 18011
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->platformId_:Ljava/lang/Object;

    .line 18013
    return-object p0
.end method

.method public setPlatformIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18023
    if-nez p1, :cond_0

    .line 18024
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18026
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 18027
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->platformId_:Ljava/lang/Object;

    .line 18029
    return-object p0
.end method

.method public setProtocolVersion(I)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 17861
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 17862
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->protocolVersion_:I

    .line 17864
    return-object p0
.end method

.method public setRecordedEvent(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18288
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->build()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->recordedEvent_:Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    .line 18290
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 18291
    return-object p0
.end method

.method public setRecordedEvent(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18278
    if-nez p1, :cond_0

    .line 18279
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18281
    :cond_0
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->recordedEvent_:Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    .line 18283
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 18284
    return-object p0
.end method

.method public setRequestId(J)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18168
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->bitField0_:I

    .line 18169
    iput-wide p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->requestId_:J

    .line 18171
    return-object p0
.end method

.method public setUserEvents(ILcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 18364
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->ensureUserEventsIsMutable()V

    .line 18365
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->userEvents_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->build()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 18367
    return-object p0
.end method

.method public setUserEvents(ILcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18354
    if-nez p2, :cond_0

    .line 18355
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18357
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->ensureUserEventsIsMutable()V

    .line 18358
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->userEvents_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 18360
    return-object p0
.end method
