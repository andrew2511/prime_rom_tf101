.class public Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListFragment;
.super Landroid/support/v4/app/ListFragment;
.source "UnifiedLibraryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/UnifiedLibraryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LibraryFilterListFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 554
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 555
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 560
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 562
    invoke-virtual {p0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/UnifiedLibraryActivity;

    .line 563
    .local v1, parent:Lcom/amazon/kcp/library/UnifiedLibraryActivity;
    invoke-virtual {p0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 564
    .local v0, lv:Landroid/widget/ListView;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 565
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 566
    invoke-static {v1}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->access$400(Lcom/amazon/kcp/library/UnifiedLibraryActivity;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 567
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 568
    invoke-virtual {p0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 570
    invoke-static {v1}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->access$500(Lcom/amazon/kcp/library/UnifiedLibraryActivity;)Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListAdapter;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 571
    return-void
.end method
