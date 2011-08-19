.class Ljava/util/concurrent/ArrayBlockingQueue$Itr;
.super Ljava/lang/Object;
.source "ArrayBlockingQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ArrayBlockingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private lastItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private lastRet:I

.field private nextIndex:I

.field private nextItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private remaining:I

.field final synthetic this$0:Ljava/util/concurrent/ArrayBlockingQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ArrayBlockingQueue;)V
    .registers 4
    .parameter

    .prologue
    .line 714
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue$Itr;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iput-object p1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 715
    iget-object v0, p1, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 716
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 718
    const/4 v1, -0x1

    :try_start_b
    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    .line 719
    iget v1, p1, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->remaining:I

    if-lez v1, :cond_1d

    .line 720
    iget v1, p1, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->itemAt(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_21

    .line 722
    :cond_1d
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 724
    return-void

    .line 722
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 727
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue$Itr;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->remaining:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public next()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 731
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue$Itr;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v0, v2, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 732
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 734
    :try_start_7
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->remaining:I

    if-gtz v2, :cond_16

    .line 735
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_11

    .line 749
    :catchall_11
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 736
    :cond_16
    :try_start_16
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    .line 737
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ArrayBlockingQueue;->itemAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 738
    .local v1, x:Ljava/lang/Object;,"TE;"
    if-nez v1, :cond_49

    .line 739
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 740
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastItem:Ljava/lang/Object;

    .line 745
    :cond_29
    :goto_29
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->remaining:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->remaining:I

    if-lez v2, :cond_45

    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ArrayBlockingQueue;->inc(I)I

    move-result v3

    iput v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ArrayBlockingQueue;->itemAt(I)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;
    :try_end_43
    .catchall {:try_start_16 .. :try_end_43} :catchall_11

    if-eqz v2, :cond_29

    .line 749
    :cond_45
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    .line 743
    :cond_49
    :try_start_49
    iput-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastItem:Ljava/lang/Object;
    :try_end_4b
    .catchall {:try_start_49 .. :try_end_4b} :catchall_11

    goto :goto_29
.end method

.method public remove()V
    .registers 7

    .prologue
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue$Itr;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    const/4 v5, -0x1

    .line 754
    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v1, v4, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 755
    .local v1, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 757
    :try_start_8
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    .line 758
    .local v0, i:I
    if-ne v0, v5, :cond_17

    .line 759
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_12

    .line 771
    .end local v0           #i:I
    :catchall_12
    move-exception v4

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    .line 760
    .restart local v0       #i:I
    :cond_17
    const/4 v4, -0x1

    :try_start_18
    iput v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    .line 761
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastItem:Ljava/lang/Object;

    .line 762
    .local v3, x:Ljava/lang/Object;,"TE;"
    const/4 v4, 0x0

    iput-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastItem:Ljava/lang/Object;

    .line 764
    if-eqz v3, :cond_42

    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v4, v4, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    aget-object v4, v4, v0

    if-ne v3, v4, :cond_42

    .line 765
    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget v4, v4, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    if-ne v0, v4, :cond_46

    const/4 v4, 0x1

    move v2, v4

    .line 766
    .local v2, removingHead:Z
    :goto_31
    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->removeAt(I)V

    .line 767
    if-nez v2, :cond_42

    .line 768
    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget v5, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ArrayBlockingQueue;->dec(I)I

    move-result v4

    iput v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I
    :try_end_42
    .catchall {:try_start_18 .. :try_end_42} :catchall_12

    .line 771
    .end local v2           #removingHead:Z
    :cond_42
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 773
    return-void

    .line 765
    :cond_46
    const/4 v4, 0x0

    move v2, v4

    goto :goto_31
.end method
