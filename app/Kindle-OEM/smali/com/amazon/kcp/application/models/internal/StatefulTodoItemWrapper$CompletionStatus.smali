.class public Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;
.super Ljava/lang/Object;
.source "StatefulTodoItemWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompletionStatus"
.end annotation


# static fields
.field public static final CANCELLED:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;

.field public static final COMPLETED:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;

.field public static final FAILED:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;

.field public static final UNRECOGNIZED:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;


# instance fields
.field private s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 120
    new-instance v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;

    const-string v1, "COMPLETED"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;->COMPLETED:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;

    .line 124
    new-instance v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;

    const-string v1, "FAILED"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;->FAILED:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;

    .line 129
    new-instance v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;

    const-string v1, "CANCELLED"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;->CANCELLED:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;

    .line 133
    new-instance v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;

    const-string v1, "UNRECOGNIZED"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;->UNRECOGNIZED:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;->s:Ljava/lang/String;

    .line 138
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;->s:Ljava/lang/String;

    return-object v0
.end method
