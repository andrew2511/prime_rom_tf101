.class public interface abstract Lcom/amazon/kcp/store/models/IAsyncModel;
.super Ljava/lang/Object;
.source "IAsyncModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/store/models/IAsyncModel$State;
    }
.end annotation


# virtual methods
.method public abstract getChangeEvent()Lcom/amazon/foundation/IEventProvider;
.end method

.method public abstract getFinishedEvent()Lcom/amazon/foundation/IEventProvider;
.end method

.method public abstract getState()Lcom/amazon/kcp/store/models/IAsyncModel$State;
.end method

.method public abstract hasResults()Z
.end method
