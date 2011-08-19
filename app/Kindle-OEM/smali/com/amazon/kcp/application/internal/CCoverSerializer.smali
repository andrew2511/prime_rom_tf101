.class public Lcom/amazon/kcp/application/internal/CCoverSerializer;
.super Ljava/lang/Object;
.source "CCoverSerializer.java"

# interfaces
.implements Lcom/amazon/kcp/application/internal/IDataSerializer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/application/internal/CCoverSerializer$AddCoverMetadataToDownloadRunnable;,
        Lcom/amazon/kcp/application/internal/CCoverSerializer$ImageSetterRunnable;,
        Lcom/amazon/kcp/application/internal/CCoverSerializer$CoversSerializerThread;,
        Lcom/amazon/kcp/application/internal/CCoverSerializer$CoverToDeSerialize;,
        Lcom/amazon/kcp/application/internal/CCoverSerializer$CoverToSerialize;,
        Lcom/amazon/kcp/application/internal/CCoverSerializer$ICoverSerializer;
    }
.end annotation


# instance fields
.field private coverToSerializeStack:Ljava/util/Vector;

.field private final coversSerializerThread:Lcom/amazon/kcp/application/internal/CCoverSerializer$CoversSerializerThread;

.field private downloadCoverCommand:Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;

.field private serializationStackLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/system/drawing/ImageFactory;Lcom/amazon/system/util/Utilities;Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;I)V
    .locals 6
    .parameter "fileSystem"
    .parameter "imageFactory"
    .parameter "invokeUtilities"
    .parameter "downloadCommand"
    .parameter "coverCount"

    .prologue
    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer;->coverToSerializeStack:Ljava/util/Vector;

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer;->serializationStackLock:Ljava/lang/Object;

    .line 371
    new-instance v0, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoversSerializerThread;

    move-object v1, p0

    move v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoversSerializerThread;-><init>(Lcom/amazon/kcp/application/internal/CCoverSerializer;ILcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/system/drawing/ImageFactory;Lcom/amazon/system/util/Utilities;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer;->coversSerializerThread:Lcom/amazon/kcp/application/internal/CCoverSerializer$CoversSerializerThread;

    .line 372
    iput-object p4, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer;->downloadCoverCommand:Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;

    .line 374
    invoke-static {p1}, Lcom/amazon/kcp/application/internal/CCoverSerializer;->getCoverSerializationPath(Lcom/amazon/system/io/IFileConnectionFactory;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/system/io/internal/FileSystemHelper;->exists(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    invoke-static {p1}, Lcom/amazon/kcp/application/internal/CCoverSerializer;->getCoverSerializationPath(Lcom/amazon/system/io/IFileConnectionFactory;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/system/io/internal/FileSystemHelper;->mkdir(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)V

    .line 378
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/application/internal/CCoverSerializer;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer;->serializationStackLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/application/internal/CCoverSerializer;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer;->coverToSerializeStack:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/application/internal/CCoverSerializer;)Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer;->downloadCoverCommand:Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;

    return-object v0
.end method

.method public static getCoverSerializationPath(Lcom/amazon/system/io/IFileConnectionFactory;)Ljava/lang/String;
    .locals 2
    .parameter "fileSystem"

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/amazon/system/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/system/io/IPathDescriptor;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/system/io/IPathDescriptor;->getPersistentPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AIcovers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/amazon/system/io/IFileConnectionFactory;->getFileSeparator()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private startSerialization()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer;->coversSerializerThread:Lcom/amazon/kcp/application/internal/CCoverSerializer$CoversSerializerThread;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoversSerializerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer;->coversSerializerThread:Lcom/amazon/kcp/application/internal/CCoverSerializer$CoversSerializerThread;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoversSerializerThread;->start()V

    .line 360
    :cond_0
    return-void
.end method


# virtual methods
.method public deSerialize(Lcom/amazon/kcp/library/models/internal/IMetadata;Lcom/amazon/system/drawing/Dimension;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/CCoverSerializer;->startSerialization()V

    .line 404
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer;->coverToSerializeStack:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 406
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer;->serializationStackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 408
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer;->coverToSerializeStack:Ljava/util/Vector;

    new-instance v2, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoverToDeSerialize;

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getCoverUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, p1, v3}, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoverToDeSerialize;-><init>(Lcom/amazon/kcp/application/internal/CCoverSerializer;Lcom/amazon/kcp/library/models/internal/IMetadata;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 409
    monitor-exit v0

    .line 411
    return-void

    .line 409
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public serialize([BLjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 385
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/CCoverSerializer;->startSerialization()V

    .line 387
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer;->coverToSerializeStack:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 389
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer;->serializationStackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 391
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer;->coverToSerializeStack:Ljava/util/Vector;

    new-instance v2, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoverToSerialize;

    invoke-direct {v2, p1, p2}, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoverToSerialize;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 392
    monitor-exit v0

    .line 394
    return-void

    .line 392
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
