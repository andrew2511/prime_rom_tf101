.class public Lcom/android/contacts/list/ContactsUnavailableFragment;
.super Landroid/app/Fragment;
.source "ContactsUnavailableFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAddAccountButton:Landroid/widget/Button;

.field private mCreateContactButton:Landroid/widget/Button;

.field private mImportContactsButton:Landroid/widget/Button;

.field private mListener:Lcom/android/contacts/list/OnContactsUnavailableActionListener;

.field private mMessageView:Landroid/widget/TextView;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mProviderStatusLoader:Lcom/android/contacts/list/ProviderStatusLoader;

.field private mRetryUpgradeButton:Landroid/widget/Button;

.field private mUninstallAppsButton:Landroid/widget/Button;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mListener:Lcom/android/contacts/list/OnContactsUnavailableActionListener;

    if-nez v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 141
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mListener:Lcom/android/contacts/list/OnContactsUnavailableActionListener;

    invoke-interface {v0}, Lcom/android/contacts/list/OnContactsUnavailableActionListener;->onCreateNewContactAction()V

    goto :goto_0

    .line 144
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mListener:Lcom/android/contacts/list/OnContactsUnavailableActionListener;

    invoke-interface {v0}, Lcom/android/contacts/list/OnContactsUnavailableActionListener;->onAddAccountAction()V

    goto :goto_0

    .line 147
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mListener:Lcom/android/contacts/list/OnContactsUnavailableActionListener;

    invoke-interface {v0}, Lcom/android/contacts/list/OnContactsUnavailableActionListener;->onImportContactsFromFileAction()V

    goto :goto_0

    .line 150
    :pswitch_3
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mListener:Lcom/android/contacts/list/OnContactsUnavailableActionListener;

    invoke-interface {v0}, Lcom/android/contacts/list/OnContactsUnavailableActionListener;->onFreeInternalStorageAction()V

    goto :goto_0

    .line 153
    :pswitch_4
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProviderStatusLoader:Lcom/android/contacts/list/ProviderStatusLoader;

    invoke-virtual {v0}, Lcom/android/contacts/list/ProviderStatusLoader;->retryUpgrade()V

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x7f070056
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 54
    const v0, 0x7f040015

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    const v1, 0x7f070055

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    const v1, 0x7f070056

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mCreateContactButton:Landroid/widget/Button;

    .line 57
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mCreateContactButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    const v1, 0x7f070057

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mAddAccountButton:Landroid/widget/Button;

    .line 59
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mAddAccountButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    const v1, 0x7f070058

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mImportContactsButton:Landroid/widget/Button;

    .line 61
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mImportContactsButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    const v1, 0x7f070059

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mUninstallAppsButton:Landroid/widget/Button;

    .line 63
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mUninstallAppsButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    const v1, 0x7f07005a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mRetryUpgradeButton:Landroid/widget/Button;

    .line 65
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mRetryUpgradeButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    const v1, 0x7f07005b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProgress:Landroid/widget/ProgressBar;

    .line 67
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactsUnavailableFragment;->update()V

    .line 68
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public setOnContactsUnavailableActionListener(Lcom/android/contacts/list/OnContactsUnavailableActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mListener:Lcom/android/contacts/list/OnContactsUnavailableActionListener;

    .line 74
    return-void
.end method

.method public setProviderStatusLoader(Lcom/android/contacts/list/ProviderStatusLoader;)V
    .locals 0
    .parameter "loader"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProviderStatusLoader:Lcom/android/contacts/list/ProviderStatusLoader;

    .line 78
    return-void
.end method

.method public update()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 81
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProviderStatusLoader:Lcom/android/contacts/list/ProviderStatusLoader;

    invoke-virtual {v2}, Lcom/android/contacts/list/ProviderStatusLoader;->getProviderStatus()I

    move-result v1

    .line 82
    .local v1, providerStatus:I
    packed-switch v1, :pswitch_data_0

    .line 132
    :goto_0
    return-void

    .line 84
    :pswitch_0
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 85
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mCreateContactButton:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 87
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mAddAccountButton:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 88
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mImportContactsButton:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 89
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mUninstallAppsButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 90
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mRetryUpgradeButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 91
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 95
    :pswitch_1
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    const v3, 0x7f0c016c

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 96
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 97
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mCreateContactButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 99
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mAddAccountButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 100
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mImportContactsButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 101
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mUninstallAppsButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 102
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mRetryUpgradeButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 103
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 107
    :pswitch_2
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    const v3, 0x7f0c016d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 108
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 109
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mCreateContactButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 111
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mAddAccountButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 112
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mImportContactsButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 113
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mUninstallAppsButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 114
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mRetryUpgradeButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 115
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 119
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactsUnavailableFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c016e

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProviderStatusLoader:Lcom/android/contacts/list/ProviderStatusLoader;

    invoke-virtual {v5}, Lcom/android/contacts/list/ProviderStatusLoader;->getProviderStatusData()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, message:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 123
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mCreateContactButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 125
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mAddAccountButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 126
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mImportContactsButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 127
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mUninstallAppsButton:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 128
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mRetryUpgradeButton:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 129
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
