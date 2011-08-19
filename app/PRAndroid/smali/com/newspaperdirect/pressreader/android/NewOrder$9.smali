.class Lcom/newspaperdirect/pressreader/android/NewOrder$9;
.super Landroid/os/AsyncTask;
.source "NewOrder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/NewOrder;->confirmOrder()V
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
        "Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/NewOrder;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/NewOrder;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$9;->this$0:Lcom/newspaperdirect/pressreader/android/NewOrder;

    .line 430
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/NewOrder$9;)Lcom/newspaperdirect/pressreader/android/NewOrder;
    .locals 1
    .parameter

    .prologue
    .line 430
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$9;->this$0:Lcom/newspaperdirect/pressreader/android/NewOrder;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    .locals 2
    .parameter "arg0"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$9;->this$0:Lcom/newspaperdirect/pressreader/android/NewOrder;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewOrder;->access$9(Lcom/newspaperdirect/pressreader/android/NewOrder;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    move-result-object v0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->cid:Ljava/lang/String;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$9;->this$0:Lcom/newspaperdirect/pressreader/android/NewOrder;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/NewOrder;->access$9(Lcom/newspaperdirect/pressreader/android/NewOrder;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    move-result-object v1

    iget-object v1, v1, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->selectedDate:Ljava/util/Date;

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->findItem(Ljava/lang/String;Ljava/util/Date;)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/NewOrder$9;->doInBackground([Ljava/lang/Void;)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 437
    if-eqz p1, :cond_0

    .line 438
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$9;->this$0:Lcom/newspaperdirect/pressreader/android/NewOrder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 439
    const v2, 0x7f090018

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 440
    const v2, 0x7f09002a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 441
    const v2, 0x7f09005e

    new-instance v3, Lcom/newspaperdirect/pressreader/android/NewOrder$9$1;

    invoke-direct {v3, p0}, Lcom/newspaperdirect/pressreader/android/NewOrder$9$1;-><init>(Lcom/newspaperdirect/pressreader/android/NewOrder$9;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 447
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 496
    :goto_0
    return-void

    .line 450
    :cond_0
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$9;->this$0:Lcom/newspaperdirect/pressreader/android/NewOrder;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/NewOrder;->access$9(Lcom/newspaperdirect/pressreader/android/NewOrder;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    move-result-object v1

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$9;->this$0:Lcom/newspaperdirect/pressreader/android/NewOrder;

    .line 451
    new-instance v3, Lcom/newspaperdirect/pressreader/android/NewOrder$9$2;

    invoke-direct {v3, p0}, Lcom/newspaperdirect/pressreader/android/NewOrder$9$2;-><init>(Lcom/newspaperdirect/pressreader/android/NewOrder$9;)V

    .line 485
    new-instance v4, Lcom/newspaperdirect/pressreader/android/NewOrder$9$3;

    invoke-direct {v4, p0}, Lcom/newspaperdirect/pressreader/android/NewOrder$9$3;-><init>(Lcom/newspaperdirect/pressreader/android/NewOrder$9;)V

    .line 450
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;-><init>(Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;Landroid/app/Activity;Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnOrderCompleteListener;Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnAuthorizationListener;)V

    .line 494
    .local v0, helper:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->confirmOrder()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/NewOrder$9;->onPostExecute(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V

    return-void
.end method
