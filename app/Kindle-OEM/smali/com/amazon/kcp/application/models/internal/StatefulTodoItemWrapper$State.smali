.class public Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;
.super Ljava/lang/Object;
.source "StatefulTodoItemWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# static fields
.field public static final FINISHED_STATE:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

.field public static final NO_STATE:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

.field public static final PROCESSING_STATE:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

.field public static final QUEUED_STATE:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

.field public static final REMOVING_FROM_LOCAL_TODO_STATE:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

.field public static final REMOVING_FROM_TODO_STATE:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;


# instance fields
.field private s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

    const-string v1, "NoState"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;->NO_STATE:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

    .line 31
    new-instance v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

    const-string v1, "QueuedState"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;->QUEUED_STATE:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

    .line 35
    new-instance v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

    const-string v1, "FinishedState"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;->FINISHED_STATE:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

    .line 39
    new-instance v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

    const-string v1, "ProcessingState"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;->PROCESSING_STATE:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

    .line 43
    new-instance v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

    const-string v1, "RemovingFromTodoState"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;->REMOVING_FROM_TODO_STATE:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

    .line 47
    new-instance v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

    const-string v1, "RemovingFromLocalTodoState"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;->REMOVING_FROM_LOCAL_TODO_STATE:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;->s:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;->s:Ljava/lang/String;

    return-object v0
.end method
