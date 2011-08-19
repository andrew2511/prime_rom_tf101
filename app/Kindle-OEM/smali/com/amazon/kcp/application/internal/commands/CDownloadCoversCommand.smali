.class public Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;
.super Lcom/amazon/kcp/application/internal/commands/CCommand;
.source "CDownloadCoversCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand$CoverToDownload;
    }
.end annotation


# static fields
.field private static final MAX_CONSECUTIVE_FAILURES_SAME_COVER:I = 0x2

.field private static final MAX_CONSECUTIVE_FAILURES_TOTAL:I = 0x4

.field private static final RETRY_DELAY_MS:J = 0x1388L


# instance fields
.field private coverSerializer:Lcom/amazon/kcp/application/internal/IDataSerializer;

.field private coverUrlsToDownload:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand$CoverToDownload;",
            ">;"
        }
    .end annotation
.end field

.field private delayedCallbackFactory:Lcom/amazon/kcp/application/IDelayedCallbackFactory;

.field private downloadCoverWebClient:Lcom/amazon/kcp/internal/webservices/DownloadCoverWebserviceClient;

.field private imageBuilder:Lcom/amazon/kcp/application/internal/IStreamedImageBuilder;

.field private maxDimension:Lcom/amazon/system/drawing/Dimension;

.field private numConsecutiveFailuresSameCover:I

.field private numConsecutiveFailuresTotal:I

.field requestCallback:Lcom/amazon/foundation/ICallback;


