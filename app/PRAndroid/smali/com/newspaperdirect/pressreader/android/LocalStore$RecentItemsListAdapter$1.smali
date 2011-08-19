.class Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter$1;
.super Landroid/os/AsyncTask;
.source "LocalStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;->initRecents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;

    .line 1476
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 11
    .parameter "arg0"

    .prologue
    .line 1484
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->loadItemsList()Ljava/util/List;

    move-result-object v8

    iput-object v8, v7, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;->allRecentItems:Ljava/util/List;

    .line 1485
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;

    invoke-static {v7}, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;->access$3(Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;)Lcom/newspaperdirect/pressreader/android/LocalStore;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v7, Lcom/newspaperdirect/pressreader/android/LocalStore;->mainRecentNewspapers:Ljava/util/ArrayList;

    .line 1486
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;

    invoke-static {v7}, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;->access$3(Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;)Lcom/newspaperdirect/pressreader/android/LocalStore;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v7, Lcom/newspaperdirect/pressreader/android/LocalStore;->mainRecentItems:Ljava/util/ArrayList;

    .line 1488
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1489
    .local v3, ignoreList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;>;"
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;

    invoke-static {v7}, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;->access$3(Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;)Lcom/newspaperdirect/pressreader/android/LocalStore;

    move-result-object v7

    invoke-static {v7}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$15(Lcom/newspaperdirect/pressreader/android/LocalStore;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;

    invoke-static {v7}, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;->access$3(Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;)Lcom/newspaperdirect/pressreader/android/LocalStore;

    move-result-object v7

    invoke-static {v7}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$15(Lcom/newspaperdirect/pressreader/android/LocalStore;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;

    iget-object v7, v7, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;->allRecentItems:Ljava/util/List;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;

    iget-object v7, v7, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;->allRecentItems:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 1490
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 1491
    .local v4, issueDate:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMdd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v1, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1492
    .local v1, formatter:Ljava/text/SimpleDateFormat;
    const/4 v5, 0x0

    .line 1493
    .local v5, np:Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;

    iget-object v7, v7, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;->allRecentItems:Ljava/util/List;

    new-instance v8, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter$1$1;

    invoke-direct {v8, p0}, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter$1$1;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter$1;)V

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1498
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;

    iget-object v7, v7, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;->allRecentItems:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1513
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;

    invoke-static {v7}, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;->access$3(Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;)Lcom/newspaperdirect/pressreader/android/LocalStore;

    move-result-object v7

    iget-object v7, v7, Lcom/newspaperdirect/pressreader/android/LocalStore;->mainRecentNewspapers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gt v7, v2, :cond_3

    .line 1520
    .end local v1           #formatter:Ljava/text/SimpleDateFormat;
    .end local v2           #i:I
    .end local v4           #issueDate:Ljava/util/Date;
    .end local v5           #np:Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;
    :cond_1
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    return-object v7

    .line 1498
    .restart local v1       #formatter:Ljava/text/SimpleDateFormat;
    .restart local v4       #issueDate:Ljava/util/Date;
    .restart local v5       #np:Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/newspaperdirect/pressreader/android/core/RecentItem;

    .line 1500
    .local v6, ri:Lcom/newspaperdirect/pressreader/android/core/RecentItem;
    :try_start_0
    invoke-virtual {v6}, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->getIssueId()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    const/16 v10, 0xc

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1504
    :goto_2
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/Service;->getActive()Lcom/newspaperdirect/pressreader/android/core/Service;

    move-result-object v8

    invoke-virtual {v8}, Lcom/newspaperdirect/pressreader/android/core/Service;->getId()J

    move-result-wide v8

    invoke-virtual {v6}, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->getCID()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getNewspaper(JLjava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    move-result-object v5

    .line 1505
    if-eqz v5, :cond_0

    .line 1506
    iput-object v4, v5, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->latestIssueDate:Ljava/util/Date;

    .line 1507
    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;

    invoke-static {v8}, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;->access$3(Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;)Lcom/newspaperdirect/pressreader/android/LocalStore;

    move-result-object v8

    iget-object v8, v8, Lcom/newspaperdirect/pressreader/android/LocalStore;->mainRecentNewspapers:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1508
    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;

    invoke-static {v8}, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;->access$3(Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;)Lcom/newspaperdirect/pressreader/android/LocalStore;

    move-result-object v8

    iget-object v8, v8, Lcom/newspaperdirect/pressreader/android/LocalStore;->mainRecentItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1509
    invoke-virtual {v6}, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->getParentIssueId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1510
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1501
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 1502
    .local v0, e:Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_2

    .line 1514
    .end local v0           #e:Ljava/text/ParseException;
    .end local v6           #ri:Lcom/newspaperdirect/pressreader/android/core/RecentItem;
    .restart local v2       #i:I
    :cond_3
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;

    invoke-static {v7}, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;->access$3(Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;)Lcom/newspaperdirect/pressreader/android/LocalStore;

    move-result-object v7

    iget-object v7, v7, Lcom/newspaperdirect/pressreader/android/LocalStore;->mainRecentNewspapers:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1513
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1516
    :cond_4
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;

    invoke-static {v7}, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;->access$1(Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;)Ljava/util/List;

    move-result-object v8

    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;

    invoke-static {v7}, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;->access$3(Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;)Lcom/newspaperdirect/pressreader/android/LocalStore;

    move-result-object v7

    iget-object v7, v7, Lcom/newspaperdirect/pressreader/android/LocalStore;->mainRecentNewspapers:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1517
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;

    invoke-static {v7}, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;->access$2(Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;)Ljava/util/List;

    move-result-object v8

    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;

    invoke-static {v7}, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;->access$3(Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;)Lcom/newspaperdirect/pressreader/android/LocalStore;

    move-result-object v7

    iget-object v7, v7, Lcom/newspaperdirect/pressreader/android/LocalStore;->mainRecentItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/newspaperdirect/pressreader/android/core/RecentItem;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 1525
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;->notifyDataSetChanged()V

    .line 1526
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;->access$3(Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;)Lcom/newspaperdirect/pressreader/android/LocalStore;

    move-result-object v0

    const v1, 0x7f0c0015

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1527
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;->access$3(Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;)Lcom/newspaperdirect/pressreader/android/LocalStore;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$8(Lcom/newspaperdirect/pressreader/android/LocalStore;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1528
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 1479
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;->access$3(Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;)Lcom/newspaperdirect/pressreader/android/LocalStore;

    move-result-object v0

    const v1, 0x7f0c0015

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1480
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;->access$3(Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;)Lcom/newspaperdirect/pressreader/android/LocalStore;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$8(Lcom/newspaperdirect/pressreader/android/LocalStore;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1481
    return-void
.end method
