.class public Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;
.super Ljava/lang/Object;
.source "RemoteListenerCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback$Callable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    .local p0, this:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;,"Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public call(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback$Callable;)Z
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;",
            "Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback$Callable",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;,"Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback<TT;>;"
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    .local p2, callback:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback$Callable;,"Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback$Callable<TT;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 38
    const/4 v4, 0x0

    .line 39
    .local v4, oneItem:Ljava/lang/Object;,"TT;"
    const/4 v1, 0x0

    .line 40
    .local v1, listCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    const/4 v5, 0x0

    .line 42
    .local v5, retVal:Z
    monitor-enter p1

    .line 43
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 45
    .local v6, size:I
    if-nez v6, :cond_0

    .line 47
    monitor-exit p1

    .line 69
    .end local v4           #oneItem:Ljava/lang/Object;,"TT;"
    :goto_0
    return v7

    .line 50
    .restart local v4       #oneItem:Ljava/lang/Object;,"TT;"
    :cond_0
    if-ne v6, v8, :cond_3

    .line 51
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 55
    .end local v4           #oneItem:Ljava/lang/Object;,"TT;"
    :cond_1
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    if-eqz v4, :cond_4

    .line 59
    invoke-interface {p2, v4}, Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback$Callable;->call(Ljava/lang/Object;)Z

    move-result v5

    :cond_2
    move v7, v5

    .line 69
    goto :goto_0

    .line 52
    .restart local v4       #oneItem:Ljava/lang/Object;,"TT;"
    :cond_3
    if-le v6, v8, :cond_1

    .line 53
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .end local v1           #listCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    .local v2, listCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    move-object v1, v2

    .end local v2           #listCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    .restart local v1       #listCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    goto :goto_1

    .line 55
    .end local v4           #oneItem:Ljava/lang/Object;,"TT;"
    .end local v6           #size:I
    :catchall_0
    move-exception v7

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 61
    .restart local v6       #size:I
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 63
    .local v3, listener:Ljava/lang/Object;,"TT;"
    invoke-interface {p2, v3}, Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback$Callable;->call(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 64
    const/4 v5, 0x1

    goto :goto_2
.end method
