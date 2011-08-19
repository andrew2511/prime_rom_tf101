.class public Lcom/android/contacts/activities/ContactBrowserActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "ContactBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/android/contacts/activities/ActionBarAdapter$Listener;
.implements Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;
.implements Lcom/android/contacts/list/ProviderStatusLoader$ProviderStatusListener;
.implements Lcom/android/contacts/util/DialogManager$DialogShowingViewActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/ContactBrowserActivity$ContactsUnavailableFragmentListener;,
        Lcom/android/contacts/activities/ContactBrowserActivity$DetailFragmentListener;,
        Lcom/android/contacts/activities/ContactBrowserActivity$ContactBrowserActionListener;
    }
.end annotation


# instance fields
.field private mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

.field private mAddContactImageView:Landroid/view/View;

.field private mContactContentDisplayed:Z

.field private mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

.field private mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

.field private mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

.field private mDetailFragmentListener:Lcom/android/contacts/activities/ContactBrowserActivity$DetailFragmentListener;

.field private mDialogManager:Lcom/android/contacts/util/DialogManager;

.field private mHasActionBar:Z

.field private mImportExportInteraction:Lcom/android/contacts/interactions/ImportExportInteraction;

.field private mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

.field private mListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

.field private mOptionsMenuContactsAvailable:Z

.field private mOptionsMenuCustomFilterChangeable:Z

.field private mOptionsMenuGroupActionsEnabled:Z

.field private mPhoneNumberCallInteraction:Lcom/android/contacts/interactions/PhoneNumberInteraction;

.field private mProviderStatus:I

.field private mProviderStatusLoader:Lcom/android/contacts/list/ProviderStatusLoader;

.field private mRequest:Lcom/android/contacts/list/ContactsRequest;

.field private mSearchInitiated:Z

.field private mSearchMode:Z

.field private mSendTextMessageInteraction:Lcom/android/contacts/interactions/PhoneNumberInteraction;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 97
    new-instance v0, Lcom/android/contacts/util/DialogManager;

    invoke-direct {v0, p0}, Lcom/android/contacts/util/DialogManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    .line 110
    new-instance v0, Lcom/android/contacts/activities/ContactBrowserActivity$DetailFragmentListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/activities/ContactBrowserActivity$DetailFragmentListener;-><init>(Lcom/android/contacts/activities/ContactBrowserActivity;Lcom/android/contacts/activities/ContactBrowserActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mDetailFragmentListener:Lcom/android/contacts/activities/ContactBrowserActivity$DetailFragmentListener;

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mProviderStatus:I

    .line 131
    new-instance v0, Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactsIntentResolver;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    .line 132
    new-instance v0, Lcom/android/contacts/list/ContactListFilterController;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactListFilterController;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    .line 133
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v0, p0}, Lcom/android/contacts/list/ContactListFilterController;->addListener(Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;)V

    .line 134
    new-instance v0, Lcom/android/contacts/list/ProviderStatusLoader;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ProviderStatusLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mProviderStatusLoader:Lcom/android/contacts/list/ProviderStatusLoader;

    .line 135
    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/activities/ContactBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mContactContentDisplayed:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/contacts/activities/ContactBrowserActivity;)Lcom/android/contacts/list/ContactBrowseListFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/activities/ContactBrowserActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ContactBrowserActivity;->setupContactDetailFragment(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/contacts/activities/ContactBrowserActivity;)Lcom/android/contacts/interactions/PhoneNumberInteraction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactBrowserActivity;->getPhoneNumberCallInteraction()Lcom/android/contacts/interactions/PhoneNumberInteraction;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/activities/ContactBrowserActivity;)Lcom/android/contacts/interactions/PhoneNumberInteraction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactBrowserActivity;->getSendTextMessageInteraction()Lcom/android/contacts/interactions/PhoneNumberInteraction;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/activities/ContactBrowserActivity;)Lcom/android/contacts/list/ContactListFilterController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/activities/ContactBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactBrowserActivity;->createNewContact()V

    return-void
.end method

.method private areGroupActionsEnabled()Z
    .locals 4

    .prologue
    .line 719
    const/4 v1, 0x0

    .line 720
    .local v1, groupActionsEnabled:Z
    iget-object v2, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    if-eqz v2, :cond_0

    .line 721
    iget-object v2, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactBrowseListFragment;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    .line 722
    .local v0, filter:Lcom/android/contacts/list/ContactListFilter;
    if-eqz v0, :cond_0

    iget v2, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-boolean v2, v0, Lcom/android/contacts/list/ContactListFilter;->groupReadOnly:Z

    if-nez v2, :cond_0

    .line 725
    const/4 v1, 0x1

    .line 728
    .end local v0           #filter:Lcom/android/contacts/list/ContactListFilter;
    :cond_0
    return v1
