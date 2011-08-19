.class Ljava/util/prefs/AbstractPreferences$EventDispatcher;
.super Ljava/lang/Thread;
.source "AbstractPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/prefs/AbstractPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventDispatcher"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 828
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 829
    return-void
.end method

.method private dispatchNodeAdd(Ljava/util/prefs/NodeChangeEvent;Ljava/util/List;)V
    .registers 6
    .parameter "event"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/prefs/NodeChangeEvent;",
            "Ljava/util/List",
            "<",
            "Ljava/util/EventListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 892
    .local p2, nodeChangeListeners:Ljava/util/List;,"Ljava/util/List<Ljava/util/EventListener;>;"
    monitor-enter p2

    .line 893
    :try_start_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 894
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/EventListener;>;"
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 895
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/prefs/NodeChangeListener;

    .line 896
    .local v1, ncl:Ljava/util/prefs/NodeChangeListener;
    invoke-interface {v1, p1}, Ljava/util/prefs/NodeChangeListener;->childAdded(Ljava/util/prefs/NodeChangeEvent;)V

    goto :goto_5

    .line 898
    .end local v0           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/EventListener;>;"
    .end local v1           #ncl:Ljava/util/prefs/NodeChangeListener;
    :catchall_15
    move-exception v2

    monitor-exit p2
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v2

    .restart local v0       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/EventListener;>;"
    :cond_18
    :try_start_18
    monitor-exit p2
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_15

    .line 899
    return-void
.end method

.method private dispatchNodeRemove(Ljava/util/prefs/NodeChangeEvent;Ljava/util/List;)V
    .registers 6
    .parameter "event"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/prefs/NodeChangeEvent;",
            "Ljava/util/List",
            "<",
            "Ljava/util/EventListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 881
    .local p2, nodeChangeListeners:Ljava/util/List;,"Ljava/util/List<Ljava/util/EventListener;>;"
    monitor-enter p2

    .line 882
    :try_start_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 883
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/EventListener;>;"
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 884
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/prefs/NodeChangeListener;

    .line 885
    .local v1, ncl:Ljava/util/prefs/NodeChangeListener;
    invoke-interface {v1, p1}, Ljava/util/prefs/NodeChangeListener;->childRemoved(Ljava/util/prefs/NodeChangeEvent;)V

    goto :goto_5

    .line 887
    .end local v0           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/EventListener;>;"
    .end local v1           #ncl:Ljava/util/prefs/NodeChangeListener;
    :catchall_15
    move-exception v2

    monitor-exit p2
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v2

    .restart local v0       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/EventListener;>;"
    :cond_18
    :try_start_18
    monitor-exit p2
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_15

    .line 888
    return-void
.end method

.method private dispatchPrefChange(Ljava/util/prefs/PreferenceChangeEvent;Ljava/util/List;)V
    .registers 6
    .parameter "event"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/prefs/PreferenceChangeEvent;",
            "Ljava/util/List",
            "<",
            "Ljava/util/EventListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 869
    .local p2, preferenceChangeListeners:Ljava/util/List;,"Ljava/util/List<Ljava/util/EventListener;>;"
    monitor-enter p2

    .line 870
    :try_start_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 871
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/EventListener;>;"
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 872
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/prefs/PreferenceChangeListener;

    .line 874
    .local v1, pcl:Ljava/util/prefs/PreferenceChangeListener;
    invoke-interface {v1, p1}, Ljava/util/prefs/PreferenceChangeListener;->preferenceChange(Ljava/util/prefs/PreferenceChangeEvent;)V

    goto :goto_5

    .line 876
    .end local v0           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/EventListener;>;"
    .end local v1           #pcl:Ljava/util/prefs/PreferenceChangeListener;
    :catchall_15
    move-exception v2

    monitor-exit p2
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v2

    .restart local v0       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/EventListener;>;"
    :cond_18
    :try_start_18
    monitor-exit p2
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_15

    .line 877
    return-void
.end method

.method private getEventObject()Ljava/util/EventObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 857
    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->access$200()Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 858
    :try_start_5
    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->access$200()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 859
    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->access$200()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 861
    :cond_16
    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->access$200()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EventObject;

    .line 862
    .local v0, event:Ljava/util/EventObject;
    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->access$200()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 863
    monitor-exit v1

    return-object v0

    .line 864
    .end local v0           #event:Ljava/util/EventObject;
    :catchall_2b
    move-exception v2

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_2b

    throw v2
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 834
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 836
    .local v1, event:Ljava/util/EventObject;
    :try_start_1
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences$EventDispatcher;->getEventObject()Ljava/util/EventObject;
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_19

    move-result-object v1

    .line 841
    invoke-virtual {v1}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/prefs/AbstractPreferences;

    .line 843
    .local v2, pref:Ljava/util/prefs/AbstractPreferences;
    instance-of v3, v1, Ljava/util/prefs/AbstractPreferences$NodeAddEvent;

    if-eqz v3, :cond_1e

    .line 844
    check-cast v1, Ljava/util/prefs/NodeChangeEvent;

    .end local v1           #event:Ljava/util/EventObject;
    #getter for: Ljava/util/prefs/AbstractPreferences;->nodeChangeListeners:Ljava/util/List;
    invoke-static {v2}, Ljava/util/prefs/AbstractPreferences;->access$000(Ljava/util/prefs/AbstractPreferences;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Ljava/util/prefs/AbstractPreferences$EventDispatcher;->dispatchNodeAdd(Ljava/util/prefs/NodeChangeEvent;Ljava/util/List;)V

    goto :goto_0

    .line 837
    .end local v2           #pref:Ljava/util/prefs/AbstractPreferences;
    .restart local v1       #event:Ljava/util/EventObject;
    :catch_19
    move-exception v0

    .line 838
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 846
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v2       #pref:Ljava/util/prefs/AbstractPreferences;
    :cond_1e
    instance-of v3, v1, Ljava/util/prefs/AbstractPreferences$NodeRemoveEvent;

    if-eqz v3, :cond_2c

    .line 847
    check-cast v1, Ljava/util/prefs/NodeChangeEvent;

    .end local v1           #event:Ljava/util/EventObject;
    #getter for: Ljava/util/prefs/AbstractPreferences;->nodeChangeListeners:Ljava/util/List;
    invoke-static {v2}, Ljava/util/prefs/AbstractPreferences;->access$000(Ljava/util/prefs/AbstractPreferences;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Ljava/util/prefs/AbstractPreferences$EventDispatcher;->dispatchNodeRemove(Ljava/util/prefs/NodeChangeEvent;Ljava/util/List;)V

    goto :goto_0

    .line 849
    .restart local v1       #event:Ljava/util/EventObject;
    :cond_2c
    instance-of v3, v1, Ljava/util/prefs/PreferenceChangeEvent;

    if-eqz v3, :cond_0

    .line 850
    check-cast v1, Ljava/util/prefs/PreferenceChangeEvent;

    .end local v1           #event:Ljava/util/EventObject;
    #getter for: Ljava/util/prefs/AbstractPreferences;->preferenceChangeListeners:Ljava/util/List;
    invoke-static {v2}, Ljava/util/prefs/AbstractPreferences;->access$100(Ljava/util/prefs/AbstractPreferences;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Ljava/util/prefs/AbstractPreferences$EventDispatcher;->dispatchPrefChange(Ljava/util/prefs/PreferenceChangeEvent;Ljava/util/List;)V

    goto :goto_0
.end method
