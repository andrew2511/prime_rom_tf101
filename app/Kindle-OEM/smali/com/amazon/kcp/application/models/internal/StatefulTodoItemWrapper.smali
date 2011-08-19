.class public Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;
.super Ljava/lang/Object;
.source "StatefulTodoItemWrapper.java"

# interfaces
.implements Lcom/amazon/foundation/IStatusTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;,
        Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;,
        Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;
    }
.end annotation


# instance fields
.field private completionStatus:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;

.field private final delegates:Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;

.field private error:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;

.field private isFromRemoteQueue:Z

.field private state:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

.field private substate:Ljava/lang/String;

.field private todoItem:Lcom/amazon/kcp/application/models/internal/TodoItem;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/models/internal/TodoItem;Z)V
    .locals 1
    .parameter "item"
    .parameter "isFromRemoteQueue"

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    sget-object v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;->COMPLETED:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->completionStatus:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;

    .line 155
    sget-object v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;->NO_STATE:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->state:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

    .line 159
    sget-object v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;->NO_ERROR:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->error:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;

    .line 161
    new-instance v0, Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->delegates:Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;

    .line 169
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->todoItem:Lcom/amazon/kcp/application/models/internal/TodoItem;

    .line 170
    iput-boolean p2, p0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->isFromRemoteQueue:Z

    .line 171
    return-void
.end method


# virtual methods
.method public getCompletionStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->completionStatus:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->error:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;

    return-object v0
.end method

.method public getState()Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->state:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

    return-object v0
.end method

.method public getSubstate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->substate:Ljava/lang/String;

    return-object v0
.end method

.method public getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->todoItem:Lcom/amazon/kcp/application/models/internal/TodoItem;

    return-object v0
.end method

.method public needsRemoteRemoval()Z
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->todoItem:Lcom/amazon/kcp/application/models/internal/TodoItem;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getAction()Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->GET:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->todoItem:Lcom/amazon/kcp/application/models/internal/TodoItem;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getType()Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->NAME_UPDATE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->todoItem:Lcom/amazon/kcp/application/models/internal/TodoItem;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Deregister"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    const/4 v0, 0x0

    .line 234
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->isFromRemoteQueue:Z

    goto :goto_0
.end method

.method public registerStatusTracker(Lcom/amazon/foundation/IStatusTracker;)V
    .locals 1
    .parameter "statusTracker"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->delegates:Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;

    invoke-virtual {v0, p1}, Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;->registerDelegate(Lcom/amazon/foundation/IStatusTracker;)V

    .line 309
    return-void
.end method

.method public reportCurrentProgress(J)V
    .locals 1
    .parameter "progress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->delegates:Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;->reportCurrentProgress(J)V

    .line 244
    return-void
.end method

.method public reportState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "state"
    .parameter "substate"

    .prologue
    .line 251
    sget-object v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;->SERVER_ERROR:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Server Error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;->FAILED:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->completionStatus:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;

    .line 254
    sget-object v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;->SERVER_ERROR:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->error:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;

    .line 255
    iput-object p2, p0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->substate:Ljava/lang/String;

    .line 281
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->delegates:Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void

    .line 257
    :cond_2
    sget-object v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;->FILE_SYSTEM_FULL:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 259
    sget-object v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;->FAILED:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->completionStatus:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;

    .line 260
    sget-object v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;->FILE_SYSTEM_FULL:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->error:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;

    .line 261
    iput-object p2, p0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->substate:Ljava/lang/String;

    goto :goto_0

    .line 263
    :cond_3
    sget-object v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;->CDE_ERROR:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 265
    sget-object v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;->FAILED:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->completionStatus:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;

    .line 266
    sget-object v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;->CDE_ERROR:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->error:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;

    .line 267
    iput-object p2, p0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->substate:Ljava/lang/String;

    goto :goto_0

    .line 269
    :cond_4
    sget-object v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;->UNRECOGNIZED_ERROR:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 271
    sget-object v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;->UNRECOGNIZED:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->completionStatus:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;

    .line 272
    sget-object v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;->UNRECOGNIZED_ERROR:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->error:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;

    .line 273
    iput-object p2, p0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->substate:Ljava/lang/String;

    goto :goto_0

    .line 275
    :cond_5
    sget-object v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;->CANCELLED:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    sget-object v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;->CANCELLED:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->completionStatus:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;

    .line 278
    iput-object p2, p0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->substate:Ljava/lang/String;

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->delegates:Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;->reset()V

    .line 298
    return-void
.end method

.method public setMaxProgress(J)V
    .locals 1
    .parameter "max"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->delegates:Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;->setMaxProgress(J)V

    .line 290
    return-void
.end method

.method public setState(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 202
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->state:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

    .line 203
    return-void
.end method
