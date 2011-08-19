.class public Lcom/asus/dm/settings/BookMarkList;
.super Ljava/lang/Object;
.source "BookMarkList.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/dm/settings/BookMark;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "pContext"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/asus/dm/settings/BookMarkList;->mContext:Landroid/content/Context;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/dm/settings/BookMarkList;->mList:Ljava/util/ArrayList;

    .line 32
    invoke-direct {p0}, Lcom/asus/dm/settings/BookMarkList;->populateList()V

    .line 33
    return-void
.end method

.method private populateList()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 36
    const-string v3, "bookmark = 1"

    .line 37
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/asus/dm/settings/BookMarkList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 41
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    :cond_0
    new-instance v6, Lcom/asus/dm/settings/BookMark;

    iget-object v0, p0, Lcom/asus/dm/settings/BookMarkList;->mContext:Landroid/content/Context;

    invoke-direct {v6, v0, v7}, Lcom/asus/dm/settings/BookMark;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 44
    .local v6, bm:Lcom/asus/dm/settings/BookMark;
    iget-object v0, p0, Lcom/asus/dm/settings/BookMarkList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    .end local v6           #bm:Lcom/asus/dm/settings/BookMark;
    :cond_1
    return-void
.end method


# virtual methods
.method public add(Lcom/asus/dm/settings/BookMark;)V
    .locals 1
    .parameter "bm"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/asus/dm/settings/BookMarkList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public get(I)Lcom/asus/dm/settings/BookMark;
    .locals 1
    .parameter "location"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/asus/dm/settings/BookMarkList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/dm/settings/BookMark;

    return-object p0
.end method

.method public saveList()V
    .locals 3

    .prologue
    .line 50
    iget-object v2, p0, Lcom/asus/dm/settings/BookMarkList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/dm/settings/BookMark;

    .line 51
    .local v0, bm:Lcom/asus/dm/settings/BookMark;
    invoke-virtual {v0}, Lcom/asus/dm/settings/BookMark;->save()V

    goto :goto_0

    .line 53
    .end local v0           #bm:Lcom/asus/dm/settings/BookMark;
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/asus/dm/settings/BookMarkList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
