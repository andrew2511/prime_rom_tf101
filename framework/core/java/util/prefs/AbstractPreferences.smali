.class public abstract Ljava/util/prefs/AbstractPreferences;
.super Ljava/util/prefs/Preferences;
.source "AbstractPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/prefs/AbstractPreferences$NodeRemoveEvent;,
        Ljava/util/prefs/AbstractPreferences$NodeAddEvent;,
        Ljava/util/prefs/AbstractPreferences$EventDispatcher;
    }
.end annotation


# static fields
.field private static final dispatcher:Ljava/util/prefs/AbstractPreferences$EventDispatcher;

.field private static final events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/EventObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cachedNode:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/prefs/AbstractPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private isRemoved:Z

.field protected final lock:Ljava/lang/Object;

.field protected newNode:Z

.field private nodeChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/EventListener;",
            ">;"
        }
    .end annotation
.end field

.field private nodeName:Ljava/lang/String;

.field private parentPref:Ljava/util/prefs/AbstractPreferences;

.field private preferenceChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/EventListener;",
            ">;"
        }
    .end annotation
.end field

.field private root:Ljava/util/prefs/AbstractPreferences;

.field userNode:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 51
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/prefs/AbstractPreferences$EventDispatcher;

    const-string v1, "Preference Event Dispatcher"

    invoke-direct {v0, v1}, Ljava/util/prefs/AbstractPreferences$EventDispatcher;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/prefs/AbstractPreferences;->dispatcher:Ljava/util/prefs/AbstractPreferences$EventDispatcher;

    .line 61
    sget-object v0, Ljava/util/prefs/AbstractPreferences;->dispatcher:Ljava/util/prefs/AbstractPreferences$EventDispatcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/prefs/AbstractPreferences$EventDispatcher;->setDaemon(Z)V

    .line 62
    sget-object v0, Ljava/util/prefs/AbstractPreferences;->dispatcher:Ljava/util/prefs/AbstractPreferences$EventDispatcher;

    invoke-virtual {v0}, Ljava/util/prefs/AbstractPreferences$EventDispatcher;->start()V

    .line 63
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/util/prefs/AbstractPreferences$1;

    invoke-direct {v1}, Ljava/util/prefs/AbstractPreferences$1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 80
    return-void
.end method

.method protected constructor <init>(Ljava/util/prefs/AbstractPreferences;Ljava/lang/String;)V
    .registers 7
    .parameter "parent"
    .parameter "name"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 146
    invoke-direct {p0}, Ljava/util/prefs/Preferences;-><init>()V

    .line 147
    if-nez p1, :cond_20

    move v0, v3

    :goto_8
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_22

    move v1, v3

    :goto_f
    xor-int/2addr v0, v1

    if-nez v0, :cond_1a

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_24

    .line 148
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_20
    move v0, v2

    .line 147
    goto :goto_8

    :cond_22
    move v1, v2

    goto :goto_f

    .line 150
    :cond_24
    if-nez p1, :cond_52

    move-object v0, p0

    :goto_27
    iput-object v0, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    .line 151
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/AbstractPreferences;->nodeChangeListeners:Ljava/util/List;

    .line 152
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/AbstractPreferences;->preferenceChangeListeners:Ljava/util/List;

    .line 153
    iput-boolean v2, p0, Ljava/util/prefs/AbstractPreferences;->isRemoved:Z

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/AbstractPreferences;->cachedNode:Ljava/util/Map;

    .line 155
    iput-object p2, p0, Ljava/util/prefs/AbstractPreferences;->nodeName:Ljava/lang/String;

    .line 156
    iput-object p1, p0, Ljava/util/prefs/AbstractPreferences;->parentPref:Ljava/util/prefs/AbstractPreferences;

    .line 157
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    iget-boolean v0, v0, Ljava/util/prefs/AbstractPreferences;->userNode:Z

    iput-boolean v0, p0, Ljava/util/prefs/AbstractPreferences;->userNode:Z

    .line 159
    return-void

    .line 150
    :cond_52
    iget-object v0, p1, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    goto :goto_27
.end method

