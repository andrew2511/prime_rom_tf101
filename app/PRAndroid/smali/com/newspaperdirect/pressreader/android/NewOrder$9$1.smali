.class Lcom/newspaperdirect/pressreader/android/NewOrder$9$1;
.super Ljava/lang/Object;
.source "NewOrder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$9$1;->this$1:Lcom/newspaperdirect/pressreader/android/NewOrder$9;

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 443
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$9$1;->this$1:Lcom/newspaperdirect/pressreader/android/NewOrder$9;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewOrder$9;->access$2(Lcom/newspaperdirect/pressreader/android/NewOrder$9;)Lcom/newspaperdirect/pressreader/android/NewOrder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/NewOrder;->access$11(Lcom/newspaperdirect/pressreader/android/NewOrder;Z)V

    .line 444
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$9$1;->this$1:Lcom/newspaperdirect/pressreader/android/NewOrder$9;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewOrder$9;->access$2(Lcom/newspaperdirect/pressreader/android/NewOrder$9;)Lcom/newspaperdirect/pressreader/android/NewOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/NewOrder;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 445
    :cond_0
    return-void
.end method
