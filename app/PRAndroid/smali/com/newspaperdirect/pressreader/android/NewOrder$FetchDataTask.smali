.class Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;
.super Landroid/os/AsyncTask;
.source "NewOrder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/NewOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchDataTask"
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
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/NewOrder;


# direct methods
.method private constructor <init>(Lcom/newspaperdirect/pressreader/android/NewOrder;)V
    .locals 0
    .parameter

    .prologue
    .line 501
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;->this$0:Lcom/newspaperdirect/pressreader/android/NewOrder;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/newspaperdirect/pressreader/android/NewOrder;Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 501
    invoke-direct {p0, p1}, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;-><init>(Lcom/newspaperdirect/pressreader/android/NewOrder;)V

    return-void
.end method

.method static synthetic access$3(Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;)Lcom/newspaperdirect/pressreader/android/NewOrder;
    .locals 1
    .parameter

    .prologue
    .line 501
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;->this$0:Lcom/newspaperdirect/pressreader/android/NewOrder;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6
    .parameter "params"

    .prologue
    const/4 v5, 0x0

    .line 504
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;->this$0:Lcom/newspaperdirect/pressreader/android/NewOrder;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/NewOrder;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 526
    :goto_0
    return-object v1

    .line 505
    :cond_0
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;->this$0:Lcom/newspaperdirect/pressreader/android/NewOrder;

    new-instance v2, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$1;

    invoke-direct {v2, p0}, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$1;-><init>(Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;)V

    invoke-virtual {v1, v2}, Lcom/newspaperdirect/pressreader/android/NewOrder;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 522
    :try_start_0
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;->this$0:Lcom/newspaperdirect/pressreader/android/NewOrder;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    const/4 v3, 0x1

    aget-object v3, p1, v3

    const/4 v4, 0x2

    aget-object v4, p1, v4

    invoke-static {v1, v2, v3, v4}, Lcom/newspaperdirect/pressreader/android/NewOrder;->access$2(Lcom/newspaperdirect/pressreader/android/NewOrder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 524
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 525
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 526
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 531
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;->this$0:Lcom/newspaperdirect/pressreader/android/NewOrder;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/NewOrder;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 563
    :goto_0
    return-void

    .line 532
    :cond_0
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;->this$0:Lcom/newspaperdirect/pressreader/android/NewOrder;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/NewOrder;->access$1(Lcom/newspaperdirect/pressreader/android/NewOrder;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 533
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;->this$0:Lcom/newspaperdirect/pressreader/android/NewOrder;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/NewOrder;->access$1(Lcom/newspaperdirect/pressreader/android/NewOrder;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;->this$0:Lcom/newspaperdirect/pressreader/android/NewOrder;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/NewOrder;->access$1(Lcom/newspaperdirect/pressreader/android/NewOrder;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 534
    :cond_1
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;->this$0:Lcom/newspaperdirect/pressreader/android/NewOrder;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/newspaperdirect/pressreader/android/NewOrder;->access$0(Lcom/newspaperdirect/pressreader/android/NewOrder;Landroid/app/ProgressDialog;)V

    .line 536
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;->this$0:Lcom/newspaperdirect/pressreader/android/NewOrder;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/NewOrder;->access$3(Lcom/newspaperdirect/pressreader/android/NewOrder;)V

    goto :goto_0

    .line 538
    :cond_3
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;-><init>(Ljava/lang/Object;)V

    .line 539
    .local v0, flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Ljava/lang/Boolean;>;"
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;->this$0:Lcom/newspaperdirect/pressreader/android/NewOrder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 540
    const v2, 0x7f090018

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 541
    const v2, 0x7f09002c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 542
    const v2, 0x7f090060

    new-instance v3, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$2;

    invoke-direct {v3, p0, v0}, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$2;-><init>(Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 551
    const v2, 0x7f09005c

    new-instance v3, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$3;

    invoke-direct {v3, p0, v0}, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$3;-><init>(Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 561
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
