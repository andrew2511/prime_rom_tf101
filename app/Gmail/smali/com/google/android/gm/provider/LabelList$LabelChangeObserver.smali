.class Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;
.super Landroid/database/ContentObserver;
.source "LabelList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/LabelList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabelChangeObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/provider/LabelList$LabelChangeObserver$UpdateListTask;
    }
.end annotation


# instance fields
.field private final mAccount:Ljava/lang/String;

.field private final mIncludeHiddenLabels:Z

.field private mListRefreshTask:Lcom/google/android/gm/provider/LabelList$LabelChangeObserver$UpdateListTask;

.field private mUpdateRequested:Z

.field final synthetic this$0:Lcom/google/android/gm/provider/LabelList;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/provider/LabelList;Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter "account"
    .parameter "hiddenLabels"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;->this$0:Lcom/google/android/gm/provider/LabelList;

    .line 199
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;->mListRefreshTask:Lcom/google/android/gm/provider/LabelList$LabelChangeObserver$UpdateListTask;

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;->mUpdateRequested:Z

    .line 201
    iput-object p2, p0, Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;->mAccount:Ljava/lang/String;

    .line 202
    iput-boolean p3, p0, Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;->mIncludeHiddenLabels:Z

    .line 203
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;->startUpdateTask()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;->mIncludeHiddenLabels:Z

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;Lcom/google/android/gm/provider/LabelList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;->updateAllRegisteredLists(Lcom/google/android/gm/provider/LabelList;)V

    return-void
.end method

.method static synthetic access$802(Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;Lcom/google/android/gm/provider/LabelList$LabelChangeObserver$UpdateListTask;)Lcom/google/android/gm/provider/LabelList$LabelChangeObserver$UpdateListTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;->mListRefreshTask:Lcom/google/android/gm/provider/LabelList$LabelChangeObserver$UpdateListTask;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;->mUpdateRequested:Z

    return v0
.end method

.method private startUpdateTask()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 230
    new-instance v0, Lcom/google/android/gm/provider/LabelList$LabelChangeObserver$UpdateListTask;

    invoke-direct {v0, p0}, Lcom/google/android/gm/provider/LabelList$LabelChangeObserver$UpdateListTask;-><init>(Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;->mListRefreshTask:Lcom/google/android/gm/provider/LabelList$LabelChangeObserver$UpdateListTask;

    .line 231
    iget-object v0, p0, Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;->mListRefreshTask:Lcom/google/android/gm/provider/LabelList$LabelChangeObserver$UpdateListTask;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/LabelList$LabelChangeObserver$UpdateListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 232
    iput-boolean v2, p0, Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;->mUpdateRequested:Z

    .line 233
    return-void
.end method

.method private updateAllRegisteredLists(Lcom/google/android/gm/provider/LabelList;)V
    .locals 7
    .parameter "result"

    .prologue
    .line 236
    invoke-static {}, Lcom/google/android/gm/provider/LabelList;->access$000()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 237
    :try_start_0
    invoke-static {}, Lcom/google/android/gm/provider/LabelList;->access$100()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 238
    .local v3, originalSet:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/gm/provider/LabelList;>;"
    if-nez v3, :cond_0

    .line 240
    monitor-exit v4

    .line 251
    :goto_0
    return-void

    .line 244
    :cond_0
    invoke-static {v3}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v2

    .line 245
    .local v2, listSet:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/gm/provider/LabelList;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/provider/LabelList;

    .line 246
    .local v1, labelList:Lcom/google/android/gm/provider/LabelList;
    invoke-static {v1}, Lcom/google/android/gm/provider/LabelList;->access$200(Lcom/google/android/gm/provider/LabelList;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 247
    invoke-static {v1}, Lcom/google/android/gm/provider/LabelList;->access$200(Lcom/google/android/gm/provider/LabelList;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {p1}, Lcom/google/android/gm/provider/LabelList;->access$200(Lcom/google/android/gm/provider/LabelList;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 248
    invoke-static {v1}, Lcom/google/android/gm/provider/LabelList;->access$300(Lcom/google/android/gm/provider/LabelList;)V

    goto :goto_1

    .line 250
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #labelList:Lcom/google/android/gm/provider/LabelList;
    .end local v2           #listSet:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/gm/provider/LabelList;>;"
    .end local v3           #originalSet:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/gm/provider/LabelList;>;"
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #listSet:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/gm/provider/LabelList;>;"
    .restart local v3       #originalSet:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/gm/provider/LabelList;>;"
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;->mListRefreshTask:Lcom/google/android/gm/provider/LabelList$LabelChangeObserver$UpdateListTask;

    if-nez v0, :cond_0

    .line 221
    invoke-direct {p0}, Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;->startUpdateTask()V

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;->mUpdateRequested:Z

    goto :goto_0
.end method
