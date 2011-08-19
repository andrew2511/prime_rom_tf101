.class Lcom/aws/mycloud/view/MyCloudActivity$initCheckVibeServiceTask;
.super Landroid/os/AsyncTask;
.source "MyCloudActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aws/mycloud/view/MyCloudActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "initCheckVibeServiceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aws/mycloud/view/MyCloudActivity;


# direct methods
.method constructor <init>(Lcom/aws/mycloud/view/MyCloudActivity;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter "c"

    .prologue
    const/4 v3, 0x1

    .line 1038
    iput-object p1, p0, Lcom/aws/mycloud/view/MyCloudActivity$initCheckVibeServiceTask;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    .line 1034
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1036
    const-string v0, ""

    const v1, 0x7f040026

    invoke-virtual {p1, v1}, Lcom/aws/mycloud/view/MyCloudActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, v3, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p1, Lcom/aws/mycloud/view/MyCloudActivity;->mvDialog:Landroid/app/ProgressDialog;

    .line 1037
    iget-object v0, p1, Lcom/aws/mycloud/view/MyCloudActivity;->mvDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5
    .parameter "params"

    .prologue
    const/4 v4, 0x1

    .line 1042
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1043
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.asus.vibe.action.MAINLIST_RESULT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1044
    iget-object v2, p0, Lcom/aws/mycloud/view/MyCloudActivity$initCheckVibeServiceTask;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity$initCheckVibeServiceTask;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    invoke-static {v3}, Lcom/aws/mycloud/view/MyCloudActivity;->access$1(Lcom/aws/mycloud/view/MyCloudActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1047
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.asus.vibe.action.QUERY_MAINLIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1048
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/aws/mycloud/view/MyCloudActivity$initCheckVibeServiceTask;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    invoke-static {}, Lcom/aws/mycloud/view/MyCloudActivity;->access$0()Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/aws/mycloud/view/MyCloudActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1049
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method public bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/aws/mycloud/view/MyCloudActivity$initCheckVibeServiceTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1054
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/aws/mycloud/view/MyCloudActivity$initCheckVibeServiceTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
