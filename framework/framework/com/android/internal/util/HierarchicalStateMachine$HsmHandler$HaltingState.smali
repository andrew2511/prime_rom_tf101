.class Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$HaltingState;
.super Lcom/android/internal/util/HierarchicalState;
.source "HierarchicalStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HaltingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;


# direct methods
.method private constructor <init>(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$HaltingState;->this$0:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Lcom/android/internal/util/HierarchicalStateMachine$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 518
    invoke-direct {p0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$HaltingState;-><init>(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .registers 3
    .parameter "msg"

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$HaltingState;->this$0:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    #getter for: Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mHsm:Lcom/android/internal/util/HierarchicalStateMachine;
    invoke-static {v0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$200(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)Lcom/android/internal/util/HierarchicalStateMachine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/util/HierarchicalStateMachine;->haltedProcessMessage(Landroid/os/Message;)V

    .line 522
    const/4 v0, 0x1

    return v0
.end method
