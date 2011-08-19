.class public interface abstract Lcom/mobipocket/common/library/historizer/HistoryManager;
.super Ljava/lang/Object;
.source "HistoryManager.java"


# virtual methods
.method public abstract addHistoryState()V
.end method

.method public abstract addListener(Lcom/mobipocket/common/library/historizer/EventListener;)V
.end method

.method public abstract back()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/historizer/RestoreStateException;
        }
    .end annotation
.end method

.method public abstract clean()V
.end method

.method public abstract forward()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/historizer/RestoreStateException;
        }
    .end annotation
.end method

.method public abstract hasBack()Z
.end method

.method public abstract hasForward()Z
.end method

.method public abstract removeHistoryState()V
.end method

.method public abstract removeListener(Lcom/mobipocket/common/library/historizer/EventListener;)V
.end method
