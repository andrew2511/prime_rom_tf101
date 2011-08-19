.class public Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
.super Lcom/android/contacts/model/EntityDelta$ValuesDelta;
.source "CustomContactListFilterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/CustomContactListFilterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "GroupDelta"
.end annotation


# instance fields
.field private mAccountHasGroups:Z

.field private mUngrouped:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;-><init>()V

    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    .line 276
    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    return v0
.end method

.method public static fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    .locals 2
    .parameter "after"

    .prologue
    .line 320
    new-instance v0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    invoke-direct {v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;-><init>()V

    .line 321
    .local v0, entry:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mBefore:Landroid/content/ContentValues;

    .line 322
    iput-object p0, v0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mAfter:Landroid/content/ContentValues;

    .line 323
    return-object v0
.end method

.method public static fromBefore(Landroid/content/ContentValues;)Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    .locals 2
    .parameter "before"

    .prologue
    .line 313
    new-instance v0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    invoke-direct {v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;-><init>()V

    .line 314
    .local v0, entry:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    iput-object p0, v0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mBefore:Landroid/content/ContentValues;

    .line 315
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iput-object v1, v0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mAfter:Landroid/content/ContentValues;

    .line 316
    return-object v0
.end method

.method public static fromSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    .locals 8
    .parameter "resolver"
    .parameter "accountName"
    .parameter "accountType"
    .parameter "accountHasGroups"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 284
    sget-object v0, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "account_name"

    invoke-virtual {v0, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "account_type"

    invoke-virtual {v0, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 287
    .local v1, settingsUri:Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "should_sync"

    aput-object v0, v2, v4

    const-string v0, "ungrouped_visible"

    aput-object v0, v2, v5

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 292
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 293
    .local v7, values:Landroid/content/ContentValues;
    const-string v0, "account_name"

    invoke-virtual {v7, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v0, "account_type"

    invoke-virtual {v7, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    const-string v0, "should_sync"

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 299
    const-string v0, "ungrouped_visible"

    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 300
    invoke-static {v7}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->fromBefore(Landroid/content/ContentValues;)Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->setUngrouped(Z)Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 308
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    .line 303
    :cond_1
    :try_start_1
    const-string v0, "should_sync"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 304
    const-string v0, "ungrouped_visible"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 305
    invoke-static {v7}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->setUngrouped(Z)Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 308
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private getAccountType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mBefore:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mAfter:Landroid/content/ContentValues;

    :goto_0
    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mBefore:Landroid/content/ContentValues;

    goto :goto_0
.end method


# virtual methods
.method public beforeExists()Z
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public buildDiff()Landroid/content/ContentProviderOperation;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 388
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->isInsert()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    iget-boolean v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mAfter:Landroid/content/ContentValues;

    iget-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 392
    sget-object v0, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 418
    :goto_0
    return-object v0

    .line 397
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected diff"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->isUpdate()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 400
    iget-boolean v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    if-eqz v0, :cond_2

    .line 401
    sget-object v0, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "account_name=? AND account_type=?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "account_name"

    invoke-virtual {p0, v4}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "account_type"

    invoke-virtual {p0, v4}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    goto :goto_0

    .line 411
    :cond_2
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->access$100(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v3

    .line 418
    goto :goto_0
.end method

.method public getShouldSync()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 338
    iget-boolean v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    if-eqz v0, :cond_0

    const-string v0, "should_sync"

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    return v0

    :cond_0
    const-string v0, "should_sync"

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "context"

    .prologue
    .line 360
    iget-boolean v3, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    if-eqz v3, :cond_2

    .line 361
    invoke-direct {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/contacts/util/LocalizedNameResolver;->getAllContactsName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, customAllContactsName:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v3, v0

    .line 377
    .end local v0           #customAllContactsName:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 366
    .restart local v0       #customAllContactsName:Ljava/lang/String;
    :cond_0
    iget-boolean v3, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mAccountHasGroups:Z

    if-eqz v3, :cond_1

    .line 367
    const v3, 0x7f0c0108

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_0

    .line 369
    :cond_1
    const v3, 0x7f0c0109

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_0

    .line 372
    .end local v0           #customAllContactsName:Ljava/lang/String;
    :cond_2
    const-string v3, "title_res"

    invoke-virtual {p0, v3}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 373
    .local v2, titleRes:Ljava/lang/Integer;
    if-eqz v2, :cond_3

    .line 374
    const-string v3, "res_package"

    invoke-virtual {p0, v3}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_0

    .line 377
    .end local v1           #packageName:Ljava/lang/String;
    :cond_3
    const-string v3, "title"

    invoke-virtual {p0, v3}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getVisible()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 343
    iget-boolean v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    if-eqz v0, :cond_0

    const-string v0, "ungrouped_visible"

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const-string v0, "group_visible"

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public putShouldSync(Z)V
    .locals 2
    .parameter "shouldSync"

    .prologue
    .line 348
    iget-boolean v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    if-eqz v0, :cond_0

    const-string v0, "should_sync"

    :goto_0
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->put(Ljava/lang/String;I)V

    .line 349
    return-void

    .line 348
    :cond_0
    const-string v0, "should_sync"

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public putVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    if-eqz v0, :cond_0

    const-string v0, "ungrouped_visible"

    :goto_0
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->put(Ljava/lang/String;I)V

    .line 353
    return-void

    .line 352
    :cond_0
    const-string v0, "group_visible"

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected setUngrouped(Z)Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    .locals 1
    .parameter "accountHasGroups"

    .prologue
    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    .line 328
    iput-boolean p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mAccountHasGroups:Z

    .line 329
    return-object p0
.end method
