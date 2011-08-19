.class Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand$CoverToDownload;
.super Ljava/lang/Object;
.source "CDownloadCoversCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CoverToDownload"
.end annotation


# instance fields
.field private imageSetter:Lcom/amazon/kcp/application/internal/IImageSetter;

.field private nonResizedCoverUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kcp/application/internal/IImageSetter;)V
    .locals 0
    .parameter "nonResizedCoverUrl"
    .parameter "imageSetter"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand$CoverToDownload;->nonResizedCoverUrl:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand$CoverToDownload;->imageSetter:Lcom/amazon/kcp/application/internal/IImageSetter;

    .line 75
    return-void
.end method


# virtual methods
.method public getImageSetter()Lcom/amazon/kcp/application/internal/IImageSetter;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand$CoverToDownload;->imageSetter:Lcom/amazon/kcp/application/internal/IImageSetter;

    return-object v0
.end method

.method public getNonResizedCoverUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand$CoverToDownload;->nonResizedCoverUrl:Ljava/lang/String;

    return-object v0
.end method
