.class Lcom/amazon/kcp/library/LibraryActivity$11;
.super Ljava/lang/Object;
.source "LibraryActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/LibraryActivity;->addShelfariContextMenuItem(Landroid/view/ContextMenu;Lcom/amazon/kcp/library/models/IListableBook;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/LibraryActivity;

.field final synthetic val$bookItem:Lcom/amazon/kcp/library/models/IListableBook;

.field final synthetic val$metricsTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LibraryActivity;Ljava/lang/String;Lcom/amazon/kcp/library/models/IListableBook;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1349
    .local p0, this:Lcom/amazon/kcp/library/LibraryActivity$11;,"Lcom/amazon/kcp/library/LibraryActivity.11;"
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryActivity$11;->this$0:Lcom/amazon/kcp/library/LibraryActivity;

    iput-object p2, p0, Lcom/amazon/kcp/library/LibraryActivity$11;->val$metricsTag:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/library/LibraryActivity$11;->val$bookItem:Lcom/amazon/kcp/library/models/IListableBook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 1353
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryActivity$11;->val$metricsTag:Ljava/lang/String;

    const-string v2, "ShelfariFromContext"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->INFO:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 1355
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity$11;->this$0:Lcom/amazon/kcp/library/LibraryActivity;

    const v1, 0x7f0b0163

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/amazon/kcp/library/LibraryActivity$11;->val$bookItem:Lcom/amazon/kcp/library/models/IListableBook;

    invoke-interface {v4}, Lcom/amazon/kcp/library/models/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/library/LibraryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1356
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryActivity$11;->this$0:Lcom/amazon/kcp/library/LibraryActivity;

    const-class v3, Lcom/amazon/kcp/redding/WebViewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1357
    const-string v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1358
    const-string v0, "scale"

    const/16 v2, 0x4b

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1359
    const-string v0, "zoomControls"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1360
    const-string v0, "finishMenuItemText"

    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryActivity$11;->this$0:Lcom/amazon/kcp/library/LibraryActivity;

    const v3, 0x7f0b0144

    invoke-virtual {v2, v3}, Lcom/amazon/kcp/library/LibraryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1361
    const-string v0, "finishMenuItemIconId"

    const v2, 0x7f020054

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1362
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity$11;->this$0:Lcom/amazon/kcp/library/LibraryActivity;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/LibraryActivity;->startActivity(Landroid/content/Intent;)V

    .line 1363
    return v5
.end method
