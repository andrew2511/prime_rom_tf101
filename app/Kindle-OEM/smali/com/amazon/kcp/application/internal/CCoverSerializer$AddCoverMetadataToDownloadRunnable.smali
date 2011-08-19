.class Lcom/amazon/kcp/application/internal/CCoverSerializer$AddCoverMetadataToDownloadRunnable;
.super Ljava/lang/Object;
.source "CCoverSerializer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/internal/CCoverSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddCoverMetadataToDownloadRunnable"
.end annotation


# instance fields
.field private final metadata:Lcom/amazon/kcp/library/models/internal/IMetadata;

.field final synthetic this$0:Lcom/amazon/kcp/application/internal/CCoverSerializer;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/internal/CCoverSerializer;Lcom/amazon/kcp/library/models/internal/IMetadata;)V
    .locals 0
    .parameter
    .parameter "metadata"

    .prologue
    .line 343
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$AddCoverMetadataToDownloadRunnable;->this$0:Lcom/amazon/kcp/application/internal/CCoverSerializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    iput-object p2, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$AddCoverMetadataToDownloadRunnable;->metadata:Lcom/amazon/kcp/library/models/internal/IMetadata;

    .line 345
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$AddCoverMetadataToDownloadRunnable;->this$0:Lcom/amazon/kcp/application/internal/CCoverSerializer;

    invoke-static {v0}, Lcom/amazon/kcp/application/internal/CCoverSerializer;->access$200(Lcom/amazon/kcp/application/internal/CCoverSerializer;)Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$AddCoverMetadataToDownloadRunnable;->metadata:Lcom/amazon/kcp/library/models/internal/IMetadata;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->addMetadataCoversToDownload(Lcom/amazon/kcp/library/models/internal/IMetadata;)V

    .line 350
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$AddCoverMetadataToDownloadRunnable;->this$0:Lcom/amazon/kcp/application/internal/CCoverSerializer;

    invoke-static {v0}, Lcom/amazon/kcp/application/internal/CCoverSerializer;->access$200(Lcom/amazon/kcp/application/internal/CCoverSerializer;)Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->execute()V

    .line 351
    return-void
.end method
