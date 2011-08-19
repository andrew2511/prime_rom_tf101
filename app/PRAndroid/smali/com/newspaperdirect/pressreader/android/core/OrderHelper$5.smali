.class Lcom/newspaperdirect/pressreader/android/core/OrderHelper$5;
.super Ljava/lang/Object;
.source "OrderHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->showPurchaseConfirmationRequiredDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

.field private final synthetic val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$5;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$5;->val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$5;->val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$5;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$5;->val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    .line 410
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 411
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$5;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$8(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)V

    goto :goto_0
.end method
