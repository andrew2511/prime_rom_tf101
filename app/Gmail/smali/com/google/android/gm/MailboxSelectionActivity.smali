.class public Lcom/google/android/gm/MailboxSelectionActivity;
.super Lcom/google/android/gm/GmailBaseListActivity;
.source "MailboxSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/gm/AccountHelper$AddAccountCallback;


# static fields
.field private static final COLUMN_NAMES:[Ljava/lang/String;


# instance fields
.field private final VIEW_IDS:[I

.field private mAdapter:Landroid/widget/SimpleAdapter;

.field private mAppWidgetId:I

.field private mConfigureWidget:Z

.field private mCreateShortcut:Z

.field private mResumed:Z

.field mWaitingForAddAccountResult:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gm/MailboxSelectionActivity;->COLUMN_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0}, Lcom/google/android/gm/GmailBaseListActivity;-><init>()V

    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x7f0e0064

    aput v1, v0, v2

    iput-object v0, p0, Lcom/google/android/gm/MailboxSelectionActivity;->VIEW_IDS:[I

    .line 45
    iput-boolean v2, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mCreateShortcut:Z

    .line 46
    iput-boolean v2, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mConfigureWidget:Z

    .line 48
    iput v2, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mAppWidgetId:I

    .line 53
    iput-boolean v2, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mWaitingForAddAccountResult:Z

    .line 56
    iput-boolean v2, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mResumed:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/MailboxSelectionActivity;[Landroid/accounts/Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/gm/MailboxSelectionActivity;->completeSetupWithAccounts([Landroid/accounts/Account;)V

    return-void
.end method

.method private completeSetupWithAccounts([Landroid/accounts/Account;)V
    .locals 5
    .parameter "accounts"

    .prologue
    .line 204
    const/4 v4, 0x0

    invoke-static {p0, v4, p1}, Lcom/google/android/gm/Utils;->cacheGoogleAccountList(Landroid/content/Context;Z[Landroid/accounts/Account;)V

    .line 207
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 208
    .local v2, listData:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_0

    .line 209
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    .line 210
    .local v3, m:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    aget-object v4, p1, v1

    iget-object v0, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 211
    .local v0, account:Ljava/lang/String;
    const-string v4, "name"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    .end local v0           #account:Ljava/lang/String;
    .end local v3           #m:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    invoke-direct {p0, v2}, Lcom/google/android/gm/MailboxSelectionActivity;->updateAccountList(Ljava/util/List;)V

    .line 216
    return-void
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 143
    const-string v0, "createShortcut"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const-string v0, "createShortcut"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mCreateShortcut:Z

    .line 146
    :cond_0
    const-string v0, "createWidget"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    const-string v0, "createWidget"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mConfigureWidget:Z

    .line 149
    :cond_1
    const-string v0, "widgetId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    const-string v0, "widgetId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mAppWidgetId:I

    .line 152
    :cond_2
    const-string v0, "waitingForAddAccountResult"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 153
    const-string v0, "waitingForAddAccountResult"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mWaitingForAddAccountResult:Z

    .line 155
    :cond_3
    return-void
.end method

.method private selectAccount(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mCreateShortcut:Z

    if-eqz v0, :cond_0

    .line 281
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gm/LabelsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 282
    const/high16 v1, 0x4200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 284
    const-string v1, "account-shortcut"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    invoke-virtual {p0, v0}, Lcom/google/android/gm/MailboxSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 286
    invoke-virtual {p0}, Lcom/google/android/gm/MailboxSelectionActivity;->finish()V

    .line 298
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mConfigureWidget:Z

    if-eqz v0, :cond_1

    .line 289
    iget v0, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mAppWidgetId:I

    invoke-static {p0, v0, p1}, Lcom/google/android/gm/widget/GmailWidgetProvider;->updateWidget(Landroid/content/Context;ILjava/lang/String;)V

    .line 290
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 291
    const-string v1, "appWidgetId"

    iget v2, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mAppWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 292
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gm/MailboxSelectionActivity;->setResult(ILandroid/content/Intent;)V

    .line 293
    invoke-virtual {p0}, Lcom/google/android/gm/MailboxSelectionActivity;->finish()V

    goto :goto_0

    .line 295
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gm/Utils;->changeAccount(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 296
    invoke-virtual {p0}, Lcom/google/android/gm/MailboxSelectionActivity;->finish()V

    goto :goto_0
.end method

.method private setupWithAccounts()V
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lcom/google/android/gm/MailboxSelectionActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/gm/MailboxSelectionActivity$1;-><init>(Lcom/google/android/gm/MailboxSelectionActivity;)V

    .line 176
    .local v0, callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<[Landroid/accounts/Account;>;"
    invoke-static {p0, v0}, Lcom/google/android/gm/AccountHelper;->getSyncingAccounts(Landroid/content/Context;Landroid/accounts/AccountManagerCallback;)V

    .line 177
    return-void
.end method

.method private setupWithCachedAccounts()V
    .locals 8

    .prologue
    .line 180
    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, p0, v7}, Lcom/google/android/gm/Persistence;->getCachedConfiguredGoogleAccounts(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v1

    .line 185
    .local v1, cachedAccounts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .line 186
    .local v5, numAccounts:I
    if-nez v5, :cond_0

    .line 200
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 192
    .local v3, listData:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_1

    .line 193
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 194
    .local v0, accountName:Ljava/lang/String;
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v4

    .line 195
    .local v4, m:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "name"

    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 199
    .end local v0           #accountName:Ljava/lang/String;
    .end local v4           #m:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    invoke-direct {p0, v3}, Lcom/google/android/gm/MailboxSelectionActivity;->updateAccountList(Ljava/util/List;)V

    goto :goto_0
.end method

.method private updateAccountList(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, accountData:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v2, 0x1

    .line 219
    const/4 v8, 0x1

    .line 221
    .local v8, displayAccountList:Z
    iget-boolean v0, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mConfigureWidget:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mCreateShortcut:Z

    if-eqz v0, :cond_1

    .line 222
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 225
    invoke-static {p0, p0}, Lcom/google/android/gm/AccountHelper;->showAddAccount(Landroid/app/Activity;Lcom/google/android/gm/AccountHelper$AddAccountCallback;)V

    .line 227
    const/4 v8, 0x0

    .line 231
    iput-boolean v2, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mWaitingForAddAccountResult:Z

    .line 241
    :cond_1
    :goto_0
    if-eqz v8, :cond_3

    .line 244
    iget-boolean v0, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mResumed:Z

    if-eqz v0, :cond_2

    .line 245
    invoke-virtual {p0, v2}, Lcom/google/android/gm/MailboxSelectionActivity;->setVisible(Z)V

    .line 248
    :cond_2
    new-instance v0, Lcom/google/android/gm/MailboxSelectionActivity$2;

    const v4, 0x7f040021

    sget-object v5, Lcom/google/android/gm/MailboxSelectionActivity;->COLUMN_NAMES:[Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gm/MailboxSelectionActivity;->VIEW_IDS:[I

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gm/MailboxSelectionActivity$2;-><init>(Lcom/google/android/gm/MailboxSelectionActivity;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILjava/util/List;)V

    iput-object v0, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mAdapter:Landroid/widget/SimpleAdapter;

    .line 266
    iget-object v0, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {p0, v0}, Lcom/google/android/gm/MailboxSelectionActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 268
    :cond_3
    return-void

    .line 232
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mConfigureWidget:Z

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 235
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "name"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gm/MailboxSelectionActivity;->selectAccount(Ljava/lang/String;)V

    .line 237
    const/4 v8, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 302
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 308
    :goto_0
    return-void

    .line 304
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/MailboxSelectionActivity;->setResult(I)V

    .line 305
    invoke-virtual {p0}, Lcom/google/android/gm/MailboxSelectionActivity;->finish()V

    goto :goto_0

    .line 302
    :pswitch_data_0
    .packed-switch 0x7f0e0068
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f040022

    invoke-virtual {p0, v0}, Lcom/google/android/gm/MailboxSelectionActivity;->setContentView(I)V

    .line 63
    if-eqz p1, :cond_3

    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/gm/MailboxSelectionActivity;->restoreState(Landroid/os/Bundle;)V

    .line 78
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mCreateShortcut:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mConfigureWidget:Z

    if-eqz v0, :cond_2

    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gm/MailboxSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/MailboxSelectionActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    :cond_2
    const v0, 0x7f0e0068

    invoke-virtual {p0, v0}, Lcom/google/android/gm/MailboxSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-virtual {p0, v2}, Lcom/google/android/gm/MailboxSelectionActivity;->setVisible(Z)V

    .line 86
    invoke-virtual {p0, v2}, Lcom/google/android/gm/MailboxSelectionActivity;->setResult(I)V

    .line 87
    return-void

    .line 66
    :cond_3
    const-string v0, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {p0}, Lcom/google/android/gm/MailboxSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67
    iput-boolean v3, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mCreateShortcut:Z

    .line 69
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gm/MailboxSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mAppWidgetId:I

    .line 71
    iget v0, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mAppWidgetId:I

    if-eqz v0, :cond_0

    .line 72
    iput-boolean v3, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mConfigureWidget:Z

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 272
    if-eqz p2, :cond_0

    .line 273
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 274
    .local v0, selectedAccount:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/android/gm/MailboxSelectionActivity;->selectAccount(Ljava/lang/String;)V

    .line 276
    .end local v0           #selectedAccount:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 136
    invoke-virtual {p0, p1}, Lcom/google/android/gm/MailboxSelectionActivity;->setIntent(Landroid/content/Intent;)V

    .line 137
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Lcom/google/android/gm/GmailBaseListActivity;->onPause()V

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mResumed:Z

    .line 131
    return-void
.end method

.method public onResult(Landroid/accounts/Account;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 312
    if-nez p1, :cond_0

    .line 315
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/MailboxSelectionActivity;->setResult(I)V

    .line 316
    invoke-virtual {p0}, Lcom/google/android/gm/MailboxSelectionActivity;->finish()V

    .line 321
    :goto_0
    return-void

    .line 319
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gm/MailboxSelectionActivity;->setupWithAccounts()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Lcom/google/android/gm/GmailBaseListActivity;->onResume()V

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mResumed:Z

    .line 122
    iget-boolean v0, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mWaitingForAddAccountResult:Z

    if-nez v0, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/google/android/gm/MailboxSelectionActivity;->setupWithAccounts()V

    .line 125
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 93
    const-string v0, "createShortcut"

    iget-boolean v1, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mCreateShortcut:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 94
    const-string v0, "createWidget"

    iget-boolean v1, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mConfigureWidget:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 95
    iget v0, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mAppWidgetId:I

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "widgetId"

    iget v1, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mAppWidgetId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    :cond_0
    const-string v0, "waitingForAddAccountResult"

    iget-boolean v1, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mWaitingForAddAccountResult:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 99
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Lcom/google/android/gm/GmailBaseListActivity;->onStart()V

    .line 107
    invoke-static {p0}, Lcom/google/android/gm/InternalActivityStack;->finishAllOtherActivities(Landroid/app/Activity;)V

    .line 111
    iget-boolean v0, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mConfigureWidget:Z

    if-nez v0, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/google/android/gm/MailboxSelectionActivity;->setupWithCachedAccounts()V

    .line 114
    :cond_0
    return-void
.end method
