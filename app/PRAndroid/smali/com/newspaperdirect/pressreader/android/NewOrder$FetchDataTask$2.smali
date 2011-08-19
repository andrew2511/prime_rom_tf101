.class Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$2;
.super Ljava/lang/Object;
.source "NewOrder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;->onPostExecute(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;

.field private final synthetic val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$2;->this$1:Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$2;->val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x1

    .line 544
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$2;->val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 545
    :cond_1
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$2;->val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    .line 546
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$2;->this$1:Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;->access$3(Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;)Lcom/newspaperdirect/pressreader/android/NewOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/NewOrder;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 547
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 548
    new-instance v0, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$2;->this$1:Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;->access$3(Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;)Lcom/newspaperdirect/pressreader/android/NewOrder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;-><init>(Lcom/newspaperdirect/pressreader/android/NewOrder;Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$2;->this$1:Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;

    invoke-static {v3}, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;->access$3(Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;)Lcom/newspaperdirect/pressreader/android/NewOrder;

    move-result-object v3

    invoke-static {v3}, Lcom/newspaperdirect/pressreader/android/NewOrder;->access$4(Lcom/newspaperdirect/pressreader/android/NewOrder;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$2;->this$1:Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;->access$3(Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;)Lcom/newspaperdirect/pressreader/android/NewOrder;

    move-result-object v2

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/NewOrder;->access$5(Lcom/newspaperdirect/pressreader/android/NewOrder;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$2;->this$1:Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;

    invoke-static {v3}, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;->access$3(Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;)Lcom/newspaperdirect/pressreader/android/NewOrder;

    move-result-object v3

    invoke-static {v3}, Lcom/newspaperdirect/pressreader/android/NewOrder;->access$6(Lcom/newspaperdirect/pressreader/android/NewOrder;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
