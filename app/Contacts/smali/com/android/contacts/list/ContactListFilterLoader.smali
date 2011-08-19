.class public Lcom/android/contacts/list/ContactListFilterLoader;
.super Landroid/content/AsyncTaskLoader;
.source "ContactListFilterLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/ContactListFilterLoader$GroupQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/contacts/list/ContactListFilter;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mObserver:Landroid/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;>.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field private mResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mStopped:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 72
    return-void
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListFilterLoader;->deliverResult(Ljava/util/List;)V

    return-void
.end method

.method public deliverResult(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, results:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/list/ContactListFilter;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListFilterLoader;->mStopped:Z

    if-nez v0, :cond_0

    .line 132
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 134
    :cond_0
    return-void
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListFilterLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v23, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/list/ContactListFilter;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/ContactListFilterLoader;->getContext()Landroid/content/Context;

    move-result-object v17

    .line 79
    .local v17, context:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v15

    .line 80
    .local v15, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    const/4 v6, 0x0

    invoke-virtual {v15, v6}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/ArrayList;

    move-result-object v16

    .line 81
    .local v16, accounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/accounts/Account;

    .line 82
    .local v14, account:Landroid/accounts/Account;
    iget-object v6, v14, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v15, v6}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v7

    .line 83
    .local v7, accountType:Lcom/android/contacts/model/AccountType;
    if-eqz v7, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/ContactListFilterLoader;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/android/contacts/model/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object/from16 v22, v6

    .line 84
    .local v22, icon:Landroid/graphics/drawable/Drawable;
    :goto_1
    new-instance v6, Lcom/android/contacts/list/ContactListFilter;

    iget-object v7, v14, Landroid/accounts/Account;->type:Ljava/lang/String;

    .end local v7           #accountType:Lcom/android/contacts/model/AccountType;
    iget-object v8, v14, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v9, v14, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move-object/from16 v3, v22

    move-object v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/contacts/list/ContactListFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    .end local v22           #icon:Landroid/graphics/drawable/Drawable;
    .restart local v7       #accountType:Lcom/android/contacts/model/AccountType;
    :cond_0
    const/4 v6, 0x0

    move-object/from16 v22, v6

    goto :goto_1

    .line 87
    .end local v7           #accountType:Lcom/android/contacts/model/AccountType;
    .end local v14           #account:Landroid/accounts/Account;
    :cond_1
    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 89
    .local v5, resolver:Landroid/content/ContentResolver;
    sget-object v6, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/contacts/list/ContactListFilterLoader$GroupQuery;->COLUMNS:[Ljava/lang/String;

    const-string v8, "deleted=0 AND favorites=0 AND account_type NOT NULL AND account_name NOT NULL"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 92
    .local v18, cursor:Landroid/database/Cursor;
    :cond_2
    :goto_2
    :try_start_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 93
    const/4 v6, 0x0

    move-object/from16 v0, v18

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 94
    .local v9, groupId:J
    const/4 v6, 0x5

    move-object/from16 v0, v18

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 95
    .local v11, groupSourceId:Ljava/lang/String;
    const/4 v6, 0x6

    move-object/from16 v0, v18

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    move v12, v6

    .line 96
    .local v12, groupReadOnly:Z
    :goto_3
    const/4 v6, 0x1

    move-object/from16 v0, v18

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 97
    .local v7, accountType:Ljava/lang/String;
    const/4 v6, 0x2

    move-object/from16 v0, v18

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 98
    .local v8, accountName:Ljava/lang/String;
    const/16 v19, 0x0

    .line 99
    .local v19, defaultGroup:Z
    const/4 v6, 0x4

    move-object/from16 v0, v18

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 100
    const/4 v6, 0x4

    move-object/from16 v0, v18

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x1

    move/from16 v19, v6

    .line 102
    :cond_3
    :goto_4
    if-eqz v19, :cond_7

    .line 104
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/contacts/list/ContactListFilter;

    .line 105
    .local v20, filter:Lcom/android/contacts/list/ContactListFilter;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 107
    move-wide v0, v9

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/contacts/list/ContactListFilter;->groupId:J

    .line 108
    move-object v0, v11

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/contacts/list/ContactListFilter;->groupSourceId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 119
    .end local v7           #accountType:Ljava/lang/String;
    .end local v8           #accountName:Ljava/lang/String;
    .end local v9           #groupId:J
    .end local v11           #groupSourceId:Ljava/lang/String;
    .end local v12           #groupReadOnly:Z
    .end local v19           #defaultGroup:Z
    .end local v20           #filter:Lcom/android/contacts/list/ContactListFilter;
    :catchall_0
    move-exception v6

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    throw v6

    .line 95
    .restart local v9       #groupId:J
    .restart local v11       #groupSourceId:Ljava/lang/String;
    :cond_5
    const/4 v6, 0x0

    move v12, v6

    goto :goto_3

    .line 100
    .restart local v7       #accountType:Ljava/lang/String;
    .restart local v8       #accountName:Ljava/lang/String;
    .restart local v12       #groupReadOnly:Z
    .restart local v19       #defaultGroup:Z
    :cond_6
    const/4 v6, 0x0

    move/from16 v19, v6

    goto :goto_4

    .line 113
    :cond_7
    const/4 v6, 0x3

    :try_start_1
    move-object/from16 v0, v18

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 114
    .local v13, title:Ljava/lang/String;
    new-instance v6, Lcom/android/contacts/list/ContactListFilter;

    invoke-direct/range {v6 .. v13}, Lcom/android/contacts/list/ContactListFilter;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 119
    .end local v7           #accountType:Ljava/lang/String;
    .end local v8           #accountName:Ljava/lang/String;
    .end local v9           #groupId:J
    .end local v11           #groupSourceId:Ljava/lang/String;
    .end local v12           #groupReadOnly:Z
    .end local v13           #title:Ljava/lang/String;
    .end local v19           #defaultGroup:Z
    :cond_8
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 122
    invoke-static/range {v23 .. v23}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 124
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/list/ContactListFilterLoader;->mResults:Ljava/util/ArrayList;

    .line 125
    return-object v23
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListFilterLoader;->stopLoading()V

    .line 172
    return-void
.end method

.method protected onStartLoading()V
    .locals 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListFilterLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 140
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListFilterLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/contacts/list/ContactListFilterLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 144
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactListFilterLoader;->mStopped:Z

    .line 146
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterLoader;->mResults:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterLoader;->mResults:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListFilterLoader;->deliverResult(Ljava/util/List;)V

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListFilterLoader;->forceLoad()V

    goto :goto_0
.end method

.method protected onStopLoading()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 155
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListFilterLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 157
    iput-object v2, p0, Lcom/android/contacts/list/ContactListFilterLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 160
    :cond_0
    iput-object v2, p0, Lcom/android/contacts/list/ContactListFilterLoader;->mResults:Ljava/util/ArrayList;

    .line 163
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListFilterLoader;->cancelLoad()Z

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactListFilterLoader;->mStopped:Z

    .line 167
    return-void
.end method
