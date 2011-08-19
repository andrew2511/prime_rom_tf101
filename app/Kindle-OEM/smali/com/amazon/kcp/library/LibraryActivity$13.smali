.class Lcom/amazon/kcp/library/LibraryActivity$13;
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
    .line 1391
    .local p0, this:Lcom/amazon/kcp/library/LibraryActivity$13;,"Lcom/amazon/kcp/library/LibraryActivity.13;"
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryActivity$13;->this$0:Lcom/amazon/kcp/library/LibraryActivity;

    iput-object p2, p0, Lcom/amazon/kcp/library/LibraryActivity$13;->val$bookItem:Lcom/amazon/kcp/library/models/internal/IMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 1395
    .local p0, this:Lcom/amazon/kcp/library/LibraryActivity$13;,"Lcom/amazon/kcp/library/LibraryActivity.13;"
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryActivity$13;->this$0:Lcom/amazon/kcp/library/LibraryActivity;

    iget-object v1, v1, Lcom/amazon/kcp/library/LibraryActivity;->metricsTag:Ljava/lang/String;

    const-string v2, "BookDownloadContextMenu"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity$13;->this$0:Lcom/amazon/kcp/library/LibraryActivity;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryActivity$13;->this$0:Lcom/amazon/kcp/library/LibraryActivity;

    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryActivity$13;->val$bookItem:Lcom/amazon/kcp/library/models/internal/IMetadata;

    sget-object v3, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;->BEGINNING:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    invoke-static {v1, v2, v3}, Lcom/amazon/kcp/library/BookOpenHelper;->downloadAndOpen(Lcom/amazon/kcp/redding/ReddingActivity;Lcom/amazon/kcp/library/models/IDownloadBookItem;Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/LibraryActivity;->startActivity(Landroid/content/Intent;)V

    .line 1397
    const/4 v0, 0x1

    return v0
.end method
