.class Lcom/amazon/kcp/library/UnifiedLibraryActivity$CatalogChangeNotifier;
.super Ljava/lang/Object;
.source "UnifiedLibraryActivity.java"

# interfaces
.implements Lcom/amazon/kcp/library/models/ICatalogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/UnifiedLibraryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CatalogChangeNotifier"
.end annotation


# instance fields
.field private final INVALID_INDEX:I

.field private bulkUpdateInprogress:Z

.field final synthetic this$0:Lcom/amazon/kcp/library/UnifiedLibraryActivity;


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/library/UnifiedLibraryActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 702
    iput-object p1, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$CatalogChangeNotifier;->this$0:Lcom/amazon/kcp/library/UnifiedLibraryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 710
    const/4 v0, -0x1

    iput v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$CatalogChangeNotifier;->INVALID_INDEX:I

    .line 712
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$CatalogChangeNotifier;->bulkUpdateInprogress:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/library/UnifiedLibraryActivity;Lcom/amazon/kcp/library/UnifiedLibraryActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 702
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/UnifiedLibraryActivity$CatalogChangeNotifier;-><init>(Lcom/amazon/kcp/library/UnifiedLibraryActivity;)V

    return-void
.end method


# virtual methods
.method public onBulkUpdateBegin()V
    .locals 1

    .prologue
    .line 744
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$CatalogChangeNotifier;->bulkUpdateInprogress:Z

    .line 745
    return-void
.end method

.method public onBulkUpdateEnd()V
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$CatalogChangeNotifier;->this$0:Lcom/amazon/kcp/library/UnifiedLibraryActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->access$700(Lcom/amazon/kcp/library/UnifiedLibraryActivity;)Lcom/amazon/foundation/internal/EventProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 751
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$CatalogChangeNotifier;->bulkUpdateInprogress:Z

    .line 752
    return-void
.end method

.method public onItemAdded(Lcom/amazon/kcp/library/models/ICatalogItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 717
    iget-boolean v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$CatalogChangeNotifier;->bulkUpdateInprogress:Z

    if-nez v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$CatalogChangeNotifier;->this$0:Lcom/amazon/kcp/library/UnifiedLibraryActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->access$600(Lcom/amazon/kcp/library/UnifiedLibraryActivity;)Lcom/amazon/foundation/internal/IntEventProvider;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    .line 721
    :cond_0
    return-void
.end method

.method public onItemChanged(Lcom/amazon/kcp/library/models/ICatalogItem;Lcom/amazon/kcp/library/models/ICatalogItem;)V
    .locals 1
    .parameter "original"
    .parameter "updated"

    .prologue
    .line 726
    iget-boolean v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$CatalogChangeNotifier;->bulkUpdateInprogress:Z

    if-nez v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$CatalogChangeNotifier;->this$0:Lcom/amazon/kcp/library/UnifiedLibraryActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->access$700(Lcom/amazon/kcp/library/UnifiedLibraryActivity;)Lcom/amazon/foundation/internal/EventProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 730
    :cond_0
    return-void
.end method

.method public onItemRemoved(Lcom/amazon/kcp/library/models/ICatalogItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 735
    iget-boolean v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$CatalogChangeNotifier;->bulkUpdateInprogress:Z

    if-nez v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$CatalogChangeNotifier;->this$0:Lcom/amazon/kcp/library/UnifiedLibraryActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->access$600(Lcom/amazon/kcp/library/UnifiedLibraryActivity;)Lcom/amazon/foundation/internal/IntEventProvider;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    .line 739
    :cond_0
    return-void
.end method