.end method

.method private configureContentView(ZLandroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 177
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsIntentResolver;->resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    .line 178
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/ContactBrowserActivity;->setResult(I)V

    .line 180
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactBrowserActivity;->finish()V

    .line 218
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getRedirectIntent()Landroid/content/Intent;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ContactBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactBrowserActivity;->finish()V

    goto :goto_0

    .line 192
    :cond_1
    if-eqz p1, :cond_2

    .line 193
    const v0, 0x7f040006

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ContactBrowserActivity;->setContentView(I)V

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    const/16 v1, 0x8c

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mContactContentDisplayed:Z

    if-nez v0, :cond_3

    .line 198
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 199
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    iget-object v1, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getContactUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 201
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ContactBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 202
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactBrowserActivity;->finish()V

    goto :goto_0

    .line 206
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ContactBrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 208
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mHasActionBar:Z

    .line 209
    iget-boolean v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mHasActionBar:Z

    if-eqz v0, :cond_4

    .line 210
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactBrowserActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 212
    new-instance v1, Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-direct {v1, p0}, Lcom/android/contacts/activities/ActionBarAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    .line 213
    iget-object v1, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    iget-object v2, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1, p2, v2, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->onCreate(Landroid/os/Bundle;Lcom/android/contacts/list/ContactsRequest;Landroid/app/ActionBar;)V

    .line 214
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    iget-object v1, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setContactListFilterController(Lcom/android/contacts/list/ContactListFilterController;)V

    .line 217
    :cond_4
    if-nez p2, :cond_5

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/ContactBrowserActivity;->configureFragments(Z)V

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_1
.end method

.method private configureFragments(Z)V
    .locals 6
    .parameter "fromRequest"

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 258
    if-eqz p1, :cond_4

    .line 259
    const/4 v1, 0x0

    .line 260
    .local v1, filter:Lcom/android/contacts/list/ContactListFilter;
    iget-object v2, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    .line 261
    .local v0, actionCode:I
    sparse-switch v0, :sswitch_data_0

    .line 279
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mSearchMode:Z

    .line 280
    if-eqz v1, :cond_3

    .line 281
    iget-object v2, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v2, v1, v4}, Lcom/android/contacts/list/ContactListFilterController;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V

    .line 282
    iput-boolean v4, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mSearchMode:Z

    .line 288
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getContactUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 289
    iput-boolean v4, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mSearchMode:Z

    .line 292
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    iget-object v3, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/ContactBrowseListFragment;->setContactsRequest(Lcom/android/contacts/list/ContactsRequest;)V

    .line 293
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactBrowserActivity;->configureListFragmentForRequest()V

    .line 299
    .end local v0           #actionCode:I
    .end local v1           #filter:Lcom/android/contacts/list/ContactListFilter;
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactBrowserActivity;->configureListFragment()V

    .line 301
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactBrowserActivity;->invalidateOptionsMenu()V

    .line 302
    return-void

    .line 263
    .restart local v0       #actionCode:I
    .restart local v1       #filter:Lcom/android/contacts/list/ContactListFilter;
    :sswitch_0
    new-instance v1, Lcom/android/contacts/list/ContactListFilter;

    .end local v1           #filter:Lcom/android/contacts/list/ContactListFilter;
    invoke-direct {v1, v5}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    .line 264
    .restart local v1       #filter:Lcom/android/contacts/list/ContactListFilter;
    goto :goto_0

    .line 266
    :sswitch_1
    new-instance v1, Lcom/android/contacts/list/ContactListFilter;

    .end local v1           #filter:Lcom/android/contacts/list/ContactListFilter;
    const/4 v2, -0x5

    invoke-direct {v1, v2}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    .line 268
    .restart local v1       #filter:Lcom/android/contacts/list/ContactListFilter;
    goto :goto_0

    .line 275
    :sswitch_2
    new-instance v1, Lcom/android/contacts/list/ContactListFilter;

    .end local v1           #filter:Lcom/android/contacts/list/ContactListFilter;
    const/4 v2, -0x4

    invoke-direct {v1, v2}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    .restart local v1       #filter:Lcom/android/contacts/list/ContactListFilter;
    goto :goto_0

    .line 283
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_0

    .line 284
    iget-object v2, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    new-instance v3, Lcom/android/contacts/list/ContactListFilter;

    invoke-direct {v3, v5}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/list/ContactListFilterController;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V

    goto :goto_1

    .line 295
    .end local v0           #actionCode:I
    .end local v1           #filter:Lcom/android/contacts/list/ContactListFilter;
    :cond_4
    iget-boolean v2, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mHasActionBar:Z

    if-eqz v2, :cond_2

    .line 296
    iget-object v2, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mSearchMode:Z

    goto :goto_2

    .line 261
    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_0
        0x11 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_2
        0x32 -> :sswitch_2
    .end sparse-switch
