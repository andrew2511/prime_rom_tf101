.class public interface abstract Lcom/amazon/foundation/internal/IAsynchronousCallback;
.super Ljava/lang/Object;
.source "IAsynchronousCallback.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# virtual methods
.method public abstract execute()V
.end method

.method public abstract getKillEvent()Lcom/amazon/foundation/IEventProvider;
.end method

.method public abstract hasError()Z
.end method

.method public abstract kill()V
.end method
