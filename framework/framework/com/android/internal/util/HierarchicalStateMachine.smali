.class public Lcom/android/internal/util/HierarchicalStateMachine;
.super Ljava/lang/Object;
.source "HierarchicalStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/HierarchicalStateMachine$1;,
        Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;
    }
.end annotation


# static fields
.field public static final HANDLED:Z = true

.field public static final HSM_INIT_CMD:I = -0x1

.field public static final HSM_QUIT_CMD:I = -0x1

.field public static final NOT_HANDLED:Z = false

.field private static final TAG:Ljava/lang/String; = "HierarchicalStateMachine"


# instance fields
.field private mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

.field private mHsmThread:Landroid/os/HandlerThread;

.field private mName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 992
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 993
    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmThread:Landroid/os/HandlerThread;

    .line 994
    iget-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 995
    iget-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 997
    .local v0, looper:Landroid/os/Looper;
    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/HierarchicalStateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    .line 998
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/os/Looper;)V
    .registers 3
    .parameter "name"
    .parameter "looper"

    .prologue
    .line 1005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1006
    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/HierarchicalStateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    .line 1007
    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/util/HierarchicalStateMachine;)Landroid/os/HandlerThread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method private initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V
    .registers 5
    .parameter "name"
    .parameter "looper"

    .prologue
    .line 983
    iput-object p1, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mName:Ljava/lang/String;

    .line 984
    new-instance v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p0, v1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;-><init>(Landroid/os/Looper;Lcom/android/internal/util/HierarchicalStateMachine;Lcom/android/internal/util/HierarchicalStateMachine$1;)V

    iput-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    .line 985
    return-void
.end method


# virtual methods
.method protected final addState(Lcom/android/internal/util/HierarchicalState;)V
    .registers 4
    .parameter "state"

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    const/4 v1, 0x0

    #calls: Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    invoke-static {v0, p1, v1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$600(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    .line 1038
    return-void
.end method

.method protected final addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V
    .registers 4
    .parameter "state"
    .parameter "parent"

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    #calls: Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    invoke-static {v0, p1, p2}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$600(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    .line 1016
    return-void
.end method

.method protected final deferMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    #calls: Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$1200(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Landroid/os/Message;)V

    .line 1084
    return-void
.end method

.method protected final getCurrentMessage()Landroid/os/Message;
    .registers 2

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    #calls: Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$700(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method protected final getCurrentState()Lcom/android/internal/util/HierarchicalState;
    .registers 2

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    #calls: Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->getCurrentState()Lcom/android/internal/util/HierarchicalState;
    invoke-static {v0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$800(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)Lcom/android/internal/util/HierarchicalState;

    move-result-object v0

    return-object v0
.end method

.method public final getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final getProcessedMessage(I)Lcom/android/internal/util/ProcessedMessages$Info;
    .registers 3
    .parameter "index"

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    #calls: Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->getProcessedMessage(I)Lcom/android/internal/util/ProcessedMessages$Info;
    invoke-static {v0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$1600(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;I)Lcom/android/internal/util/ProcessedMessages$Info;

    move-result-object v0

    return-object v0
.end method

.method public final getProcessedMessagesCount()I
    .registers 2

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    #calls: Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->getProcessedMessagesCount()I
    invoke-static {v0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$1500(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)I

    move-result v0

    return v0
.end method

.method public final getProcessedMessagesSize()I
    .registers 2

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    #calls: Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->getProcessedMessagesSize()I
    invoke-static {v0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$1400(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)I

    move-result v0

    return v0
.end method

.method protected haltedProcessMessage(Landroid/os/Message;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 1103
    return-void
.end method

.method protected halting()V
    .registers 1

    .prologue
    .line 1111
    return-void
.end method

.method public isDbg()Z
    .registers 2

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    #calls: Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->isDbg()Z
    invoke-static {v0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$1900(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)Z

    move-result v0

    return v0
.end method

.method protected final isQuit(Landroid/os/Message;)Z
    .registers 3
    .parameter "msg"

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    #calls: Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->isQuit(Landroid/os/Message;)Z
    invoke-static {v0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$1800(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public final obtainMessage()Landroid/os/Message;
    .registers 2

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(I)Landroid/os/Message;
    .registers 3
    .parameter "what"

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(III)Landroid/os/Message;
    .registers 5
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-static {v0, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
    .registers 6
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .registers 4
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final quit()V
    .registers 2

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    #calls: Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->quit()V
    invoke-static {v0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$1700(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)V

    .line 1310
    return-void
.end method

.method protected quitting()V
    .registers 1

    .prologue
    .line 1118
    return-void
.end method

.method protected final removeMessages(I)V
    .registers 3
    .parameter "what"

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->removeMessages(I)V

    .line 1298
    return-void
.end method

.method public final sendMessage(I)V
    .registers 4
    .parameter "what"

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/HierarchicalStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1231
    return-void
.end method

.method public final sendMessage(ILjava/lang/Object;)V
    .registers 5
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/HierarchicalStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1238
    return-void
.end method

.method public final sendMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1245
    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(I)V
    .registers 4
    .parameter "what"

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/HierarchicalStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1282
    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    .registers 5
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/HierarchicalStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1274
    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1290
    return-void
.end method

.method public final sendMessageDelayed(IJ)V
    .registers 6
    .parameter "what"
    .parameter "delayMillis"

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/HierarchicalStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1252
    return-void
.end method

.method public final sendMessageDelayed(ILjava/lang/Object;J)V
    .registers 7
    .parameter "what"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/HierarchicalStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1259
    return-void
.end method

.method public final sendMessageDelayed(Landroid/os/Message;J)V
    .registers 5
    .parameter "msg"
    .parameter "delayMillis"

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1266
    return-void
.end method

.method public setDbg(Z)V
    .registers 3
    .parameter "dbg"

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    #calls: Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->setDbg(Z)V
    invoke-static {v0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$2000(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Z)V

    .line 1333
    return-void
.end method

.method protected final setInitialState(Lcom/android/internal/util/HierarchicalState;)V
    .registers 3
    .parameter "initialState"

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    #calls: Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->setInitialState(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$900(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Lcom/android/internal/util/HierarchicalState;)V

    .line 1048
    return-void
.end method

.method public final setProcessedMessagesSize(I)V
    .registers 3
    .parameter "maxSize"

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    #calls: Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->setProcessedMessagesSize(I)V
    invoke-static {v0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$1300(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;I)V

    .line 1134
    return-void
.end method

.method public start()V
    .registers 2

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    #calls: Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->completeConstruction()V
    invoke-static {v0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$2100(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)V

    .line 1341
    return-void
.end method

.method protected final transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    .registers 3
    .parameter "destState"

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    #calls: Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$1000(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Lcom/android/internal/util/HierarchicalState;)V

    .line 1060
    return-void
.end method

.method protected final transitionToHaltingState()V
    .registers 3

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    iget-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    #getter for: Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mHaltingState:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$HaltingState;
    invoke-static {v1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$1100(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$HaltingState;

    move-result-object v1

    #calls: Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v0, v1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$1000(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Lcom/android/internal/util/HierarchicalState;)V

    .line 1071
    return-void
.end method

.method protected unhandledMessage(Landroid/os/Message;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 1096
    return-void
.end method
