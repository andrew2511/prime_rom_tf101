.class Ldalvik/system/SamplingProfiler$Sampler;
.super Ljava/util/TimerTask;
.source "SamplingProfiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/SamplingProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Sampler"
.end annotation


# instance fields
.field final synthetic this$0:Ldalvik/system/SamplingProfiler;

.field private timerThread:Ljava/lang/Thread;


# direct methods
.method private constructor <init>(Ldalvik/system/SamplingProfiler;)V
    .registers 2
    .parameter

    .prologue
    .line 1591
    iput-object p1, p0, Ldalvik/system/SamplingProfiler$Sampler;->this$0:Ldalvik/system/SamplingProfiler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldalvik/system/SamplingProfiler;Ldalvik/system/SamplingProfiler$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1591
    invoke-direct {p0, p1}, Ldalvik/system/SamplingProfiler$Sampler;-><init>(Ldalvik/system/SamplingProfiler;)V

    return-void
.end method

.method private addEndThread(Ljava/lang/Thread;)V
    .registers 7
    .parameter "thread"

    .prologue
    .line 1717
    if-nez p1, :cond_a

    .line 1718
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "thread == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1720
    :cond_a
    iget-object v2, p0, Ldalvik/system/SamplingProfiler$Sampler;->this$0:Ldalvik/system/SamplingProfiler;

    #getter for: Ldalvik/system/SamplingProfiler;->threadIds:Ljava/util/Map;
    invoke-static {v2}, Ldalvik/system/SamplingProfiler;->access$900(Ldalvik/system/SamplingProfiler;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1721
    .local v1, threadId:Ljava/lang/Integer;
    if-nez v1, :cond_31

    .line 1722
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1724
    :cond_31
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->end(I)Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;

    move-result-object v0

    .line 1725
    .local v0, event:Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;
    iget-object v2, p0, Ldalvik/system/SamplingProfiler$Sampler;->this$0:Ldalvik/system/SamplingProfiler;

    #getter for: Ldalvik/system/SamplingProfiler;->hprofData:Ldalvik/system/SamplingProfiler$HprofData;
    invoke-static {v2}, Ldalvik/system/SamplingProfiler;->access$1300(Ldalvik/system/SamplingProfiler;)Ldalvik/system/SamplingProfiler$HprofData;

    move-result-object v2

    invoke-virtual {v2, v0}, Ldalvik/system/SamplingProfiler$HprofData;->addThreadEvent(Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;)V

    .line 1726
    return-void
.end method

.method private addStartThread(Ljava/lang/Thread;)V
    .registers 13
    .parameter "thread"

    .prologue
    const/4 v10, 0x0

    .line 1691
    if-nez p1, :cond_b

    .line 1692
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "thread == null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1694
    :cond_b
    iget-object v8, p0, Ldalvik/system/SamplingProfiler$Sampler;->this$0:Ldalvik/system/SamplingProfiler;

    invoke-static {v8}, Ldalvik/system/SamplingProfiler;->access$1408(Ldalvik/system/SamplingProfiler;)I

    move-result v6

    .line 1695
    .local v6, threadId:I
    iget-object v8, p0, Ldalvik/system/SamplingProfiler$Sampler;->this$0:Ldalvik/system/SamplingProfiler;

    #getter for: Ldalvik/system/SamplingProfiler;->threadIds:Ljava/util/Map;
    invoke-static {v8}, Ldalvik/system/SamplingProfiler;->access$900(Ldalvik/system/SamplingProfiler;)Ljava/util/Map;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, p1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1696
    .local v3, old:Ljava/lang/Integer;
    if-eqz v3, :cond_3c

    .line 1697
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Thread already registered as "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1700
    :cond_3c
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1702
    .local v7, threadName:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    .line 1703
    .local v1, group:Ljava/lang/ThreadGroup;
    if-nez v1, :cond_61

    move-object v2, v10

    .line 1704
    .local v2, groupName:Ljava/lang/String;
    :goto_47
    if-nez v1, :cond_67

    move-object v4, v10

    .line 1705
    .local v4, parentGroup:Ljava/lang/ThreadGroup;
    :goto_4a
    if-nez v4, :cond_6d

    move-object v5, v10

    .line 1707
    .local v5, parentGroupName:Ljava/lang/String;
    :goto_4d
    iget-object v8, p0, Ldalvik/system/SamplingProfiler$Sampler;->this$0:Ldalvik/system/SamplingProfiler;

    invoke-static {v8}, Ldalvik/system/SamplingProfiler;->access$1508(Ldalvik/system/SamplingProfiler;)I

    move-result v8

    invoke-static {v8, v6, v7, v2, v5}, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->start(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;

    move-result-object v0

    .line 1710
    .local v0, event:Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;
    iget-object v8, p0, Ldalvik/system/SamplingProfiler$Sampler;->this$0:Ldalvik/system/SamplingProfiler;

    #getter for: Ldalvik/system/SamplingProfiler;->hprofData:Ldalvik/system/SamplingProfiler$HprofData;
    invoke-static {v8}, Ldalvik/system/SamplingProfiler;->access$1300(Ldalvik/system/SamplingProfiler;)Ldalvik/system/SamplingProfiler$HprofData;

    move-result-object v8

    invoke-virtual {v8, v0}, Ldalvik/system/SamplingProfiler$HprofData;->addThreadEvent(Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;)V

    .line 1711
    return-void

    .line 1703
    .end local v0           #event:Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;
    .end local v2           #groupName:Ljava/lang/String;
    .end local v4           #parentGroup:Ljava/lang/ThreadGroup;
    .end local v5           #parentGroupName:Ljava/lang/String;
    :cond_61
    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    goto :goto_47

    .line 1704
    .restart local v2       #groupName:Ljava/lang/String;
    :cond_67
    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v8

    move-object v4, v8

    goto :goto_4a

    .line 1705
    .restart local v4       #parentGroup:Ljava/lang/ThreadGroup;
    :cond_6d
    invoke-virtual {v4}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    goto :goto_4d
.end method

.method private recordStackTrace(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;)V
    .registers 9
    .parameter "thread"
    .parameter "stackFrames"

    .prologue
    .line 1635
    iget-object v3, p0, Ldalvik/system/SamplingProfiler$Sampler;->this$0:Ldalvik/system/SamplingProfiler;

    #getter for: Ldalvik/system/SamplingProfiler;->threadIds:Ljava/util/Map;
    invoke-static {v3}, Ldalvik/system/SamplingProfiler;->access$900(Ldalvik/system/SamplingProfiler;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1636
    .local v2, threadId:Ljava/lang/Integer;
    if-nez v2, :cond_27

    .line 1637
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown thread "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1639
    :cond_27
    iget-object v3, p0, Ldalvik/system/SamplingProfiler$Sampler;->this$0:Ldalvik/system/SamplingProfiler;

    #getter for: Ldalvik/system/SamplingProfiler;->mutableStackTrace:Ldalvik/system/SamplingProfiler$HprofData$StackTrace;
    invoke-static {v3}, Ldalvik/system/SamplingProfiler;->access$1000(Ldalvik/system/SamplingProfiler;)Ldalvik/system/SamplingProfiler$HprofData$StackTrace;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    #setter for: Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->threadId:I
    invoke-static {v3, v4}, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->access$102(Ldalvik/system/SamplingProfiler$HprofData$StackTrace;I)I

    .line 1640
    iget-object v3, p0, Ldalvik/system/SamplingProfiler$Sampler;->this$0:Ldalvik/system/SamplingProfiler;

    #getter for: Ldalvik/system/SamplingProfiler;->mutableStackTrace:Ldalvik/system/SamplingProfiler$HprofData$StackTrace;
    invoke-static {v3}, Ldalvik/system/SamplingProfiler;->access$1000(Ldalvik/system/SamplingProfiler;)Ldalvik/system/SamplingProfiler$HprofData$StackTrace;

    move-result-object v3

    #setter for: Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->stackFrames:[Ljava/lang/StackTraceElement;
    invoke-static {v3, p2}, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->access$202(Ldalvik/system/SamplingProfiler$HprofData$StackTrace;[Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    .line 1642
    iget-object v3, p0, Ldalvik/system/SamplingProfiler$Sampler;->this$0:Ldalvik/system/SamplingProfiler;

    #getter for: Ldalvik/system/SamplingProfiler;->stackTraces:Ljava/util/Map;
    invoke-static {v3}, Ldalvik/system/SamplingProfiler;->access$1100(Ldalvik/system/SamplingProfiler;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Ldalvik/system/SamplingProfiler$Sampler;->this$0:Ldalvik/system/SamplingProfiler;

    #getter for: Ldalvik/system/SamplingProfiler;->mutableStackTrace:Ldalvik/system/SamplingProfiler$HprofData$StackTrace;
    invoke-static {v4}, Ldalvik/system/SamplingProfiler;->access$1000(Ldalvik/system/SamplingProfiler;)Ldalvik/system/SamplingProfiler$HprofData$StackTrace;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1643
    .local v0, countCell:[I
    if-nez v0, :cond_6c

    .line 1644
    const/4 v3, 0x1

    new-array v0, v3, [I

    .line 1645
    new-instance v1, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;

    iget-object v3, p0, Ldalvik/system/SamplingProfiler$Sampler;->this$0:Ldalvik/system/SamplingProfiler;

    invoke-static {v3}, Ldalvik/system/SamplingProfiler;->access$1208(Ldalvik/system/SamplingProfiler;)I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v1, v3, v4, p2}, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;-><init>(II[Ljava/lang/StackTraceElement;)V

    .line 1647
    .local v1, stackTrace:Ldalvik/system/SamplingProfiler$HprofData$StackTrace;
    iget-object v3, p0, Ldalvik/system/SamplingProfiler$Sampler;->this$0:Ldalvik/system/SamplingProfiler;

    #getter for: Ldalvik/system/SamplingProfiler;->hprofData:Ldalvik/system/SamplingProfiler$HprofData;
    invoke-static {v3}, Ldalvik/system/SamplingProfiler;->access$1300(Ldalvik/system/SamplingProfiler;)Ldalvik/system/SamplingProfiler$HprofData;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Ldalvik/system/SamplingProfiler$HprofData;->addStackTrace(Ldalvik/system/SamplingProfiler$HprofData$StackTrace;[I)V

    .line 1649
    .end local v1           #stackTrace:Ldalvik/system/SamplingProfiler$HprofData$StackTrace;
    :cond_6c
    const/4 v3, 0x0

    aget v4, v0, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v0, v3

    .line 1650
    return-void
.end method

.method private updateThreadHistory([Ljava/lang/Thread;[Ljava/lang/Thread;)V
    .registers 10
    .parameter "oldThreads"
    .parameter "newThreads"

    .prologue
    .line 1656
    new-instance v2, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1657
    .local v2, n:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Thread;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1660
    .local v3, o:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Thread;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1661
    .local v0, added:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Thread;>;"
    invoke-interface {v0, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1664
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1665
    .local v4, removed:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Thread;>;"
    invoke-interface {v4, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1667
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_26
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Thread;

    .line 1668
    .local v5, thread:Ljava/lang/Thread;
    if-eqz v5, :cond_26

    .line 1671
    iget-object v6, p0, Ldalvik/system/SamplingProfiler$Sampler;->timerThread:Ljava/lang/Thread;

    if-eq v5, v6, :cond_26

    .line 1674
    invoke-direct {p0, v5}, Ldalvik/system/SamplingProfiler$Sampler;->addStartThread(Ljava/lang/Thread;)V

    goto :goto_26

    .line 1676
    .end local v5           #thread:Ljava/lang/Thread;
    :cond_3c
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_40
    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Thread;

    .line 1677
    .restart local v5       #thread:Ljava/lang/Thread;
    if-eqz v5, :cond_40

    .line 1680
    iget-object v6, p0, Ldalvik/system/SamplingProfiler$Sampler;->timerThread:Ljava/lang/Thread;

    if-eq v5, v6, :cond_40

    .line 1683
    invoke-direct {p0, v5}, Ldalvik/system/SamplingProfiler$Sampler;->addEndThread(Ljava/lang/Thread;)V

    goto :goto_40

    .line 1685
    .end local v5           #thread:Ljava/lang/Thread;
    :cond_56
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 1596
    iget-object v6, p0, Ldalvik/system/SamplingProfiler$Sampler;->timerThread:Ljava/lang/Thread;

    if-nez v6, :cond_a

    .line 1597
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    iput-object v6, p0, Ldalvik/system/SamplingProfiler$Sampler;->timerThread:Ljava/lang/Thread;

    .line 1603
    :cond_a
    iget-object v6, p0, Ldalvik/system/SamplingProfiler$Sampler;->this$0:Ldalvik/system/SamplingProfiler;

    #getter for: Ldalvik/system/SamplingProfiler;->threadSet:Ldalvik/system/SamplingProfiler$ThreadSet;
    invoke-static {v6}, Ldalvik/system/SamplingProfiler;->access$600(Ldalvik/system/SamplingProfiler;)Ldalvik/system/SamplingProfiler$ThreadSet;

    move-result-object v6

    invoke-interface {v6}, Ldalvik/system/SamplingProfiler$ThreadSet;->threads()[Ljava/lang/Thread;

    move-result-object v3

    .line 1604
    .local v3, newThreads:[Ljava/lang/Thread;
    iget-object v6, p0, Ldalvik/system/SamplingProfiler$Sampler;->this$0:Ldalvik/system/SamplingProfiler;

    #getter for: Ldalvik/system/SamplingProfiler;->currentThreads:[Ljava/lang/Thread;
    invoke-static {v6}, Ldalvik/system/SamplingProfiler;->access$700(Ldalvik/system/SamplingProfiler;)[Ljava/lang/Thread;

    move-result-object v6

    invoke-static {v6, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_34

    .line 1605
    iget-object v6, p0, Ldalvik/system/SamplingProfiler$Sampler;->this$0:Ldalvik/system/SamplingProfiler;

    #getter for: Ldalvik/system/SamplingProfiler;->currentThreads:[Ljava/lang/Thread;
    invoke-static {v6}, Ldalvik/system/SamplingProfiler;->access$700(Ldalvik/system/SamplingProfiler;)[Ljava/lang/Thread;

    move-result-object v6

    invoke-direct {p0, v6, v3}, Ldalvik/system/SamplingProfiler$Sampler;->updateThreadHistory([Ljava/lang/Thread;[Ljava/lang/Thread;)V

    .line 1606
    iget-object v7, p0, Ldalvik/system/SamplingProfiler$Sampler;->this$0:Ldalvik/system/SamplingProfiler;

    invoke-virtual {v3}, [Ljava/lang/Thread;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Thread;

    #setter for: Ldalvik/system/SamplingProfiler;->currentThreads:[Ljava/lang/Thread;
    invoke-static {v7, v6}, Ldalvik/system/SamplingProfiler;->access$702(Ldalvik/system/SamplingProfiler;[Ljava/lang/Thread;)[Ljava/lang/Thread;

    .line 1609
    :cond_34
    iget-object v6, p0, Ldalvik/system/SamplingProfiler$Sampler;->this$0:Ldalvik/system/SamplingProfiler;

    #getter for: Ldalvik/system/SamplingProfiler;->currentThreads:[Ljava/lang/Thread;
    invoke-static {v6}, Ldalvik/system/SamplingProfiler;->access$700(Ldalvik/system/SamplingProfiler;)[Ljava/lang/Thread;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/Thread;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3c
    if-ge v1, v2, :cond_42

    aget-object v5, v0, v1

    .line 1610
    .local v5, thread:Ljava/lang/Thread;
    if-nez v5, :cond_43

    .line 1628
    .end local v5           #thread:Ljava/lang/Thread;
    :cond_42
    return-void

    .line 1613
    .restart local v5       #thread:Ljava/lang/Thread;
    :cond_43
    iget-object v6, p0, Ldalvik/system/SamplingProfiler$Sampler;->timerThread:Ljava/lang/Thread;

    if-ne v5, v6, :cond_4a

    .line 1609
    :cond_47
    :goto_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 1619
    :cond_4a
    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 1620
    .local v4, stackFrames:[Ljava/lang/StackTraceElement;
    array-length v6, v4

    if-eqz v6, :cond_47

    .line 1623
    array-length v6, v4

    iget-object v7, p0, Ldalvik/system/SamplingProfiler$Sampler;->this$0:Ldalvik/system/SamplingProfiler;

    #getter for: Ldalvik/system/SamplingProfiler;->depth:I
    invoke-static {v7}, Ldalvik/system/SamplingProfiler;->access$800(Ldalvik/system/SamplingProfiler;)I

    move-result v7

    if-le v6, v7, :cond_67

    .line 1624
    const/4 v6, 0x0

    iget-object v7, p0, Ldalvik/system/SamplingProfiler$Sampler;->this$0:Ldalvik/system/SamplingProfiler;

    #getter for: Ldalvik/system/SamplingProfiler;->depth:I
    invoke-static {v7}, Ldalvik/system/SamplingProfiler;->access$800(Ldalvik/system/SamplingProfiler;)I

    move-result v7

    invoke-static {v4, v6, v7}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v4

    .end local v4           #stackFrames:[Ljava/lang/StackTraceElement;
    check-cast v4, [Ljava/lang/StackTraceElement;

    .line 1626
    .restart local v4       #stackFrames:[Ljava/lang/StackTraceElement;
    :cond_67
    invoke-direct {p0, v5, v4}, Ldalvik/system/SamplingProfiler$Sampler;->recordStackTrace(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;)V

    goto :goto_47
.end method