.method static synthetic access$000(Ljava/util/prefs/AbstractPreferences;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->nodeChangeListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/prefs/AbstractPreferences;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->preferenceChangeListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/List;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;

    return-object v0
.end method

.method private checkState()V
    .registers 3

    .prologue
    .line 641
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 642
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This node has been removed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 644
    :cond_e
    return-void
.end method

.method private getNodeFromBackend(ZLjava/util/prefs/AbstractPreferences;Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;
    .registers 8
    .parameter "createNew"
    .parameter "currentNode"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 586
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x50

    if-le v1, v2, :cond_27

    .line 587
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' too long"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 590
    :cond_27
    if-eqz p1, :cond_42

    .line 591
    invoke-virtual {p2, p3}, Ljava/util/prefs/AbstractPreferences;->childSpi(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;

    move-result-object v0

    .line 592
    .local v0, temp:Ljava/util/prefs/AbstractPreferences;
    iget-object v1, p2, Ljava/util/prefs/AbstractPreferences;->cachedNode:Ljava/util/Map;

    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    iget-boolean v1, v0, Ljava/util/prefs/AbstractPreferences;->newNode:Z

    if-eqz v1, :cond_41

    iget-object v1, p2, Ljava/util/prefs/AbstractPreferences;->nodeChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_41

    .line 594
    invoke-direct {p2, v0}, Ljava/util/prefs/AbstractPreferences;->notifyChildAdded(Ljava/util/prefs/Preferences;)V

    .line 599
    :cond_41
    :goto_41
    return-object v0

    .line 597
    .end local v0           #temp:Ljava/util/prefs/AbstractPreferences;
    :cond_42
    invoke-virtual {p2, p3}, Ljava/util/prefs/AbstractPreferences;->getChild(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;

    move-result-object v0

    .restart local v0       #temp:Ljava/util/prefs/AbstractPreferences;
    goto :goto_41
.end method

.method private nodeImpl(Ljava/lang/String;Z)Ljava/util/prefs/AbstractPreferences;
    .registers 11
    .parameter "path"
    .parameter "createNew"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 563
    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 564
    .local v4, names:[Ljava/lang/String;
    move-object v1, p0

    .line 565
    .local v1, currentNode:Ljava/util/prefs/AbstractPreferences;
    const/4 v5, 0x0

    .line 566
    .local v5, temp:Ljava/util/prefs/AbstractPreferences;
    if-eqz v1, :cond_27

    .line 567
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    array-length v6, v4

    if-ge v2, v6, :cond_27

    .line 568
    aget-object v3, v4, v2

    .line 569
    .local v3, name:Ljava/lang/String;
    iget-object v7, v1, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v7

    .line 570
    :try_start_13
    iget-object v6, v1, Ljava/util/prefs/AbstractPreferences;->cachedNode:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/util/prefs/AbstractPreferences;

    move-object v5, v0

    .line 571
    if-nez v5, :cond_23

    .line 572
    invoke-direct {p0, p2, v1, v3}, Ljava/util/prefs/AbstractPreferences;->getNodeFromBackend(ZLjava/util/prefs/AbstractPreferences;Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;

    move-result-object v5

    .line 574
    :cond_23
    monitor-exit v7

    .line 575
    move-object v1, v5

    .line 576
    if-nez v1, :cond_2b

    .line 581
    .end local v2           #i:I
    .end local v3           #name:Ljava/lang/String;
    :cond_27
    return-object v1

    .line 574
    .restart local v2       #i:I
    .restart local v3       #name:Ljava/lang/String;
    :catchall_28
    move-exception v6

    monitor-exit v7
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_28

    throw v6

    .line 567
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_b
.end method

.method private notifyChildAdded(Ljava/util/prefs/Preferences;)V
    .registers 5
    .parameter "child"

    .prologue
    .line 803
    new-instance v0, Ljava/util/prefs/AbstractPreferences$NodeAddEvent;

    invoke-direct {v0, p0, p1}, Ljava/util/prefs/AbstractPreferences$NodeAddEvent;-><init>(Ljava/util/prefs/Preferences;Ljava/util/prefs/Preferences;)V

    .line 804
    .local v0, nce:Ljava/util/prefs/NodeChangeEvent;
    sget-object v1, Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;

    monitor-enter v1

    .line 805
    :try_start_8
    sget-object v2, Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 806
    sget-object v2, Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 807
    monitor-exit v1

    .line 808
    return-void

    .line 807
    :catchall_14
    move-exception v2

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw v2
.end method

.method private notifyChildRemoved(Ljava/util/prefs/Preferences;)V
    .registers 5
    .parameter "child"

    .prologue
    .line 811
    new-instance v0, Ljava/util/prefs/AbstractPreferences$NodeRemoveEvent;

    invoke-direct {v0, p0, p1}, Ljava/util/prefs/AbstractPreferences$NodeRemoveEvent;-><init>(Ljava/util/prefs/Preferences;Ljava/util/prefs/Preferences;)V

    .line 812
    .local v0, nce:Ljava/util/prefs/NodeChangeEvent;
    sget-object v1, Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;

    monitor-enter v1

    .line 813
    :try_start_8
    sget-object v2, Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 814
    sget-object v2, Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 815
    monitor-exit v1

    .line 816
    return-void

    .line 815
    :catchall_14
    move-exception v2

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw v2
.end method

.method private notifyPreferenceChange(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "key"
    .parameter "newValue"

    .prologue
    .line 819
    new-instance v0, Ljava/util/prefs/PreferenceChangeEvent;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/prefs/PreferenceChangeEvent;-><init>(Ljava/util/prefs/Preferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    .local v0, pce:Ljava/util/prefs/PreferenceChangeEvent;
    sget-object v1, Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;

    monitor-enter v1

    .line 821
    :try_start_8
    sget-object v2, Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 822
    sget-object v2, Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 823
    monitor-exit v1

    .line 824
    return-void

    .line 823
    :catchall_14
    move-exception v2

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw v2
.end method

.method private removeNodeImpl()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 716
    iget-object v8, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v8

    .line 717
    :try_start_3
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    .line 718
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->childrenNamesSpi()[Ljava/lang/String;

    move-result-object v3

    .line 719
    .local v3, childrenNames:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_b
    array-length v9, v3

    if-ge v4, v9, :cond_28

    .line 720
    iget-object v9, p0, Ljava/util/prefs/AbstractPreferences;->cachedNode:Ljava/util/Map;

    aget-object v10, v3, v4

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_25

    .line 721
    aget-object v9, v3, v4

    invoke-virtual {p0, v9}, Ljava/util/prefs/AbstractPreferences;->childSpi(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;

    move-result-object v1

    .line 722
    .local v1, child:Ljava/util/prefs/AbstractPreferences;
    iget-object v9, p0, Ljava/util/prefs/AbstractPreferences;->cachedNode:Ljava/util/Map;

    aget-object v10, v3, v4

    invoke-interface {v9, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    .end local v1           #child:Ljava/util/prefs/AbstractPreferences;
    :cond_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 726
    :cond_28
    iget-object v9, p0, Ljava/util/prefs/AbstractPreferences;->cachedNode:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    .line 727
    .local v7, values:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/prefs/AbstractPreferences;>;"
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v9

    new-array v9, v9, [Ljava/util/prefs/AbstractPreferences;

    invoke-interface {v7, v9}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/util/prefs/AbstractPreferences;

    .line 728
    .local v2, children:[Ljava/util/prefs/AbstractPreferences;
    move-object v0, v2

    .local v0, arr$:[Ljava/util/prefs/AbstractPreferences;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_3d
    if-ge v5, v6, :cond_47

    aget-object v1, v0, v5

    .line 729
    .restart local v1       #child:Ljava/util/prefs/AbstractPreferences;
    invoke-direct {v1}, Ljava/util/prefs/AbstractPreferences;->removeNodeImpl()V

    .line 728
    add-int/lit8 v5, v5, 0x1

    goto :goto_3d

    .line 731
    .end local v1           #child:Ljava/util/prefs/AbstractPreferences;
    :cond_47
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->removeNodeSpi()V

    .line 732
    const/4 v9, 0x1

    iput-boolean v9, p0, Ljava/util/prefs/AbstractPreferences;->isRemoved:Z

    .line 733
    iget-object v9, p0, Ljava/util/prefs/AbstractPreferences;->parentPref:Ljava/util/prefs/AbstractPreferences;

    iget-object v9, v9, Ljava/util/prefs/AbstractPreferences;->cachedNode:Ljava/util/Map;

    iget-object v10, p0, Ljava/util/prefs/AbstractPreferences;->nodeName:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    monitor-exit v8
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_67

    .line 735
    iget-object v8, p0, Ljava/util/prefs/AbstractPreferences;->parentPref:Ljava/util/prefs/AbstractPreferences;

    iget-object v8, v8, Ljava/util/prefs/AbstractPreferences;->nodeChangeListeners:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_66

    .line 736
    iget-object v8, p0, Ljava/util/prefs/AbstractPreferences;->parentPref:Ljava/util/prefs/AbstractPreferences;

    invoke-direct {v8, p0}, Ljava/util/prefs/AbstractPreferences;->notifyChildRemoved(Ljava/util/prefs/Preferences;)V

    .line 738
    :cond_66
    return-void

    .line 734
    .end local v0           #arr$:[Ljava/util/prefs/AbstractPreferences;
    .end local v2           #children:[Ljava/util/prefs/AbstractPreferences;
    .end local v3           #childrenNames:[Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #values:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/prefs/AbstractPreferences;>;"
    :catchall_67
    move-exception v9

    :try_start_68
    monitor-exit v8
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    throw v9
.end method

.method private validateName(Ljava/lang/String;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 553
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_17

    .line 554
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name cannot end with \'/\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 556
    :cond_17
    const-string v0, "//"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_27

    .line 557
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name cannot contain consecutive \'/\' characters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    :cond_27
    return-void
.end method


# virtual methods
.method public absolutePath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 343
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->parentPref:Ljava/util/prefs/AbstractPreferences;

    if-nez v0, :cond_7

    .line 344
    const-string v0, "/"

    .line 348
    :goto_6
    return-object v0

    .line 345
    :cond_7
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->parentPref:Ljava/util/prefs/AbstractPreferences;

    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    if-ne v0, v1, :cond_23

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->nodeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 348
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->parentPref:Ljava/util/prefs/AbstractPreferences;

    invoke-virtual {v1}, Ljava/util/prefs/AbstractPreferences;->absolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->nodeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public addNodeChangeListener(Ljava/util/prefs/NodeChangeListener;)V
    .registers 4
    .parameter "ncl"

    .prologue
    .line 742
    if-nez p1, :cond_8

    .line 743
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 745
    :cond_8
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    .line 746
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->nodeChangeListeners:Ljava/util/List;

    monitor-enter v0

    .line 747
    :try_start_e
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->nodeChangeListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 748
    monitor-exit v0

    .line 749
    return-void

    .line 748
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_15

    throw v1
.end method

.method public addPreferenceChangeListener(Ljava/util/prefs/PreferenceChangeListener;)V
    .registers 4
    .parameter "pcl"

    .prologue
    .line 753
    if-nez p1, :cond_8

    .line 754
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 756
    :cond_8
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    .line 757
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->preferenceChangeListeners:Ljava/util/List;

    monitor-enter v0

    .line 758
    :try_start_e
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->preferenceChangeListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 759
    monitor-exit v0

    .line 760
    return-void

    .line 759
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_15

    throw v1
.end method

.method protected final cachedChildren()[Ljava/util/prefs/AbstractPreferences;
    .registers 3

    .prologue
    .line 172
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->cachedNode:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->cachedNode:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/prefs/AbstractPreferences;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/util/prefs/AbstractPreferences;

    return-object p0
.end method

.method protected abstract childSpi(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;
.end method

.method public childrenNames()[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 353
    iget-object v3, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 354
    :try_start_3
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    .line 355
    new-instance v2, Ljava/util/TreeSet;

    iget-object v4, p0, Ljava/util/prefs/AbstractPreferences;->cachedNode:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 356
    .local v2, result:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->childrenNamesSpi()[Ljava/lang/String;

    move-result-object v1

    .line 357
    .local v1, names:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    array-length v4, v1

    if-ge v0, v4, :cond_21

    .line 358
    aget-object v4, v1, v0

    invoke-virtual {v2, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 357
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 360
    :cond_21
    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/TreeSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    monitor-exit v3

    return-object p0

    .line 361
    .end local v0           #i:I
    .end local v1           #names:[Ljava/lang/String;
    .end local v2           #result:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/String;>;"
    :catchall_2f
    move-exception v4

    monitor-exit v3
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v4
.end method

.method protected abstract childrenNamesSpi()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public clear()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 366
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 367
    :try_start_3
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->keys()[Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, keyList:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    array-length v3, v1

    if-ge v0, v3, :cond_13

    .line 369
    aget-object v3, v1, v0

    invoke-virtual {p0, v3}, Ljava/util/prefs/AbstractPreferences;->remove(Ljava/lang/String;)V

    .line 368
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 371
    :cond_13
    monitor-exit v2

    .line 372
    return-void

    .line 371
    .end local v0           #i:I
    .end local v1           #keyList:[Ljava/lang/String;
    :catchall_15
    move-exception v3

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v3
.end method

.method public exportNode(Ljava/io/OutputStream;)V
    .registers 4
    .parameter "ostream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 376
    if-nez p1, :cond_a

    .line 377
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Stream is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_a
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    .line 380
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/util/prefs/XMLParser;->exportPrefs(Ljava/util/prefs/Preferences;Ljava/io/OutputStream;Z)V

    .line 381
    return-void
.end method

.method public exportSubtree(Ljava/io/OutputStream;)V
    .registers 4
    .parameter "ostream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 385
    if-nez p1, :cond_a

    .line 386
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Stream is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :cond_a
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    .line 389
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Ljava/util/prefs/XMLParser;->exportPrefs(Ljava/util/prefs/Preferences;Ljava/io/OutputStream;Z)V

    .line 390
    return-void
.end method

.method public flush()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 394
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 395
    :try_start_3
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->flushSpi()V

    .line 396
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_17

    .line 397
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->cachedChildren()[Ljava/util/prefs/AbstractPreferences;

    move-result-object v0

    .line 399
    .local v0, cc:[Ljava/util/prefs/AbstractPreferences;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    array-length v2, v0

    if-ge v1, v2, :cond_1a

    .line 400
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/util/prefs/AbstractPreferences;->flush()V

    .line 399
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 396
    .end local v0           #cc:[Ljava/util/prefs/AbstractPreferences;
    .end local v1           #i:I
    :catchall_17
    move-exception v3

    :try_start_18
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v3

    .line 402
    .restart local v0       #cc:[Ljava/util/prefs/AbstractPreferences;
    .restart local v1       #i:I
    :cond_1a
    return-void
.end method

.method protected abstract flushSpi()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "key"
    .parameter "deflt"

    .prologue
    .line 406
    if-nez p1, :cond_8

    .line 407
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 409
    :cond_8
    const/4 v0, 0x0

    .line 410
    .local v0, result:Ljava/lang/String;
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 411
    :try_start_c
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_18

    .line 413
    :try_start_f
    invoke-virtual {p0, p1}, Ljava/util/prefs/AbstractPreferences;->getSpi(Ljava/lang/String;)Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_18
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_1d

    move-result-object v0

    .line 417
    :goto_13
    :try_start_13
    monitor-exit v1

    .line 418
    if-nez v0, :cond_1b

    move-object v1, p2

    :goto_17
    return-object v1

    .line 417
    :catchall_18
    move-exception v2

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_18

    throw v2

    :cond_1b
    move-object v1, v0

    .line 418
    goto :goto_17

    .line 414
    :catch_1d
    move-exception v2

    goto :goto_13
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 5
    .parameter "key"
    .parameter "deflt"

    .prologue
    .line 423
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_9

    move v1, p2

    .line 432
    :goto_8
    return v1

    .line 427
    :cond_9
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 428
    const/4 v1, 0x1

    goto :goto_8

    .line 429
    :cond_13
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 430
    const/4 v1, 0x0

    goto :goto_8

    :cond_1d
    move v1, p2

    .line 432
    goto :goto_8
.end method

.method public getByteArray(Ljava/lang/String;[B)[B
    .registers 7
    .parameter "key"
    .parameter "deflt"

    .prologue
    .line 438
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 439
    .local v2, svalue:Ljava/lang/String;
    if-nez v2, :cond_9

    move-object v3, p2

    .line 452
    :goto_8
    return-object v3

    .line 442
    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_12

    .line 443
    sget-object v3, Llibcore/util/EmptyArray;->BYTE:[B

    goto :goto_8

    .line 446
    :cond_12
    :try_start_12
    sget-object v3, Ljava/nio/charset/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 447
    .local v0, bavalue:[B
    array-length v3, v0

    rem-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1f

    move-object v3, p2

    .line 448
    goto :goto_8

    .line 450
    :cond_1f
    invoke-static {v0}, Lorg/apache/harmony/luni/util/Base64;->decode([B)[B
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_22} :catch_24

    move-result-object v3

    goto :goto_8

    .line 451
    .end local v0           #bavalue:[B
    :catch_24
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/lang/Exception;
    move-object v3, p2

    .line 452
    goto :goto_8
.end method

.method protected getChild(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;
    .registers 7
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v3, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 193
    :try_start_3
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    .line 194
    const/4 v2, 0x0

    .line 195
    .local v2, result:Ljava/util/prefs/AbstractPreferences;
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->childrenNames()[Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, childrenNames:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    array-length v4, v0

    if-ge v1, v4, :cond_1b

    .line 197
    aget-object v4, v0, v1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 198
    invoke-virtual {p0, p1}, Ljava/util/prefs/AbstractPreferences;->childSpi(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;

    move-result-object v2

    .line 202
    :cond_1b
    monitor-exit v3

    return-object v2

    .line 196
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 203
    .end local v0           #childrenNames:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #result:Ljava/util/prefs/AbstractPreferences;
    :catchall_20
    move-exception v4

    monitor-exit v3
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v4
.end method

.method public getDouble(Ljava/lang/String;D)D
    .registers 8
    .parameter "key"
    .parameter "deflt"

    .prologue
    .line 458
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 459
    .local v1, result:Ljava/lang/String;
    if-nez v1, :cond_9

    move-wide v2, p2

    .line 465
    :goto_8
    return-wide v2

    .line 463
    :cond_9
    :try_start_9
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_c} :catch_e

    move-result-wide v2

    goto :goto_8

    .line 464
    :catch_e
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    move-wide v2, p2

    .line 465
    goto :goto_8
.end method

.method public getFloat(Ljava/lang/String;F)F
    .registers 6
    .parameter "key"
    .parameter "deflt"

    .prologue
    .line 471
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 472
    .local v1, result:Ljava/lang/String;
    if-nez v1, :cond_9

    move v2, p2

    .line 478
    :goto_8
    return v2

    .line 476
    :cond_9
    :try_start_9
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_c} :catch_e

    move-result v2

    goto :goto_8

    .line 477
    :catch_e
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    move v2, p2

    .line 478
    goto :goto_8
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 6
    .parameter "key"
    .parameter "deflt"

    .prologue
    .line 484
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 485
    .local v1, result:Ljava/lang/String;
    if-nez v1, :cond_9

    move v2, p2

    .line 491
    :goto_8
    return v2

    .line 489
    :cond_9
    :try_start_9
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_c} :catch_e

    move-result v2

    goto :goto_8

    .line 490
    :catch_e
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    move v2, p2

    .line 491
    goto :goto_8
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 8
    .parameter "key"
    .parameter "deflt"

    .prologue
    .line 497
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 498
    .local v1, result:Ljava/lang/String;
    if-nez v1, :cond_9

    move-wide v2, p2

    .line 504
    :goto_8
    return-wide v2

    .line 502
    :cond_9
    :try_start_9
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_c} :catch_e

    move-result-wide v2

    goto :goto_8

    .line 503
    :catch_e
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    move-wide v2, p2

    .line 504
    goto :goto_8
.end method

.method protected abstract getSpi(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected isRemoved()Z
    .registers 3

    .prologue
    .line 215
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_3
    iget-boolean v1, p0, Ljava/util/prefs/AbstractPreferences;->isRemoved:Z

    monitor-exit v0

    return v1

    .line 217
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isUserNode()Z
    .registers 3

    .prologue
    .line 510
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    invoke-static {}, Ljava/util/prefs/Preferences;->userRoot()Ljava/util/prefs/Preferences;

    move-result-object v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public keys()[Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 515
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 516
    :try_start_3
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    .line 517
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->keysSpi()[Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 518
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method protected abstract keysSpi()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public name()Ljava/lang/String;
    .registers 2

    .prologue
    .line 523
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->nodeName:Ljava/lang/String;

    return-object v0
.end method

.method public node(Ljava/lang/String;)Ljava/util/prefs/Preferences;
    .registers 6
    .parameter "name"

    .prologue
    .line 528
    const/4 v1, 0x0

    .line 529
    .local v1, startNode:Ljava/util/prefs/AbstractPreferences;
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 530
    :try_start_4
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    .line 531
    invoke-direct {p0, p1}, Ljava/util/prefs/AbstractPreferences;->validateName(Ljava/lang/String;)V

    .line 532
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 533
    monitor-exit v2

    move-object v2, p0

    .line 548
    :goto_12
    return-object v2

    .line 534
    :cond_13
    const-string v3, "/"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 535
    iget-object v3, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    monitor-exit v2

    move-object v2, v3

    goto :goto_12

    .line 537
    :cond_20
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 538
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    .line 539
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 543
    :goto_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_38

    .line 545
    const/4 v2, 0x1

    :try_start_31
    invoke-direct {v1, p1, v2}, Ljava/util/prefs/AbstractPreferences;->nodeImpl(Ljava/lang/String;Z)Ljava/util/prefs/AbstractPreferences;
    :try_end_34
    .catch Ljava/util/prefs/BackingStoreException; {:try_start_31 .. :try_end_34} :catch_3b

    move-result-object v2

    goto :goto_12

    .line 541
    :cond_36
    move-object v1, p0

    goto :goto_2f

    .line 543
    :catchall_38
    move-exception v3

    :try_start_39
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v3

    .line 546
    :catch_3b
    move-exception v0

    .line 548
    .local v0, e:Ljava/util/prefs/BackingStoreException;
    const/4 v2, 0x0

    goto :goto_12
.end method

.method public nodeExists(Ljava/lang/String;)Z
    .registers 9
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 604
    if-nez p1, :cond_a

    .line 605
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 607
    :cond_a
    const/4 v2, 0x0

    .line 608
    .local v2, startNode:Ljava/util/prefs/AbstractPreferences;
    iget-object v3, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 609
    :try_start_e
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->isRemoved()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 610
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 611
    monitor-exit v3

    move v3, v5

    .line 630
    :goto_1c
    return v3

    .line 613
    :cond_1d
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "This node has been removed"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 625
    :catchall_25
    move-exception v4

    monitor-exit v3
    :try_end_27
    .catchall {:try_start_e .. :try_end_27} :catchall_25

    throw v4

    .line 615
    :cond_28
    :try_start_28
    invoke-direct {p0, p1}, Ljava/util/prefs/AbstractPreferences;->validateName(Ljava/lang/String;)V

    .line 616
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_39

    const-string v4, "/"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 617
    :cond_39
    monitor-exit v3

    move v3, v6

    goto :goto_1c

    .line 619
    :cond_3c
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 620
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    .line 621
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 625
    :goto_4b
    monitor-exit v3
    :try_end_4c
    .catchall {:try_start_28 .. :try_end_4c} :catchall_25

    .line 627
    const/4 v3, 0x0

    :try_start_4d
    invoke-direct {v2, p1, v3}, Ljava/util/prefs/AbstractPreferences;->nodeImpl(Ljava/lang/String;Z)Ljava/util/prefs/AbstractPreferences;
    :try_end_50
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4d .. :try_end_50} :catch_59

    move-result-object v1

    .line 628
    .local v1, result:Ljava/util/prefs/Preferences;
    if-eqz v1, :cond_57

    move v3, v6

    goto :goto_1c

    .line 623
    .end local v1           #result:Ljava/util/prefs/Preferences;
    :cond_55
    move-object v2, p0

    goto :goto_4b

    .restart local v1       #result:Ljava/util/prefs/Preferences;
    :cond_57
    move v3, v5

    .line 628
    goto :goto_1c

    .line 629
    .end local v1           #result:Ljava/util/prefs/Preferences;
    :catch_59
    move-exception v0

    .local v0, e:Ljava/lang/IllegalArgumentException;
    move v3, v5

    .line 630
    goto :goto_1c
.end method

.method public parent()Ljava/util/prefs/Preferences;
    .registers 2

    .prologue
    .line 636
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    .line 637
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->parentPref:Ljava/util/prefs/AbstractPreferences;

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 648
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    .line 649
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 651
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x50

    if-gt v0, v1, :cond_1a

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2000

    if-le v0, v1, :cond_20

    .line 652
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 654
    :cond_20
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 655
    :try_start_23
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    .line 656
    invoke-virtual {p0, p1, p2}, Ljava/util/prefs/AbstractPreferences;->putSpi(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_2e

    .line 658
    invoke-direct {p0, p1, p2}, Ljava/util/prefs/AbstractPreferences;->notifyPreferenceChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    return-void

    .line 657
    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 663
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 664
    .local v0, sval:Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    return-void
.end method

.method public putByteArray(Ljava/lang/String;[B)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 669
    sget-object v0, Ljava/nio/charset/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-static {p2, v0}, Lorg/apache/harmony/luni/util/Base64;->encode([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    return-void
.end method

.method public putDouble(Ljava/lang/String;D)V
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 674
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    .line 675
    .local v0, sval:Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 680
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    .line 681
    .local v0, sval:Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 686
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 687
    .local v0, sval:Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 692
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 693
    .local v0, sval:Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    return-void
.end method

.method protected abstract putSpi(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public remove(Ljava/lang/String;)V
    .registers 4
    .parameter "key"

    .prologue
    .line 698
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 699
    :try_start_3
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    .line 700
    invoke-virtual {p0, p1}, Ljava/util/prefs/AbstractPreferences;->removeSpi(Ljava/lang/String;)V

    .line 701
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_f

    .line 702
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->notifyPreferenceChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    return-void

    .line 701
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public removeNode()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 707
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    if-ne v0, p0, :cond_c

    .line 708
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot remove root node"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 710
    :cond_c
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->parentPref:Ljava/util/prefs/AbstractPreferences;

    iget-object v0, v0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 711
    :try_start_11
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->removeNodeImpl()V

    .line 712
    monitor-exit v0

    .line 713
    return-void

    .line 712
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public removeNodeChangeListener(Ljava/util/prefs/NodeChangeListener;)V
    .registers 5
    .parameter "ncl"

    .prologue
    .line 764
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    .line 765
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->nodeChangeListeners:Ljava/util/List;

    monitor-enter v1

    .line 767
    :try_start_6
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->nodeChangeListeners:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .local v0, pos:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_18

    .line 768
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 771
    .end local v0           #pos:I
    :catchall_15
    move-exception v2

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw v2

    .line 770
    .restart local v0       #pos:I
    :cond_18
    :try_start_18
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->nodeChangeListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 771
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_15

    .line 772
    return-void
.end method

.method protected abstract removeNodeSpi()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public removePreferenceChangeListener(Ljava/util/prefs/PreferenceChangeListener;)V
    .registers 5
    .parameter "pcl"

    .prologue
    .line 776
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    .line 777
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->preferenceChangeListeners:Ljava/util/List;

    monitor-enter v1

    .line 779
    :try_start_6
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->preferenceChangeListeners:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .local v0, pos:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_18

    .line 780
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 783
    .end local v0           #pos:I
    :catchall_15
    move-exception v2

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw v2

    .line 782
    .restart local v0       #pos:I
    :cond_18
    :try_start_18
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->preferenceChangeListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 783
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_15

    .line 784
    return-void
.end method

.method protected abstract removeSpi(Ljava/lang/String;)V
.end method

.method public sync()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 788
    iget-object v4, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 789
    :try_start_3
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    .line 790
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->syncSpi()V

    .line 791
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1a

    .line 792
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->cachedChildren()[Ljava/util/prefs/AbstractPreferences;

    move-result-object v0

    .local v0, arr$:[Ljava/util/prefs/AbstractPreferences;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_10
    if-ge v2, v3, :cond_1d

    aget-object v1, v0, v2

    .line 793
    .local v1, child:Ljava/util/prefs/AbstractPreferences;
    invoke-virtual {v1}, Ljava/util/prefs/AbstractPreferences;->sync()V

    .line 792
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 791
    .end local v0           #arr$:[Ljava/util/prefs/AbstractPreferences;
    .end local v1           #child:Ljava/util/prefs/AbstractPreferences;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :catchall_1a
    move-exception v5

    :try_start_1b
    monitor-exit v4
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v5

    .line 795
    .restart local v0       #arr$:[Ljava/util/prefs/AbstractPreferences;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    :cond_1d
    return-void
.end method

.method protected abstract syncSpi()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->isUserNode()Z

    move-result v1

    if-eqz v1, :cond_24

    const-string v1, "User"

    :goto_d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Preference Node: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->absolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_24
    const-string v1, "System"

    goto :goto_d
.end method
