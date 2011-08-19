.class public Lcom/google/android/gsf/login/SyncSettingsFragment;
.super Landroid/app/ListFragment;
.source "SyncSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;
    }
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mActivity:Landroid/app/Activity;

.field private final mHandler:Landroid/os/Handler;

.field private mItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mStatusChangeListenerHandle:Ljava/lang/Object;

.field private mSyncStatusObserver:Landroid/content/SyncStatusObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/login/SyncSettingsFragment;->mHandler:Landroid/os/Handler;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/login/SyncSettingsFragment;->mItems:Ljava/util/HashMap;

    .line 54
    new-instance v0, Lcom/google/android/gsf/login/SyncSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/login/SyncSettingsFragment$1;-><init>(Lcom/google/android/gsf/login/SyncSettingsFragment;)V

    iput-object v0, p0, Lcom/google/android/gsf/login/SyncSettingsFragment;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/login/SyncSettingsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/gsf/login/SyncSettingsFragment;->onSyncStateUpdated()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gsf/login/SyncSettingsFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncSettingsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/gsf/login/SyncSettingsFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncSettingsFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private getLabelFromAuthority(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "authority"

    .prologue
    const/4 v6, 0x0

    .line 150
    iget-object v3, p0, Lcom/google/android/gsf/login/SyncSettingsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 151
    .local v0, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {v0, p1, v6}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 152
    .local v1, providerInfo:Landroid/content/pm/ProviderInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/content/pm/ProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v2, v3

    .line 154
    .local v2, providerLabel:Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    const-string v3, "GoogleLoginService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Provider needs a label for authority \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    move-object v2, p1

    .line 158
    :cond_0
    const v3, 0x7f0800e0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gsf/login/SyncSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 152
    .end local v2           #providerLabel:Ljava/lang/CharSequence;
    :cond_1
    const/4 v3, 0x0

    move-object v2, v3

    goto :goto_0
.end method

.method private onSyncStateUpdated()V
    .locals 2

    .prologue
    .line 65
    const-string v0, "GoogleLoginService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const-string v0, "GoogleLoginService"

    const-string v1, "Calling onSyncStateUpdated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncSettingsFragment;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v0}, Lcom/google/android/gsf/login/SyncSettingsFragment;->updateListViewData(Landroid/accounts/Account;)V

    .line 69
    return-void
.end method

.method private setListViewData()V
    .locals 6

    .prologue
    .line 134
    iget-object v3, p0, Lcom/google/android/gsf/login/SyncSettingsFragment;->mItems:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 135
    .local v2, values:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;>;"
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;

    .line 136
    .local v0, data:[Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 139
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x1090010

    invoke-direct {v3, v4, v5, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/SyncSettingsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 144
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 145
    iget-object v3, p0, Lcom/google/android/gsf/login/SyncSettingsFragment;->mListView:Landroid/widget/ListView;

    aget-object v4, v0, v1

    invoke-virtual {v4}, Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v1, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    :cond_0
    return-void
.end method

.method private updateListViewData(Landroid/accounts/Account;)V
    .locals 9
    .parameter "account"

    .prologue
    .line 111
    iget-object v5, p0, Lcom/google/android/gsf/login/SyncSettingsFragment;->mAccount:Landroid/accounts/Account;

    if-nez v5, :cond_0

    .line 112
    const-string v5, "GoogleLoginService"

    const-string v6, "Account cannot be null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v3

    .line 116
    .local v3, syncAdapters:[Landroid/content/SyncAdapterType;
    const/4 v0, 0x0

    .local v0, i:I
    array-length v1, v3

    .local v1, n:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 117
    aget-object v2, v3, v0

    .line 118
    .local v2, sa:Landroid/content/SyncAdapterType;
    iget-object v5, v2, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 119
    iget-object v5, v2, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {p1, v5}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v4

    .line 121
    .local v4, syncState:I
    invoke-virtual {v2}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v5

    if-eqz v5, :cond_1

    if-lez v4, :cond_1

    .line 122
    iget-object v5, p0, Lcom/google/android/gsf/login/SyncSettingsFragment;->mItems:Ljava/util/HashMap;

    iget-object v6, v2, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 123
    iget-object v5, p0, Lcom/google/android/gsf/login/SyncSettingsFragment;->mItems:Ljava/util/HashMap;

    iget-object v6, v2, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    new-instance v7, Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;

    iget-object v8, v2, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/google/android/gsf/login/SyncSettingsFragment;->getLabelFromAuthority(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v2, v8}, Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;-><init>(Landroid/content/SyncAdapterType;Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .end local v4           #syncState:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 129
    .end local v2           #sa:Landroid/content/SyncAdapterType;
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gsf/login/SyncSettingsFragment;->setListViewData()V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/login/SyncSettingsFragment;->mActivity:Landroid/app/Activity;

    .line 91
    iget-object v1, p0, Lcom/google/android/gsf/login/SyncSettingsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 92
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    :goto_0
    iput-object v1, p0, Lcom/google/android/gsf/login/SyncSettingsFragment;->mAccount:Landroid/accounts/Account;

    .line 95
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/login/SyncSettingsFragment;->mListView:Landroid/widget/ListView;

    .line 96
    iget-object v1, p0, Lcom/google/android/gsf/login/SyncSettingsFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 97
    iget-object v1, p0, Lcom/google/android/gsf/login/SyncSettingsFragment;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/google/android/gsf/login/SyncSettingsFragment$2;

    invoke-direct {v2, p0}, Lcom/google/android/gsf/login/SyncSettingsFragment$2;-><init>(Lcom/google/android/gsf/login/SyncSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 107
    iget-object v1, p0, Lcom/google/android/gsf/login/SyncSettingsFragment;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v1}, Lcom/google/android/gsf/login/SyncSettingsFragment;->updateListViewData(Landroid/accounts/Account;)V

    .line 108
    return-void

    .line 92
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 74
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncSettingsFragment;->mStatusChangeListenerHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 80
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gsf/login/SyncSettingsFragment;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/login/SyncSettingsFragment;->mStatusChangeListenerHandle:Ljava/lang/Object;

    .line 83
    return-void
.end method