# direct methods
.method public constructor <init>(Lcom/amazon/foundation/internal/net/LightWebConnector;Lcom/amazon/kcp/application/internal/IStreamedImageBuilder;Lcom/amazon/kcp/application/IDelayedCallbackFactory;Lcom/amazon/system/drawing/Dimension;)V
    .locals 1
    .parameter "webConnector"
    .parameter "imageBuilder"
    .parameter "delayedCallbackFactory"
    .parameter "maxDimension"

    .prologue
    const/4 v0, 0x0

    .line 110
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/commands/CCommand;-><init>()V

    .line 48
    iput v0, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->numConsecutiveFailuresTotal:I

    .line 49
    iput v0, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->numConsecutiveFailuresSameCover:I

    .line 51
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->coverUrlsToDownload:Ljava/util/LinkedList;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->coverSerializer:Lcom/amazon/kcp/application/internal/IDataSerializer;

    .line 94
    new-instance v0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand$1;-><init>(Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->requestCallback:Lcom/amazon/foundation/ICallback;

    .line 111
    new-instance v0, Lcom/amazon/kcp/internal/webservices/DownloadCoverWebserviceClient;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/internal/webservices/DownloadCoverWebserviceClient;-><init>(Lcom/amazon/foundation/internal/net/LightWebConnector;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->downloadCoverWebClient:Lcom/amazon/kcp/internal/webservices/DownloadCoverWebserviceClient;

    .line 112
    iput-object p2, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->imageBuilder:Lcom/amazon/kcp/application/internal/IStreamedImageBuilder;

    .line 113
    iput-object p3, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->delayedCallbackFactory:Lcom/amazon/kcp/application/IDelayedCallbackFactory;

    .line 114
    iput-object p4, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->maxDimension:Lcom/amazon/system/drawing/Dimension;

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->onCoverRequestFinished()V

    return-void
.end method

.method private onCoverRequestFinished()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 210
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v1, v0

    .line 212
    :goto_0
    if-nez v1, :cond_3

    .line 214
    iget v0, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->numConsecutiveFailuresTotal:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->numConsecutiveFailuresTotal:I

    .line 215
    iget v0, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->numConsecutiveFailuresSameCover:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->numConsecutiveFailuresSameCover:I

    .line 217
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->imageBuilder:Lcom/amazon/kcp/application/internal/IStreamedImageBuilder;

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/IStreamedImageBuilder;->release()V

    .line 219
    iget v0, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->numConsecutiveFailuresTotal:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cover download failed a total of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->numConsecutiveFailuresTotal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " times in a row, giving up"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "DownloadCoversCommand"

    const-string v2, "DownloadCoversError"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 223
    invoke-virtual {p0, v5}, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->setError(Z)V

    .line 224
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->kill()V

    .line 288
    :goto_1
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->imageBuilder:Lcom/amazon/kcp/application/internal/IStreamedImageBuilder;

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/IStreamedImageBuilder;->getImageData()[B

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 232
    :cond_1
    iget v0, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->numConsecutiveFailuresSameCover:I

    if-lt v0, v6, :cond_2

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cover download failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->numConsecutiveFailuresSameCover:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " times for THIS cover; skipping this cover"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->coverUrlsToDownload:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 236
    iput v4, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->numConsecutiveFailuresSameCover:I

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->delayedCallbackFactory:Lcom/amazon/kcp/application/IDelayedCallbackFactory;

    const-wide/16 v1, 0x1388

    invoke-interface {v0, v1, v2, p0}, Lcom/amazon/kcp/application/IDelayedCallbackFactory;->createDelayedCallack(JLcom/amazon/foundation/ICallback;)Lcom/amazon/foundation/ICallback;

    move-result-object v0

    .line 247
    invoke-interface {v0}, Lcom/amazon/foundation/ICallback;->execute()V

    goto :goto_1

    .line 253
    :cond_3
    iput v4, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->numConsecutiveFailuresTotal:I

    .line 254
    iput v4, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->numConsecutiveFailuresSameCover:I

    .line 257
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->imageBuilder:Lcom/amazon/kcp/application/internal/IStreamedImageBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->maxDimension:Lcom/amazon/system/drawing/Dimension;

    invoke-interface {v0, v2}, Lcom/amazon/kcp/application/internal/IStreamedImageBuilder;->getImage(Lcom/amazon/system/drawing/Dimension;)Lcom/amazon/system/drawing/Image;

    move-result-object v0

    .line 262
    new-instance v2, Lcom/amazon/kcp/application/internal/CDownloadableImage;

    invoke-direct {v2, v0}, Lcom/amazon/kcp/application/internal/CDownloadableImage;-><init>(Lcom/amazon/system/drawing/Image;)V

    .line 264
    invoke-interface {v0}, Lcom/amazon/system/drawing/Image;->getWidth()I

    move-result v3

    if-le v3, v5, :cond_4

    invoke-interface {v0}, Lcom/amazon/system/drawing/Image;->getHeight()I

    move-result v0

    if-gt v0, v5, :cond_6

    .line 266
    :cond_4
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Lcom/amazon/kcp/application/internal/CDownloadableImage;->setDownloadState(I)V

    move v3, v4

    .line 274
    :goto_2
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->coverUrlsToDownload:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand$CoverToDownload;

    .line 276
    invoke-virtual {v0}, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand$CoverToDownload;->getImageSetter()Lcom/amazon/kcp/application/internal/IImageSetter;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/amazon/kcp/application/internal/IImageSetter;->setImage(Lcom/amazon/kcp/application/internal/IDownloadableImage;)V

    .line 278
    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->coverSerializer:Lcom/amazon/kcp/application/internal/IDataSerializer;

    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 280
    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->coverSerializer:Lcom/amazon/kcp/application/internal/IDataSerializer;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand$CoverToDownload;->getNonResizedCoverUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/amazon/kcp/application/internal/IDataSerializer;->serialize([BLjava/lang/String;)V

    .line 284
    :cond_5
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->imageBuilder:Lcom/amazon/kcp/application/internal/IStreamedImageBuilder;

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/IStreamedImageBuilder;->release()V

    .line 286
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->execute()V

    goto :goto_1

    .line 271
    :cond_6
    invoke-virtual {v2, v6}, Lcom/amazon/kcp/application/internal/CDownloadableImage;->setDownloadState(I)V

    move v3, v5

    goto :goto_2
.end method


# virtual methods
.method public addBookDetailsCoversToDownload(Lcom/amazon/kcp/store/models/IBookDetails;)V
    .locals 1
    .parameter "bookDetails"

    .prologue
    .line 197
    if-nez p1, :cond_0

    .line 203
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kcp/store/models/IBookDetails;->getCoverUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->addCoversToDownload(Ljava/lang/String;Lcom/amazon/kcp/application/internal/IImageSetter;)V

    goto :goto_0
.end method

.method public addCoversToDownload(Ljava/lang/String;Lcom/amazon/kcp/application/internal/IImageSetter;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 162
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 169
    new-instance v0, Lcom/amazon/kcp/application/internal/CDownloadableImage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/internal/CDownloadableImage;-><init>(Lcom/amazon/system/drawing/Image;)V

    .line 170
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/internal/CDownloadableImage;->setDownloadState(I)V

    .line 171
    invoke-interface {p2, v0}, Lcom/amazon/kcp/application/internal/IImageSetter;->setImage(Lcom/amazon/kcp/application/internal/IDownloadableImage;)V

    .line 172
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->coverUrlsToDownload:Ljava/util/LinkedList;

    new-instance v1, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand$CoverToDownload;

    invoke-direct {v1, p1, p2}, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand$CoverToDownload;-><init>(Ljava/lang/String;Lcom/amazon/kcp/application/internal/IImageSetter;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_0
    return-void
.end method

.method public addMetadataCoversToDownload(Lcom/amazon/kcp/library/models/internal/IMetadata;)V
    .locals 1
    .parameter "metaData"

    .prologue
    .line 183
    if-nez p1, :cond_0

    .line 189
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getCoverUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->addCoversToDownload(Ljava/lang/String;Lcom/amazon/kcp/application/internal/IImageSetter;)V

    goto :goto_0
.end method

.method public execute()V
    .locals 5

    .prologue
    .line 122
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->coverUrlsToDownload:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->imageBuilder:Lcom/amazon/kcp/application/internal/IStreamedImageBuilder;

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/IStreamedImageBuilder;->release()V

    .line 135
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->kill()V

    goto :goto_0

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->coverUrlsToDownload:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand$CoverToDownload;

    .line 142
    if-eqz v0, :cond_0

    .line 147
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->downloadCoverWebClient:Lcom/amazon/kcp/internal/webservices/DownloadCoverWebserviceClient;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand$CoverToDownload;->getNonResizedCoverUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->maxDimension:Lcom/amazon/system/drawing/Dimension;

    iget-object v3, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->imageBuilder:Lcom/amazon/kcp/application/internal/IStreamedImageBuilder;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/amazon/kcp/internal/webservices/DownloadCoverWebserviceClient;->createDownloadCoverRequest(Ljava/lang/String;Lcom/amazon/system/drawing/Dimension;Lcom/amazon/foundation/internal/IDataOutputStream;Lcom/amazon/foundation/IStatusTracker;)Lcom/amazon/foundation/internal/IAsynchronousCallback;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->requestCallback:Lcom/amazon/foundation/ICallback;

    invoke-virtual {v1, v0, v2}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->execute(Lcom/amazon/foundation/internal/IAsynchronousCallback;Lcom/amazon/foundation/ICallback;)V

    goto :goto_0
.end method

.method public setDataSerializer(Lcom/amazon/kcp/application/internal/IDataSerializer;)V
    .locals 0
    .parameter "serializer"

    .prologue
    .line 295
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->coverSerializer:Lcom/amazon/kcp/application/internal/IDataSerializer;

    .line 296
    return-void
.end method
