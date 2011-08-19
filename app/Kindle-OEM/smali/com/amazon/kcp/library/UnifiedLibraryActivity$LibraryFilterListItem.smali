.class Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListItem;
.super Ljava/lang/Object;
.source "UnifiedLibraryActivity.java"

# interfaces
.implements Lcom/amazon/kcp/library/models/ICatalogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/UnifiedLibraryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LibraryFilterListItem"
.end annotation


# instance fields
.field private bulkUpdateInProgress:Z

.field private final catalogView:Lcom/amazon/kcp/library/models/ICatalogView;

.field private final filterName:Ljava/lang/String;

.field private final libraryFilter:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

.field private final libraryFilterListAdapter:Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListAdapter;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;Lcom/amazon/kcp/library/models/ICatalogView;Landroid/content/res/Resources;Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListAdapter;)V
    .locals 1
    .parameter "libraryFilter"
    .parameter "catalogView"
    .parameter "resources"
    .parameter "libFilterListAdapter"

    .prologue
    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 592
    iput-object p1, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListItem;->libraryFilter:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    .line 593
    iput-object p2, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListItem;->catalogView:Lcom/amazon/kcp/library/models/ICatalogView;

    .line 594
    iget v0, p1, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->titleStringId:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListItem;->filterName:Ljava/lang/String;

    .line 595
    iput-object p4, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListItem;->libraryFilterListAdapter:Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListAdapter;

    .line 596
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListItem;->bulkUpdateInProgress:Z

    .line 599
    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListItem;->catalogView:Lcom/amazon/kcp/library/models/ICatalogView;

    invoke-interface {v0, p0}, Lcom/amazon/kcp/library/models/ICatalogView;->registerListener(Lcom/amazon/kcp/library/models/ICatalogListener;)V

    .line 600
    return-void
.end method


# virtual methods
.method getFilterCount()I
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListItem;->catalogView:Lcom/amazon/kcp/library/models/ICatalogView;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ICatalogView;->items()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method getFilterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListItem;->filterName:Ljava/lang/String;

    return-object v0
.end method

.method getLibraryFilter()Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListItem;->libraryFilter:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    return-object v0
.end method

.method public onBulkUpdateBegin()V
    .locals 1

    .prologue
    .line 624
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListItem;->bulkUpdateInProgress:Z

    .line 625
    return-void
.end method

.method public onBulkUpdateEnd()V
    .locals 1

    .prologue
    .line 654
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListItem;->bulkUpdateInProgress:Z

    .line 655
    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListItem;->libraryFilterListAdapter:Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListAdapter;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListAdapter;->notifyDataSetChanged()V

    .line 656
    return-void
.end method

.method public onItemAdded(Lcom/amazon/kcp/library/models/ICatalogItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 630
    iget-boolean v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListItem;->bulkUpdateInProgress:Z

    if-nez v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListItem;->libraryFilterListAdapter:Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListAdapter;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListAdapter;->notifyDataSetChanged()V

    .line 634
    :cond_0
    return-void
.end method

.method public onItemChanged(Lcom/amazon/kcp/library/models/ICatalogItem;Lcom/amazon/kcp/library/models/ICatalogItem;)V
    .locals 0
    .parameter "original"
    .parameter "updated"

    .prologue
    .line 640
    return-void
.end method

.method public onItemRemoved(Lcom/amazon/kcp/library/models/ICatalogItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 645
    iget-boolean v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListItem;->bulkUpdateInProgress:Z

    if-nez v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListItem;->libraryFilterListAdapter:Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListAdapter;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListAdapter;->notifyDataSetChanged()V

    .line 649
    :cond_0
    return-void
.end method
