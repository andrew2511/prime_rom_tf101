.class Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;
.super Landroid/os/Handler;
.source "HierarchicalStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/HierarchicalStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HsmHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$QuittingState;,
        Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$HaltingState;,
        Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    }
.end annotation


# static fields
.field private static final mInitMsg:Landroid/os/Message;

.field private static final mQuitObj:Ljava/lang/Object;


# instance fields
.field private mDbg:Z

.field private mDeferredMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mDestState:Lcom/android/internal/util/HierarchicalState;

.field private mHaltingState:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$HaltingState;

.field private mHsm:Lcom/android/internal/util/HierarchicalStateMachine;

.field private mInitialState:Lcom/android/internal/util/HierarchicalState;

.field private mIsConstructionCompleted:Z

.field private mMsg:Landroid/os/Message;

.field private mProcessedMessages:Lcom/android/internal/util/ProcessedMessages;

.field private mQuittingState:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$QuittingState;

.field private mStateInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/util/HierarchicalState;",
            "Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

.field private mStateStackTopIndex:I

.field private mTempStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

.field private mTempStateStackCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 442
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mQuitObj:Ljava/lang/Object;

    .line 445
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mInitMsg:Landroid/os/Message;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;Lcom/android/internal/util/HierarchicalStateMachine;)V
    .registers 5
    .parameter "looper"
    .parameter "hsm"

    .prologue
    const/4 v1, 0x0

    .line 900
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 439
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    .line 451
    new-instance v0, Lcom/android/internal/util/ProcessedMessages;

    invoke-direct {v0}, Lcom/android/internal/util/ProcessedMessages;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mProcessedMessages:Lcom/android/internal/util/ProcessedMessages;

    .line 460
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    .line 469
    new-instance v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$HaltingState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$HaltingState;-><init>(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Lcom/android/internal/util/HierarchicalStateMachine$1;)V

    iput-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mHaltingState:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$HaltingState;

    .line 472
    new-instance v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$QuittingState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$QuittingState;-><init>(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Lcom/android/internal/util/HierarchicalStateMachine$1;)V

    iput-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mQuittingState:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$QuittingState;

    .line 503
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateInfo:Ljava/util/HashMap;

    .line 513
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    .line 901
    iput-object p2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mHsm:Lcom/android/internal/util/HierarchicalStateMachine;

    .line 903
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mHaltingState:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$HaltingState;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    .line 904
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mQuittingState:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$QuittingState;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    .line 905
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/android/internal/util/HierarchicalStateMachine;Lcom/android/internal/util/HierarchicalStateMachine$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 436
    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;-><init>(Landroid/os/Looper;Lcom/android/internal/util/HierarchicalStateMachine;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 436
    invoke-direct {p0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$HaltingState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mHaltingState:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$HaltingState;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 436
    invoke-direct {p0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 436
    invoke-direct {p0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->setProcessedMessagesSize(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 436
    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->getProcessedMessagesSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 436
    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->getProcessedMessagesCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;I)Lcom/android/internal/util/ProcessedMessages$Info;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 436
    invoke-direct {p0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->getProcessedMessage(I)Lcom/android/internal/util/ProcessedMessages$Info;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 436
    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->quit()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Landroid/os/Message;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 436
    invoke-direct {p0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->isQuit(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 436
    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->isDbg()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)Lcom/android/internal/util/HierarchicalStateMachine;
    .registers 2
    .parameter "x0"

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mHsm:Lcom/android/internal/util/HierarchicalStateMachine;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 436
    invoke-direct {p0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->setDbg(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 436
    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->completeConstruction()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 436
    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)Landroid/os/Message;
    .registers 2
    .parameter "x0"

    .prologue
    .line 436
    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)Lcom/android/internal/util/HierarchicalState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 436
    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->getCurrentState()Lcom/android/internal/util/HierarchicalState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 436
    invoke-direct {p0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->setInitialState(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method private final addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    .registers 9
    .parameter "state"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 863
    iget-boolean v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v2, :cond_2f

    .line 864
    const-string v2, "HierarchicalStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStateInternal: E state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/util/HierarchicalState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",parent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p2, :cond_65

    const-string v4, ""

    :goto_24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :cond_2f
    const/4 v0, 0x0

    .line 868
    .local v0, parentStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    if-eqz p2, :cond_40

    .line 869
    iget-object v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #parentStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    check-cast v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    .line 870
    .restart local v0       #parentStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    if-nez v0, :cond_40

    .line 872
    invoke-direct {p0, p2, v5}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    move-result-object v0

    .line 875
    :cond_40
    iget-object v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    .line 876
    .local v1, stateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    if-nez v1, :cond_54

    .line 877
    new-instance v1, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    .end local v1           #stateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    invoke-direct {v1, p0, v5}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;-><init>(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Lcom/android/internal/util/HierarchicalStateMachine$1;)V

    .line 878
    .restart local v1       #stateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    iget-object v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    :cond_54
    iget-object v2, v1, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    if-eqz v2, :cond_6a

    iget-object v2, v1, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    if-eq v2, v0, :cond_6a

    .line 884
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "state already added"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 864
    .end local v0           #parentStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    .end local v1           #stateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    :cond_65
    invoke-virtual {p2}, Lcom/android/internal/util/HierarchicalState;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_24

    .line 886
    .restart local v0       #parentStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    .restart local v1       #stateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    :cond_6a
    iput-object p1, v1, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->state:Lcom/android/internal/util/HierarchicalState;

    .line 887
    iput-object v0, v1, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    .line 888
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->active:Z

    .line 889
    iget-boolean v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v2, :cond_8d

    const-string v2, "HierarchicalStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStateInternal: X stateInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :cond_8d
    return-object v1
.end method

.method private final completeConstruction()V
    .registers 9

    .prologue
    .line 636
    iget-boolean v5, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v5, :cond_b

    const-string v5, "HierarchicalStateMachine"

    const-string v6, "completeConstruction: E"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_b
    const/4 v3, 0x0

    .line 643
    .local v3, maxDepth:I
    iget-object v5, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    .line 644
    .local v4, si:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    const/4 v0, 0x0

    .line 645
    .local v0, depth:I
    move-object v1, v4

    .local v1, i:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    :goto_24
    if-eqz v1, :cond_2b

    .line 646
    iget-object v1, v1, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    .line 645
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 648
    :cond_2b
    if-ge v3, v0, :cond_16

    .line 649
    move v3, v0

    goto :goto_16

    .line 652
    .end local v0           #depth:I
    .end local v1           #i:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    .end local v4           #si:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    :cond_2f
    iget-boolean v5, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v5, :cond_4b

    const-string v5, "HierarchicalStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "completeConstruction: maxDepth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_4b
    new-array v5, v3, [Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    iput-object v5, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    .line 655
    new-array v5, v3, [Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    iput-object v5, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mTempStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    .line 656
    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->setupInitialStateStack()V

    .line 662
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mIsConstructionCompleted:Z

    .line 663
    const/4 v5, -0x1

    invoke-virtual {p0, v5}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mMsg:Landroid/os/Message;

    .line 664
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->invokeEnterMethods(I)V

    .line 669
    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->performTransitions()V

    .line 671
    iget-boolean v5, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v5, :cond_72

    const-string v5, "HierarchicalStateMachine"

    const-string v6, "completeConstruction: X"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_72
    return-void
.end method

.method private final deferMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 921
    iget-boolean v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v1, :cond_1e

    const-string v1, "HierarchicalStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deferMessage: msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    :cond_1e
    invoke-virtual {p0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 925
    .local v0, newMsg:Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 927
    iget-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 928
    return-void
.end method

.method private final getCurrentMessage()Landroid/os/Message;
    .registers 2

    .prologue
    .line 843
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mMsg:Landroid/os/Message;

    return-object v0
.end method

.method private final getCurrentState()Lcom/android/internal/util/HierarchicalState;
    .registers 3

    .prologue
    .line 850
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    iget v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->state:Lcom/android/internal/util/HierarchicalState;

    return-object v0
.end method

.method private final getProcessedMessage(I)Lcom/android/internal/util/ProcessedMessages$Info;
    .registers 3
    .parameter "index"

    .prologue
    .line 968
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mProcessedMessages:Lcom/android/internal/util/ProcessedMessages;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/ProcessedMessages;->get(I)Lcom/android/internal/util/ProcessedMessages$Info;

    move-result-object v0

    return-object v0
.end method

.method private final getProcessedMessagesCount()I
    .registers 2

    .prologue
    .line 963
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mProcessedMessages:Lcom/android/internal/util/ProcessedMessages;

    invoke-virtual {v0}, Lcom/android/internal/util/ProcessedMessages;->count()I

    move-result v0

    return v0
.end method

.method private final getProcessedMessagesSize()I
    .registers 2

    .prologue
    .line 958
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mProcessedMessages:Lcom/android/internal/util/ProcessedMessages;

    invoke-virtual {v0}, Lcom/android/internal/util/ProcessedMessages;->size()I

    move-result v0

    return v0
.end method

.method private final invokeEnterMethods(I)V
    .registers 6
    .parameter "stateStackEnteringIndex"

    .prologue
    .line 734
    move v0, p1

    .local v0, i:I
    :goto_1
    iget v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    if-gt v0, v1, :cond_3e

    .line 735
    iget-boolean v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v1, :cond_2b

    const-string v1, "HierarchicalStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeEnterMethods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->state:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {v3}, Lcom/android/internal/util/HierarchicalState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_2b
    iget-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->state:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {v1}, Lcom/android/internal/util/HierarchicalState;->enter()V

    .line 737
    iget-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->active:Z

    .line 734
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 739
    :cond_3e
    return-void
.end method

.method private final invokeExitMethods(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;)V
    .registers 6
    .parameter "commonStateInfo"

    .prologue
    .line 720
    :goto_0
    iget v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    if-ltz v1, :cond_47

    iget-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    iget v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    aget-object v1, v1, v2

    if-eq v1, p1, :cond_47

    .line 722
    iget-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    iget v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    aget-object v1, v1, v2

    iget-object v0, v1, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->state:Lcom/android/internal/util/HierarchicalState;

    .line 723
    .local v0, curState:Lcom/android/internal/util/HierarchicalState;
    iget-boolean v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v1, :cond_34

    const-string v1, "HierarchicalStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeExitMethods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/util/HierarchicalState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :cond_34
    invoke-virtual {v0}, Lcom/android/internal/util/HierarchicalState;->exit()V

    .line 725
    iget-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    iget v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->active:Z

    .line 726
    iget v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    goto :goto_0

    .line 728
    .end local v0           #curState:Lcom/android/internal/util/HierarchicalState;
    :cond_47
    return-void
.end method

.method private final isDbg()Z
    .registers 2

    .prologue
    .line 943
    iget-boolean v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    return v0
.end method

.method private final isQuit(Landroid/os/Message;)Z
    .registers 4
    .parameter "msg"

    .prologue
    .line 938
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mQuitObj:Ljava/lang/Object;

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private final moveDeferredMessageAtFrontOfQueue()V
    .registers 6

    .prologue
    .line 751
    iget-object v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v1, v2, v3

    .local v1, i:I
    :goto_9
    if-ltz v1, :cond_37

    .line 752
    iget-object v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 753
    .local v0, curMsg:Landroid/os/Message;
    iget-boolean v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v2, :cond_31

    const-string v2, "HierarchicalStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveDeferredMessageAtFrontOfQueue; what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_31
    invoke-virtual {p0, v0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 751
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 756
    .end local v0           #curMsg:Landroid/os/Message;
    :cond_37
    iget-object v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 757
    return-void
.end method

.method private final moveTempStateStackToStateStack()I
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 767
    iget v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    add-int/lit8 v2, v3, 0x1

    .line 768
    .local v2, startingIndex:I
    iget v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mTempStateStackCount:I

    sub-int v0, v3, v6

    .line 769
    .local v0, i:I
    move v1, v2

    .line 770
    .local v1, j:I
    :goto_a
    if-ltz v0, :cond_3f

    .line 771
    iget-boolean v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v3, :cond_32

    const-string v3, "HierarchicalStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveTempStackToStateStack: i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",j="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_32
    iget-object v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    iget-object v4, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mTempStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    aget-object v4, v4, v0

    aput-object v4, v3, v1

    .line 773
    add-int/lit8 v1, v1, 0x1

    .line 774
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 777
    :cond_3f
    sub-int v3, v1, v6

    iput v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    .line 778
    iget-boolean v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v3, :cond_81

    .line 779
    const-string v3, "HierarchicalStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveTempStackToStateStack: X mStateStackTop="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",startingIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    iget v6, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->state:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {v5}, Lcom/android/internal/util/HierarchicalState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :cond_81
    return v2
.end method

.method private performTransitions()V
    .registers 6

    .prologue
    .line 576
    const/4 v1, 0x0

    .line 577
    .local v1, destState:Lcom/android/internal/util/HierarchicalState;
    :goto_1
    iget-object v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDestState:Lcom/android/internal/util/HierarchicalState;

    if-eqz v3, :cond_27

    .line 578
    iget-boolean v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v3, :cond_10

    const-string v3, "HierarchicalStateMachine"

    const-string v4, "handleMessage: new destination call exit"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_10
    iget-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDestState:Lcom/android/internal/util/HierarchicalState;

    .line 585
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDestState:Lcom/android/internal/util/HierarchicalState;

    .line 592
    invoke-direct {p0, v1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->setupTempStateStackWithStatesToEnter(Lcom/android/internal/util/HierarchicalState;)Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    move-result-object v0

    .line 593
    .local v0, commonStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    invoke-direct {p0, v0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->invokeExitMethods(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;)V

    .line 594
    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->moveTempStateStackToStateStack()I

    move-result v2

    .line 595
    .local v2, stateStackEnteringIndex:I
    invoke-direct {p0, v2}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->invokeEnterMethods(I)V

    .line 604
    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->moveDeferredMessageAtFrontOfQueue()V

    goto :goto_1

    .line 611
    .end local v0           #commonStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    .end local v2           #stateStackEnteringIndex:I
    :cond_27
    if-eqz v1, :cond_41

    .line 612
    iget-object v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mQuittingState:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$QuittingState;

    if-ne v1, v3, :cond_42

    .line 616
    iget-object v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mHsm:Lcom/android/internal/util/HierarchicalStateMachine;

    invoke-virtual {v3}, Lcom/android/internal/util/HierarchicalStateMachine;->quitting()V

    .line 617
    iget-object v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mHsm:Lcom/android/internal/util/HierarchicalStateMachine;

    #getter for: Lcom/android/internal/util/HierarchicalStateMachine;->mHsmThread:Landroid/os/HandlerThread;
    invoke-static {v3}, Lcom/android/internal/util/HierarchicalStateMachine;->access$300(Lcom/android/internal/util/HierarchicalStateMachine;)Landroid/os/HandlerThread;

    move-result-object v3

    if-eqz v3, :cond_41

    .line 619
    invoke-virtual {p0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    .line 630
    :cond_41
    :goto_41
    return-void

    .line 621
    :cond_42
    iget-object v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mHaltingState:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$HaltingState;

    if-ne v1, v3, :cond_41

    .line 627
    iget-object v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mHsm:Lcom/android/internal/util/HierarchicalStateMachine;

    invoke-virtual {v3}, Lcom/android/internal/util/HierarchicalStateMachine;->halting()V

    goto :goto_41
.end method

.method private final processMsg(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 680
    iget-object v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    iget v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    aget-object v0, v2, v3

    .line 681
    .local v0, curStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    iget-boolean v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v2, :cond_2a

    .line 682
    const-string v2, "HierarchicalStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processMsg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->state:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {v4}, Lcom/android/internal/util/HierarchicalState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :cond_2a
    :goto_2a
    iget-object v2, v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->state:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/HierarchicalState;->processMessage(Landroid/os/Message;)Z

    move-result v2

    if-nez v2, :cond_46

    .line 688
    iget-object v0, v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    .line 689
    if-nez v0, :cond_58

    .line 693
    iget-object v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mHsm:Lcom/android/internal/util/HierarchicalStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/HierarchicalStateMachine;->unhandledMessage(Landroid/os/Message;)V

    .line 694
    invoke-direct {p0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->isQuit(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 695
    iget-object v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mQuittingState:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$QuittingState;

    invoke-direct {p0, v2}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    .line 707
    :cond_46
    if-eqz v0, :cond_7c

    .line 708
    iget-object v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    iget v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    aget-object v2, v2, v3

    iget-object v1, v2, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->state:Lcom/android/internal/util/HierarchicalState;

    .line 709
    .local v1, orgState:Lcom/android/internal/util/HierarchicalState;
    iget-object v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mProcessedMessages:Lcom/android/internal/util/ProcessedMessages;

    iget-object v3, v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->state:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {v2, p1, v3, v1}, Lcom/android/internal/util/ProcessedMessages;->add(Landroid/os/Message;Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    .line 713
    .end local v1           #orgState:Lcom/android/internal/util/HierarchicalState;
    :goto_57
    return-void

    .line 699
    :cond_58
    iget-boolean v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v2, :cond_2a

    .line 700
    const-string v2, "HierarchicalStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processMsg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->state:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {v4}, Lcom/android/internal/util/HierarchicalState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 711
    :cond_7c
    iget-object v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mProcessedMessages:Lcom/android/internal/util/ProcessedMessages;

    invoke-virtual {v2, p1, v5, v5}, Lcom/android/internal/util/ProcessedMessages;->add(Landroid/os/Message;Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_57
.end method

.method private final quit()V
    .registers 3

    .prologue
    .line 932
    iget-boolean v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v0, :cond_c

    const-string v0, "HierarchicalStateMachine"

    const-string/jumbo v1, "quit:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    :cond_c
    const/4 v0, -0x1

    sget-object v1, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mQuitObj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 934
    return-void
.end method

.method private final setDbg(Z)V
    .registers 2
    .parameter "dbg"

    .prologue
    .line 948
    iput-boolean p1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    .line 949
    return-void
.end method

.method private final setInitialState(Lcom/android/internal/util/HierarchicalState;)V
    .registers 5
    .parameter "initialState"

    .prologue
    .line 909
    iget-boolean v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v0, :cond_21

    const-string v0, "HierarchicalStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setInitialState: initialState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/util/HierarchicalState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :cond_21
    iput-object p1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mInitialState:Lcom/android/internal/util/HierarchicalState;

    .line 911
    return-void
.end method

.method private final setProcessedMessagesSize(I)V
    .registers 3
    .parameter "maxSize"

    .prologue
    .line 953
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mProcessedMessages:Lcom/android/internal/util/ProcessedMessages;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/ProcessedMessages;->setSize(I)V

    .line 954
    return-void
.end method

.method private final setupInitialStateStack()V
    .registers 5

    .prologue
    .line 822
    iget-boolean v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v1, :cond_23

    .line 823
    const-string v1, "HierarchicalStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setupInitialStateStack: E mInitialState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mInitialState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {v3}, Lcom/android/internal/util/HierarchicalState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_23
    iget-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateInfo:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mInitialState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    .line 828
    .local v0, curStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mTempStateStackCount:I

    :goto_30
    if-eqz v0, :cond_41

    .line 829
    iget-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mTempStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    iget v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mTempStateStackCount:I

    aput-object v0, v1, v2

    .line 830
    iget-object v0, v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    .line 828
    iget v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mTempStateStackCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mTempStateStackCount:I

    goto :goto_30

    .line 834
    :cond_41
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    .line 836
    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->moveTempStateStackToStateStack()I

    .line 837
    return-void
.end method

.method private final setupTempStateStackWithStatesToEnter(Lcom/android/internal/util/HierarchicalState;)Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    .registers 6
    .parameter "destState"

    .prologue
    .line 804
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mTempStateStackCount:I

    .line 805
    iget-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    .line 807
    .local v0, curStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    :cond_b
    iget-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mTempStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    iget v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mTempStateStackCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mTempStateStackCount:I

    aput-object v0, v1, v2

    .line 808
    iget-object v0, v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    .line 809
    if-eqz v0, :cond_1d

    iget-boolean v1, v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->active:Z

    if-eqz v1, :cond_b

    .line 811
    :cond_1d
    iget-boolean v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v1, :cond_46

    .line 812
    const-string v1, "HierarchicalStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setupTempStateStackWithStatesToEnter: X mTempStateStackCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mTempStateStackCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",curStateInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    :cond_46
    return-object v0
.end method

.method private final transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    .registers 5
    .parameter "destState"

    .prologue
    .line 915
    iget-boolean v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v0, :cond_20

    const-string v0, "HierarchicalStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateMachine.transitionTo EX destState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/util/HierarchicalState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    :cond_20
    iput-object p1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDestState:Lcom/android/internal/util/HierarchicalState;

    .line 917
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 544
    iget-boolean v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v0, :cond_1e

    const-string v0, "HierarchicalStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: E msg.what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_1e
    iput-object p1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mMsg:Landroid/os/Message;

    .line 552
    iget-boolean v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mIsConstructionCompleted:Z

    if-nez v0, :cond_3d

    .line 553
    const-string v0, "HierarchicalStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The start method not called, ignore msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_3c
    :goto_3c
    return-void

    .line 561
    :cond_3d
    invoke-direct {p0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->processMsg(Landroid/os/Message;)V

    .line 562
    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->performTransitions()V

    .line 564
    iget-boolean v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v0, :cond_3c

    const-string v0, "HierarchicalStateMachine"

    const-string v1, "handleMessage: X"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c
.end method
