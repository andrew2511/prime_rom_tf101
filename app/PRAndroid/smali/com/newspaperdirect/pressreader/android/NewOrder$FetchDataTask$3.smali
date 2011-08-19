.class Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$3;
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
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$3;->this$1:Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$3;->val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 553
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$3;->val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$3;->val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    .line 555
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$3;->this$1:Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;->access$3(Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;)Lcom/newspaperdirect/pressreader/android/NewOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/NewOrder;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 556
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 557
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$3;->this$1:Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;->access$3(Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;)Lcom/newspaperdirect/pressreader/android/NewOrder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/NewOrder;->setResult(I)V

    .line 558
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$3;->this$1:Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;->access$3(Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;)Lcom/newspaperdirect/pressreader/android/NewOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/NewOrder;->finish()V

    goto :goto_0
.end method
