.class public Lcom/newspaperdirect/pressreader/android/LocalStore$RecentSupplementsItemsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "LocalStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/LocalStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecentSupplementsItemsListAdapter"
.end annotation


# instance fields
.field private mParentIssueId:Ljava/lang/String;

.field private mRecentSupplementsItemsToShow:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/RecentItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentSupplementsNewspapersToShow:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;


# direct methods
.method public constructor <init>(Lcom/newspaperdirect/pressreader/android/LocalStore;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "parentIssueId"

    .prologue
    .line 1624
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentSupplementsItemsListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    .line 1621
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1604
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentSupplementsItemsListAdapter;->mRecentSupplementsItemsToShow:Ljava/util/List;

    .line 1605
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentSupplementsItemsListAdapter;->mRecentSupplementsNewspapersToShow:Ljava/util/List;

    .line 1622
    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentSupplementsItemsListAdapter;->mParentIssueId:Ljava/lang/String;

    .line 1623
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentSupplementsItemsListAdapter;->initRecents()V

    return-void
.end method

.method private initRecents()V
    .locals 4

    .prologue
    .line 1608
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentSupplementsItemsListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    iget-object v2, v2, Lcom/newspaperdirect/pressreader/android/LocalStore;->mainRecentNewspapers:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentSupplementsItemsListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    iget-object v2, v2, Lcom/newspaperdirect/pressreader/android/LocalStore;->mainRecentNewspapers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentSupplementsItemsListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    iget-object v2, v2, Lcom/newspaperdirect/pressreader/android/LocalStore;->mainRecentItems:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentSupplementsItemsListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    iget-object v2, v2, Lcom/newspaperdirect/pressreader/android/LocalStore;->mainRecentItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1610
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentSupplementsItemsListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    iget-object v2, v2, Lcom/newspaperdirect/pressreader/android/LocalStore;->mainRecentItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v0, :cond_1

    .line 1619
    .end local v0           #i:I
    :cond_0
    return-void

    .line 1611
    .restart local v0       #i:I
    :cond_1
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentSupplementsItemsListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    iget-object v2, v2, Lcom/newspaperdirect/pressreader/android/LocalStore;->mainRecentItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newspaperdirect/pressreader/android/core/RecentItem;

    .line 1612
    .local v1, ri:Lcom/newspaperdirect/pressreader/android/core/RecentItem;
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->getParentIssueId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->getParentIssueId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentSupplementsItemsListAdapter;->mParentIssueId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1613
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentSupplementsItemsListAdapter;->mRecentSupplementsNewspapersToShow:Ljava/util/List;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentSupplementsItemsListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    iget-object v2, v2, Lcom/newspaperdirect/pressreader/android/LocalStore;->mainRecentNewspapers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1614
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentSupplementsItemsListAdapter;->mRecentSupplementsItemsToShow:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1610
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1627
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentSupplementsItemsListAdapter;->mRecentSupplementsNewspapersToShow:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1628
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentSupplementsItemsListAdapter;->mRecentSupplementsNewspapersToShow:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;
    .locals 3
    .parameter "idx"

    .prologue
    .line 1632
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentSupplementsItemsListAdapter;->mRecentSupplementsNewspapersToShow:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 1639
    .end local p0
    :goto_0
    return-object v1

    .line 1633
    .restart local p0
    :cond_0
    if-nez p1, :cond_1

    .line 1634
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentSupplementsItemsListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    iget-object v1, v1, Lcom/newspaperdirect/pressreader/android/LocalStore;->mainRecentItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v0, :cond_2

    .line 1639
    .end local v0           #i:I
    :cond_1
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentSupplementsItemsListAdapter;->mRecentSupplementsNewspapersToShow:Ljava/util/List;

    const/4 v2, 0x1

    sub-int v2, p1, v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    move-object v1, p0

    goto :goto_0

    .line 1635
    .restart local v0       #i:I
    .restart local p0
    :cond_2
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentSupplementsItemsListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    iget-object v1, v1, Lcom/newspaperdirect/pressreader/android/LocalStore;->mainRecentItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newspaperdirect/pressreader/android/core/RecentItem;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->getIssueId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentSupplementsItemsListAdapter;->mParentIssueId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1636
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentSupplementsItemsListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    iget-object v1, v1, Lcom/newspaperdirect/pressreader/android/LocalStore;->mainRecentNewspapers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    move-object v1, p0

    goto :goto_0

    .line 1634
    .restart local p0
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentSupplementsItemsListAdapter;->getItem(I)Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "idx"

    .prologue
    .line 1643
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "idx"
    .parameter "view"
    .parameter "parent"

    .prologue
    const v9, 0x7f0c0036

    const v7, 0x7f0c0035

    const/4 v8, 0x0

    .line 1650
    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentSupplementsItemsListAdapter;->getItem(I)Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    move-result-object v1

    .line 1652
    .local v1, item:Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;
    if-nez p2, :cond_2

    .line 1653
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentSupplementsItemsListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030010

    invoke-virtual {v5, v6, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 1663
    .local v3, result:Landroid/view/View;
    :cond_0
    :goto_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1665
    if-nez p1, :cond_1

    .line 1666
    const v5, -0xbbbbbc

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1669
    :cond_1
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentSupplementsItemsListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    iget-object v5, v5, Lcom/newspaperdirect/pressreader/android/LocalStore;->mainRecentItems:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentSupplementsItemsListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    iget-object v6, v6, Lcom/newspaperdirect/pressreader/android/LocalStore;->mainRecentNewspapers:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/newspaperdirect/pressreader/android/core/RecentItem;

    .line 1671
    .local v2, recentItem:Lcom/newspaperdirect/pressreader/android/core/RecentItem;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->getCID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getCid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1672
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentSupplementsItemsListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->getOrderDate()Ljava/util/Date;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$16(Lcom/newspaperdirect/pressreader/android/LocalStore;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1677
    :goto_1
    const v5, 0x7f0c0037

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1679
    const v5, 0x7f0c0034

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1681
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getEnableSmart()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1682
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1686
    :goto_2
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentSupplementsItemsListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    const v6, 0x7f0c0031

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ImageView;

    invoke-static {v5, p0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$12(Lcom/newspaperdirect/pressreader/android/LocalStore;Landroid/widget/ImageView;Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;)V

    .line 1688
    return-object v3

    .line 1656
    .end local v2           #recentItem:Lcom/newspaperdirect/pressreader/android/core/RecentItem;
    .end local v3           #result:Landroid/view/View;
    .restart local p0
    :cond_2
    move-object v3, p2

    .line 1657
    .restart local v3       #result:Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 1658
    .local v4, tag:Ljava/lang/Object;
    if-eqz v4, :cond_0

    instance-of v5, v4, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    if-eqz v5, :cond_0

    .line 1659
    move-object v0, v4

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    move-object v1, v0

    goto/16 :goto_0

    .line 1675
    .end local v4           #tag:Ljava/lang/Object;
    .restart local v2       #recentItem:Lcom/newspaperdirect/pressreader/android/core/RecentItem;
    :cond_3
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1684
    :cond_4
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method
