.class public Lcom/google/android/gm/ViewMode;
.super Ljava/lang/Object;
.source "ViewMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/ViewMode$ModeChangeListener;
    }
.end annotation


# instance fields
.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/ViewMode$ModeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gm/ViewMode;->mMode:I

    .line 22
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ViewMode;->mListeners:Ljava/util/ArrayList;

    .line 72
    return-void
.end method

.method private dispatchModeChange()V
    .locals 4

    .prologue
    .line 100
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/gm/ViewMode;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 101
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/ViewMode$ModeChangeListener;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gm/ViewMode$ModeChangeListener;

    .line 102
    .local v2, listener:Lcom/google/android/gm/ViewMode$ModeChangeListener;
    invoke-interface {v2, p0}, Lcom/google/android/gm/ViewMode$ModeChangeListener;->onViewModeChanged(Lcom/google/android/gm/ViewMode;)V

    goto :goto_0

    .line 104
    .end local v2           #listener:Lcom/google/android/gm/ViewMode$ModeChangeListener;
    :cond_0
    return-void
.end method

.method private setModeInternal(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 45
    iget v0, p0, Lcom/google/android/gm/ViewMode;->mMode:I

    if-ne v0, p1, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 51
    :goto_0
    return v0

    .line 49
    :cond_0
    iput p1, p0, Lcom/google/android/gm/ViewMode;->mMode:I

    .line 50
    invoke-direct {p0}, Lcom/google/android/gm/ViewMode;->dispatchModeChange()V

    .line 51
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/google/android/gm/ViewMode$ModeChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/gm/ViewMode;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/google/android/gm/ViewMode;->mMode:I

    return v0
.end method

.method public isConversationListMode()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 66
    iget v0, p0, Lcom/google/android/gm/ViewMode;->mMode:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConversationMode()Z
    .locals 2

    .prologue
    .line 62
    iget v0, p0, Lcom/google/android/gm/ViewMode;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public transitionToConversationListMode()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gm/ViewMode;->setModeInternal(I)Z

    move-result v0

    return v0
.end method

.method public transitionToConversationMode()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gm/ViewMode;->setModeInternal(I)Z

    move-result v0

    return v0
.end method
