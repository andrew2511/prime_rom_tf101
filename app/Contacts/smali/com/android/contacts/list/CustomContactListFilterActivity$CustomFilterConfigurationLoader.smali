.class public Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;
.super Landroid/content/AsyncTaskLoader;
.source "CustomContactListFilterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/CustomContactListFilterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomFilterConfigurationLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountSet:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 164
    return-void
.end method


# virtual methods
.method public deliverResult(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iput-object p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->mAccountSet:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    .line 214
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 158
    check-cast p1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->deliverResult(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;)V

    return-void
.end method

.method public loadInBackground()Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;
    .locals 16

    .prologue
    .line 168
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 169
    .local v10, context:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v8

    .line 170
    .local v8, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 172
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v9, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    invoke-direct {v9}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;-><init>()V

    .line 173
    .local v9, accounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .end local p0
    .local v13, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accounts/Account;

    .line 174
    .local v6, account:Landroid/accounts/Account;
    new-instance v7, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    iget-object v2, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v7, v0, v2, v3}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .local v7, accountDisplay:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;
    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "account_name"

    iget-object v4, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "account_type"

    iget-object v4, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 180
    .local v1, groupsUri:Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/ContactsContract$Groups;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v14

    .line 183
    .local v14, iterator:Landroid/content/EntityIterator;
    const/4 v12, 0x0

    .line 186
    .local v12, hasGroups:Z
    :goto_1
    :try_start_0
    invoke-interface {v14}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    invoke-interface {v14}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Entity;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v15

    .line 188
    .local v15, values:Landroid/content/ContentValues;
    invoke-static {v15}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->fromBefore(Landroid/content/ContentValues;)Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    move-result-object v11

    .line 189
    .local v11, group:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    invoke-static {v7, v11}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->access$000(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;)V

    .line 190
    const/4 v12, 0x1

    .line 191
    goto :goto_1

    .line 193
    .end local v11           #group:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    .end local v15           #values:Landroid/content/ContentValues;
    :cond_0
    iget-object v2, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v0, v2, v3, v12}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->fromSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    move-result-object v2

    iput-object v2, v7, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mUngrouped:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    .line 195
    iget-object v2, v7, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mUngrouped:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    invoke-static {v7, v2}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->access$000(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    invoke-interface {v14}, Landroid/content/EntityIterator;->close()V

    .line 200
    invoke-virtual {v9, v7}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 197
    :catchall_0
    move-exception v2

    invoke-interface {v14}, Landroid/content/EntityIterator;->close()V

    throw v2

    .line 203
    .end local v1           #groupsUri:Landroid/net/Uri;
    .end local v6           #account:Landroid/accounts/Account;
    .end local v7           #accountDisplay:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;
    .end local v12           #hasGroups:Z
    .end local v14           #iterator:Landroid/content/EntityIterator;
    :cond_1
    return-object v9
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->loadInBackground()Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 236
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 237
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->onStopLoading()V

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->mAccountSet:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    .line 239
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->mAccountSet:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->mAccountSet:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->deliverResult(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;)V

    .line 224
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->mAccountSet:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    if-nez v0, :cond_2

    .line 225
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->forceLoad()V

    .line 227
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->cancelLoad()Z

    .line 232
    return-void
.end method
