.class public Lcom/newspaperdirect/pressreader/android/core/RecentItem;
.super Ljava/lang/Object;
.source "RecentItem.java"


# instance fields
.field private CID:Ljava/lang/String;

.field private Id:Ljava/lang/Long;

.field private issueId:Ljava/lang/String;

.field private orderDate:Ljava/util/Date;

.field private orderWithSupplements:Ljava/lang/Boolean;

.field private parentIssueId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadItemsList()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/RecentItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    .line 62
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v10, recentItemsList:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/RecentItem;>;"
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/trx/RecentItemsDbAdapter;->getItems()Landroid/database/Cursor;

    move-result-object v0

    .line 64
    .local v0, cur:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-object v10

    .line 65
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-nez v11, :cond_1

    .line 66
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 67
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_0

    .line 71
    :cond_1
    const-string v11, "issue_id"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 72
    .local v5, idxIssueId:I
    const-string v11, "rowid"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 73
    .local v4, idxId:I
    const-string v11, "CID"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 74
    .local v3, idxCID:I
    const-string v11, "order_date"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 75
    .local v6, idxOrderDate:I
    const-string v11, "order_with_supplements"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 76
    .local v7, idxOrderWithSupplements:I
    const-string v11, "parent_issue_id"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 78
    .local v8, idxParentIssueId:I
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_2

    .line 96
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 97
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_0

    .line 79
    :cond_2
    new-instance v9, Lcom/newspaperdirect/pressreader/android/core/RecentItem;

    invoke-direct {v9}, Lcom/newspaperdirect/pressreader/android/core/RecentItem;-><init>()V

    .line 81
    .local v9, item:Lcom/newspaperdirect/pressreader/android/core/RecentItem;
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->setIssueId(Ljava/lang/String;)V

    .line 82
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->setCID(Ljava/lang/String;)V

    .line 83
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->setId(Ljava/lang/Long;)V

    .line 84
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->setParentIssueId(Ljava/lang/String;)V

    .line 85
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v11, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-direct {v2, v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 88
    .local v2, formatter:Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->setOrderDate(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_2
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-ne v11, v13, :cond_3

    move v11, v13

    :goto_3
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->setOrderWithSupplements(Ljava/lang/Boolean;)V

    .line 94
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 89
    :catch_0
    move-exception v11

    move-object v1, v11

    .line 90
    .local v1, e:Ljava/text/ParseException;
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9, v11}, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->setOrderDate(Ljava/util/Date;)V

    .line 91
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_2

    .line 93
    .end local v1           #e:Ljava/text/ParseException;
    :cond_3
    const/4 v11, 0x0

    goto :goto_3
.end method


# virtual methods
.method public getCID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->CID:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->Id:Ljava/lang/Long;

    return-object v0
.end method

.method public getIssueId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->issueId:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->orderDate:Ljava/util/Date;

    return-object v0
.end method

.method public getOrderWithSupplements()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->orderWithSupplements:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getParentIssueId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->parentIssueId:Ljava/lang/String;

    return-object v0
.end method

.method public setCID(Ljava/lang/String;)V
    .locals 0
    .parameter "CID"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->CID:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->Id:Ljava/lang/Long;

    .line 21
    return-void
.end method

.method public setIssueId(Ljava/lang/String;)V
    .locals 0
    .parameter "issueId"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->issueId:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setOrderDate(Ljava/util/Date;)V
    .locals 0
    .parameter "orderDate"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->orderDate:Ljava/util/Date;

    .line 53
    return-void
.end method

.method public setOrderWithSupplements(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "orderWithSupplements"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->orderWithSupplements:Ljava/lang/Boolean;

    .line 59
    return-void
.end method

.method public setParentIssueId(Ljava/lang/String;)V
    .locals 0
    .parameter "parentIssueId"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->parentIssueId:Ljava/lang/String;

    .line 34
    return-void
.end method
