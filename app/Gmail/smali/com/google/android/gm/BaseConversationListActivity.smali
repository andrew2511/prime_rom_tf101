.class public abstract Lcom/google/android/gm/BaseConversationListActivity;
.super Lcom/google/android/gm/GmailBaseActivity;
.source "BaseConversationListActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/google/android/gm/CanvasConversationHeaderView$StarHandler;
.implements Lcom/google/android/gm/ConversationListController;
.implements Lcom/google/android/gm/ConversationListFragment$ConversationListFragmentInitializer;
.implements Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;
.implements Lcom/google/android/gm/LabelListFragment$LabelSelectionHandler;
.implements Lcom/google/android/gm/MenuHandler$ActivityCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gm/GmailBaseActivity;",
        "Lcom/google/android/gm/MenuHandler$ActivityCallback;",
        "Lcom/google/android/gm/ConversationListController;",
        "Lcom/google/android/gm/ConversationListFragment$ConversationListFragmentInitializer;",
        "Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;",
        "Lcom/google/android/gm/LabelListFragment$LabelSelectionHandler;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/google/android/gm/provider/Gmail$ConversationCursor;",
        ">;",
        "Lcom/google/android/gm/CanvasConversationHeaderView$StarHandler;"
    }
.end annotation


# instance fields
.field protected mAccount:Ljava/lang/String;

.field protected mAccountHelper:Lcom/google/android/gm/AccountHelper;

