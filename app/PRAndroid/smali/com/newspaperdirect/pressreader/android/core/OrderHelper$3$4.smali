.class Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3$4;
.super Ljava/lang/Object;
.source "OrderHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;->onPostExecute(Lcom/newspaperdirect/pressreader/android/core/AccountStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;

.field private final synthetic val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3$4;->this$1:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3$4;->val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 180
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3$4;->val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3$4;->val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    .line 182
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 183
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3$4;->this$1:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$0(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;Z)V

    .line 184
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3$4;->this$1:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$1(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnOrderCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3$4;->this$1:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$1(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnOrderCompleteListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnOrderCompleteListener;->onOrderComplete(Z)V

    goto :goto_0
.end method
