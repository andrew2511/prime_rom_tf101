.class public final Lcom/amazon/foundation/internal/TaskManager$TaskControl;
.super Ljava/lang/Object;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/foundation/internal/TaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TaskControl"
.end annotation


# instance fields
.field private flags:I

.field private final name:Ljava/lang/String;

.field private started:Z

.field final synthetic this$0:Lcom/amazon/foundation/internal/TaskManager;


# direct methods
.method private constructor <init>(Lcom/amazon/foundation/internal/TaskManager;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter "name"
    .parameter "flags"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/amazon/foundation/internal/TaskManager$TaskControl;->this$0:Lcom/amazon/foundation/internal/TaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p2, p0, Lcom/amazon/foundation/internal/TaskManager$TaskControl;->name:Ljava/lang/String;

    .line 76
    iput p3, p0, Lcom/amazon/foundation/internal/TaskManager$TaskControl;->flags:I

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/foundation/internal/TaskManager$TaskControl;->started:Z

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/foundation/internal/TaskManager;Ljava/lang/String;ILcom/amazon/foundation/internal/TaskManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/foundation/internal/TaskManager$TaskControl;-><init>(Lcom/amazon/foundation/internal/TaskManager;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public end()V
    .locals 2

    .prologue
    .line 157
    iget v0, p0, Lcom/amazon/foundation/internal/TaskManager$TaskControl;->flags:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/foundation/internal/TaskManager$TaskControl;->started:Z

    if-nez v0, :cond_1

    .line 159
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 162
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TASK MANAGER: Task "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ending."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    iget-object v0, p0, Lcom/amazon/foundation/internal/TaskManager$TaskControl;->this$0:Lcom/amazon/foundation/internal/TaskManager;

    iget v1, p0, Lcom/amazon/foundation/internal/TaskManager$TaskControl;->flags:I

    invoke-static {v0, v1}, Lcom/amazon/foundation/internal/TaskManager;->access$100(Lcom/amazon/foundation/internal/TaskManager;I)V

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TASK MANAGER: Task "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ended."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/foundation/internal/TaskManager$TaskControl;->flags:I

    .line 167
    return-void
.end method

.method public setFlags(I)V
    .locals 2
    .parameter

    .prologue
    .line 109
    iget v0, p0, Lcom/amazon/foundation/internal/TaskManager$TaskControl;->flags:I

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TASK MANAGER: Task "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " flag change to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/amazon/foundation/internal/TaskManager;->taskFlagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requested."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v0, p0, Lcom/amazon/foundation/internal/TaskManager$TaskControl;->this$0:Lcom/amazon/foundation/internal/TaskManager;

    iget v1, p0, Lcom/amazon/foundation/internal/TaskManager$TaskControl;->flags:I

    invoke-static {v0, v1}, Lcom/amazon/foundation/internal/TaskManager;->access$100(Lcom/amazon/foundation/internal/TaskManager;I)V

    .line 118
    iput p1, p0, Lcom/amazon/foundation/internal/TaskManager$TaskControl;->flags:I

    .line 119
    iget-object v0, p0, Lcom/amazon/foundation/internal/TaskManager$TaskControl;->this$0:Lcom/amazon/foundation/internal/TaskManager;

    iget v1, p0, Lcom/amazon/foundation/internal/TaskManager$TaskControl;->flags:I

    invoke-static {v0, v1}, Lcom/amazon/foundation/internal/TaskManager;->access$000(Lcom/amazon/foundation/internal/TaskManager;I)V

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TASK MANAGER: Task "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " flags changed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 87
    iget v0, p0, Lcom/amazon/foundation/internal/TaskManager$TaskControl;->flags:I

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TASK MANAGER: Task "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " start requested."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-object v0, p0, Lcom/amazon/foundation/internal/TaskManager$TaskControl;->this$0:Lcom/amazon/foundation/internal/TaskManager;

    iget v1, p0, Lcom/amazon/foundation/internal/TaskManager$TaskControl;->flags:I

    invoke-static {v0, v1}, Lcom/amazon/foundation/internal/TaskManager;->access$000(Lcom/amazon/foundation/internal/TaskManager;I)V

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/foundation/internal/TaskManager$TaskControl;->started:Z

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TASK MANAGER: Task "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " started."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/foundation/internal/TaskManager$TaskControl;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/amazon/foundation/internal/TaskManager$TaskControl;->flags:I

    invoke-static {v2}, Lcom/amazon/foundation/internal/TaskManager;->taskFlagsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, retval:Ljava/lang/String;
    return-object v0
.end method

.method public yield()V
    .locals 2

    .prologue
    .line 131
    iget v0, p0, Lcom/amazon/foundation/internal/TaskManager$TaskControl;->flags:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/foundation/internal/TaskManager$TaskControl;->started:Z

    if-nez v0, :cond_1

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/amazon/foundation/internal/TaskManager$TaskControl;->this$0:Lcom/amazon/foundation/internal/TaskManager;

    invoke-static {v0}, Lcom/amazon/foundation/internal/TaskManager;->access$200(Lcom/amazon/foundation/internal/TaskManager;)Lcom/amazon/system/Utilities;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/system/Utilities;->isEventThread()Z

    move-result v0

    if-nez v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/amazon/foundation/internal/TaskManager$TaskControl;->this$0:Lcom/amazon/foundation/internal/TaskManager;

    iget v1, p0, Lcom/amazon/foundation/internal/TaskManager$TaskControl;->flags:I

    invoke-static {v0, v1}, Lcom/amazon/foundation/internal/TaskManager;->access$300(Lcom/amazon/foundation/internal/TaskManager;I)Z

    move-result v0

    .line 142
    if-eqz v0, :cond_2

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TASK MANAGER: Task "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " paused by Task Manager."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-object v0, p0, Lcom/amazon/foundation/internal/TaskManager$TaskControl;->this$0:Lcom/amazon/foundation/internal/TaskManager;

    iget v1, p0, Lcom/amazon/foundation/internal/TaskManager$TaskControl;->flags:I

    invoke-static {v0, v1}, Lcom/amazon/foundation/internal/TaskManager;->access$000(Lcom/amazon/foundation/internal/TaskManager;I)V

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TASK MANAGER: Task "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " resumed by Task Manager."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :cond_2
    return-void
.end method
