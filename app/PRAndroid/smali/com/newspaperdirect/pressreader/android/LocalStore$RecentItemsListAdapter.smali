.class public Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "LocalStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/LocalStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecentItemsListAdapter"
.end annotation


# instance fields
.field allRecentItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/RecentItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMainRecentItemsToShow:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/RecentItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMainRecentNewspapersToShow:Ljava/util/List;
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
.method public constructor <init>(Lcom/newspaperdirect/pressreader/android/LocalStore;)V
    .locals 1
    .parameter

    .prologue
    .line 1535
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    .line 1533
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1471
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;->mMainRecentItemsToShow:Ljava/util/List;

    .line 1472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;->mMainRecentNewspapersToShow:Ljava/util/List;

    .line 1473
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;->allRecentItems:Ljava/util/List;

    .line 1534
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;->initRecents()V

    return-void
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;->mMainRecentNewspapersToShow:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 1471
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;->mMainRecentItemsToShow:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3(Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;)Lcom/newspaperdirect/pressreader/android/LocalStore;
    .locals 1
    .parameter

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    return-object v0
.end method

.method private initRecents()V
    .locals 2

    .prologue
    .line 1476
    new-instance v0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter$1;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter$1;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 1529
    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1531
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1538
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;->mMainRecentNewspapersToShow:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1539
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;->mMainRecentNewspapersToShow:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;
    .locals 1
    .parameter "idx"

    .prologue
    .line 1543
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;->mMainRecentNewspapersToShow:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1544
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;->mMainRecentNewspapersToShow:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    move-object v0, p0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;->getItem(I)Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "idx"

    .prologue
    .line 1548
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;->mMainRecentItemsToShow:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;->mMainRecentNewspapersToShow:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    const-wide/16 v0, -0x1

    .line 1549
    .end local p0
    :goto_0
    return-wide v0

    .restart local p0
    :cond_1
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;->mMainRecentItemsToShow:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/newspaperdirect/pressreader/android/core/RecentItem;

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "idx"
    .parameter "view"
    .parameter "parent"

    .prologue
    const v10, 0x7f0c0038

    const v9, 0x7f0c0036

    const v6, 0x7f0c0035

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 1556
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;->mMainRecentNewspapersToShow:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    .line 1558
    .local v1, item:Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;
    if-nez p2, :cond_1

    .line 1559
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030010

    invoke-virtual {v4, v5, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1569
    .local v2, result:Landroid/view/View;
    :cond_0
    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1571
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;->mMainRecentItemsToShow:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/newspaperdirect/pressreader/android/core/RecentItem;

    invoke-virtual {v4}, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->getOrderWithSupplements()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1572
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1578
    :goto_1
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;->mMainRecentItemsToShow:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1579
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;->mMainRecentItemsToShow:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/newspaperdirect/pressreader/android/core/RecentItem;

    invoke-virtual {v4}, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->getCID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getCid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1581
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;->mMainRecentItemsToShow:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/newspaperdirect/pressreader/android/core/RecentItem;

    invoke-virtual {v5}, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->getOrderDate()Ljava/util/Date;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$16(Lcom/newspaperdirect/pressreader/android/LocalStore;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1586
    :goto_2
    const v4, 0x7f0c0037

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1588
    const v4, 0x7f0c0034

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1590
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getEnableSmart()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1591
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1595
    :goto_3
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    const v5, 0x7f0c0031

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ImageView;

    invoke-static {v4, p0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$12(Lcom/newspaperdirect/pressreader/android/LocalStore;Landroid/widget/ImageView;Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;)V

    .line 1597
    return-object v2

    .line 1562
    .end local v2           #result:Landroid/view/View;
    .restart local p0
    :cond_1
    move-object v2, p2

    .line 1563
    .restart local v2       #result:Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 1564
    .local v3, tag:Ljava/lang/Object;
    if-eqz v3, :cond_0

    instance-of v4, v3, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    if-eqz v4, :cond_0

    .line 1565
    move-object v0, v3

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    move-object v1, v0

    goto/16 :goto_0

    .line 1575
    .end local v3           #tag:Ljava/lang/Object;
    :cond_2
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 1584
    :cond_3
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1593
    :cond_4
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method
