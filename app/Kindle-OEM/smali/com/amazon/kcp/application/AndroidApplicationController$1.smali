.class Lcom/amazon/kcp/application/AndroidApplicationController$1;
.super Ljava/lang/Object;
.source "AndroidApplicationController.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/AndroidApplicationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/AndroidApplicationController;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/AndroidApplicationController;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/amazon/kcp/application/AndroidApplicationController$1;->this$0:Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController$1;->this$0:Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getSynchronizationManager()Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->hasPendingSyncs()Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController$1;->this$0:Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getSynchronizationManager()Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->getSyncFinishedEvent()Lcom/amazon/foundation/internal/EventProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/foundation/internal/EventProvider;->isRegistered(Lcom/amazon/foundation/ICallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController$1;->this$0:Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getSynchronizationManager()Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->getSyncFinishedEvent()Lcom/amazon/foundation/internal/EventProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/foundation/internal/EventProvider;->unregister(Lcom/amazon/foundation/ICallback;)Z

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController$1;->this$0:Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationController;->saveApplicationSettings()V

    .line 140
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController$1;->this$0:Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationController;->serializeMetrics()V

    .line 143
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController$1;->this$0:Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-static {v0}, Lcom/amazon/kcp/application/AndroidApplicationController;->access$000(Lcom/amazon/kcp/application/AndroidApplicationController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/redding/CurrentlyReadingWidgetProvider;->asyncUpdateAllWidgets(Landroid/content/Context;)V

    .line 146
    :cond_1
    return-void
.end method