.end method

.method private configureListFragment()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 366
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    iget-boolean v1, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mSearchMode:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSearchMode(Z)V

    .line 368
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    iget-boolean v1, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mSearchMode:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactBrowseListFragment;->setVisibleScrollbarEnabled(Z)V

    .line 369
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    iget-boolean v1, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mContactContentDisplayed:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactBrowseListFragment;->setVerticalScrollbarPosition(I)V

    .line 373
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    iget-boolean v1, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mContactContentDisplayed:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSelectionVisible(Z)V

    .line 374
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    iget-boolean v1, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mContactContentDisplayed:Z

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactBrowseListFragment;->setQuickContactEnabled(Z)V

    .line 375
    return-void

    :cond_0
    move v1, v3

    .line 368
    goto :goto_0

    .line 369
    :cond_1
    const/4 v1, 0x2

    goto :goto_1

    :cond_2
    move v1, v3

    .line 374
    goto :goto_2
.end method

.method private configureListFragmentForRequest()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 346
    iget-object v1, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getContactUri()Landroid/net/Uri;

    move-result-object v0

    .line 347
    .local v0, contactUri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 348
    iget-object v1, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;)V

    .line 351
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSearchMode(Z)V

    .line 352
    iget-object v1, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getQueryString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/list/ContactBrowseListFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 354
    iget-object v1, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isDirectorySearchEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 355
    iget-object v1, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactBrowseListFragment;->setDirectorySearchMode(I)V

    .line 360
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListFilterController;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 361
    iget-object v1, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactBrowseListFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 363
    :cond_1
    return-void

    .line 357
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    invoke-virtual {v1, v3}, Lcom/android/contacts/list/ContactBrowseListFragment;->setDirectorySearchMode(I)V

    goto :goto_0
.end method

