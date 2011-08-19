.class public Lcom/google/android/music/activitymanagement/AppStateStack;
.super Ljava/lang/Object;
.source "AppStateStack.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "AppStateStack"


# instance fields
.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/music/activitymanagement/AppState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "AppStateStack"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/activitymanagement/AppStateStack;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-boolean v0, Lcom/google/android/music/activitymanagement/AppStateStack;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "AppStateStack"

    const-string v1, "New AppStateStack"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/AppStateStack;->mList:Ljava/util/ArrayList;

    .line 28
    return-void
.end method

.method private audit()V
    .locals 8

    .prologue
    .line 129
    sget-boolean v5, Lcom/google/android/music/activitymanagement/AppStateStack;->DBG:Z

    if-eqz v5, :cond_2

    .line 130
    const/4 v1, 0x0

    .line 131
    .local v1, activity3D:Landroid/app/Activity;
    const/4 v3, 0x0

    .line 132
    .local v3, mediaPlayback:Landroid/app/Activity;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Lcom/google/android/music/activitymanagement/AppStateStack;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 133
    iget-object v5, p0, Lcom/google/android/music/activitymanagement/AppStateStack;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/music/activitymanagement/AppState;

    .line 134
    .local v4, state:Lcom/google/android/music/activitymanagement/AppState;
    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/AppState;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 136
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/AppState;->getActivity()Landroid/app/Activity;

    move-result-object v5

    instance-of v5, v5, Lcom/google/android/music/MediaPlaybackActivity;

    if-eqz v5, :cond_1

    .line 138
    if-eqz v3, :cond_0

    if-eq v3, v0, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/AppStateStack;->dump()V

    .line 140
    const-string v5, "AppStateStack"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "activities "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "multiple MediaPlaybackActivities"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 143
    :cond_0
    move-object v3, v0

    .line 132
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #activity3D:Landroid/app/Activity;
    .end local v2           #i:I
    .end local v3           #mediaPlayback:Landroid/app/Activity;
    .end local v4           #state:Lcom/google/android/music/activitymanagement/AppState;
    :cond_2
    return-void
.end method

.method private dump()V
    .locals 4

    .prologue
    .line 115
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/AppStateStack;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 116
    const-string v1, "AppStateStack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/activitymanagement/AppStateStack;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_0
    return-void
.end method


# virtual methods
.method public atTop()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 49
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppStateStack;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppStateStack;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(I)Lcom/google/android/music/activitymanagement/AppState;
    .locals 1
    .parameter "i"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppStateStack;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/activitymanagement/AppState;

    return-object p0
.end method

.method public indexOf(Lcom/google/android/music/activitymanagement/AppState;)I
    .locals 1
    .parameter "state"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppStateStack;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/AppStateStack;->audit()V

    .line 54
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppStateStack;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public last()Lcom/google/android/music/activitymanagement/AppState;
    .locals 2

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/AppStateStack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/AppStateStack;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/AppStateStack;->get(I)Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v0

    goto :goto_0
.end method

.method public push(Lcom/google/android/music/activitymanagement/AppState;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppStateStack;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    sget-boolean v0, Lcom/google/android/music/activitymanagement/AppStateStack;->DBG:Z

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/AppState;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/AppState;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 95
    const-string v0, "AppStateStack"

    const-string v1, "State w/o an activity or an intent"

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    :cond_0
    const-string v0, "AppStateStack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pushed new state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/AppStateStack;->dump()V

    .line 100
    :cond_1
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/AppStateStack;->audit()V

    .line 101
    return-void
.end method

.method public refreshTopLevelActivity(Lcom/google/android/music/activitymanagement/TopLevelActivity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 35
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/AppStateStack;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 36
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/activitymanagement/AppState;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/activitymanagement/AppState;

    .line 38
    .local v1, state:Lcom/google/android/music/activitymanagement/AppState;
    invoke-virtual {v1, p1}, Lcom/google/android/music/activitymanagement/AppState;->refreshTopLevelActivity(Lcom/google/android/music/activitymanagement/TopLevelActivity;)V

    goto :goto_0

    .line 40
    .end local v1           #state:Lcom/google/android/music/activitymanagement/AppState;
    :cond_0
    return-void
.end method

.method public remove(I)V
    .locals 3
    .parameter "i"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/AppStateStack;->audit()V

    .line 75
    sget-boolean v0, Lcom/google/android/music/activitymanagement/AppStateStack;->DBG:Z

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "AppStateStack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/AppStateStack;->dump()V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppStateStack;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 80
    return-void
.end method

.method public remove(Lcom/google/android/music/activitymanagement/AppState;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/AppStateStack;->audit()V

    .line 84
    sget-boolean v0, Lcom/google/android/music/activitymanagement/AppStateStack;->DBG:Z

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "AppStateStack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/AppStateStack;->dump()V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppStateStack;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/AppStateStack;->audit()V

    .line 59
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppStateStack;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
