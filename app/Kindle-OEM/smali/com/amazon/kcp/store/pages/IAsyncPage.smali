.class public interface abstract Lcom/amazon/kcp/store/pages/IAsyncPage;
.super Ljava/lang/Object;
.source "IAsyncPage.java"

# interfaces
.implements Lcom/amazon/kcp/application/IBasePage;


# virtual methods
.method public abstract getUpdateModelEvent()Lcom/amazon/foundation/IEventProvider;
.end method

.method public abstract getUpdateModelFailedEvent()Lcom/amazon/foundation/IEventProvider;
.end method

.method public abstract getUpdateModelFinishedEvent()Lcom/amazon/foundation/IEventProvider;
.end method
