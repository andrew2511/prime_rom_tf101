.class Lcom/newspaperdirect/pressreader/android/NewOrder$9$3;
.super Ljava/lang/Object;
.source "NewOrder.java"

# interfaces
.implements Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnAuthorizationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/NewOrder$9;->onPostExecute(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/NewOrder$9;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/NewOrder$9;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$9$3;->this$1:Lcom/newspaperdirect/pressreader/android/NewOrder$9;

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthorize()V
    .locals 4

    .prologue
    .line 490
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$9$3;->this$1:Lcom/newspaperdirect/pressreader/android/NewOrder$9;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewOrder$9;->access$2(Lcom/newspaperdirect/pressreader/android/NewOrder$9;)Lcom/newspaperdirect/pressreader/android/NewOrder;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$9$3;->this$1:Lcom/newspaperdirect/pressreader/android/NewOrder$9;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/NewOrder$9;->access$2(Lcom/newspaperdirect/pressreader/android/NewOrder$9;)Lcom/newspaperdirect/pressreader/android/NewOrder;

    move-result-object v2

    const-class v3, Lcom/newspaperdirect/pressreader/android/Authorization;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/NewOrder;->startActivity(Landroid/content/Intent;)V

    .line 491
    return-void
.end method

.method public onRegister()V
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$9$3;->this$1:Lcom/newspaperdirect/pressreader/android/NewOrder$9;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewOrder$9;->access$2(Lcom/newspaperdirect/pressreader/android/NewOrder$9;)Lcom/newspaperdirect/pressreader/android/NewOrder;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Authorization;->register(Landroid/app/Activity;)V

    .line 488
    return-void
.end method
