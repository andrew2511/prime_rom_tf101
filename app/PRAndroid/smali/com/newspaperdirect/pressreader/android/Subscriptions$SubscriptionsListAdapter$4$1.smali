.class Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$4$1;
.super Landroid/os/AsyncTask;
.source "Subscriptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$4;->onPositiveResult()V
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
        "Ljava/util/List",
        "<",
        "Lcom/newspaperdirect/pressreader/android/core/Subscription;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$4;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$4$1;->this$2:Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$4;

    .line 125
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

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$4$1;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 1
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/Subscription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/Subscription;->loadSubscriptionsFromServer()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$4$1;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/Subscription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/Subscription;>;"
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$4$1;->this$2:Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$4;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$4;->access$0(Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$4;)Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;->access$1(Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$4$1;->this$2:Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$4;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$4;->access$0(Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$4;)Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;->access$0(Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;Z)V

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$4$1;->this$2:Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$4;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$4;->access$0(Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$4;)Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;->access$4(Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;)Lcom/newspaperdirect/pressreader/android/Subscriptions;

    move-result-object v0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/Subscriptions;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$4$1;->this$2:Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$4;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$4;->access$0(Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$4;)Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;->access$4(Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;)Lcom/newspaperdirect/pressreader/android/Subscriptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/Subscriptions;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$4$1;->this$2:Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$4;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$4;->access$0(Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$4;)Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;->access$4(Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;)Lcom/newspaperdirect/pressreader/android/Subscriptions;

    move-result-object v0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/Subscriptions;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_2
    :goto_1
    if-eqz p1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$4$1;->this$2:Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$4;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$4;->access$0(Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$4;)Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;->access$2(Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;Ljava/util/List;)V

    .line 141
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$4$1;->this$2:Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$4;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$4;->access$0(Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$4;)Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    goto :goto_1
.end method
