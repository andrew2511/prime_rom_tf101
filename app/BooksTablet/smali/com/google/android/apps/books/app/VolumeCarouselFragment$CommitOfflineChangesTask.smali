.class Lcom/google/android/apps/books/app/VolumeCarouselFragment$CommitOfflineChangesTask;
.super Landroid/os/AsyncTask;
.source "VolumeCarouselFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/VolumeCarouselFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommitOfflineChangesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/Set",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mTaskAccount:Landroid/accounts/Account;

.field private final mTaskOfflineManagementContext:Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;

.field final synthetic this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;Landroid/accounts/Account;Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;)V
    .locals 0
    .parameter
    .parameter "account"
    .parameter "omc"

    .prologue
    .line 758
    iput-object p1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$CommitOfflineChangesTask;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    .line 759
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 760
    iput-object p2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$CommitOfflineChangesTask;->mTaskAccount:Landroid/accounts/Account;

    .line 761
    iput-object p3, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$CommitOfflineChangesTask;->mTaskOfflineManagementContext:Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;

    .line 762
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 753
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$CommitOfflineChangesTask;->doInBackground([Ljava/lang/Void;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/Set;
    .locals 14
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x0

    const-string v11, "VolumeCarouselFragment"

    .line 766
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 768
    .local v4, result:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$CommitOfflineChangesTask;->mTaskOfflineManagementContext:Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;

    iget-object v8, v8, Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;->mUpdatedPinnedStates:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 769
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 770
    .local v7, volumeId:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 771
    .local v2, pinned:Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    move v3, v8

    .line 773
    .local v3, pinnedValue:I
    :goto_1
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 774
    .local v6, values:Landroid/content/ContentValues;
    const-string v8, "account_name"

    iget-object v9, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$CommitOfflineChangesTask;->mTaskAccount:Landroid/accounts/Account;

    iget-object v9, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    const-string v8, "volume_id"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const-string v8, "pinned"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 778
    const-string v8, "VolumeCarouselFragment"

    invoke-static {v11, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 779
    const-string v8, "VolumeCarouselFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setting pinned "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :cond_1
    new-instance v5, Lcom/google/android/apps/books/sync/TableSynchronizer;

    new-instance v8, Lcom/google/android/apps/books/sync/StatesLocalSynchronizable;

    iget-object v9, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$CommitOfflineChangesTask;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-static {v9}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$900(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$CommitOfflineChangesTask;->mTaskAccount:Landroid/accounts/Account;

    iget-object v10, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10, v12}, Lcom/google/android/apps/books/sync/StatesLocalSynchronizable;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    invoke-direct {v5, v8}, Lcom/google/android/apps/books/sync/TableSynchronizer;-><init>(Lcom/google/android/apps/books/sync/Synchronizable;)V

    .line 784
    .local v5, syncher:Lcom/google/android/apps/books/sync/TableSynchronizer;
    invoke-virtual {v5, v6}, Lcom/google/android/apps/books/sync/TableSynchronizer;->syncRow(Landroid/content/ContentValues;)V

    .line 786
    const-string v8, "VolumeCarouselFragment"

    invoke-static {v11, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 787
    const-string v8, "VolumeCarouselFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saved "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 791
    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .end local v3           #pinnedValue:I
    .end local v5           #syncher:Lcom/google/android/apps/books/sync/TableSynchronizer;
    .end local v6           #values:Landroid/content/ContentValues;
    :cond_3
    move v3, v12

    .line 771
    goto/16 :goto_1

    .line 795
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v2           #pinned:Ljava/lang/Boolean;
    .end local v7           #volumeId:Ljava/lang/String;
    :cond_4
    return-object v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 753
    check-cast p1, Ljava/util/Set;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$CommitOfflineChangesTask;->onPostExecute(Ljava/util/Set;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Set;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 800
    .local p1, volumeIdsToSync:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$CommitOfflineChangesTask;->mTaskAccount:Landroid/accounts/Account;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/google/android/apps/books/provider/BooksContract;->requestManualVolumeContentSync(ZLandroid/accounts/Account;[Ljava/lang/String;)V

    .line 802
    return-void
.end method
