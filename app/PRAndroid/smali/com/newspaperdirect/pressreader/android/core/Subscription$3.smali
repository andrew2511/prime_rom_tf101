.class Lcom/newspaperdirect/pressreader/android/core/Subscription$3;
.super Landroid/os/AsyncTask;
.source "Subscription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/Subscription;->delete(ZZ)V
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
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/core/Subscription;

.field private final synthetic val$includeSupplements:Z

.field private final synthetic val$keepParent:Z


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/Subscription;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/Subscription$3;->this$0:Lcom/newspaperdirect/pressreader/android/core/Subscription;

    iput-boolean p2, p0, Lcom/newspaperdirect/pressreader/android/core/Subscription$3;->val$includeSupplements:Z

    iput-boolean p3, p0, Lcom/newspaperdirect/pressreader/android/core/Subscription$3;->val$keepParent:Z

    .line 202
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

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/core/Subscription$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .parameter "arg0"

    .prologue
    .line 205
    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;

    const-string v2, "delete-order"

    invoke-direct {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;-><init>(Ljava/lang/String;)V

    .line 206
    .local v1, helper:Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<item-id>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/Subscription$3;->this$0:Lcom/newspaperdirect/pressreader/android/core/Subscription;

    invoke-static {v3}, Lcom/newspaperdirect/pressreader/android/core/Subscription;->access$7(Lcom/newspaperdirect/pressreader/android/core/Subscription;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</item-id>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 207
    iget-boolean v3, p0, Lcom/newspaperdirect/pressreader/android/core/Subscription$3;->val$includeSupplements:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " <CID>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/Subscription$3;->this$0:Lcom/newspaperdirect/pressreader/android/core/Subscription;

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/core/Subscription;->access$8(Lcom/newspaperdirect/pressreader/android/core/Subscription;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</CID> <include-supplements>1</include-supplements>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/newspaperdirect/pressreader/android/core/Subscription$3;->val$keepParent:Z

    if-eqz v4, :cond_1

    const-string v4, " <keep-parent>1</keep-parent>"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-virtual {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->setRequestBody(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;

    .line 209
    :try_start_0
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/Subscription$3;->this$0:Lcom/newspaperdirect/pressreader/android/core/Subscription;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/core/Subscription;->access$9(Lcom/newspaperdirect/pressreader/android/core/Subscription;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/core/Service;->get(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/Service;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->sendRequest(Lcom/newspaperdirect/pressreader/android/core/Service;)V

    .line 210
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/Subscription$3;->this$0:Lcom/newspaperdirect/pressreader/android/core/Subscription;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/core/trx/SubscriptionDbAdapter;->delete(Lcom/newspaperdirect/pressreader/android/core/Subscription;)V

    .line 211
    iget-boolean v2, p0, Lcom/newspaperdirect/pressreader/android/core/Subscription$3;->val$includeSupplements:Z

    if-eqz v2, :cond_0

    .line 212
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/Subscription;->loadSubscriptionsFromServer()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :cond_0
    :goto_2
    const/4 v2, 0x0

    return-object v2

    .line 207
    :cond_1
    const-string v4, ""

    goto :goto_0

    :cond_2
    const-string v3, ""

    goto :goto_1

    .line 214
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 215
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
