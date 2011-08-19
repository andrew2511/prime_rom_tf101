.class final Lcom/amazon/kcp/library/UnifiedLibraryActivity$2;
.super Ljava/lang/Object;
.source "UnifiedLibraryActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/UnifiedLibraryActivity;->getLibraryFilterItemClickListener(Lcom/amazon/kcp/library/UnifiedLibraryActivity;)Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$parent:Lcom/amazon/kcp/library/UnifiedLibraryActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/UnifiedLibraryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 525
    iput-object p1, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$2;->val$parent:Lcom/amazon/kcp/library/UnifiedLibraryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 530
    .local p1, parentView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-ltz p3, :cond_0

    invoke-static {}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->access$200()[Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    move-result-object v0

    array-length v0, v0

    if-ge p3, v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$2;->val$parent:Lcom/amazon/kcp/library/UnifiedLibraryActivity;

    invoke-static {}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->access$200()[Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-static {v0, v1}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->access$300(Lcom/amazon/kcp/library/UnifiedLibraryActivity;Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;)V

    .line 537
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 539
    :cond_0
    return-void
.end method
