.class public interface abstract Lcom/amazon/kcp/application/internal/ILocalTodoManager;
.super Ljava/lang/Object;
.source "ILocalTodoManager.java"


# static fields
.field public static final SYNC_ERROR:I = 0x0

.field public static final SYNC_SUCCESS:I = 0x1


# virtual methods
.method public abstract addItemToDownload(Ljava/lang/String;Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)V
.end method

.method public abstract cancelAllItems()V
.end method

.method public abstract clearLookingForList()V
.end method

.method public abstract execute(Lcom/amazon/foundation/IStatusTracker;)V
.end method

.method public abstract getItemAddedEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;
.end method

.method public abstract getItemErrorEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;
.end method

.method public abstract getItemProcessedEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;
.end method

.method public abstract getItemProcessingEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;
.end method

.method public abstract getMinTodoItemRequestIntervalMinutes()I
.end method

.method public abstract getQueueSize()I
.end method

.method public abstract getSyncFinishedEvent()Lcom/amazon/foundation/IIntEventProvider;
.end method

.method public abstract getTodoItem(Lcom/amazon/kcp/application/models/internal/TodoItem;)Lcom/amazon/kcp/application/models/internal/TodoItem;
.end method

.method public abstract isContentInQueue(Ljava/lang/String;Lcom/amazon/kcp/application/models/internal/TodoItem$Action;Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)Z
.end method

.method public abstract isItemInQueue(Lcom/amazon/kcp/application/models/internal/TodoItem;)Z
.end method

.method public abstract removeItemFromTodoIfExists(Ljava/lang/String;Lcom/amazon/kcp/application/models/internal/TodoItem$Action;Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)Z
.end method

.method public abstract setMinTodoItemRequestInterval(I)V
.end method

.method public abstract stopAllItems()V
.end method

.method public abstract syncWithRemoteTodo(ZILcom/amazon/foundation/IStatusTracker;)V
.end method

.method public abstract syncWithRemoteTodoLookingForContent(Ljava/lang/String;Lcom/amazon/kcp/application/models/internal/TodoItem$Action;Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)V
.end method