.method private createNewContact()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 786
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 788
    .local v0, accounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v6, :cond_0

    iget-object v4, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mAddContactImageView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 791
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.INSERT"

    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 792
    .local v2, intent:Landroid/content/Intent;
    const/4 v4, 0x2

    invoke-virtual {p0, v2, v4}, Lcom/android/contacts/activities/ContactBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 812
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 796
    :cond_1
    new-instance v3, Landroid/widget/ListPopupWindow;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 797
    .local v3, popup:Landroid/widget/ListPopupWindow;
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 798
    iget-object v4, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mAddContactImageView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 799
    new-instance v1, Lcom/android/contacts/util/AccountsListAdapter;

    invoke-direct {v1, p0, v6}, Lcom/android/contacts/util/AccountsListAdapter;-><init>(Landroid/content/Context;Z)V

    .line 800
    .local v1, adapter:Lcom/android/contacts/util/AccountsListAdapter;
    invoke-virtual {v3, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 801
    new-instance v4, Lcom/android/contacts/activities/ContactBrowserActivity$2;

    invoke-direct {v4, p0, v3, v1}, Lcom/android/contacts/activities/ContactBrowserActivity$2;-><init>(Lcom/android/contacts/activities/ContactBrowserActivity;Landroid/widget/ListPopupWindow;Lcom/android/contacts/util/AccountsListAdapter;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 810
    invoke-virtual {v3, v6}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 811
    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->show()V

    goto :goto_0
.end method

.method private deleteSelection()Z
    .locals 1

    .prologue
    .line 966
    const/4 v0, 0x0

    return v0
.end method

.method private getImportExportInteraction()Lcom/android/contacts/interactions/ImportExportInteraction;
    .locals 1

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mImportExportInteraction:Lcom/android/contacts/interactions/ImportExportInteraction;

    if-nez v0, :cond_0

    .line 1003
    new-instance v0, Lcom/android/contacts/interactions/ImportExportInteraction;

    invoke-direct {v0, p0}, Lcom/android/contacts/interactions/ImportExportInteraction;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mImportExportInteraction:Lcom/android/contacts/interactions/ImportExportInteraction;

    .line 1005
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mImportExportInteraction:Lcom/android/contacts/interactions/ImportExportInteraction;

    return-object v0
.end method

.method private getPhoneNumberCallInteraction()Lcom/android/contacts/interactions/PhoneNumberInteraction;
    .locals 3

    .prologue
    .line 988
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mPhoneNumberCallInteraction:Lcom/android/contacts/interactions/PhoneNumberInteraction;

    if-nez v0, :cond_0

    .line 989
    new-instance v0, Lcom/android/contacts/interactions/PhoneNumberInteraction;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/contacts/interactions/PhoneNumberInteraction;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnDismissListener;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mPhoneNumberCallInteraction:Lcom/android/contacts/interactions/PhoneNumberInteraction;

    .line 991
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mPhoneNumberCallInteraction:Lcom/android/contacts/interactions/PhoneNumberInteraction;

    return-object v0
.end method

.method private getSendTextMessageInteraction()Lcom/android/contacts/interactions/PhoneNumberInteraction;
    .locals 3

    .prologue
    .line 995
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mSendTextMessageInteraction:Lcom/android/contacts/interactions/PhoneNumberInteraction;

    if-nez v0, :cond_0

    .line 996
    new-instance v0, Lcom/android/contacts/interactions/PhoneNumberInteraction;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/contacts/interactions/PhoneNumberInteraction;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnDismissListener;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mSendTextMessageInteraction:Lcom/android/contacts/interactions/PhoneNumberInteraction;

    .line 998
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mSendTextMessageInteraction:Lcom/android/contacts/interactions/PhoneNumberInteraction;

    return-object v0
.end method

.method private setupContactDetailFragment(Landroid/net/Uri;)V
    .locals 1
    .parameter "contactLookupUri"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0, p1}, Lcom/android/contacts/detail/ContactDetailFragment;->loadUri(Landroid/net/Uri;)V

    .line 334
    return-void
.end method

.method private updateFragmentVisibility()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 383
    iget-object v3, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mProviderStatusLoader:Lcom/android/contacts/list/ProviderStatusLoader;

    invoke-virtual {v3}, Lcom/android/contacts/list/ProviderStatusLoader;->getProviderStatus()I

    move-result v2

    .line 384
    .local v2, providerStatus:I
    iget v3, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mProviderStatus:I

    if-ne v2, v3, :cond_0

    .line 425
    :goto_0
    return-void

    .line 388
    :cond_0
    iput v2, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mProviderStatus:I

    .line 390
    const v3, 0x7f07002f

    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/ContactBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 391
    .local v0, contactsUnavailableView:Landroid/view/View;
    const v3, 0x7f07002c

    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/ContactBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 393
    .local v1, mainView:Landroid/view/View;
    iget v3, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mProviderStatus:I

    if-nez v3, :cond_3

    .line 394
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 395
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 396
    iget-object v3, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    if-eqz v3, :cond_1

    .line 397
    iget-object v3, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/ContactBrowseListFragment;->setEnabled(Z)V

    .line 399
    :cond_1
    iget-boolean v3, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mHasActionBar:Z

    if-eqz v3, :cond_2

    .line 400
    iget-object v3, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v3, v4}, Lcom/android/contacts/activities/ActionBarAdapter;->setEnabled(Z)V

    .line 424
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactBrowserActivity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 403
    :cond_3
    iget-boolean v3, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mHasActionBar:Z

    if-eqz v3, :cond_4

    .line 404
    iget-object v3, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v3, v6}, Lcom/android/contacts/activities/ActionBarAdapter;->setEnabled(Z)V

    .line 406
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    if-eqz v3, :cond_5

    .line 407
    iget-object v3, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    invoke-virtual {v3, v6}, Lcom/android/contacts/list/ContactBrowseListFragment;->setEnabled(Z)V

    .line 409
    :cond_5
    iget-object v3, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    if-nez v3, :cond_6

    .line 410
    new-instance v3, Lcom/android/contacts/list/ContactsUnavailableFragment;

    invoke-direct {v3}, Lcom/android/contacts/list/ContactsUnavailableFragment;-><init>()V

    iput-object v3, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    .line 411
    iget-object v3, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    iget-object v4, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mProviderStatusLoader:Lcom/android/contacts/list/ProviderStatusLoader;

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setProviderStatusLoader(Lcom/android/contacts/list/ProviderStatusLoader;)V

    .line 412
    iget-object v3, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    new-instance v4, Lcom/android/contacts/activities/ContactBrowserActivity$ContactsUnavailableFragmentListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/contacts/activities/ContactBrowserActivity$ContactsUnavailableFragmentListener;-><init>(Lcom/android/contacts/activities/ContactBrowserActivity;Lcom/android/contacts/activities/ContactBrowserActivity$1;)V

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setOnContactsUnavailableActionListener(Lcom/android/contacts/list/OnContactsUnavailableActionListener;)V

    .line 414
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactBrowserActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x7f070030

    iget-object v5, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    invoke-virtual {v3, v4, v5}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 420
    :goto_2
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 421
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 418
    :cond_6
    iget-object v3, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsUnavailableFragment;->update()V

    goto :goto_2
