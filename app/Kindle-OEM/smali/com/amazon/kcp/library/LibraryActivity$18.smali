.class Lcom/amazon/kcp/library/LibraryActivity$18;
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
    .line 1476
    .local p0, this:Lcom/amazon/kcp/library/LibraryActivity$18;,"Lcom/amazon/kcp/library/LibraryActivity.18;"
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryActivity$18;->this$0:Lcom/amazon/kcp/library/LibraryActivity;

    iput-object p2, p0, Lcom/amazon/kcp/library/LibraryActivity$18;->val$bookItem:Lcom/amazon/kcp/library/models/ILocalBookItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 1480
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity$18;->val$bookItem:Lcom/amazon/kcp/library/models/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getLocalBookState()Lcom/amazon/kcp/library/models/LocalBookState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/LocalBookState;->isBookKept()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1482
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryActivity$18;->this$0:Lcom/amazon/kcp/library/LibraryActivity;

    iget-object v1, v1, Lcom/amazon/kcp/library/LibraryActivity;->metricsTag:Ljava/lang/String;

    const-string v2, "PeriodicalUnkeptViaContext"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->INFO:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 1489
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity$18;->val$bookItem:Lcom/amazon/kcp/library/models/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getLocalBookState()Lcom/amazon/kcp/library/models/LocalBookState;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryActivity$18;->val$bookItem:Lcom/amazon/kcp/library/models/ILocalBookItem;

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getLocalBookState()Lcom/amazon/kcp/library/models/LocalBookState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/LocalBookState;->isBookKept()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/models/LocalBookState;->setBookKept(Z)V

    .line 1493
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity$18;->val$bookItem:Lcom/amazon/kcp/library/models/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getLocalBookState()Lcom/amazon/kcp/library/models/LocalBookState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/LocalBookState;->persist()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1497
    :goto_2
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity$18;->this$0:Lcom/amazon/kcp/library/LibraryActivity;

    iget-object v0, v0, Lcom/amazon/kcp/library/LibraryActivity;->booksAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 1503
    return v4

    .line 1486
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryActivity$18;->this$0:Lcom/amazon/kcp/library/LibraryActivity;

    iget-object v1, v1, Lcom/amazon/kcp/library/LibraryActivity;->metricsTag:Ljava/lang/String;

    const-string v2, "PeriodicalKeptViaContext"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->INFO:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    goto :goto_0

    .line 1489
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method
