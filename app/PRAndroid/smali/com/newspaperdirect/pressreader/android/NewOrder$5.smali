.class Lcom/newspaperdirect/pressreader/android/NewOrder$5;
.super Ljava/lang/Object;
.source "NewOrder.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/NewOrder;->updateViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/NewOrder;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/NewOrder;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$5;->this$0:Lcom/newspaperdirect/pressreader/android/NewOrder;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$5;->this$0:Lcom/newspaperdirect/pressreader/android/NewOrder;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewOrder;->access$9(Lcom/newspaperdirect/pressreader/android/NewOrder;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    move-result-object v0

    iput-boolean p2, v0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->isSubscription:Z

    .line 157
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$5;->this$0:Lcom/newspaperdirect/pressreader/android/NewOrder;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewOrder;->access$9(Lcom/newspaperdirect/pressreader/android/NewOrder;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    move-result-object v0

    iget-boolean v0, v0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->isSubscription:Z

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$5;->this$0:Lcom/newspaperdirect/pressreader/android/NewOrder;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewOrder;->access$9(Lcom/newspaperdirect/pressreader/android/NewOrder;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    move-result-object v0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->cid:Ljava/lang/String;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$5;->this$0:Lcom/newspaperdirect/pressreader/android/NewOrder;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/NewOrder;->access$9(Lcom/newspaperdirect/pressreader/android/NewOrder;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    move-result-object v1

    iget-boolean v1, v1, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->includeSupplements:Z

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/Subscription;->createSubscriptions(Ljava/lang/String;Z)V

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$5;->this$0:Lcom/newspaperdirect/pressreader/android/NewOrder;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewOrder;->access$9(Lcom/newspaperdirect/pressreader/android/NewOrder;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    move-result-object v0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->cid:Ljava/lang/String;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$5;->this$0:Lcom/newspaperdirect/pressreader/android/NewOrder;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/NewOrder;->access$9(Lcom/newspaperdirect/pressreader/android/NewOrder;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    move-result-object v1

    iget-boolean v1, v1, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->includeSupplements:Z

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newspaperdirect/pressreader/android/core/Subscription;->deleteSubscriptions(Ljava/lang/String;ZZ)V

    goto :goto_0
.end method
