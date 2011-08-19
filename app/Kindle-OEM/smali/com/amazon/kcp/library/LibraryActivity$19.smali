.class Lcom/amazon/kcp/library/LibraryActivity$19;
.super Ljava/lang/Object;
.source "LibraryActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/LibraryActivity;->populateContextMenuForLocalBook(Landroid/view/ContextMenu;Lcom/amazon/kcp/library/models/ILocalBookItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/LibraryActivity;

.field final synthetic val$bookItem:Lcom/amazon/kcp/library/models/ILocalBookItem;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LibraryActivity;Lcom/amazon/kcp/library/models/ILocalBookItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1527
    .local p0, this:Lcom/amazon/kcp/library/LibraryActivity$19;,"Lcom/amazon/kcp/library/LibraryActivity.19;"
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryActivity$19;->this$0:Lcom/amazon/kcp/library/LibraryActivity;

    iput-object p2, p0, Lcom/amazon/kcp/library/LibraryActivity$19;->val$bookItem:Lcom/amazon/kcp/library/models/ILocalBookItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    .local p0, this:Lcom/amazon/kcp/library/LibraryActivity$19;,"Lcom/amazon/kcp/library/LibraryActivity.19;"
    const/4 v4, 0x1

    .line 1531
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryActivity$19;->this$0:Lcom/amazon/kcp/library/LibraryActivity;

    iget-object v1, v1, Lcom/amazon/kcp/library/LibraryActivity;->metricsTag:Ljava/lang/String;

    const-string v2, "DeletedViaContext"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->INFO:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 1533
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity$19;->this$0:Lcom/amazon/kcp/library/LibraryActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryController;->getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryActivity$19;->val$bookItem:Lcom/amazon/kcp/library/models/ILocalBookItem;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/models/CLibrary;->deleteBook(Lcom/amazon/kcp/library/models/ILocalBookItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity$19;->val$bookItem:Lcom/amazon/kcp/library/models/ILocalBookItem;

    invoke-static {v0, v4}, Lcom/amazon/kcp/library/models/BookCapability;->supportsCapability(Lcom/amazon/kcp/library/models/IListableBook;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1537
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity$19;->this$0:Lcom/amazon/kcp/library/LibraryActivity;

    const v1, 0x7f0b0045

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1540
    :cond_0
    return v4
.end method
