.class public Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;
.super Landroid/accounts/AccountAuthenticatorActivity;
.source "GrantCredentialsPermissionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAuthTokenType:Ljava/lang/String;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mRequestExtras:Landroid/os/Bundle;

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/accounts/AccountAuthenticatorActivity;-><init>()V

    return-void
.end method

.method private newPackageView(Ljava/lang/String;)Landroid/view/View;
    .locals 4
    .parameter "packageLabel"

    .prologue
    .line 113
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03001c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 114
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0c0065

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 119
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 120
    .local v1, am:Landroid/accounts/AccountManager;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 136
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->finish()V

    .line 137
    return-void

    .line 122
    :pswitch_0
    iget-object v2, p0, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->mAccount:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->mAuthTokenType:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->mUid:I

    const-string v5, "1"

    iget-object v6, p0, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->mRequestExtras:Landroid/os/Bundle;

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->setPermission(Landroid/content/Context;Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 124
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 125
    .local v7, result:Landroid/content/Intent;
    const-string v0, "retry"

    const/4 v2, 0x1

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 126
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->setResult(ILandroid/content/Intent;)V

    .line 127
    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->setAccountAuthenticatorResult(Landroid/os/Bundle;)V

    goto :goto_0

    .line 131
    .end local v7           #result:Landroid/content/Intent;
    :pswitch_1
    iget-object v2, p0, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->mAccount:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->mAuthTokenType:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->mUid:I

    const-string v5, "0"

    iget-object v6, p0, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->mRequestExtras:Landroid/os/Bundle;

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->setPermission(Landroid/content/Context;Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 133
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->setResult(I)V

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0055
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/accounts/AccountAuthenticatorActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v13, 0x7f0800e3

    invoke-virtual {p0, v13}, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->setTitle(I)V

    .line 61
    const v13, 0x7f030018

    invoke-virtual {p0, v13}, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->setContentView(I)V

    .line 63
    const-string v13, "layout_inflater"

    invoke-virtual {p0, v13}, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 65
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 68
    .local v4, extras:Landroid/os/Bundle;
    const-string v13, "account"

    invoke-virtual {v4, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/accounts/Account;

    iput-object p1, p0, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->mAccount:Landroid/accounts/Account;

    .line 69
    const-string v13, "authTokenType"

    invoke-virtual {v4, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, p0, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->mAuthTokenType:Ljava/lang/String;

    .line 70
    const-string v13, "uid"

    invoke-virtual {v4, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    iput v13, p0, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->mUid:I

    .line 71
    const-string v13, "callerExtras"

    invoke-virtual {v4, v13}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v13

    iput-object v13, p0, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->mRequestExtras:Landroid/os/Bundle;

    .line 73
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 74
    .local v12, pm:Landroid/content/pm/PackageManager;
    iget v13, p0, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->mUid:I

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    .line 76
    .local v9, packages:[Ljava/lang/String;
    iget-object v13, p0, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->mAccount:Landroid/accounts/Account;

    if-eqz v13, :cond_0

    iget-object v13, p0, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->mAuthTokenType:Ljava/lang/String;

    if-eqz v13, :cond_0

    if-nez v9, :cond_1

    .line 78
    :cond_0
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->setResult(I)V

    .line 79
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->finish()V

    .line 110
    .end local p0
    :goto_0
    return-void

    .line 83
    .restart local p0
    :cond_1
    const v13, 0x7f080008

    invoke-virtual {p0, v13}, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, accountTypeLabel:Ljava/lang/String;
    const v13, 0x7f0c0053

    invoke-virtual {p0, v13}, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 86
    .local v2, authTokenTypeView:Landroid/widget/TextView;
    const/16 v13, 0x8

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    iget-object v13, p0, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->mAuthTokenType:Ljava/lang/String;

    invoke-static {p0, v13}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getAuthTokenLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 89
    .local v6, label:Ljava/lang/String;
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    const v13, 0x7f0c0055

    invoke-virtual {p0, v13}, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const v13, 0x7f0c0056

    invoke-virtual {p0, v13}, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const v13, 0x7f0c004f

    invoke-virtual {p0, v13}, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 98
    .local v10, packagesListView:Landroid/widget/LinearLayout;
    move-object v1, v9

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v7, :cond_2

    aget-object v11, v1, v5

    .line 101
    .local v11, pkg:Ljava/lang/String;
    const/4 v13, 0x0

    :try_start_0
    invoke-virtual {v12, v11, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 105
    .local v8, packageLabel:Ljava/lang/String;
    :goto_2
    invoke-direct {p0, v8}, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->newPackageView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 98
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 102
    .end local v8           #packageLabel:Ljava/lang/String;
    :catch_0
    move-exception v13

    move-object v3, v13

    .line 103
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v8, v11

    .restart local v8       #packageLabel:Ljava/lang/String;
    goto :goto_2

    .line 108
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8           #packageLabel:Ljava/lang/String;
    .end local v11           #pkg:Ljava/lang/String;
    :cond_2
    const v13, 0x7f0c0052

    invoke-virtual {p0, v13}, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v13, p0, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->mAccount:Landroid/accounts/Account;

    iget-object v13, v13, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    const v13, 0x7f0c0051

    invoke-virtual {p0, v13}, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
