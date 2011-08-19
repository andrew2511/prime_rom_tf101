.class public interface abstract Lcom/amazon/kcp/application/internal/IUpdateManager;
.super Ljava/lang/Object;
.source "IUpdateManager.java"


# virtual methods
.method public abstract clearSecureStorage()V
.end method

.method public abstract getLatestKnownAppVersion()J
.end method

.method public abstract initialize(Lcom/amazon/kcp/application/ISecureStorage;Lcom/amazon/kcp/application/IKindleApplicationController;)V
.end method

.method public abstract processStartup()V
.end method

.method public abstract processUpdateTodoItem(Lcom/amazon/kcp/application/models/internal/SoftwareUpdateTodoItem;)V
.end method
