.class Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4$1;
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

.field private final synthetic val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4$1;->val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4$1;->val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4$1;->val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    .line 301
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 302
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$1(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnOrderCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 303
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$1(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnOrderCompleteListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnOrderCompleteListener;->onOrderComplete(Z)V

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$5(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnAuthorizationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$5(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnAuthorizationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnAuthorizationListener;->onRegister()V

    goto :goto_0
.end method
