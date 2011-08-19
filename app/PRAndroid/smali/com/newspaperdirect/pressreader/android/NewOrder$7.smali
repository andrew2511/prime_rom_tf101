.class Lcom/newspaperdirect/pressreader/android/NewOrder$7;
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
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$7;->this$0:Lcom/newspaperdirect/pressreader/android/NewOrder;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/NewOrder$7;)Lcom/newspaperdirect/pressreader/android/NewOrder;
    .locals 1
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$7;->this$0:Lcom/newspaperdirect/pressreader/android/NewOrder;

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$7;->this$0:Lcom/newspaperdirect/pressreader/android/NewOrder;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewOrder;->access$9(Lcom/newspaperdirect/pressreader/android/NewOrder;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    move-result-object v0

    iput-boolean p2, v0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->isFavorite:Z

    .line 182
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$7;->this$0:Lcom/newspaperdirect/pressreader/android/NewOrder;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewOrder;->access$9(Lcom/newspaperdirect/pressreader/android/NewOrder;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    move-result-object v0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->cid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Lcom/newspaperdirect/pressreader/android/NewOrder$7$1;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/NewOrder$7$1;-><init>(Lcom/newspaperdirect/pressreader/android/NewOrder$7;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    .line 209
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/NewOrder$7$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 211
    :cond_0
    return-void
.end method
