.class Lcom/android/vending/adapters/MyDownloadsAdapter$3;
.super Ljava/lang/Object;
.source "MyDownloadsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/adapters/MyDownloadsAdapter;->addAssets(Ljava/util/List;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/adapters/MyDownloadsAdapter;

.field final synthetic val$assets:Ljava/util/List;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/vending/adapters/MyDownloadsAdapter;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$3;->this$0:Lcom/android/vending/adapters/MyDownloadsAdapter;

    iput-object p2, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$3;->val$assets:Ljava/util/List;

    iput-object p3, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$3;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 274
    iget-object v2, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$3;->this$0:Lcom/android/vending/adapters/MyDownloadsAdapter;

    invoke-static {v2}, Lcom/android/vending/adapters/MyDownloadsAdapter;->access$300(Lcom/android/vending/adapters/MyDownloadsAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 277
    iget-object v2, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$3;->val$assets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 278
    .local v0, asset:Lcom/android/vending/model/Asset;
    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->snapshotLocalState()V

    goto :goto_0

    .line 280
    .end local v0           #asset:Lcom/android/vending/model/Asset;
    :cond_0
    iget-object v2, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$3;->this$0:Lcom/android/vending/adapters/MyDownloadsAdapter;

    invoke-static {v2}, Lcom/android/vending/adapters/MyDownloadsAdapter;->access$300(Lcom/android/vending/adapters/MyDownloadsAdapter;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$3;->val$assets:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 281
    iget-object v2, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$3;->this$0:Lcom/android/vending/adapters/MyDownloadsAdapter;

    invoke-virtual {v2}, Lcom/android/vending/adapters/MyDownloadsAdapter;->notifyDataSetChanged()V

    .line 283
    iget-object v2, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$3;->val$callback:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    .line 284
    iget-object v2, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$3;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 286
    :cond_1
    return-void
.end method
