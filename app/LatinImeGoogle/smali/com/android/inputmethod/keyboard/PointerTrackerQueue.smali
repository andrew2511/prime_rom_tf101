.class public Lcom/android/inputmethod/keyboard/PointerTrackerQueue;
.super Ljava/lang/Object;
.source "PointerTrackerQueue.java"


# instance fields
.field private mQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/inputmethod/keyboard/PointerTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTrackerQueue;->mQueue:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public add(Lcom/android/inputmethod/keyboard/PointerTracker;)V
    .locals 1
    .parameter "tracker"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTrackerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method

.method public isInSlidingKeyInput()Z
    .locals 3

    .prologue
    .line 66
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/PointerTrackerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/keyboard/PointerTracker;

    .line 67
    .local v1, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->isInSlidingKeyInput()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    const/4 v2, 0x1

    .line 70
    .end local v1           #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public releaseAllPointers(J)V
    .locals 1
    .parameter "eventTime"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/inputmethod/keyboard/PointerTrackerQueue;->releaseAllPointersExcept(Lcom/android/inputmethod/keyboard/PointerTracker;J)V

    .line 47
    return-void
.end method

.method public releaseAllPointersExcept(Lcom/android/inputmethod/keyboard/PointerTracker;J)V
    .locals 4
    .parameter "tracker"
    .parameter "eventTime"

    .prologue
    .line 50
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/PointerTrackerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/keyboard/PointerTracker;

    .line 51
    .local v1, t:Lcom/android/inputmethod/keyboard/PointerTracker;
    if-eq v1, p1, :cond_0

    .line 53
    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getLastX()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getLastY()I

    move-result v3

    invoke-virtual {v1, v2, v3, p2, p3}, Lcom/android/inputmethod/keyboard/PointerTracker;->onUpEventForRelease(IIJ)V

    .line 54
    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->setAlreadyProcessed()V

    goto :goto_0

    .line 56
    .end local v1           #t:Lcom/android/inputmethod/keyboard/PointerTracker;
    :cond_1
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/PointerTrackerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 57
    if-eqz p1, :cond_2

    .line 58
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/PointerTrackerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_2
    return-void
.end method

.method public releaseAllPointersOlderThan(Lcom/android/inputmethod/keyboard/PointerTracker;J)V
    .locals 5
    .parameter "tracker"
    .parameter "eventTime"

    .prologue
    .line 29
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/PointerTrackerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_1

    .line 43
    :cond_0
    return-void

    .line 32
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTrackerQueue;->mQueue:Ljava/util/LinkedList;

    .line 33
    .local v1, queue:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/inputmethod/keyboard/PointerTracker;>;"
    const/4 v0, 0x0

    .line 34
    .local v0, oldestPos:I
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/inputmethod/keyboard/PointerTracker;

    .local v2, t:Lcom/android/inputmethod/keyboard/PointerTracker;
    :goto_0
    if-eq v2, p1, :cond_0

    .line 35
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/PointerTracker;->isModifier()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 34
    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #t:Lcom/android/inputmethod/keyboard/PointerTracker;
    check-cast v2, Lcom/android/inputmethod/keyboard/PointerTracker;

    .restart local v2       #t:Lcom/android/inputmethod/keyboard/PointerTracker;
    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/PointerTracker;->getLastX()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/PointerTracker;->getLastY()I

    move-result v4

    invoke-virtual {v2, v3, v4, p2, p3}, Lcom/android/inputmethod/keyboard/PointerTracker;->onUpEventForRelease(IIJ)V

    .line 39
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/PointerTracker;->setAlreadyProcessed()V

    .line 40
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_1
.end method

.method public remove(Lcom/android/inputmethod/keyboard/PointerTracker;)V
    .locals 1
    .parameter "tracker"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTrackerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .local v1, sb:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/PointerTrackerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/inputmethod/keyboard/PointerTracker;

    .line 77
    .local v2, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-le v3, v7, :cond_0

    .line 78
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    :cond_0
    const-string v3, "%d"

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v2, Lcom/android/inputmethod/keyboard/PointerTracker;->mPointerId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 81
    .end local v2           #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    :cond_1
    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
