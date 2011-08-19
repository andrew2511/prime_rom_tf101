.class final Ljava/util/concurrent/SynchronousQueue$TransferQueue;
.super Ljava/util/concurrent/SynchronousQueue$Transferer;
.source "SynchronousQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/SynchronousQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TransferQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    }
.end annotation


# static fields
.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final cleanMeOffset:J

.field private static final headOffset:J

.field private static final tailOffset:J


# instance fields
.field volatile transient cleanMe:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

.field volatile transient head:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

.field volatile transient tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 766
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    .line 767
    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    const-string v1, "head"

    const-class v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/SynchronousQueue;->objectFieldOffset(Lsun/misc/Unsafe;Ljava/lang/String;Ljava/lang/Class;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->headOffset:J

    .line 769
    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    const-string v1, "tail"

    const-class v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/SynchronousQueue;->objectFieldOffset(Lsun/misc/Unsafe;Ljava/lang/String;Ljava/lang/Class;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tailOffset:J

    .line 771
    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    const-string v1, "cleanMe"

    const-class v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/SynchronousQueue;->objectFieldOffset(Lsun/misc/Unsafe;Ljava/lang/String;Ljava/lang/Class;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->cleanMeOffset:J

    return-void
.end method

.method constructor <init>()V
    .registers 4

    .prologue
    .line 550
    invoke-direct {p0}, Ljava/util/concurrent/SynchronousQueue$Transferer;-><init>()V

    .line 551
    new-instance v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;-><init>(Ljava/lang/Object;Z)V

    .line 552
    .local v0, h:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    iput-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->head:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 553
    iput-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 554
    return-void
.end method


# virtual methods
.method advanceHead(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V
    .registers 9
    .parameter "h"
    .parameter "nh"

    .prologue
    .line 561
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->head:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne p1, v0, :cond_13

    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->headOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 563
    iput-object p1, p1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 564
    :cond_13
    return-void
.end method

.method advanceTail(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V
    .registers 9
    .parameter "t"
    .parameter "nt"

    .prologue
    .line 570
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne v0, p1, :cond_e

    .line 571
    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tailOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 572
    :cond_e
    return-void
.end method

.method awaitFulfill(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .registers 15
    .parameter "s"
    .parameter "e"
    .parameter "timed"
    .parameter "nanos"

    .prologue
    .line 681
    if-eqz p3, :cond_24

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    move-wide v0, v7

    .line 682
    .local v0, lastTime:J
    :goto_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    .line 683
    .local v5, w:Ljava/lang/Thread;
    iget-object v7, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->head:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    iget-object v7, v7, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne v7, p1, :cond_2c

    if-eqz p3, :cond_28

    sget v7, Ljava/util/concurrent/SynchronousQueue;->maxTimedSpins:I

    move v4, v7

    .line 686
    .local v4, spins:I
    :cond_16
    :goto_16
    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 687
    invoke-virtual {p1, p2}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->tryCancel(Ljava/lang/Object;)V

    .line 688
    :cond_1f
    iget-object v6, p1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->item:Ljava/lang/Object;

    .line 689
    .local v6, x:Ljava/lang/Object;
    if-eq v6, p2, :cond_2f

    .line 690
    return-object v6

    .line 681
    .end local v0           #lastTime:J
    .end local v4           #spins:I
    .end local v5           #w:Ljava/lang/Thread;
    .end local v6           #x:Ljava/lang/Object;
    :cond_24
    const-wide/16 v7, 0x0

    move-wide v0, v7

    goto :goto_7

    .line 683
    .restart local v0       #lastTime:J
    .restart local v5       #w:Ljava/lang/Thread;
    :cond_28
    sget v7, Ljava/util/concurrent/SynchronousQueue;->maxUntimedSpins:I

    move v4, v7

    goto :goto_16

    :cond_2c
    const/4 v7, 0x0

    move v4, v7

    goto :goto_16

    .line 691
    .restart local v4       #spins:I
    .restart local v6       #x:Ljava/lang/Object;
    :cond_2f
    if-eqz p3, :cond_43

    .line 692
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 693
    .local v2, now:J
    sub-long v7, v2, v0

    sub-long/2addr p4, v7

    .line 694
    move-wide v0, v2

    .line 695
    const-wide/16 v7, 0x0

    cmp-long v7, p4, v7

    if-gtz v7, :cond_43

    .line 696
    invoke-virtual {p1, p2}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->tryCancel(Ljava/lang/Object;)V

    goto :goto_16

    .line 700
    .end local v2           #now:J
    :cond_43
    if-lez v4, :cond_48

    .line 701
    add-int/lit8 v4, v4, -0x1

    goto :goto_16

    .line 702
    :cond_48
    iget-object v7, p1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->waiter:Ljava/lang/Thread;

    if-nez v7, :cond_4f

    .line 703
    iput-object v5, p1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->waiter:Ljava/lang/Thread;

    goto :goto_16

    .line 704
    :cond_4f
    if-nez p3, :cond_55

    .line 705
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_16

    .line 706
    :cond_55
    const-wide/16 v7, 0x3e8

    cmp-long v7, p4, v7

    if-lez v7, :cond_16

    .line 707
    invoke-static {p0, p4, p5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_16
.end method

.method casCleanMe(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)Z
    .registers 9
    .parameter "cmp"
    .parameter "val"

    .prologue
    .line 578
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->cleanMe:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne v0, p1, :cond_13

    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->cleanMeOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method clean(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V
    .registers 13
    .parameter "pred"
    .parameter "s"

    .prologue
    const/4 v9, 0x0

    .line 715
    iput-object v9, p2, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->waiter:Ljava/lang/Thread;

    .line 724
    :cond_3
    :goto_3
    iget-object v8, p1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne v8, p2, :cond_1b

    .line 725
    iget-object v3, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->head:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 726
    .local v3, h:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    iget-object v4, v3, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 727
    .local v4, hn:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eqz v4, :cond_17

    invoke-virtual {v4}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_17

    .line 728
    invoke-virtual {p0, v3, v4}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceHead(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    goto :goto_3

    .line 731
    :cond_17
    iget-object v6, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 732
    .local v6, t:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-ne v6, v3, :cond_1c

    .line 763
    .end local v3           #h:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .end local v4           #hn:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .end local v6           #t:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    :cond_1b
    :goto_1b
    return-void

    .line 734
    .restart local v3       #h:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .restart local v4       #hn:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .restart local v6       #t:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    :cond_1c
    iget-object v7, v6, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 735
    .local v7, tn:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    iget-object v8, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne v6, v8, :cond_3

    .line 737
    if-eqz v7, :cond_28

    .line 738
    invoke-virtual {p0, v6, v7}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceTail(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    goto :goto_3

    .line 741
    :cond_28
    if-eq p2, v6, :cond_34

    .line 742
    iget-object v5, p2, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 743
    .local v5, sn:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eq v5, p2, :cond_1b

    invoke-virtual {p1, p2, v5}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->casNext(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)Z

    move-result v8

    if-nez v8, :cond_1b

    .line 746
    .end local v5           #sn:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    :cond_34
    iget-object v2, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->cleanMe:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 747
    .local v2, dp:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eqz v2, :cond_58

    .line 748
    iget-object v0, v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 750
    .local v0, d:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eqz v0, :cond_52

    if-eq v0, v2, :cond_52

    invoke-virtual {v0}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_52

    if-eq v0, v6, :cond_55

    iget-object v1, v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .local v1, dn:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eqz v1, :cond_55

    if-eq v1, v0, :cond_55

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->casNext(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)Z

    move-result v8

    if-eqz v8, :cond_55

    .line 757
    .end local v1           #dn:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    :cond_52
    invoke-virtual {p0, v2, v9}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->casCleanMe(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)Z

    .line 758
    :cond_55
    if-ne v2, p1, :cond_3

    goto :goto_1b

    .line 760
    .end local v0           #d:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    :cond_58
    invoke-virtual {p0, v9, p1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->casCleanMe(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1b
.end method

.method transfer(Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .registers 17
    .parameter "e"
    .parameter "timed"
    .parameter "nanos"

    .prologue
    .line 611
    const/4 v1, 0x0

    .line 612
    .local v1, s:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eqz p1, :cond_1f

    const/4 v0, 0x1

    move v7, v0

    .line 615
    .local v7, isData:Z
    :cond_5
    :goto_5
    iget-object v9, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 616
    .local v9, t:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    iget-object v6, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->head:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 617
    .local v6, h:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eqz v9, :cond_5

    if-eqz v6, :cond_5

    .line 620
    if-eq v6, v9, :cond_13

    iget-boolean v0, v9, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->isData:Z

    if-ne v0, v7, :cond_62

    .line 621
    :cond_13
    iget-object v10, v9, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 622
    .local v10, tn:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne v9, v0, :cond_5

    .line 624
    if-eqz v10, :cond_22

    .line 625
    invoke-virtual {p0, v9, v10}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceTail(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    goto :goto_5

    .line 612
    .end local v6           #h:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .end local v7           #isData:Z
    .end local v9           #t:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .end local v10           #tn:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    :cond_1f
    const/4 v0, 0x0

    move v7, v0

    goto :goto_5

    .line 628
    .restart local v6       #h:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .restart local v7       #isData:Z
    .restart local v9       #t:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .restart local v10       #tn:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    :cond_22
    if-eqz p2, :cond_2c

    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    if-gtz v0, :cond_2c

    .line 629
    const/4 v0, 0x0

    .line 665
    .end local v10           #tn:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    :goto_2b
    return-object v0

    .line 630
    .restart local v10       #tn:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    :cond_2c
    if-nez v1, :cond_33

    .line 631
    new-instance v1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .end local v1           #s:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    invoke-direct {v1, p1, v7}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;-><init>(Ljava/lang/Object;Z)V

    .line 632
    .restart local v1       #s:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    :cond_33
    const/4 v0, 0x0

    invoke-virtual {v9, v0, v1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->casNext(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 635
    invoke-virtual {p0, v9, v1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceTail(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    .line 636
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->awaitFulfill(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v11

    .line 637
    .local v11, x:Ljava/lang/Object;
    if-ne v11, v1, :cond_4c

    .line 638
    invoke-virtual {p0, v9, v1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->clean(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    .line 639
    const/4 v0, 0x0

    goto :goto_2b

    .line 642
    :cond_4c
    invoke-virtual {v1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->isOffList()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 643
    invoke-virtual {p0, v9, v1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceHead(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    .line 644
    if-eqz v11, :cond_59

    .line 645
    iput-object v1, v1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->item:Ljava/lang/Object;

    .line 646
    :cond_59
    const/4 v0, 0x0

    iput-object v0, v1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->waiter:Ljava/lang/Thread;

    .line 648
    :cond_5c
    if-eqz v11, :cond_60

    move-object v0, v11

    goto :goto_2b

    :cond_60
    move-object v0, p1

    goto :goto_2b

    .line 651
    .end local v10           #tn:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .end local v11           #x:Ljava/lang/Object;
    :cond_62
    iget-object v8, v6, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 652
    .local v8, m:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne v9, v0, :cond_5

    if-eqz v8, :cond_5

    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->head:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne v6, v0, :cond_5

    .line 655
    iget-object v11, v8, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->item:Ljava/lang/Object;

    .line 656
    .restart local v11       #x:Ljava/lang/Object;
    if-eqz v11, :cond_81

    const/4 v0, 0x1

    :goto_73
    if-eq v7, v0, :cond_7d

    if-eq v11, v8, :cond_7d

    invoke-virtual {v8, v11, p1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_83

    .line 659
    :cond_7d
    invoke-virtual {p0, v6, v8}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceHead(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    goto :goto_5

    .line 656
    :cond_81
    const/4 v0, 0x0

    goto :goto_73

    .line 663
    :cond_83
    invoke-virtual {p0, v6, v8}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceHead(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    .line 664
    iget-object v0, v8, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->waiter:Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 665
    if-eqz v11, :cond_8f

    move-object v0, v11

    goto :goto_2b

    :cond_8f
    move-object v0, p1

    goto :goto_2b
.end method
