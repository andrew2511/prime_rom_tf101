.class Lcom/google/android/voicesearch/util/AccountHelper$1;
.super Landroid/os/AsyncTask;
.source "AccountHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/util/AccountHelper;->promptForPermissions(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mSyncedAccounts:[Landroid/accounts/Account;

.field final synthetic this$0:Lcom/google/android/voicesearch/util/AccountHelper;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/util/AccountHelper;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/google/android/voicesearch/util/AccountHelper$1;->this$0:Lcom/google/android/voicesearch/util/AccountHelper;

    iput-object p2, p0, Lcom/google/android/voicesearch/util/AccountHelper$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 356
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/util/AccountHelper$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter

    .prologue
    .line 362
    iget-object v0, p0, Lcom/google/android/voicesearch/util/AccountHelper$1;->this$0:Lcom/google/android/voicesearch/util/AccountHelper;

    const-string v1, "com.android.contacts"

    invoke-static {v0, v1}, Lcom/google/android/voicesearch/util/AccountHelper;->access$000(Lcom/google/android/voicesearch/util/AccountHelper;Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/util/AccountHelper$1;->mSyncedAccounts:[Landroid/accounts/Account;

    .line 363
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 356
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/util/AccountHelper$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 10
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 368
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 373
    iget-object v0, p0, Lcom/google/android/voicesearch/util/AccountHelper$1;->mSyncedAccounts:[Landroid/accounts/Account;

    if-eqz v0, :cond_0

    .line 374
    iget-object v7, p0, Lcom/google/android/voicesearch/util/AccountHelper$1;->mSyncedAccounts:[Landroid/accounts/Account;

    array-length v8, v7

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    if-ge v9, v8, :cond_0

    aget-object v1, v7, v9

    .line 375
    iget-object v0, p0, Lcom/google/android/voicesearch/util/AccountHelper$1;->this$0:Lcom/google/android/voicesearch/util/AccountHelper;

    invoke-static {v0}, Lcom/google/android/voicesearch/util/AccountHelper;->access$100(Lcom/google/android/voicesearch/util/AccountHelper;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v2, "speechpersonalization"

    iget-object v4, p0, Lcom/google/android/voicesearch/util/AccountHelper$1;->val$activity:Landroid/app/Activity;

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 374
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/util/AccountHelper$1;->this$0:Lcom/google/android/voicesearch/util/AccountHelper;

    invoke-static {v0}, Lcom/google/android/voicesearch/util/AccountHelper;->access$200(Lcom/google/android/voicesearch/util/AccountHelper;)Lcom/google/android/voicesearch/PersonalizationPrefManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/PersonalizationPrefManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/google/android/voicesearch/util/AccountHelper$1;->this$0:Lcom/google/android/voicesearch/util/AccountHelper;

    iget-object v1, p0, Lcom/google/android/voicesearch/util/AccountHelper$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/voicesearch/util/AccountHelper$1;->this$0:Lcom/google/android/voicesearch/util/AccountHelper;

    invoke-static {v2}, Lcom/google/android/voicesearch/util/AccountHelper;->access$300(Lcom/google/android/voicesearch/util/AccountHelper;)[Landroid/accounts/Account;

    move-result-object v2

    const-string v3, "speechpersonalization"

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/voicesearch/util/AccountHelper;->access$400(Lcom/google/android/voicesearch/util/AccountHelper;Landroid/app/Activity;[Landroid/accounts/Account;Ljava/lang/String;)V

    .line 383
    :cond_1
    return-void
.end method
