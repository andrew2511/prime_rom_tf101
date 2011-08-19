.class Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$2;
.super Landroid/os/AsyncTask;
.source "Subscriptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;-><init>(Lcom/newspaperdirect/pressreader/android/Subscriptions;)V
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
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$2;->this$1:Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;

    .line 100
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

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$2;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

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
    .line 103
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/Subscription;->loadSubscriptionsFromDb()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$2;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
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
    .line 107
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/Subscription;>;"
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$2;->this$1:Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;->access$1(Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$2;->this$1:Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;

    invoke-static {v0, p1}, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;->access$2(Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;Ljava/util/List;)V

    .line 109
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$2;->this$1:Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;->notifyDataSetChanged()V

    .line 110
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$2;->this$1:Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;->access$3(Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;)V

    goto :goto_0
.end method
