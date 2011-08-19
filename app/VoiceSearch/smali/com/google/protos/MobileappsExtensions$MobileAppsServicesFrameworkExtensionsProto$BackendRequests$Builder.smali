.class public final Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequestsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;",
        "Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;",
        ">;",
        "Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequestsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private responseCode_:I

.field private serviceUri_:Ljava/lang/Object;

.field private timeMs_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 15531
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 15636
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->serviceUri_:Ljava/lang/Object;

    .line 15689
    const/16 v0, 0xc8

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->responseCode_:I

    .line 15532
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->maybeForceBuilderInitialization()V

    .line 15533
    return-void
.end method

.method static synthetic access$17100()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;
    .locals 1

    .prologue
    .line 15526
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->create()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;
    .locals 1

    .prologue
    .line 15538
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 15536
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 15526
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->build()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;
    .locals 2

    .prologue
    .line 15561
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;

    move-result-object v0

    .line 15562
    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 15563
    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 15565
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 15526
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;
    .locals 5

    .prologue
    .line 15569
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/MobileappsExtensions$1;)V

    .line 15570
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->bitField0_:I

    .line 15571
    const/4 v2, 0x0

    .line 15572
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 15573
    or-int/lit8 v2, v2, 0x1

    .line 15575
    :cond_0
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->serviceUri_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->access$17302(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15576
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 15577
    or-int/lit8 v2, v2, 0x2

    .line 15579
    :cond_1
    iget v3, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->responseCode_:I

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->access$17402(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;I)I

    .line 15580
    and-int/lit8 v1, v1, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    .line 15581
    or-int/lit8 v1, v2, 0x4

    .line 15583
    :goto_0
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->timeMs_:I

    invoke-static {v0, v2}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->access$17502(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;I)I

    .line 15584
    invoke-static {v0, v1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->access$17602(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;I)I

    .line 15585
    return-object v0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 15526
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->clear()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 15526
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->clear()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;
    .locals 1

    .prologue
    .line 15542
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 15543
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->serviceUri_:Ljava/lang/Object;

    .line 15544
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->bitField0_:I

    .line 15545
    const/16 v0, 0xc8

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->responseCode_:I

    .line 15546
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->bitField0_:I

    .line 15547
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->timeMs_:I

    .line 15548
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->bitField0_:I

    .line 15549
    return-object p0
.end method

.method public clearResponseCode()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;
    .locals 1

    .prologue
    .line 15703
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->bitField0_:I

    .line 15704
    const/16 v0, 0xc8

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->responseCode_:I

    .line 15706
    return-object p0
.end method

.method public clearServiceUri()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;
    .locals 1

    .prologue
    .line 15672
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->bitField0_:I

    .line 15673
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->getServiceUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->serviceUri_:Ljava/lang/Object;

    .line 15675
    return-object p0
.end method

.method public clearTimeMs()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;
    .locals 1

    .prologue
    .line 15724
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->bitField0_:I

    .line 15725
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->timeMs_:I

    .line 15727
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 15526
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->clone()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 15526
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->clone()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 15526
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->clone()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;
    .locals 2

    .prologue
    .line 15553
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->create()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;

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
    .line 15526
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->clone()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 15526
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 15526
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;
    .locals 1

    .prologue
    .line 15557
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .prologue
    .line 15694
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->responseCode_:I

    return v0
.end method

.method public getServiceUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 15641
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->serviceUri_:Ljava/lang/Object;

    .line 15642
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 15643
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 15644
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->serviceUri_:Ljava/lang/Object;

    .line 15647
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getServiceUriBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 15652
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->serviceUri_:Ljava/lang/Object;

    .line 15653
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 15654
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 15656
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->serviceUri_:Ljava/lang/Object;

    .line 15659
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getTimeMs()I
    .locals 1

    .prologue
    .line 15715
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->timeMs_:I

    return v0
.end method

.method public hasResponseCode()Z
    .locals 2

    .prologue
    .line 15691
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->bitField0_:I

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

.method public hasServiceUri()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 15638
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->bitField0_:I

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
    .line 15712
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->bitField0_:I

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
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15605
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->hasServiceUri()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 15613
    :goto_0
    return v0

    .line 15609
    :cond_0
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->hasTimeMs()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 15611
    goto :goto_0

    .line 15613
    :cond_1
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
    .line 15526
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 15526
    check-cast p1, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;

    invoke-virtual {p0, p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;

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
    .line 15526
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15620
    const/4 v1, 0x0

    .line 15622
    :try_start_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15627
    if-eqz v0, :cond_0

    .line 15628
    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;

    .line 15631
    :cond_0
    return-object p0

    .line 15623
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 15624
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 15625
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15627
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 15628
    invoke-virtual {p0, v1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;

    :cond_1
    throw v0

    .line 15627
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;
    .locals 1
    .parameter

    .prologue
    .line 15589
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 15601
    :goto_0
    return-object v0

    .line 15590
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->hasServiceUri()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15591
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->bitField0_:I

    .line 15592
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->access$17300(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->serviceUri_:Ljava/lang/Object;

    .line 15595
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->hasResponseCode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15596
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->getResponseCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->setResponseCode(I)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;

    .line 15598
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->hasTimeMs()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15599
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->getTimeMs()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->setTimeMs(I)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;

    :cond_3
    move-object v0, p0

    .line 15601
    goto :goto_0
.end method

.method public setResponseCode(I)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;
    .locals 1
    .parameter

    .prologue
    .line 15697
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->bitField0_:I

    .line 15698
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->responseCode_:I

    .line 15700
    return-object p0
.end method

.method public setServiceUri(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;
    .locals 1
    .parameter

    .prologue
    .line 15663
    if-nez p1, :cond_0

    .line 15664
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15666
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->bitField0_:I

    .line 15667
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->serviceUri_:Ljava/lang/Object;

    .line 15669
    return-object p0
.end method

.method public setServiceUriBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;
    .locals 1
    .parameter

    .prologue
    .line 15679
    if-nez p1, :cond_0

    .line 15680
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15682
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->bitField0_:I

    .line 15683
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->serviceUri_:Ljava/lang/Object;

    .line 15685
    return-object p0
.end method

.method public setTimeMs(I)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;
    .locals 1
    .parameter

    .prologue
    .line 15718
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->bitField0_:I

    .line 15719
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->timeMs_:I

    .line 15721
    return-object p0
.end method
