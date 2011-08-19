.class Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "UnifiedLibraryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/UnifiedLibraryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LibraryFilterListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final parentActivity:Lcom/amazon/kcp/library/UnifiedLibraryActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/UnifiedLibraryActivity;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 668
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 670
    iput-object p1, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListAdapter;->parentActivity:Lcom/amazon/kcp/library/UnifiedLibraryActivity;

    .line 671
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    .line 676
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListItem;

    .line 678
    .local v0, item:Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListItem;
    if-nez p2, :cond_0

    .line 680
    iget-object v1, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListAdapter;->parentActivity:Lcom/amazon/kcp/library/UnifiedLibraryActivity;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030025

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 682
    :cond_0
    const v1, 0x7f0c008b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListItem;->getFilterName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 683
    const v1, 0x7f0c008c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListItem;->getFilterCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 685
    invoke-virtual {v0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListItem;->getLibraryFilter()Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListAdapter;->parentActivity:Lcom/amazon/kcp/library/UnifiedLibraryActivity;

    iget-object v2, v2, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->currentLibraryFilter:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    if-ne v1, v2, :cond_1

    .line 687
    const v1, 0x7f020095

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 693
    :goto_0
    return-object p2

    .line 691
    :cond_1
    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