.end method


# virtual methods
.method public areContactsAvailable()Z
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mProviderStatus:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDialogManager()Lcom/android/contacts/util/DialogManager;
    .locals 1

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 657
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactBrowserActivity;->isOptionsMenuChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->invalidateOptionsMenu()V

    .line 660
    :cond_0
    return-void
.end method

.method public isCustomFilterChangeable()Z
    .locals 2

    .prologue
    .line 732
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOptionsMenuChanged()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 663
    iget-boolean v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mOptionsMenuContactsAvailable:Z

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactBrowserActivity;->areContactsAvailable()Z

    move-result v1

    if-eq v0, v1, :cond_0

    move v0, v2

    .line 683
    :goto_0
    return v0

    .line 667
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mOptionsMenuGroupActionsEnabled:Z

    invoke-direct {p0}, Lcom/android/contacts/activities/ContactBrowserActivity;->areGroupActionsEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_1

    move v0, v2

    .line 668
    goto :goto_0

    .line 671
    :cond_1
    iget-boolean v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mOptionsMenuCustomFilterChangeable:Z

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactBrowserActivity;->isCustomFilterChangeable()Z

    move-result v1

    if-eq v0, v1, :cond_2

    move v0, v2

    .line 672
    goto :goto_0

    .line 675
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->isOptionsMenuChanged()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    .line 676
    goto :goto_0

    .line 679
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->isOptionsMenuChanged()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 680
    goto :goto_0

    .line 683
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAction()V
    .locals 3

    .prologue
    .line 341
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/ContactBrowserActivity;->configureFragments(Z)V

    .line 342
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/list/ContactBrowseListFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 343
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, -0x1

    .line 855
    packed-switch p1, :pswitch_data_0

    .line 890
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 857
    :pswitch_1
    if-ne p2, v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListFilterController;->selectCustomFilter()V

    goto :goto_0

    .line 865
    :pswitch_2
    if-ne p2, v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    const/16 v1, 0x8c

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 867
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactBrowseListFragment;->reloadDataAndSetSelectedUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 878
    :pswitch_3
    if-ne p2, v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    invoke-virtual {v0, p3}, Lcom/android/contacts/list/ContactBrowseListFragment;->onPickerResult(Landroid/content/Intent;)V

    goto :goto_0

    .line 855
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 3
    .parameter "fragment"

    .prologue
    const/4 v2, 0x0

    .line 143
    instance-of v0, p1, Lcom/android/contacts/list/ContactBrowseListFragment;

    if-eqz v0, :cond_1

    .line 144
    check-cast p1, Lcom/android/contacts/list/ContactBrowseListFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    .line 145
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    new-instance v1, Lcom/android/contacts/activities/ContactBrowserActivity$ContactBrowserActionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/ContactBrowserActivity$ContactBrowserActionListener;-><init>(Lcom/android/contacts/activities/ContactBrowserActivity;Lcom/android/contacts/activities/ContactBrowserActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactBrowseListFragment;->setOnContactListActionListener(Lcom/android/contacts/list/OnContactBrowserActionListener;)V

    .line 146
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    new-instance v1, Lcom/android/contacts/list/ContactBrowseListContextMenuAdapter;

    iget-object v2, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    invoke-direct {v1, v2}, Lcom/android/contacts/list/ContactBrowseListContextMenuAdapter;-><init>(Lcom/android/contacts/list/ContactBrowseListFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactBrowseListFragment;->setContextMenuAdapter(Lcom/android/contacts/widget/ContextMenuAdapter;)V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 150
    .restart local p1
    :cond_1
    instance-of v0, p1, Lcom/android/contacts/detail/ContactDetailFragment;

    if-eqz v0, :cond_2

    .line 151
    check-cast p1, Lcom/android/contacts/detail/ContactDetailFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    .line 152
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mDetailFragmentListener:Lcom/android/contacts/activities/ContactBrowserActivity$DetailFragmentListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment;->setListener(Lcom/android/contacts/detail/ContactDetailFragment$Listener;)V

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mContactContentDisplayed:Z

    goto :goto_0

    .line 154
    .restart local p1
    :cond_2
    instance-of v0, p1, Lcom/android/contacts/list/ContactsUnavailableFragment;

    if-eqz v0, :cond_0

    .line 155
    check-cast p1, Lcom/android/contacts/list/ContactsUnavailableFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    .line 156
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mProviderStatusLoader:Lcom/android/contacts/list/ProviderStatusLoader;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setProviderStatusLoader(Lcom/android/contacts/list/ProviderStatusLoader;)V

    .line 157
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    new-instance v1, Lcom/android/contacts/activities/ContactBrowserActivity$ContactsUnavailableFragmentListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/ContactBrowserActivity$ContactsUnavailableFragmentListener;-><init>(Lcom/android/contacts/activities/ContactBrowserActivity;Lcom/android/contacts/activities/ContactBrowserActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setOnContactsUnavailableActionListener(Lcom/android/contacts/list/OnContactsUnavailableActionListener;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 947
    iget-boolean v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mSearchMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    if-eqz v0, :cond_0

    .line 948
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    .line 952
    :goto_0
    return-void

    .line 950
    :cond_0
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onContactListFilterChanged()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactBrowseListFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 323
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactBrowserActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public onContactListFilterCustomizationRequest()V
    .locals 2

    .prologue
    .line 328
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/list/CustomContactListFilterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/activities/ContactBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 330
    return-void
.end method

.method public onContactListFiltersLoaded()V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactBrowseListFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 312
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactBrowserActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 894
    iget-object v1, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactBrowseListFragment;->getContextMenuAdapter()Lcom/android/contacts/widget/ContextMenuAdapter;

    move-result-object v0

    .line 895
    .local v0, menuAdapter:Lcom/android/contacts/widget/ContextMenuAdapter;
    if-eqz v0, :cond_0

    .line 896
    invoke-interface {v0, p1}, Lcom/android/contacts/widget/ContextMenuAdapter;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 899
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedState"

    .prologue
    .line 164
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 166
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/activities/ContactBrowserActivity;->configureContentView(ZLandroid/os/Bundle;)V

    .line 167
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .parameter "id"
    .parameter "bundle"

    .prologue
    .line 826
    invoke-static {p1}, Lcom/android/contacts/util/DialogManager;->isManagedId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/contacts/util/DialogManager;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    .line 837
    :goto_0
    return-object v1

    .line 828
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactBrowserActivity;->getPhoneNumberCallInteraction()Lcom/android/contacts/interactions/PhoneNumberInteraction;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 829
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_0

    .line 831
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactBrowserActivity;->getSendTextMessageInteraction()Lcom/android/contacts/interactions/PhoneNumberInteraction;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 832
    if-eqz v0, :cond_2

    move-object v1, v0

    goto :goto_0

    .line 834
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactBrowserActivity;->getImportExportInteraction()Lcom/android/contacts/interactions/ImportExportInteraction;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/contacts/interactions/ImportExportInteraction;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 835
    if-eqz v0, :cond_3

    move-object v1, v0

    goto :goto_0

    .line 837
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ContactsActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 614
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactBrowserActivity;->areContactsAvailable()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v6

    .line 651
    :goto_0
    return v3

    .line 618
    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 620
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactBrowserActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 621
    .local v1, inflater:Landroid/view/MenuInflater;
    iget-boolean v3, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mHasActionBar:Z

    if-eqz v3, :cond_2

    .line 622
    const/high16 v3, 0x7f10

    invoke-virtual {v1, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 629
    const v3, 0x7f0700c4

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 630
    .local v0, addContact:Landroid/view/MenuItem;
    if-eqz v0, :cond_1

    .line 631
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactBrowserActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040001

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mAddContactImageView:Landroid/view/View;

    .line 633
    iget-object v3, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mAddContactImageView:Landroid/view/View;

    const v4, 0x7f07001e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 634
    .local v2, item:Landroid/view/View;
    new-instance v3, Lcom/android/contacts/activities/ContactBrowserActivity$1;

    invoke-direct {v3, p0}, Lcom/android/contacts/activities/ContactBrowserActivity$1;-><init>(Lcom/android/contacts/activities/ContactBrowserActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 640
    iget-object v3, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mAddContactImageView:Landroid/view/View;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .end local v2           #item:Landroid/view/View;
    :cond_1
    move v3, v7

    .line 642
    goto :goto_0

    .line 643
    .end local v0           #addContact:Landroid/view/MenuItem;
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v3

    const/16 v4, 0x32

    if-ne v3, v4, :cond_4

    .line 645
    :cond_3
    const v3, 0x7f100002

    invoke-virtual {v1, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    move v3, v7

    .line 646
    goto :goto_0

    .line 647
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactBrowseListFragment;->isSearchMode()Z

    move-result v3

    if-nez v3, :cond_5

    .line 648
    const v3, 0x7f100004

    invoke-virtual {v1, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    move v3, v7

    .line 649
    goto :goto_0

    :cond_5
    move v3, v6

    .line 651
    goto :goto_0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 595
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactBrowserActivity;->areContactsAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 596
    const/4 v0, 0x0

    .line 599
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ContactsActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 905
    packed-switch p1, :pswitch_data_0

    .line 921
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v1

    .line 923
    .local v1, unicodeChar:I
    if-eqz v1, :cond_1

    .line 924
    new-instance v0, Ljava/lang/String;

    new-array v2, v3, [I

    aput v1, v2, v4

    invoke-direct {v0, v2, v4, v3}, Ljava/lang/String;-><init>([III)V

    .line 925
    .local v0, query:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mHasActionBar:Z

    if-eqz v2, :cond_0

    .line 926
    iget-object v2, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 927
    iget-object v2, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v2, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setQueryString(Ljava/lang/String;)V

    .line 928
    iget-object v2, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v2, v3}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    move v2, v3

    .line 942
    .end local v0           #query:Ljava/lang/String;
    .end local v1           #unicodeChar:I
    :goto_0
    return v2

    .line 914
    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactBrowserActivity;->deleteSelection()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 915
    goto :goto_0

    .line 931
    .restart local v0       #query:Ljava/lang/String;
    .restart local v1       #unicodeChar:I
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 932
    iget-boolean v2, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mSearchInitiated:Z

    if-nez v2, :cond_1

    .line 933
    iput-boolean v3, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mSearchInitiated:Z

    .line 934
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v4, v2, v4}, Lcom/android/contacts/activities/ContactBrowserActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    move v2, v3

    .line 935
    goto :goto_0

    .line 942
    .end local v0           #query:Ljava/lang/String;
    .end local v1           #unicodeChar:I
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ContactsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 905
    nop

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/ContactBrowserActivity;->setIntent(Landroid/content/Intent;)V

    .line 172
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/activities/ContactBrowserActivity;->configureContentView(ZLandroid/os/Bundle;)V

    .line 173
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 737
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v5

    .line 782
    :goto_0
    return v0

    .line 739
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/preference/ContactsPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 740
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/activities/ContactBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v4

    .line 741
    goto :goto_0

    .line 744
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactBrowserActivity;->onSearchRequested()Z

    move v0, v4

    .line 745
    goto :goto_0

    .line 748
    :pswitch_3
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactBrowserActivity;->createNewContact()V

    move v0, v4

    .line 749
    goto :goto_0

    .line 752
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 753
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/activities/ContactBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v4

    .line 754
    goto :goto_0

    .line 757
    :pswitch_5
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactBrowserActivity;->getImportExportInteraction()Lcom/android/contacts/interactions/ImportExportInteraction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/interactions/ImportExportInteraction;->startInteraction()V

    move v0, v4

    .line 758
    goto :goto_0

    .line 761
    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 762
    const-string v1, "authorities"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "com.android.contacts"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 765
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 766
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ContactBrowserActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v4

    .line 767
    goto :goto_0

    .line 770
    :pswitch_7
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    .line 771
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactBrowserActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/contacts/list/ContactListFilter;->groupId:J

    iget-object v0, v0, Lcom/android/contacts/list/ContactListFilter;->title:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/android/contacts/interactions/GroupRenamingDialogFragment;->show(Landroid/app/FragmentManager;JLjava/lang/String;)V

    move v0, v4

    .line 773
    goto :goto_0

    .line 776
    :pswitch_8
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    .line 777
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactBrowserActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/contacts/list/ContactListFilter;->groupId:J

    iget-object v0, v0, Lcom/android/contacts/list/ContactListFilter;->title:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/android/contacts/interactions/GroupDeletionDialogFragment;->show(Landroid/app/FragmentManager;JLjava/lang/String;)V

    move v0, v4

    .line 779
    goto :goto_0

    .line 737
    :pswitch_data_0
    .packed-switch 0x7f0700c4
        :pswitch_3
        :pswitch_1
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 222
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->setListener(Lcom/android/contacts/activities/ActionBarAdapter$Listener;)V

    .line 226
    :cond_0
    iput-boolean v1, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mOptionsMenuContactsAvailable:Z

    .line 227
    iput-boolean v1, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mOptionsMenuCustomFilterChangeable:Z

    .line 228
    iput-boolean v1, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mOptionsMenuGroupActionsEnabled:Z

    .line 230
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mProviderStatus:I

    .line 231
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mProviderStatusLoader:Lcom/android/contacts/list/ProviderStatusLoader;

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ProviderStatusLoader;->setProviderStatusListener(Lcom/android/contacts/list/ProviderStatusLoader$ProviderStatusListener;)V

    .line 232
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onPause()V

    .line 233
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"
    .parameter "bundle"

    .prologue
    .line 842
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactBrowserActivity;->getPhoneNumberCallInteraction()Lcom/android/contacts/interactions/PhoneNumberInteraction;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 851
    :cond_0
    :goto_0
    return-void

    .line 846
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactBrowserActivity;->getSendTextMessageInteraction()Lcom/android/contacts/interactions/PhoneNumberInteraction;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 850
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/ContactsActivity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 688
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactBrowserActivity;->areContactsAvailable()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mOptionsMenuContactsAvailable:Z

    .line 689
    iget-boolean v4, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mOptionsMenuContactsAvailable:Z

    if-nez v4, :cond_0

    move v4, v5

    .line 715
    :goto_0
    return v4

    .line 693
    :cond_0
    const v4, 0x7f0700c5

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 694
    .local v3, settings:Landroid/view/MenuItem;
    invoke-static {p0}, Lcom/android/contacts/preference/ContactsPreferenceActivity;->isEmpty(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    move v4, v6

    :goto_1
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 696
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactBrowserActivity;->isCustomFilterChangeable()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mOptionsMenuCustomFilterChangeable:Z

    .line 698
    const v4, 0x7f0700d1

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 699
    .local v1, displayGroups:Landroid/view/MenuItem;
    if-eqz v1, :cond_1

    .line 700
    iget-boolean v4, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mOptionsMenuCustomFilterChangeable:Z

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 703
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactBrowserActivity;->areGroupActionsEnabled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mOptionsMenuGroupActionsEnabled:Z

    .line 705
    const v4, 0x7f0700c8

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 706
    .local v2, renameGroup:Landroid/view/MenuItem;
    if-eqz v2, :cond_2

    .line 707
    iget-boolean v4, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mOptionsMenuGroupActionsEnabled:Z

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 710
    :cond_2
    const v4, 0x7f0700c9

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 711
    .local v0, deleteGroup:Landroid/view/MenuItem;
    if-eqz v0, :cond_3

    .line 712
    iget-boolean v4, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mOptionsMenuGroupActionsEnabled:Z

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    move v4, v6

    .line 715
    goto :goto_0

    .end local v0           #deleteGroup:Landroid/view/MenuItem;
    .end local v1           #displayGroups:Landroid/view/MenuItem;
    .end local v2           #renameGroup:Landroid/view/MenuItem;
    :cond_4
    move v4, v5

    .line 694
    goto :goto_1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "view"
    .parameter "menu"

    .prologue
    .line 605
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactBrowserActivity;->areContactsAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 606
    const/4 v0, 0x0

    .line 609
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/ContactsActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onProviderStatusChange()V
    .locals 0

    .prologue
    .line 379
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactBrowserActivity;->updateFragmentVisibility()V

    .line 380
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "inState"

    .prologue
    .line 980
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 981
    const-string v0, "searchMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mSearchMode:Z

    .line 982
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/activities/ActionBarAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 985
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 237
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onResume()V

    .line 238
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setListener(Lcom/android/contacts/activities/ActionBarAdapter$Listener;)V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mProviderStatusLoader:Lcom/android/contacts/list/ProviderStatusLoader;

    invoke-virtual {v0, p0}, Lcom/android/contacts/list/ProviderStatusLoader;->setProviderStatusListener(Lcom/android/contacts/list/ProviderStatusLoader$ProviderStatusListener;)V

    .line 242
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactBrowserActivity;->updateFragmentVisibility()V

    .line 243
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 971
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 972
    const-string v0, "searchMode"

    iget-boolean v1, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mSearchMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 973
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/activities/ActionBarAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 976
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListFilterController;->onStart()V

    .line 248
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onStart()V

    .line 249
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListFilterController;->onStop()V

    .line 254
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onStop()V

    .line 255
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 1
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 817
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p4, :cond_0

    .line 818
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity;->mListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactBrowseListFragment;->startSearch(Ljava/lang/String;)V

    .line 822
    :goto_0
    return-void

    .line 820
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/ContactsActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_0
.end method
