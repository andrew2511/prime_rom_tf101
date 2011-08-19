.class public Lcom/layar/core/animation/AnimationsContainer;
.super Ljava/lang/Object;
.source "AnimationsContainer.java"

# interfaces
.implements Lcom/layar/core/animation/AnimationEventType;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private active:[Z

.field private animations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/core/animation/Animation;",
            ">;>;"
        }
    .end annotation
.end field

.field private playing:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/core/animation/Animation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/layar/core/animation/AnimationsContainer;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/core/animation/AnimationsContainer;->TAG:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/layar/core/animation/AnimationsContainer;->animations:Ljava/util/HashMap;

    .line 21
    iget-object v0, p0, Lcom/layar/core/animation/AnimationsContainer;->animations:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lcom/layar/core/animation/AnimationsContainer;->animations:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lcom/layar/core/animation/AnimationsContainer;->animations:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lcom/layar/core/animation/AnimationsContainer;->animations:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lcom/layar/core/animation/AnimationsContainer;->animations:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const/4 v0, 0x5

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/layar/core/animation/AnimationsContainer;->active:[Z

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/layar/core/animation/AnimationsContainer;->playing:Ljava/util/ArrayList;

    .line 28
    return-void
.end method

.method public static parseAnimations(Lorg/json/JSONObject;)Lcom/layar/core/animation/AnimationsContainer;
    .locals 3
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 141
    new-instance v0, Lcom/layar/core/animation/AnimationsContainer;

    invoke-direct {v0}, Lcom/layar/core/animation/AnimationsContainer;-><init>()V

    .line 142
    .local v0, container:Lcom/layar/core/animation/AnimationsContainer;
    if-eqz p0, :cond_0

    .line 143
    const-string v1, "onCreate"

    invoke-static {p0, v1}, Lcom/layar/core/animation/AnimationParser;->getAnimations(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/layar/core/animation/AnimationsContainer;->addAll(Ljava/util/ArrayList;I)V

    .line 144
    const-string v1, "onUpdate"

    invoke-static {p0, v1}, Lcom/layar/core/animation/AnimationParser;->getAnimations(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/layar/core/animation/AnimationsContainer;->addAll(Ljava/util/ArrayList;I)V

    .line 145
    const-string v1, "onClick"

    invoke-static {p0, v1}, Lcom/layar/core/animation/AnimationParser;->getAnimations(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/layar/core/animation/AnimationsContainer;->addAll(Ljava/util/ArrayList;I)V

    .line 146
    const-string v1, "onFocus"

    invoke-static {p0, v1}, Lcom/layar/core/animation/AnimationParser;->getAnimations(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/layar/core/animation/AnimationsContainer;->addAll(Ljava/util/ArrayList;I)V

    .line 147
    const-string v1, "onDelete"

    invoke-static {p0, v1}, Lcom/layar/core/animation/AnimationParser;->getAnimations(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/layar/core/animation/AnimationsContainer;->addAll(Ljava/util/ArrayList;I)V

    .line 149
    :cond_0
    return-object v0
.end method


# virtual methods
.method public add(Lcom/layar/core/animation/Animation;I)V
    .locals 2
    .parameter "anim"
    .parameter "state"

    .prologue
    .line 31
    if-eqz p1, :cond_0

    .line 32
    iget-object v0, p0, Lcom/layar/core/animation/AnimationsContainer;->animations:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_0
    return-void
.end method

.method public addAll(Ljava/util/ArrayList;I)V
    .locals 2
    .parameter
    .parameter "state"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/core/animation/Animation;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, anims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/core/animation/Animation;>;"
    if-eqz p1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/layar/core/animation/AnimationsContainer;->animations:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 38
    :cond_0
    return-void
.end method

.method public checkForDelete()Z
    .locals 5

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 99
    iget-object v2, p0, Lcom/layar/core/animation/AnimationsContainer;->active:[Z

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_2

    .line 100
    const/4 v1, 0x1

    .line 101
    .local v1, result:Z
    iget-object v2, p0, Lcom/layar/core/animation/AnimationsContainer;->animations:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    move v2, v1

    .line 106
    .end local v1           #result:Z
    :goto_1
    return v2

    .line 101
    .restart local v1       #result:Z
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/core/animation/Animation;

    .line 102
    .local v0, anim:Lcom/layar/core/animation/Animation;
    invoke-virtual {v0}, Lcom/layar/core/animation/Animation;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_2
    and-int/2addr v1, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_2

    .end local v0           #anim:Lcom/layar/core/animation/Animation;
    .end local v1           #result:Z
    .restart local p0
    :cond_2
    move v2, v4

    .line 106
    goto :goto_1
.end method

.method public deleteAll()V
    .locals 3

    .prologue
    .line 117
    iget-object v1, p0, Lcom/layar/core/animation/AnimationsContainer;->animations:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    return-void

    .line 117
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 118
    .local v0, i:Ljava/lang/Integer;
    iget-object v1, p0, Lcom/layar/core/animation/AnimationsContainer;->animations:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public get(I)Ljava/util/ArrayList;
    .locals 2
    .parameter "state"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/core/animation/Animation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/layar/core/animation/AnimationsContainer;->animations:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/layar/core/animation/AnimationsContainer;->animations:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/ArrayList;

    move-object v0, p0

    .line 113
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getActive()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/core/animation/Animation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/layar/core/animation/AnimationsContainer;->playing:Ljava/util/ArrayList;

    return-object v0
.end method

.method public rewrite(Lcom/layar/core/animation/AnimationsContainer;)V
    .locals 9
    .parameter "parent"

    .prologue
    .line 123
    if-nez p1, :cond_0

    .line 138
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v5, p0, Lcom/layar/core/animation/AnimationsContainer;->animations:Ljava/util/HashMap;

    monitor-enter v5

    .line 127
    :try_start_0
    iget-object v6, p0, Lcom/layar/core/animation/AnimationsContainer;->animations:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 126
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 127
    :cond_2
    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 128
    .local v2, i:Ljava/lang/Integer;
    iget-object v7, p1, Lcom/layar/core/animation/AnimationsContainer;->animations:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 129
    .local v4, parentAnimations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/core/animation/Animation;>;"
    iget-object v7, p0, Lcom/layar/core/animation/AnimationsContainer;->animations:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 130
    .local v3, localAnimations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/core/animation/Animation;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 131
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/core/animation/Animation;

    .line 132
    .local v0, anim:Lcom/layar/core/animation/Animation;
    invoke-virtual {v0}, Lcom/layar/core/animation/Animation;->clone()Lcom/layar/core/animation/Animation;

    move-result-object v1

    .line 133
    .local v1, clone:Lcom/layar/core/animation/Animation;
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public startAnimations(I)V
    .locals 4
    .parameter "state"

    .prologue
    .line 61
    iget-object v2, p0, Lcom/layar/core/animation/AnimationsContainer;->active:[Z

    aget-boolean v2, v2, p1

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/layar/core/animation/AnimationsContainer;->active:[Z

    const/4 v3, 0x2

    aget-boolean v2, v2, v3

    if-nez v2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/layar/core/animation/AnimationsContainer;->active:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, p1

    .line 63
    iget-object v2, p0, Lcom/layar/core/animation/AnimationsContainer;->animations:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    iget-object v2, p0, Lcom/layar/core/animation/AnimationsContainer;->animations:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 65
    .local v1, anims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/core/animation/Animation;>;"
    iget-object v2, p0, Lcom/layar/core/animation/AnimationsContainer;->playing:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 66
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 71
    .end local v1           #anims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/core/animation/Animation;>;"
    :cond_0
    return-void

    .line 66
    .restart local v1       #anims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/core/animation/Animation;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/core/animation/Animation;

    .line 67
    .local v0, anim:Lcom/layar/core/animation/Animation;
    invoke-virtual {v0}, Lcom/layar/core/animation/Animation;->start()V

    goto :goto_0
.end method

.method public stopAnimations(I)V
    .locals 4
    .parameter "state"

    .prologue
    .line 77
    iget-object v2, p0, Lcom/layar/core/animation/AnimationsContainer;->active:[Z

    aget-boolean v2, v2, p1

    if-nez v2, :cond_1

    .line 88
    :cond_0
    return-void

    .line 80
    :cond_1
    iget-object v2, p0, Lcom/layar/core/animation/AnimationsContainer;->active:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, p1

    .line 81
    iget-object v2, p0, Lcom/layar/core/animation/AnimationsContainer;->animations:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    iget-object v2, p0, Lcom/layar/core/animation/AnimationsContainer;->animations:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 83
    .local v1, anims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/core/animation/Animation;>;"
    iget-object v2, p0, Lcom/layar/core/animation/AnimationsContainer;->playing:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 84
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/core/animation/Animation;

    .line 85
    .local v0, anim:Lcom/layar/core/animation/Animation;
    invoke-virtual {v0}, Lcom/layar/core/animation/Animation;->stop()V

    goto :goto_0
.end method

.method public updateAnimations(Lcom/layar/core/animation/AnimationsContainer;)V
    .locals 8
    .parameter "anims"

    .prologue
    const/4 v7, 0x1

    .line 41
    invoke-virtual {p1, v7}, Lcom/layar/core/animation/AnimationsContainer;->stopAnimations(I)V

    .line 42
    iget-object v4, p1, Lcom/layar/core/animation/AnimationsContainer;->animations:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 44
    iget-object v4, p0, Lcom/layar/core/animation/AnimationsContainer;->animations:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 54
    iget-object v4, p1, Lcom/layar/core/animation/AnimationsContainer;->active:[Z

    iput-object v4, p0, Lcom/layar/core/animation/AnimationsContainer;->active:[Z

    .line 55
    return-void

    .line 44
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 45
    .local v1, i:Ljava/lang/Integer;
    iget-object v4, p1, Lcom/layar/core/animation/AnimationsContainer;->active:[Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-boolean v4, v4, v6

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/layar/core/animation/AnimationsContainer;->animations:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/layar/core/animation/AnimationsContainer;->animations:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 46
    iget-object v4, p1, Lcom/layar/core/animation/AnimationsContainer;->animations:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/layar/core/animation/Animation;

    iget-wide v2, v4, Lcom/layar/core/animation/Animation;->startTime:J

    .line 47
    .local v2, startTime:J
    iget-object v4, p0, Lcom/layar/core/animation/AnimationsContainer;->animations:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 51
    iget-object v6, p0, Lcom/layar/core/animation/AnimationsContainer;->playing:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/layar/core/animation/AnimationsContainer;->animations:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 47
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/core/animation/Animation;

    .line 48
    .local v0, a:Lcom/layar/core/animation/Animation;
    iput-wide v2, v0, Lcom/layar/core/animation/Animation;->startTime:J

    .line 49
    iput-boolean v7, v0, Lcom/layar/core/animation/Animation;->running:Z

    goto :goto_1
.end method
