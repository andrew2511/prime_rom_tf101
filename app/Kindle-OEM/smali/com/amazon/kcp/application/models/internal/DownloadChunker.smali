.class public Lcom/amazon/kcp/application/models/internal/DownloadChunker;
.super Ljava/lang/Object;
.source "DownloadChunker.java"

# interfaces
.implements Lcom/amazon/kcp/application/IDownloadChunker;


# static fields
.field static final CHUNK_CONSECUTIVE_SUCCESSES_KEY:Ljava/lang/String; = "BookDownloadConsecutiveSuccesses"

.field static final CHUNK_DECREASE_THRESHOLD:I = 0x1

.field static final CHUNK_INCREASE_THRESHOLD:I = 0x14

.field private static final CHUNK_SCALE_FACTOR:I = 0x2

.field static final CHUNK_SIZE_PERSIST_KEY:Ljava/lang/String; = "BookDownloadChunkSize"

.field private static final LOG_FEATURE_NAME:Ljava/lang/String; = "DOWNLOAD_CHUNKER"

.field public static final MAX_CHUNK_SIZE:I = 0x100000

.field public static final MIN_CHUNK_SIZE:I = 0x20000


# instance fields
.field private chunkSize:I

.field private consecutiveSuccesses:I

.field private final persistentSettings:Lcom/amazon/system/io/IPersistentSettingsHelper;


# direct methods
.method public constructor <init>(Lcom/amazon/system/io/IPersistentSettingsHelper;)V
    .locals 3
    .parameter "persistentSettings"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/DownloadChunker;->persistentSettings:Lcom/amazon/system/io/IPersistentSettingsHelper;

    .line 94
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/DownloadChunker;->persistentSettings:Lcom/amazon/system/io/IPersistentSettingsHelper;

    const-string v1, "BookDownloadChunkSize"

    const/high16 v2, 0x10

    invoke-interface {v0, v1, v2}, Lcom/amazon/system/io/IPersistentSettingsHelper;->get(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/application/models/internal/DownloadChunker;->setChunkSize(I)V

    .line 97
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/DownloadChunker;->persistentSettings:Lcom/amazon/system/io/IPersistentSettingsHelper;

    const-string v1, "BookDownloadConsecutiveSuccesses"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/amazon/system/io/IPersistentSettingsHelper;->get(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/application/models/internal/DownloadChunker;->setConsecutiveSuccesses(I)V

    .line 98
    return-void
.end method

.method private setChunkSize(I)V
    .locals 3
    .parameter "chunkSize"

    .prologue
    .line 162
    const/high16 v1, 0x2

    const/high16 v2, 0x10

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 163
    .local v0, boundedChunkSize:I
    iget-object v1, p0, Lcom/amazon/kcp/application/models/internal/DownloadChunker;->persistentSettings:Lcom/amazon/system/io/IPersistentSettingsHelper;

    const-string v2, "BookDownloadChunkSize"

    invoke-interface {v1, v2, v0}, Lcom/amazon/system/io/IPersistentSettingsHelper;->set(Ljava/lang/String;I)V

    .line 164
    iput v0, p0, Lcom/amazon/kcp/application/models/internal/DownloadChunker;->chunkSize:I

    .line 165
    return-void
.end method

.method private setConsecutiveSuccesses(I)V
    .locals 3
    .parameter "consecutiveSuccesses"

    .prologue
    .line 169
    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 170
    .local v0, boundedConsecutiveSuccesses:I
    iget-object v1, p0, Lcom/amazon/kcp/application/models/internal/DownloadChunker;->persistentSettings:Lcom/amazon/system/io/IPersistentSettingsHelper;

    const-string v2, "BookDownloadConsecutiveSuccesses"

    invoke-interface {v1, v2, v0}, Lcom/amazon/system/io/IPersistentSettingsHelper;->set(Ljava/lang/String;I)V

    .line 171
    iput v0, p0, Lcom/amazon/kcp/application/models/internal/DownloadChunker;->consecutiveSuccesses:I

    .line 172
    return-void
.end method


# virtual methods
.method public getChunkSize()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/amazon/kcp/application/models/internal/DownloadChunker;->chunkSize:I

    return v0
.end method

.method getConsecutiveSuccesses()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/amazon/kcp/application/models/internal/DownloadChunker;->consecutiveSuccesses:I

    return v0
.end method

.method public onSuccessfulChunkDownload()V
    .locals 2

    .prologue
    .line 108
    iget v0, p0, Lcom/amazon/kcp/application/models/internal/DownloadChunker;->consecutiveSuccesses:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/amazon/kcp/application/models/internal/DownloadChunker;->setConsecutiveSuccesses(I)V

    .line 113
    iget v0, p0, Lcom/amazon/kcp/application/models/internal/DownloadChunker;->consecutiveSuccesses:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/amazon/kcp/application/models/internal/DownloadChunker;->chunkSize:I

    const/high16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "increasing chunk size since we had "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kcp/application/models/internal/DownloadChunker;->consecutiveSuccesses:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " consecutive successful chunk downloads."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget v0, p0, Lcom/amazon/kcp/application/models/internal/DownloadChunker;->chunkSize:I

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/amazon/kcp/application/models/internal/DownloadChunker;->setChunkSize(I)V

    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/application/models/internal/DownloadChunker;->setConsecutiveSuccesses(I)V

    .line 122
    :cond_0
    return-void
.end method

.method public onUnsuccessfulChunkDownload()V
    .locals 2

    .prologue
    .line 131
    iget v0, p0, Lcom/amazon/kcp/application/models/internal/DownloadChunker;->consecutiveSuccesses:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decreasing chunk size since we only had "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kcp/application/models/internal/DownloadChunker;->consecutiveSuccesses:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " consecutive successful chunk downloads."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget v0, p0, Lcom/amazon/kcp/application/models/internal/DownloadChunker;->chunkSize:I

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/amazon/kcp/application/models/internal/DownloadChunker;->setChunkSize(I)V

    .line 139
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/application/models/internal/DownloadChunker;->setConsecutiveSuccesses(I)V

    .line 140
    return-void
.end method