.field protected mAccountNames:[Ljava/lang/String;

.field protected mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

.field protected mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

.field protected mConversationCursorLoader:Lcom/google/android/gm/provider/ConversationCursorLoader;

.field protected mConversationListContext:Lcom/google/android/gm/ConversationListContext;

.field protected mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

.field protected mGmail:Lcom/google/android/gm/provider/Gmail;

.field protected mMenuHandler:Lcom/google/android/gm/MenuHandler;

.field private mNewEmailReceiver:Lcom/google/android/gm/SuppressNotificationReceiver;

.field protected mPreSearchState:Landroid/os/Bundle;

.field protected mPrefs:Lcom/google/android/gm/Persistence;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/gm/GmailBaseActivity;-><init>()V

    .line 84
    new-instance v0, Lcom/google/android/gm/AccountHelper;

    invoke-direct {v0, p0}, Lcom/google/android/gm/AccountHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mAccountHelper:Lcom/google/android/gm/AccountHelper;

    .line 94
    new-instance v0, Lcom/google/android/gm/ConversationSelectionSet;

    invoke-direct {v0}, Lcom/google/android/gm/ConversationSelectionSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mNewEmailReceiver:Lcom/google/android/gm/SuppressNotificationReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/BaseConversationListActivity;[Landroid/accounts/Account;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/gm/BaseConversationListActivity;->validateAccounts([Landroid/accounts/Account;)Z

    move-result v0

    return v0
.end method

.method private clearLabelAssociatedNotifications(Lcom/google/android/gm/ConversationListContext;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 205
    const-string v0, "^f"

    invoke-virtual {p1}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mAccount:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/android/gm/Utils;->clearAccountSendErrorNotifications(Landroid/content/Context;Ljava/lang/String;)V

    .line 208
    :cond_0
    return-void
.end method

.method private disableNotifications()V
    .locals 3

    .prologue
    .line 617
    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mNewEmailReceiver:Lcom/google/android/gm/SuppressNotificationReceiver;

    iget-object v1, p0, Lcom/google/android/gm/BaseConversationListActivity;->mAccount:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gm/SuppressNotificationReceiver;->activate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    return-void
.end method

.method private enableNotifications()V
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mNewEmailReceiver:Lcom/google/android/gm/SuppressNotificationReceiver;

    invoke-virtual {v0}, Lcom/google/android/gm/SuppressNotificationReceiver;->deactivate()V

    .line 622
    return-void
.end method

.method private startLoadingList()V
    .locals 3

    .prologue
    .line 536
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 537
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "query"

    iget-object v2, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationListContext;->getGmailQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    invoke-virtual {p0}, Lcom/google/android/gm/BaseConversationListActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationListContext;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2, v0, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 539
    return-void
.end method

.method private validateAccounts([Landroid/accounts/Account;)Z
    .locals 3
    .parameter "accounts"

    .prologue
    .line 303
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mAccount:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gm/Utils;->isStringEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p0, Lcom/google/android/gm/BaseConversationListActivity;->mAccount:Ljava/lang/String;

    const-string v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/google/android/gm/Utils;->containsAccount(Landroid/accounts/Account;[Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/BaseConversationListActivity;->finish()V

    .line 307
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gm/BaseConversationListActivity;->startActivity(Landroid/content/Intent;)V

    .line 308
    const/4 v0, 0x0

    .line 312
    :goto_0
    return v0

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mPrefs:Lcom/google/android/gm/Persistence;

    iget-object v1, p0, Lcom/google/android/gm/BaseConversationListActivity;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gm/Persistence;->setActiveAccount(Landroid/content/Context;Ljava/lang/String;)V

    .line 312
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected clearUndoOperations()V
    .locals 2

    .prologue
    .line 678
    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gm/MenuHandler;->setUndoOperation(Lcom/google/android/gm/UndoOperation;)V

    .line 679
    return-void
.end method

.method public enterSearchMode()V
    .locals 0

    .prologue
    .line 636
    invoke-virtual {p0}, Lcom/google/android/gm/BaseConversationListActivity;->onSearchRequested()Z

    .line 637
    return-void
.end method

.method protected abstract initialize(Landroid/os/Bundle;)V
.end method

.method public initializeFragment(Lcom/google/android/gm/ConversationListFragment;)V
    .locals 9
    .parameter "fragment"

    .prologue
    const/4 v6, 0x0

    .line 386
    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mPrefs:Lcom/google/android/gm/Persistence;

    invoke-virtual {v0, p0}, Lcom/google/android/gm/Persistence;->getAllowBatch(Landroid/content/Context;)Z

    move-result v8

    .line 387
    .local v8, allowBatch:Z
    iget-object v2, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    if-eqz v8, :cond_1

    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    move-object v3, v0

    :goto_0
    iget-object v4, p0, Lcom/google/android/gm/BaseConversationListActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    const v0, 0x7f0e0038

    invoke-virtual {p0, v0}, Lcom/google/android/gm/BaseConversationListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    move-object v0, p1

    move-object v1, p0

    move-object v5, p0

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gm/ConversationListFragment;->bindActivityInfo(Lcom/google/android/gm/ConversationListController;Lcom/google/android/gm/ConversationListContext;Lcom/google/android/gm/ConversationSelectionSet;Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/CanvasConversationHeaderView$StarHandler;Lcom/google/android/gm/ViewMode;Landroid/view/ViewGroup;)V

    .line 390
    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {p1, v0}, Lcom/google/android/gm/ConversationListFragment;->setCursor(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)V

    .line 393
    :cond_0
    return-void

    :cond_1
    move-object v3, v6

    .line 387
    goto :goto_0
.end method

.method protected isConversationListVisible()Z
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAccountChanged()V
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    iget-object v1, p0, Lcom/google/android/gm/BaseConversationListActivity;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/MenuHandler;->setAccount(Ljava/lang/String;)V

    .line 506
    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mPrefs:Lcom/google/android/gm/Persistence;

    iget-object v1, p0, Lcom/google/android/gm/BaseConversationListActivity;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gm/Persistence;->setActiveAccount(Landroid/content/Context;Ljava/lang/String;)V

    .line 507
    return-void
.end method

.method protected abstract onAccountsUpdated()V
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 377
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 379
    instance-of v0, p1, Lcom/google/android/gm/ConversationListFragment;

    if-eqz v0, :cond_0

    .line 380
    check-cast p1, Lcom/google/android/gm/ConversationListFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    .line 382
    :cond_0
    return-void
.end method

.method public onConversationSelected(I)V
    .locals 7
    .parameter "position"

    .prologue
    .line 580
    iget-object v2, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    .line 581
    .local v2, cursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    invoke-virtual {v2}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, p1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->moveTo(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 596
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    invoke-virtual {p0, v2}, Lcom/google/android/gm/BaseConversationListActivity;->shouldGoStraightToDraft(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 587
    iget-object v3, p0, Lcom/google/android/gm/BaseConversationListActivity;->mGmail:Lcom/google/android/gm/provider/Gmail;

    iget-object v4, p0, Lcom/google/android/gm/BaseConversationListActivity;->mAccount:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getConversationId()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->getComposableMessageId(Lcom/google/android/gm/provider/Gmail;Ljava/lang/String;J)J

    move-result-wide v0

    .line 589
    .local v0, composableMessageId:J
    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-eqz v3, :cond_2

    .line 590
    iget-object v3, p0, Lcom/google/android/gm/BaseConversationListActivity;->mAccount:Ljava/lang/String;

    invoke-static {p0, v3, v0, v1}, Lcom/google/android/gm/ComposeActivity;->draft(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    .line 595
    .end local v0           #composableMessageId:J
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gm/BaseConversationListActivity;->showConversationAtCursor()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedState"

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 138
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/android/gm/BaseConversationListActivity;->setDefaultKeyMode(I)V

    .line 139
    invoke-virtual {p0}, Lcom/google/android/gm/BaseConversationListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 140
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/gm/BaseConversationListActivity;->mAccountHelper:Lcom/google/android/gm/AccountHelper;

    invoke-virtual {v1, v0}, Lcom/google/android/gm/AccountHelper;->chooseAccount(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/BaseConversationListActivity;->mAccount:Ljava/lang/String;

    .line 141
    iget-object v1, p0, Lcom/google/android/gm/BaseConversationListActivity;->mAccount:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 143
    invoke-virtual {p0}, Lcom/google/android/gm/BaseConversationListActivity;->finish()V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gm/BaseConversationListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->getContentProviderMailAccess(Landroid/content/ContentResolver;)Lcom/google/android/gm/provider/Gmail;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/BaseConversationListActivity;->mGmail:Lcom/google/android/gm/provider/Gmail;

    .line 147
    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/BaseConversationListActivity;->mPrefs:Lcom/google/android/gm/Persistence;

    .line 148
    invoke-static {p0}, Lcom/google/android/gm/MenuHandler;->getInstance(Landroid/content/Context;)Lcom/google/android/gm/MenuHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/BaseConversationListActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    .line 149
    new-instance v1, Lcom/google/android/gm/SuppressNotificationReceiver;

    invoke-direct {v1}, Lcom/google/android/gm/SuppressNotificationReceiver;-><init>()V

    iput-object v1, p0, Lcom/google/android/gm/BaseConversationListActivity;->mNewEmailReceiver:Lcom/google/android/gm/SuppressNotificationReceiver;

    .line 151
    if-eqz p1, :cond_2

    .line 152
    const-string v1, "saved-conversations"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/ConversationSelectionSet;

    iput-object v1, p0, Lcom/google/android/gm/BaseConversationListActivity;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    .line 153
    iget-object v1, p0, Lcom/google/android/gm/BaseConversationListActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    invoke-virtual {v1, p1}, Lcom/google/android/gm/MenuHandler;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 154
    const-string v1, "pre_search_state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/BaseConversationListActivity;->mPreSearchState:Landroid/os/Bundle;

    .line 157
    :cond_2
    invoke-static {p0}, Lcom/google/android/gm/Utils;->enableShortcutIntentFilter(Landroid/content/Context;)V

    .line 159
    if-nez p1, :cond_3

    .line 160
    iget-object v1, p0, Lcom/google/android/gm/BaseConversationListActivity;->mAccount:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcom/google/android/gm/ConversationListContext;->forIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Lcom/google/android/gm/ConversationListContext;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gm/BaseConversationListActivity;->setListContext(Lcom/google/android/gm/ConversationListContext;)V

    .line 163
    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/android/gm/BaseConversationListActivity;->initialize(Landroid/os/Bundle;)V

    .line 165
    iget-object v1, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationListContext;->isSearchResult()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 166
    invoke-virtual {p0}, Lcom/google/android/gm/BaseConversationListActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/GmailApplication;

    invoke-virtual {v1}, Lcom/google/android/gm/GmailApplication;->getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationListContext;->getSearchQuery()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_4
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/google/android/gm/BaseConversationListActivity;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationSelectionSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/google/android/gm/BaseConversationListActivity;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {p0, v1}, Lcom/google/android/gm/BaseConversationListActivity;->onSetBecomeUnempty(Lcom/google/android/gm/ConversationSelectionSet;)V

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/gm/provider/Gmail$ConversationCursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 543
    const-string v1, "query"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 544
    .local v0, query:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/gm/BaseConversationListActivity;->mGmail:Lcom/google/android/gm/provider/Gmail;

    iget-object v2, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationListContext;->getAccount()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gm/provider/Gmail$BecomeActiveNetworkCursor;->YES:Lcom/google/android/gm/provider/Gmail$BecomeActiveNetworkCursor;

    invoke-virtual {v1, p0, v2, v0, v3}, Lcom/google/android/gm/provider/Gmail;->getConversationCursorLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$BecomeActiveNetworkCursor;)Lcom/google/android/gm/provider/ConversationCursorLoader;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationCursorLoader:Lcom/google/android/gm/provider/ConversationCursorLoader;

    .line 547
    iget-object v1, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationCursorLoader:Lcom/google/android/gm/provider/ConversationCursorLoader;

    return-object v1
.end method

.method public onEndBulkOperation()V
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationCursorLoader:Lcom/google/android/gm/provider/ConversationCursorLoader;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationCursorLoader:Lcom/google/android/gm/provider/ConversationCursorLoader;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/ConversationCursorLoader;->resumeLoading()V

    .line 654
    :cond_0
    return-void
.end method

.method public onLabelSelected(Ljava/lang/String;)V
    .locals 2
    .parameter "label"

    .prologue
    .line 511
    iget-object v1, p0, Lcom/google/android/gm/BaseConversationListActivity;->mAccount:Ljava/lang/String;

    invoke-static {p0, v1, p1}, Lcom/google/android/gm/ConversationListContext;->forLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/ConversationListContext;

    move-result-object v0

    .line 513
    .local v0, context:Lcom/google/android/gm/ConversationListContext;
    invoke-virtual {p0, v0}, Lcom/google/android/gm/BaseConversationListActivity;->setListContext(Lcom/google/android/gm/ConversationListContext;)V

    .line 515
    invoke-virtual {p0}, Lcom/google/android/gm/BaseConversationListActivity;->rebuildConversationList()V

    .line 516
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/google/android/gm/provider/Gmail$ConversationCursor;)V
    .locals 1
    .parameter
    .parameter "conversationCursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/gm/provider/Gmail$ConversationCursor;",
            ">;",
            "Lcom/google/android/gm/provider/Gmail$ConversationCursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 556
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/google/android/gm/provider/Gmail$ConversationCursor;>;"
    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationCursorLoader:Lcom/google/android/gm/provider/ConversationCursorLoader;

    if-eq v0, p1, :cond_0

    .line 565
    :goto_0
    return-void

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    if-eqz v0, :cond_1

    .line 562
    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    invoke-virtual {v0, p2}, Lcom/google/android/gm/ConversationListFragment;->setCursor(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)V

    .line 564
    :cond_1
    iput-object p2, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    check-cast p2, Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/BaseConversationListActivity;->onLoadFinished(Landroid/content/Loader;Lcom/google/android/gm/provider/Gmail$ConversationCursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/gm/provider/Gmail$ConversationCursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/google/android/gm/provider/Gmail$ConversationCursor;>;"
    const/4 v1, 0x0

    .line 569
    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationCursorLoader:Lcom/google/android/gm/provider/ConversationCursorLoader;

    if-ne v0, p1, :cond_0

    .line 570
    iput-object v1, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationCursorLoader:Lcom/google/android/gm/provider/ConversationCursorLoader;

    .line 572
    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ConversationListFragment;->setCursor(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)V

    .line 576
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 180
    invoke-virtual {p0, p1}, Lcom/google/android/gm/BaseConversationListActivity;->setIntent(Landroid/content/Intent;)V

    .line 181
    iget-object v1, p0, Lcom/google/android/gm/BaseConversationListActivity;->mAccountHelper:Lcom/google/android/gm/AccountHelper;

    invoke-virtual {v1, p1}, Lcom/google/android/gm/AccountHelper;->chooseAccount(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gm/BaseConversationListActivity;->setAccount(Ljava/lang/String;)Z

    .line 183
    iget-object v1, p0, Lcom/google/android/gm/BaseConversationListActivity;->mAccount:Ljava/lang/String;

    invoke-static {p0, v1, p1}, Lcom/google/android/gm/ConversationListContext;->forIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Lcom/google/android/gm/ConversationListContext;

    move-result-object v0

    .line 185
    .local v0, context:Lcom/google/android/gm/ConversationListContext;
    invoke-virtual {v0}, Lcom/google/android/gm/ConversationListContext;->isSearchResult()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    invoke-virtual {p0}, Lcom/google/android/gm/BaseConversationListActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/GmailApplication;

    invoke-virtual {v1}, Lcom/google/android/gm/GmailApplication;->getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationListContext;->getSearchQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lcom/google/android/gm/BaseConversationListActivity;->mPreSearchState:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 192
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/google/android/gm/BaseConversationListActivity;->mPreSearchState:Landroid/os/Bundle;

    .line 194
    iget-object v1, p0, Lcom/google/android/gm/BaseConversationListActivity;->mPreSearchState:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Lcom/google/android/gm/BaseConversationListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 201
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gm/BaseConversationListActivity;->setListContext(Lcom/google/android/gm/ConversationListContext;)V

    .line 202
    return-void

    .line 199
    :cond_1
    iput-object v3, p0, Lcom/google/android/gm/BaseConversationListActivity;->mPreSearchState:Landroid/os/Bundle;

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 358
    invoke-super {p0}, Lcom/google/android/gm/GmailBaseActivity;->onPause()V

    .line 359
    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v0, p0}, Lcom/google/android/gm/ConversationSelectionSet;->removeObserver(Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;)V

    .line 360
    invoke-direct {p0}, Lcom/google/android/gm/BaseConversationListActivity;->enableNotifications()V

    .line 361
    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    invoke-virtual {v0}, Lcom/google/android/gm/MenuHandler;->detach()V

    .line 362
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 253
    invoke-super {p0}, Lcom/google/android/gm/GmailBaseActivity;->onRestart()V

    .line 254
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedState"

    .prologue
    .line 339
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 341
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 279
    invoke-super {p0}, Lcom/google/android/gm/GmailBaseActivity;->onResume()V

    .line 282
    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v0, p0}, Lcom/google/android/gm/ConversationSelectionSet;->addObserver(Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;)V

    .line 283
    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    iget-object v1, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/BaseConversationListActivity;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, p0, p0, v1, v2}, Lcom/google/android/gm/MenuHandler;->attach(Landroid/app/Activity;Lcom/google/android/gm/MenuHandler$ActivityCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Lcom/google/android/gm/BaseConversationListActivity;->updateAccountsInfo()V

    .line 291
    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationListContext;->isInboxView()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gm/BaseConversationListActivity;->isConversationListVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-direct {p0}, Lcom/google/android/gm/BaseConversationListActivity;->disableNotifications()V

    .line 294
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 319
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 321
    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    if-eqz v0, :cond_0

    .line 322
    const-string v0, "saved-list-context"

    iget-object v1, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationListContext;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    if-eqz v0, :cond_1

    .line 326
    const-string v0, "saved-conversations"

    iget-object v1, p0, Lcom/google/android/gm/BaseConversationListActivity;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/MenuHandler;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 331
    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mPreSearchState:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mPreSearchState:Landroid/os/Bundle;

    if-eq v0, p1, :cond_2

    .line 332
    const-string v0, "pre_search_state"

    iget-object v1, p0, Lcom/google/android/gm/BaseConversationListActivity;->mPreSearchState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 334
    :cond_2
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 238
    invoke-super {p0}, Lcom/google/android/gm/GmailBaseActivity;->onStart()V

    .line 242
    invoke-virtual {p0}, Lcom/google/android/gm/BaseConversationListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from-notification"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-static {p0}, Lcom/google/android/gm/InternalActivityStack;->finishAllOtherActivities(Landroid/app/Activity;)V

    .line 248
    :cond_0
    return-void
.end method

.method public onStartBulkOperation()V
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationCursorLoader:Lcom/google/android/gm/provider/ConversationCursorLoader;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationCursorLoader:Lcom/google/android/gm/provider/ConversationCursorLoader;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/ConversationCursorLoader;->suspendLoading()V

    .line 646
    :cond_0
    return-void
.end method

.method public onStartDragMode()V
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationCursorLoader:Lcom/google/android/gm/provider/ConversationCursorLoader;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationCursorLoader:Lcom/google/android/gm/provider/ConversationCursorLoader;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/ConversationCursorLoader;->suspendLoading()V

    .line 662
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 368
    invoke-super {p0}, Lcom/google/android/gm/GmailBaseActivity;->onStop()V

    .line 371
    invoke-virtual {p0}, Lcom/google/android/gm/BaseConversationListActivity;->clearUndoOperations()V

    .line 372
    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ConversationListFragment;->hideUndoView(Z)V

    .line 373
    return-void
.end method

.method public onStopDragMode()V
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationCursorLoader:Lcom/google/android/gm/provider/ConversationCursorLoader;

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationCursorLoader:Lcom/google/android/gm/provider/ConversationCursorLoader;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/ConversationCursorLoader;->resumeLoading()V

    .line 670
    :cond_0
    return-void
.end method

.method public onUndoAvailable(Lcom/google/android/gm/UndoOperation;)V
    .locals 2
    .parameter "op"

    .prologue
    .line 626
    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gm/ConversationListFragment;->showUndoView(Lcom/google/android/gm/UndoOperation;Z)V

    .line 627
    return-void
.end method

.method public onUndoExpired()V
    .locals 2

    .prologue
    .line 631
    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ConversationListFragment;->hideUndoView(Z)V

    .line 632
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 346
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onWindowFocusChanged(Z)V

    .line 349
    invoke-virtual {p0}, Lcom/google/android/gm/BaseConversationListActivity;->isConversationListVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/ConversationListFragment;->onWindowFocusChanged(Z)V

    .line 352
    :cond_0
    return-void
.end method

.method protected popSearchStack()Z
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mPreSearchState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mPreSearchState:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/google/android/gm/BaseConversationListActivity;->restoreState(Landroid/os/Bundle;)V

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mPreSearchState:Landroid/os/Bundle;

    .line 219
    const/4 v0, 0x1

    .line 221
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract rebuildConversationList()V
.end method

.method protected restoreListContext(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedState"

    .prologue
    .line 453
    const-string v2, "saved-list-context"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 454
    .local v1, listContextBundle:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 455
    invoke-static {v1}, Lcom/google/android/gm/ConversationListContext;->forBundle(Landroid/os/Bundle;)Lcom/google/android/gm/ConversationListContext;

    move-result-object v0

    .line 459
    .local v0, context:Lcom/google/android/gm/ConversationListContext;
    invoke-virtual {v0}, Lcom/google/android/gm/ConversationListContext;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gm/BaseConversationListActivity;->setAccount(Ljava/lang/String;)Z

    .line 460
    invoke-virtual {p0, v0}, Lcom/google/android/gm/BaseConversationListActivity;->setListContext(Lcom/google/android/gm/ConversationListContext;)V

    .line 462
    .end local v0           #context:Lcom/google/android/gm/ConversationListContext;
    :cond_0
    return-void
.end method

.method protected abstract restoreState(Landroid/os/Bundle;)V
.end method

.method protected setAccount(Ljava/lang/String;)Z
    .locals 6
    .parameter "newAccount"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 469
    if-nez p1, :cond_0

    move v1, v4

    .line 498
    :goto_0
    return v1

    .line 473
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/BaseConversationListActivity;->mAccount:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v5

    .line 475
    goto :goto_0

    .line 478
    :cond_1
    iget-object v1, p0, Lcom/google/android/gm/BaseConversationListActivity;->mAccountHelper:Lcom/google/android/gm/AccountHelper;

    invoke-virtual {v1, p1}, Lcom/google/android/gm/AccountHelper;->validateAccountName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 480
    invoke-virtual {p0}, Lcom/google/android/gm/BaseConversationListActivity;->updateAccountsInfo()V

    .line 481
    const v1, 0x7f0d013f

    invoke-virtual {p0, v1}, Lcom/google/android/gm/BaseConversationListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, errorMessage:Ljava/lang/String;
    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 485
    const-string v1, "Gmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to switch to invalid account ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 486
    goto :goto_0

    .line 489
    .end local v0           #errorMessage:Ljava/lang/String;
    :cond_2
    invoke-static {p0, p1, v4}, Lcom/google/android/gm/WaitActivity;->waitForAccountIfNeeded(Landroid/app/Activity;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    move v1, v4

    .line 492
    goto :goto_0

    .line 495
    :cond_3
    iput-object p1, p0, Lcom/google/android/gm/BaseConversationListActivity;->mAccount:Ljava/lang/String;

    .line 496
    const-string v1, "Gmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Switching Gmail account to ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/BaseConversationListActivity;->mAccount:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-virtual {p0}, Lcom/google/android/gm/BaseConversationListActivity;->onAccountChanged()V

    move v1, v5

    .line 498
    goto :goto_0
.end method

.method protected setListContext(Lcom/google/android/gm/ConversationListContext;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 416
    iget-object v2, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v2, p1}, Lcom/google/android/gm/ConversationListContext;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 447
    :goto_0
    return-void

    .line 422
    :cond_0
    iget-object v2, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    if-eqz v2, :cond_1

    .line 426
    iget-object v2, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationListContext;->hashCode()I

    move-result v1

    .line 428
    .local v1, oldLoaderId:I
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 429
    .local v0, handler:Landroid/os/Handler;
    new-instance v2, Lcom/google/android/gm/BaseConversationListActivity$2;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gm/BaseConversationListActivity$2;-><init>(Lcom/google/android/gm/BaseConversationListActivity;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 438
    .end local v0           #handler:Landroid/os/Handler;
    .end local v1           #oldLoaderId:I
    :cond_1
    iput-object p1, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    .line 439
    iget-object v2, p0, Lcom/google/android/gm/BaseConversationListActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    invoke-virtual {p1}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gm/MenuHandler;->setLabel(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p0}, Lcom/google/android/gm/BaseConversationListActivity;->clearUndoOperations()V

    .line 441
    iget-object v2, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    if-eqz v2, :cond_2

    .line 442
    iget-object v2, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    invoke-virtual {v2, p1}, Lcom/google/android/gm/ConversationListFragment;->showList(Lcom/google/android/gm/ConversationListContext;)V

    .line 445
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gm/BaseConversationListActivity;->startLoadingList()V

    .line 446
    invoke-direct {p0, p1}, Lcom/google/android/gm/BaseConversationListActivity;->clearLabelAssociatedNotifications(Lcom/google/android/gm/ConversationListContext;)V

    goto :goto_0
.end method

.method protected shouldGoStraightToDraft(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Z
    .locals 3
    .parameter "cursor"

    .prologue
    const/4 v2, 0x1

    .line 609
    const-string v0, "^r"

    iget-object v1, p0, Lcom/google/android/gm/BaseConversationListActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 612
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getHasDraftMessage()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getHasOutboxMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getNumMessages()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract showConversationAtCursor()V
.end method

.method public taskInProgress()Z
    .locals 1

    .prologue
    .line 674
    const/4 v0, 0x0

    return v0
.end method

.method public toggleStar(ZJJLjava/util/Map;)V
    .locals 11
    .parameter "toggleOn"
    .parameter "conversationId"
    .parameter "maxMessageId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 400
    .local p6, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    iget-object v8, p0, Lcom/google/android/gm/BaseConversationListActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mAccount:Ljava/lang/String;

    const-string v1, "^t"

    invoke-static {p0, v0, v1}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v9

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    new-instance v0, Lcom/google/android/gm/ConversationInfo;

    move-wide v1, p2

    move-wide v3, p4

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/ConversationInfo;-><init>(JJLjava/util/Map;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, v9

    move-object v3, v10

    move-object v4, v0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gm/MenuHandler;->addOrRemoveLabel(Lcom/google/android/gm/provider/Label;Ljava/lang/Boolean;Lcom/google/android/gm/ConversationInfo;ZILcom/google/android/gm/CommandListener;)V

    .line 405
    return-void
.end method

.method protected updateAccountsInfo()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity;->mAccountHelper:Lcom/google/android/gm/AccountHelper;

    new-instance v1, Lcom/google/android/gm/BaseConversationListActivity$1;

    invoke-direct {v1, p0}, Lcom/google/android/gm/BaseConversationListActivity$1;-><init>(Lcom/google/android/gm/BaseConversationListActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gm/AccountHelper;->asyncGetAccountsInfo(Lcom/google/android/gm/AccountHelper$AccountResultsCallback;)V

    .line 273
    return-void
.end method
