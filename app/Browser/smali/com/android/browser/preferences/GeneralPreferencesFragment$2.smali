.class Lcom/android/browser/preferences/GeneralPreferencesFragment$2;
.super Ljava/lang/Object;
.source "GeneralPreferencesFragment.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/preferences/GeneralPreferencesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/preferences/GeneralPreferencesFragment;


# direct methods
.method constructor <init>(Lcom/android/browser/preferences/GeneralPreferencesFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment$2;->this$0:Lcom/android/browser/preferences/GeneralPreferencesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 131
    .local v1, bundle:Landroid/os/Bundle;
    const-string v5, "authAccount"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, name:Ljava/lang/String;
    const-string v5, "accountType"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, type:Ljava/lang/String;
    new-instance v0, Landroid/accounts/Account;

    invoke-direct {v0, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .local v0, account:Landroid/accounts/Account;
    iget-object v5, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment$2;->this$0:Lcom/android/browser/preferences/GeneralPreferencesFragment;

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/accounts/Account;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    iput-object v6, v5, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mAccounts:[Landroid/accounts/Account;

    .line 135
    iget-object v5, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment$2;->this$0:Lcom/android/browser/preferences/GeneralPreferencesFragment;

    iget-object v5, v5, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mAccounts:[Landroid/accounts/Account;

    invoke-static {v5}, Lcom/android/browser/preferences/ImportWizard;->newInstance([Landroid/accounts/Account;)Lcom/android/browser/preferences/ImportWizard;

    move-result-object v4

    .line 136
    .local v4, wizard:Lcom/android/browser/preferences/ImportWizard;
    iget-object v5, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment$2;->this$0:Lcom/android/browser/preferences/GeneralPreferencesFragment;

    invoke-virtual {v5}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/browser/preferences/ImportWizard;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #type:Ljava/lang/String;
    .end local v4           #wizard:Lcom/android/browser/preferences/ImportWizard;
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v5

    goto :goto_0
.end method
