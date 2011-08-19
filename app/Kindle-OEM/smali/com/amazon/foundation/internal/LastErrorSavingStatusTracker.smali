.class public Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;
.super Lcom/amazon/foundation/internal/LastStateSavingStatusTracker;
.source "LastErrorSavingStatusTracker.java"


# static fields
.field private static nonErrorStates:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;->nonErrorStates:Ljava/util/HashSet;

    .line 21
    sget-object v0, Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;->nonErrorStates:Ljava/util/HashSet;

    sget-object v1, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;->CANCELLED:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v0, Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;->nonErrorStates:Ljava/util/HashSet;

    sget-object v1, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;->COMPLETED:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v0, Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;->nonErrorStates:Ljava/util/HashSet;

    sget-object v1, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;->NO_ERROR:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/amazon/foundation/IStatusTracker;)V
    .locals 0
    .parameter "delegate"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/amazon/foundation/internal/LastStateSavingStatusTracker;-><init>(Lcom/amazon/foundation/IStatusTracker;)V

    .line 34
    return-void
.end method


# virtual methods
.method public reportState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "state"
    .parameter "substate"

    .prologue
    .line 46
    sget-object v0, Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;->nonErrorStates:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iput-object p1, p0, Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;->latestState:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;->latestSubstate:Ljava/lang/String;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;->delegate:Lcom/amazon/foundation/IStatusTracker;

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;->delegate:Lcom/amazon/foundation/IStatusTracker;

    invoke-interface {v0, p1, p2}, Lcom/amazon/foundation/IStatusTracker;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_1
    return-void
.end method
