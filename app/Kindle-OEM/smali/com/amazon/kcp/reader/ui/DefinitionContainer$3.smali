.class Lcom/amazon/kcp/reader/ui/DefinitionContainer$3;
.super Ljava/lang/Object;
.source "DefinitionContainer.java"

# interfaces
.implements Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/DefinitionContainer;->showDictionaryDownloadingView(Lcom/amazon/kcp/library/dictionary/IDictionaryLocator;Ljava/lang/String;Landroid/view/View;Lcom/amazon/kcp/reader/models/ColorMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/DefinitionContainer;

.field final synthetic val$dictionaryLocator:Lcom/amazon/kcp/library/dictionary/IDictionaryLocator;

.field final synthetic val$progressBar:Landroid/widget/ProgressBar;

.field final synthetic val$selectedText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/DefinitionContainer;Ljava/lang/String;Lcom/amazon/kcp/library/dictionary/IDictionaryLocator;Landroid/widget/ProgressBar;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 438
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer$3;->this$0:Lcom/amazon/kcp/reader/ui/DefinitionContainer;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer$3;->val$selectedText:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer$3;->val$dictionaryLocator:Lcom/amazon/kcp/library/dictionary/IDictionaryLocator;

    iput-object p4, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer$3;->val$progressBar:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadAdded(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V
    .locals 0
    .parameter "downloadBookItem"

    .prologue
    .line 489
    return-void
.end method

.method public onDownloadProgressChanged()V
    .locals 4

    .prologue
    .line 479
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer$3;->this$0:Lcom/amazon/kcp/reader/ui/DefinitionContainer;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->access$300(Lcom/amazon/kcp/reader/ui/DefinitionContainer;)Lcom/amazon/android/util/DownloadProgressBarState;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->VISIBLE:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer$3;->val$dictionaryLocator:Lcom/amazon/kcp/library/dictionary/IDictionaryLocator;

    invoke-interface {v0}, Lcom/amazon/kcp/library/dictionary/IDictionaryLocator;->getBoundDictionary()Lcom/amazon/kcp/library/models/IListableBook;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/IDownloadBookItem;

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer$3;->val$progressBar:Landroid/widget/ProgressBar;

    invoke-static {v1, v2, v0, v3}, Lcom/amazon/android/util/UIUtils;->setDownloadProgressBar(Lcom/amazon/android/util/DownloadProgressBarState;Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;Lcom/amazon/kcp/library/models/IDownloadBookItem;Landroid/widget/ProgressBar;)Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    .line 484
    return-void
.end method

.method public onDownloadStateChanged()V
    .locals 0

    .prologue
    .line 475
    return-void
.end method

.method public onLicenseCountError()V
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer$3;->this$0:Lcom/amazon/kcp/reader/ui/DefinitionContainer;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->access$200(Lcom/amazon/kcp/reader/ui/DefinitionContainer;)Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->stopTracking()V

    .line 468
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer$3;->this$0:Lcom/amazon/kcp/reader/ui/DefinitionContainer;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer$3;->val$selectedText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->access$100(Lcom/amazon/kcp/reader/ui/DefinitionContainer;Ljava/lang/String;)Z

    .line 469
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer$3;->this$0:Lcom/amazon/kcp/reader/ui/DefinitionContainer;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->requestLayout()V

    .line 470
    return-void
.end method

.method public onTodoError()V
    .locals 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer$3;->this$0:Lcom/amazon/kcp/reader/ui/DefinitionContainer;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->access$200(Lcom/amazon/kcp/reader/ui/DefinitionContainer;)Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->stopTracking()V

    .line 456
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer$3;->this$0:Lcom/amazon/kcp/reader/ui/DefinitionContainer;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer$3;->val$selectedText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->access$100(Lcom/amazon/kcp/reader/ui/DefinitionContainer;Ljava/lang/String;)Z

    .line 457
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer$3;->this$0:Lcom/amazon/kcp/reader/ui/DefinitionContainer;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->requestLayout()V

    .line 458
    return-void
.end method

.method public onTodoProcessed()V
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer$3;->this$0:Lcom/amazon/kcp/reader/ui/DefinitionContainer;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->access$200(Lcom/amazon/kcp/reader/ui/DefinitionContainer;)Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->stopTracking()V

    .line 446
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer$3;->this$0:Lcom/amazon/kcp/reader/ui/DefinitionContainer;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer$3;->val$selectedText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->access$100(Lcom/amazon/kcp/reader/ui/DefinitionContainer;Ljava/lang/String;)Z

    .line 447
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer$3;->this$0:Lcom/amazon/kcp/reader/ui/DefinitionContainer;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->requestLayout()V

    .line 448
    return-void
.end method
