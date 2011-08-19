.class public Lcom/android/browser/preferences/GeneralPreferencesFragment$AccountChooserDialog;
.super Landroid/app/DialogFragment;
.source "GeneralPreferencesFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/preferences/GeneralPreferencesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountChooserDialog"
.end annotation


# instance fields
.field mDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 272
    iget-object v2, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment$AccountChooserDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, accountName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment$AccountChooserDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 274
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "acct_name"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 275
    invoke-virtual {p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment$AccountChooserDialog;->dismiss()V

    .line 276
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment$AccountChooserDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    .line 249
    .local v3, args:Landroid/os/Bundle;
    const-string v9, "accounts"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, [Landroid/accounts/Account;

    move-object v0, v9

    check-cast v0, [Landroid/accounts/Account;

    move-object v2, v0

    .line 250
    .local v2, accounts:[Landroid/accounts/Account;
    const-string v9, "curAccount"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 251
    .local v4, curAccount:Ljava/lang/String;
    array-length v7, v2

    .line 252
    .local v7, length:I
    const/4 v5, 0x0

    .line 253
    .local v5, curAccountOffset:I
    new-array v1, v7, [Ljava/lang/CharSequence;

    .line 254
    .local v1, accountNames:[Ljava/lang/CharSequence;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v7, :cond_1

    .line 255
    aget-object v9, v2, v6

    iget-object v8, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 256
    .local v8, name:Ljava/lang/String;
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 257
    move v5, v6

    .line 259
    :cond_0
    aput-object v8, v1, v6

    .line 254
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 262
    .end local v8           #name:Ljava/lang/String;
    :cond_1
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment$AccountChooserDialog;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x1080027

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f09015a

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v1, v5, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment$AccountChooserDialog;->mDialog:Landroid/app/AlertDialog;

    .line 267
    iget-object v9, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment$AccountChooserDialog;->mDialog:Landroid/app/AlertDialog;

    return-object v9
.end method
