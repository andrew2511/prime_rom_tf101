.class Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4$4;
.super Ljava/lang/Object;
.source "OrderHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->onPostExecute(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4$4;->this$1:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 389
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 390
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4$4;->this$1:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$1(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnOrderCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4$4;->this$1:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$1(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnOrderCompleteListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnOrderCompleteListener;->onOrderComplete(Z)V

    .line 392
    :cond_0
    return-void
.end method
