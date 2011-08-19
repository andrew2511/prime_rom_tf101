.class public Lcom/asus/reader/BookListActivity$CategoryAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "BookListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/BookListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CategoryAdapter"
.end annotation


# instance fields
.field private mCategoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/asus/reader/BookListActivity$CategoryEntry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/asus/reader/BookListActivity;


# direct methods
.method public constructor <init>(Lcom/asus/reader/BookListActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1911
    iput-object p1, p0, Lcom/asus/reader/BookListActivity$CategoryAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 1909
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/reader/BookListActivity$CategoryAdapter;->mCategoryList:Ljava/util/List;

    .line 1912
    return-void
.end method


# virtual methods
.method public clearCategory()V
    .locals 2

    .prologue
    .line 1915
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$CategoryAdapter;->mCategoryList:Ljava/util/List;

    monitor-enter v0

    .line 1916
    :try_start_0
    iget-object v1, p0, Lcom/asus/reader/BookListActivity$CategoryAdapter;->mCategoryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1917
    invoke-virtual {p0}, Lcom/asus/reader/BookListActivity$CategoryAdapter;->notifyDataSetChanged()V

    .line 1918
    monitor-exit v0

    .line 1919
    return-void

    .line 1918
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 1993
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 1997
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 2006
    return-object p4
.end method

.method public getChildrenCount(I)I
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 2001
    const/4 v0, 0x0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 2066
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getGroupCount()I
    .locals 1

    .prologue
    .line 2054
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$CategoryAdapter;->mCategoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 2058
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 2036
    if-eqz p3, :cond_0

    .line 2037
    move-object v0, p3

    check-cast v0, Lcom/asus/reader/ui/CategoryItem;

    move-object v1, v0

    .line 2042
    .local v1, i:Lcom/asus/reader/ui/CategoryItem;
    :goto_0
    invoke-virtual {v1, p1}, Lcom/asus/reader/ui/CategoryItem;->setPosition(I)V

    .line 2043
    iget-object v2, p0, Lcom/asus/reader/BookListActivity$CategoryAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v2}, Lcom/asus/reader/BookListActivity;->access$300(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/ui/CategoryListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/asus/reader/ui/CategoryListView;->setState(Lcom/asus/reader/ui/CategoryItem;)V

    .line 2044
    iget-object v2, p0, Lcom/asus/reader/BookListActivity$CategoryAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v2}, Lcom/asus/reader/BookListActivity;->access$200(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/BookListActivity$CategoryAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/asus/reader/BookListActivity$CategoryAdapter;->getItem(I)Lcom/asus/reader/BookListActivity$CategoryEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/reader/BookListActivity$CategoryEntry;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/reader/BookListActivity$CategoryAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v3}, Lcom/asus/reader/BookListActivity;->access$2400(Lcom/asus/reader/BookListActivity;)Z

    move-result v3

    iget-object v4, p0, Lcom/asus/reader/BookListActivity$CategoryAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v4}, Lcom/asus/reader/BookListActivity;->access$200(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/BookListActivity$CategoryAdapter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/asus/reader/BookListActivity$CategoryAdapter;->getItem(I)Lcom/asus/reader/BookListActivity$CategoryEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/asus/reader/BookListActivity$CategoryEntry;->getCount()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/asus/reader/ui/CategoryItem;->bindCategoryItem(Ljava/lang/String;ZI)V

    .line 2046
    iget-object v2, p0, Lcom/asus/reader/BookListActivity$CategoryAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v2}, Lcom/asus/reader/BookListActivity;->access$2600(Lcom/asus/reader/BookListActivity;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    if-nez p1, :cond_1

    .line 2047
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/asus/reader/ui/CategoryItem;->showAddButton(Z)V

    .line 2050
    :goto_1
    return-object v1

    .line 2039
    .end local v1           #i:Lcom/asus/reader/ui/CategoryItem;
    :cond_0
    iget-object v2, p0, Lcom/asus/reader/BookListActivity$CategoryAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    iget-object v2, v2, Lcom/asus/reader/BookListActivity;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030016

    invoke-virtual {v2, v3, p4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/asus/reader/ui/CategoryItem;

    .restart local v1       #i:Lcom/asus/reader/ui/CategoryItem;
    goto :goto_0

    .line 2049
    :cond_1
    invoke-virtual {v1, v5}, Lcom/asus/reader/ui/CategoryItem;->showAddButton(Z)V

    goto :goto_1
.end method

.method public final getItem(I)Lcom/asus/reader/BookListActivity$CategoryEntry;
    .locals 2
    .parameter "position"

    .prologue
    .line 1922
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$CategoryAdapter;->mCategoryList:Ljava/util/List;

    monitor-enter v0

    .line 1923
    if-ltz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/asus/reader/BookListActivity$CategoryAdapter;->mCategoryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 1924
    iget-object v1, p0, Lcom/asus/reader/BookListActivity$CategoryAdapter;->mCategoryList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/reader/BookListActivity$CategoryEntry;

    monitor-exit v0

    move-object v0, p0

    .line 1926
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    move-object v0, v1

    goto :goto_0

    .line 1927
    .end local p0
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 2014
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 2010
    const/4 v0, 0x1

    return v0
.end method

.method public reBuildCategory(Landroid/database/Cursor;)V
    .locals 10
    .parameter "c"

    .prologue
    const-wide/16 v8, 0x257

    .line 1963
    iget-object v6, p0, Lcom/asus/reader/BookListActivity$CategoryAdapter;->mCategoryList:Ljava/util/List;

    monitor-enter v6

    .line 1964
    :try_start_0
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$CategoryAdapter;->mCategoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1965
    iget-object v7, p0, Lcom/asus/reader/BookListActivity$CategoryAdapter;->mCategoryList:Ljava/util/List;

    new-instance v0, Lcom/asus/reader/BookListActivity$CategoryEntry;

    iget-object v1, p0, Lcom/asus/reader/BookListActivity$CategoryAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    const-wide/16 v2, -0x1

    iget-object v4, p0, Lcom/asus/reader/BookListActivity$CategoryAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    const v5, 0x7f070013

    invoke-virtual {v4, v5}, Lcom/asus/reader/BookListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-direct/range {v0 .. v5}, Lcom/asus/reader/BookListActivity$CategoryEntry;-><init>(Lcom/asus/reader/BookListActivity;JLjava/lang/String;I)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1966
    iget-object v7, p0, Lcom/asus/reader/BookListActivity$CategoryAdapter;->mCategoryList:Ljava/util/List;

    new-instance v0, Lcom/asus/reader/BookListActivity$CategoryEntry;

    iget-object v1, p0, Lcom/asus/reader/BookListActivity$CategoryAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/asus/reader/BookListActivity$CategoryAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    const v5, 0x7f0700c0

    invoke-virtual {v4, v5}, Lcom/asus/reader/BookListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/asus/reader/BookListActivity$CategoryEntry;-><init>(Lcom/asus/reader/BookListActivity;JLjava/lang/String;I)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1967
    iget-object v7, p0, Lcom/asus/reader/BookListActivity$CategoryAdapter;->mCategoryList:Ljava/util/List;

    new-instance v0, Lcom/asus/reader/BookListActivity$CategoryEntry;

    iget-object v1, p0, Lcom/asus/reader/BookListActivity$CategoryAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    const-wide/16 v2, 0x257

    iget-object v4, p0, Lcom/asus/reader/BookListActivity$CategoryAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    const v5, 0x7f0700c2

    invoke-virtual {v4, v5}, Lcom/asus/reader/BookListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/asus/reader/BookListActivity$CategoryEntry;-><init>(Lcom/asus/reader/BookListActivity;JLjava/lang/String;I)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1968
    if-nez p1, :cond_0

    .line 1969
    monitor-exit v6

    .line 1990
    :goto_0
    return-void

    .line 1970
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1971
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1972
    monitor-exit v6

    goto :goto_0

    .line 1989
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1976
    :cond_1
    :try_start_1
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1977
    .local v2, id:J
    const-wide/16 v0, 0x3e7

    cmp-long v0, v2, v0

    if-nez v0, :cond_2

    .line 1978
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$CategoryAdapter;->mCategoryList:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/reader/BookListActivity$CategoryEntry;

    const-string v1, "count"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/BookListActivity$CategoryEntry;->setCount(I)Z

    .line 1987
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1988
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1989
    monitor-exit v6

    goto :goto_0

    .line 1980
    :cond_2
    cmp-long v0, v2, v8

    if-nez v0, :cond_3

    .line 1981
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$CategoryAdapter;->mCategoryList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/reader/BookListActivity$CategoryEntry;

    const-string v1, "count"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/BookListActivity$CategoryEntry;->setCount(I)Z

    goto :goto_1

    .line 1984
    :cond_3
    iget-object v7, p0, Lcom/asus/reader/BookListActivity$CategoryAdapter;->mCategoryList:Ljava/util/List;

    new-instance v0, Lcom/asus/reader/BookListActivity$CategoryEntry;

    iget-object v1, p0, Lcom/asus/reader/BookListActivity$CategoryAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    const-string v4, "category_name"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "count"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/asus/reader/BookListActivity$CategoryEntry;-><init>(Lcom/asus/reader/BookListActivity;JLjava/lang/String;I)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public refreshCategory(Landroid/database/Cursor;)Z
    .locals 9
    .parameter "c"

    .prologue
    const/4 v8, 0x0

    .line 1931
    const/4 v5, 0x0

    .line 1932
    .local v5, needRedraw:Z
    iget-object v6, p0, Lcom/asus/reader/BookListActivity$CategoryAdapter;->mCategoryList:Ljava/util/List;

    monitor-enter v6

    .line 1933
    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1934
    .local v4, idCountHash:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    if-nez p1, :cond_0

    .line 1935
    monitor-exit v6

    move v6, v8

    .line 1958
    .end local p0
    :goto_0
    return v6

    .line 1936
    .restart local p0
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1937
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1938
    monitor-exit v6

    move v6, v8

    goto :goto_0

    .line 1942
    :cond_1
    const-string v7, "_id"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1943
    .local v2, id:J
    const-wide/16 v7, 0x3e7

    cmp-long v7, v2, v7

    if-nez v7, :cond_3

    .line 1944
    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "count"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1948
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1949
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1951
    iget-object v7, p0, Lcom/asus/reader/BookListActivity$CategoryAdapter;->mCategoryList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0
    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/reader/BookListActivity$CategoryEntry;

    .line 1952
    .local v0, entry:Lcom/asus/reader/BookListActivity$CategoryEntry;
    invoke-virtual {v0}, Lcom/asus/reader/BookListActivity$CategoryEntry;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1953
    invoke-virtual {v0}, Lcom/asus/reader/BookListActivity$CategoryEntry;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/asus/reader/BookListActivity$CategoryEntry;->setCount(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1954
    const/4 v5, 0x1

    goto :goto_2

    .line 1946
    .end local v0           #entry:Lcom/asus/reader/BookListActivity$CategoryEntry;
    .end local v1           #i$:Ljava/util/Iterator;
    .restart local p0
    :cond_3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "count"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1957
    .end local v2           #id:J
    .end local v4           #idCountHash:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local p0
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #id:J
    .restart local v4       #idCountHash:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :cond_4
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v6, v5

    .line 1958
    goto/16 :goto_0
.end method

.method public switchCateAdd(Z)V
    .locals 4
    .parameter "on"

    .prologue
    .line 2018
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/asus/reader/BookListActivity$CategoryAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v3}, Lcom/asus/reader/BookListActivity;->access$300(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/ui/CategoryListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/asus/reader/ui/CategoryListView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 2019
    iget-object v3, p0, Lcom/asus/reader/BookListActivity$CategoryAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v3}, Lcom/asus/reader/BookListActivity;->access$300(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/ui/CategoryListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/asus/reader/ui/CategoryListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2020
    .local v2, tmp:Landroid/view/View;
    instance-of v3, v2, Lcom/asus/reader/ui/CategoryItem;

    if-eqz v3, :cond_2

    .line 2021
    move-object v0, v2

    check-cast v0, Lcom/asus/reader/ui/CategoryItem;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/asus/reader/ui/CategoryItem;->getPosition()I

    move-result v3

    if-nez v3, :cond_2

    .line 2022
    if-eqz p1, :cond_1

    .line 2023
    check-cast v2, Lcom/asus/reader/ui/CategoryItem;

    .end local v2           #tmp:Landroid/view/View;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/asus/reader/ui/CategoryItem;->showAddButton(Z)V

    .line 2031
    :cond_0
    :goto_1
    return-void

    .line 2025
    .restart local v2       #tmp:Landroid/view/View;
    :cond_1
    check-cast v2, Lcom/asus/reader/ui/CategoryItem;

    .end local v2           #tmp:Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/asus/reader/ui/CategoryItem;->showAddButton(Z)V

    goto :goto_1

    .line 2018
    .restart local v2       #tmp:Landroid/view/View;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
