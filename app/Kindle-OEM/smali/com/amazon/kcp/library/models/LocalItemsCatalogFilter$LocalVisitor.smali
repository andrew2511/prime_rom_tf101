.class Lcom/amazon/kcp/library/models/LocalItemsCatalogFilter$LocalVisitor;
.super Ljava/lang/Object;
.source "LocalItemsCatalogFilter.java"

# interfaces
.implements Lcom/amazon/kcp/library/models/ICatalogItemVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/models/LocalItemsCatalogFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalVisitor"
.end annotation


# instance fields
.field public isLocal:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/LocalItemsCatalogFilter$LocalVisitor;->isLocal:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/library/models/LocalItemsCatalogFilter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/LocalItemsCatalogFilter$LocalVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visitArchived(Lcom/amazon/kcp/library/models/internal/IMetadata;)V
    .locals 1
    .parameter "archivedItem"

    .prologue
    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/LocalItemsCatalogFilter$LocalVisitor;->isLocal:Z

    .line 32
    return-void
.end method

.method public visitDownload(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V
    .locals 1
    .parameter "downloadItem"

    .prologue
    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/LocalItemsCatalogFilter$LocalVisitor;->isLocal:Z

    .line 26
    return-void
.end method

.method public visitLocal(Lcom/amazon/kcp/library/models/ILocalBookItem;)V
    .locals 1
    .parameter "localItem"

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/LocalItemsCatalogFilter$LocalVisitor;->isLocal:Z

    .line 20
    return-void
.end method
