.class Lcom/amazon/kcp/library/LibraryActivity$16;
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
    .line 1449
    .local p0, this:Lcom/amazon/kcp/library/LibraryActivity$16;,"Lcom/amazon/kcp/library/LibraryActivity.16;"
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryActivity$16;->this$0:Lcom/amazon/kcp/library/LibraryActivity;

    iput-object p2, p0, Lcom/amazon/kcp/library/LibraryActivity$16;->val$bookItem:Lcom/amazon/kcp/library/models/ILocalBookItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    .local p0, this:Lcom/amazon/kcp/library/LibraryActivity$16;,"Lcom/amazon/kcp/library/LibraryActivity.16;"
    const/4 v4, 0x1

    .line 1453
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryActivity$16;->this$0:Lcom/amazon/kcp/library/LibraryActivity;

    iget-object v1, v1, Lcom/amazon/kcp/library/LibraryActivity;->metricsTag:Ljava/lang/String;

    const-string v2, "OpenReaderBeginningViaContext"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->INFO:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 1454
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity$16;->this$0:Lcom/amazon/kcp/library/LibraryActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/IAndroidReaderController;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryActivity$16;->val$bookItem:Lcom/amazon/kcp/library/models/ILocalBookItem;

    sget-object v2, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;->BEGINNING:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    sget-object v3, Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;->LOADING_ASYNC:Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/amazon/kcp/reader/IAndroidReaderController;->openReader(Lcom/amazon/kcp/library/models/ILocalBookItem;Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;Z)V

    .line 1455
    return v4
.end method
