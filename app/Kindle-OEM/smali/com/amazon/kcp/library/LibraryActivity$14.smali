.class Lcom/amazon/kcp/library/LibraryActivity$14;
.super Ljava/lang/Object;
.source "LibraryActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/LibraryActivity;->populateContextMenuForAIBook(Landroid/view/ContextMenu;Lcom/amazon/kcp/library/models/internal/IMetadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/LibraryActivity;

.field final synthetic val$bookItem:Lcom/amazon/kcp/library/models/internal/IMetadata;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LibraryActivity;Lcom/amazon/kcp/library/models/internal/IMetadata;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1406
    .local p0, this:Lcom/amazon/kcp/library/LibraryActivity$14;,"Lcom/amazon/kcp/library/LibraryActivity.14;"
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryActivity$14;->this$0:Lcom/amazon/kcp/library/LibraryActivity;

    iput-object p2, p0, Lcom/amazon/kcp/library/LibraryActivity$14;->val$bookItem:Lcom/amazon/kcp/library/models/internal/IMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 1410
    .local p0, this:Lcom/amazon/kcp/library/LibraryActivity$14;,"Lcom/amazon/kcp/library/LibraryActivity.14;"
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryActivity$14;->this$0:Lcom/amazon/kcp/library/LibraryActivity;

    iget-object v1, v1, Lcom/amazon/kcp/library/LibraryActivity;->metricsTag:Ljava/lang/String;

    const-string v2, "BookDownloadContextMenu"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity$14;->this$0:Lcom/amazon/kcp/library/LibraryActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/IAndroidLibraryController;

    invoke-interface {v0}, Lcom/amazon/kcp/library/IAndroidLibraryController;->getArchivedItemsPage()Lcom/amazon/kcp/library/pages/IArchivedItemsPage;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryActivity$14;->val$bookItem:Lcom/amazon/kcp/library/models/internal/IMetadata;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/pages/IArchivedItemsPage;->downloadBook(Lcom/amazon/kcp/library/models/IListableBook;)V

    .line 1412
    const/4 v0, 0x1

    return v0
.end method
