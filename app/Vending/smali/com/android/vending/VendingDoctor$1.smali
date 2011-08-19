.class final Lcom/android/vending/VendingDoctor$1;
.super Ljava/lang/Object;
.source "VendingDoctor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/VendingDoctor;->checkDownloadingAssets(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$assetTitles:Ljava/util/HashMap;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$downloadingAssets:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/vending/VendingDoctor$1;->val$downloadingAssets:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/vending/VendingDoctor$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/vending/VendingDoctor$1;->val$assetTitles:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 119
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v1, assetsToCheck:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/model/LocalAsset;>;"
    iget-object v4, p0, Lcom/android/vending/VendingDoctor$1;->val$downloadingAssets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/LocalAsset;

    .line 121
    .local v0, asset:Lcom/android/vending/model/LocalAsset;
    iget-object v4, p0, Lcom/android/vending/VendingDoctor$1;->val$context:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/android/vending/VendingDoctor;->access$000(Landroid/content/Context;Lcom/android/vending/model/LocalAsset;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 122
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 126
    .end local v0           #asset:Lcom/android/vending/model/LocalAsset;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 128
    :try_start_0
    invoke-static {}, Lcom/android/vending/VendingDoctor;->access$100()Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 129
    iget-object v4, p0, Lcom/android/vending/VendingDoctor$1;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/vending/VendingDoctor$1;->val$assetTitles:Ljava/util/HashMap;

    invoke-static {v4, v1, v5}, Lcom/android/vending/VendingDoctor;->access$200(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    invoke-static {}, Lcom/android/vending/VendingDoctor;->access$100()Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 137
    :cond_2
    :goto_1
    return-void

    .line 130
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 131
    .local v2, e:Ljava/lang/InterruptedException;
    :try_start_1
    const-string v4, "Unable to acquire VendingDoctor"

    invoke-static {v4}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    invoke-static {}, Lcom/android/vending/VendingDoctor;->access$100()Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_1

    .end local v2           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    invoke-static {}, Lcom/android/vending/VendingDoctor;->access$100()Ljava/util/concurrent/Semaphore;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    throw v4
.end method
