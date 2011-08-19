.class Lcom/newspaperdirect/pressreader/android/Accounts$1$1$1;
.super Landroid/os/AsyncTask;
.source "Accounts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/Accounts$1$1;->onPositiveResult()V
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
.field final synthetic this$2:Lcom/newspaperdirect/pressreader/android/Accounts$1$1;

.field private final synthetic val$dlg:Landroid/app/AlertDialog;

.field private final synthetic val$service:Lcom/newspaperdirect/pressreader/android/core/Service;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/Accounts$1$1;Lcom/newspaperdirect/pressreader/android/core/Service;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/Accounts$1$1$1;->this$2:Lcom/newspaperdirect/pressreader/android/Accounts$1$1;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/Accounts$1$1$1;->val$service:Lcom/newspaperdirect/pressreader/android/core/Service;

    iput-object p3, p0, Lcom/newspaperdirect/pressreader/android/Accounts$1$1$1;->val$dlg:Landroid/app/AlertDialog;

    .line 58
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/Accounts$1$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "params"

    .prologue
    .line 61
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/Accounts$1$1$1;->val$service:Lcom/newspaperdirect/pressreader/android/core/Service;

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/Service;->setActive()V

    .line 63
    :try_start_0
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationManager;->deauthorize()V

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.newspaperdirect.pressreader.android.LocalStore.ReloadCalalog"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, broadcast:Landroid/content/Intent;
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/Accounts$1$1$1;->this$2:Lcom/newspaperdirect/pressreader/android/Accounts$1$1;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/Accounts$1$1;->access$0(Lcom/newspaperdirect/pressreader/android/Accounts$1$1;)Lcom/newspaperdirect/pressreader/android/Accounts$1;

    move-result-object v2

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/Accounts$1;->access$0(Lcom/newspaperdirect/pressreader/android/Accounts$1;)Lcom/newspaperdirect/pressreader/android/Accounts;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/newspaperdirect/pressreader/android/Accounts;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v0           #broadcast:Landroid/content/Intent;
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 67
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 68
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/Accounts$1$1$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Accounts$1$1$1;->this$2:Lcom/newspaperdirect/pressreader/android/Accounts$1$1;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Accounts$1$1;->access$0(Lcom/newspaperdirect/pressreader/android/Accounts$1$1;)Lcom/newspaperdirect/pressreader/android/Accounts$1;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Accounts$1;->access$0(Lcom/newspaperdirect/pressreader/android/Accounts$1;)Lcom/newspaperdirect/pressreader/android/Accounts;

    move-result-object v0

    new-instance v1, Lcom/newspaperdirect/pressreader/android/Accounts$AccountsAdapter;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/Accounts$1$1$1;->this$2:Lcom/newspaperdirect/pressreader/android/Accounts$1$1;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/Accounts$1$1;->access$0(Lcom/newspaperdirect/pressreader/android/Accounts$1$1;)Lcom/newspaperdirect/pressreader/android/Accounts$1;

    move-result-object v2

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/Accounts$1;->access$0(Lcom/newspaperdirect/pressreader/android/Accounts$1;)Lcom/newspaperdirect/pressreader/android/Accounts;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/newspaperdirect/pressreader/android/Accounts$AccountsAdapter;-><init>(Lcom/newspaperdirect/pressreader/android/Accounts;)V

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/Accounts;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Accounts$1$1$1;->val$dlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Accounts$1$1$1;->val$dlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Accounts$1$1$1;->val$dlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 76
    :cond_0
    return-void
.end method
