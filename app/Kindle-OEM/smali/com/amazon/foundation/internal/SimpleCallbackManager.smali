.class final Lcom/amazon/foundation/internal/SimpleCallbackManager;
.super Ljava/lang/Object;
.source "SimpleCallbackManager.java"

# interfaces
.implements Lcom/amazon/foundation/internal/CallbackManager;


# instance fields
.field private callbacks:Ljava/util/Vector;

.field private callbacksArray:[Ljava/lang/Object;

.field private notifying:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->callbacks:Ljava/util/Vector;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->notifying:Z

    return-void
.end method

.method private final getRegisteredCallbackIndex(Ljava/lang/Object;)I
    .locals 3
    .parameter "callback"

    .prologue
    .line 175
    if-eqz p1, :cond_1

    .line 177
    iget-object v2, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->callbacks:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    .line 180
    .local v1, numCallbacks:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 182
    iget-object v2, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->callbacks:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    move v2, v0

    .line 189
    .end local v0           #i:I
    .end local v1           #numCallbacks:I
    :goto_1
    return v2

    .line 180
    .restart local v0       #i:I
    .restart local v1       #numCallbacks:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    .end local v0           #i:I
    .end local v1           #numCallbacks:I
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method


# virtual methods
.method public final executeCallbacks(Lcom/amazon/foundation/internal/CallbackManager$ICallbackExecutor;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    iget-boolean v0, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->notifying:Z

    if-eqz v0, :cond_1

    .line 88
    :cond_0
    return-void

    .line 58
    :cond_1
    iput-boolean v4, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->notifying:Z

    .line 60
    iget-object v0, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->callbacks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    move v1, v3

    .line 65
    :goto_0
    if-ge v1, v0, :cond_3

    .line 67
    iget-object v2, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->callbacks:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 71
    if-eqz v2, :cond_2

    .line 73
    invoke-interface {p1, v2}, Lcom/amazon/foundation/internal/CallbackManager$ICallbackExecutor;->executeCallback(Ljava/lang/Object;)V

    .line 65
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    :cond_3
    iput-boolean v3, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->notifying:Z

    .line 81
    sub-int/2addr v0, v4

    :goto_1
    if-ltz v0, :cond_0

    .line 83
    iget-object v1, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->callbacks:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    .line 85
    iget-object v1, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->callbacks:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->removeElementAt(I)V

    .line 81
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public getCallbacksArray()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 156
    iget-object v1, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->callbacksArray:[Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->callbacks:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->callbacksArray:[Ljava/lang/Object;

    .line 160
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->callbacksArray:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->callbacksArray:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->callbacks:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->callbacksArray:[Ljava/lang/Object;

    return-object v1
.end method

.method public final isRegistered(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 26
    if-eqz p1, :cond_1

    .line 28
    invoke-direct {p0, p1}, Lcom/amazon/foundation/internal/SimpleCallbackManager;->getRegisteredCallbackIndex(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 30
    const/4 v0, 0x1

    .line 39
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 34
    goto :goto_0

    :cond_1
    move v0, v2

    .line 39
    goto :goto_0
.end method

.method public final register(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 96
    if-eqz p1, :cond_0

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->callbacksArray:[Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->callbacks:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 100
    const/4 v0, 0x1

    .line 104
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final unregister(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 114
    invoke-direct {p0, p1}, Lcom/amazon/foundation/internal/SimpleCallbackManager;->getRegisteredCallbackIndex(Ljava/lang/Object;)I

    move-result v0

    .line 119
    if-eqz p1, :cond_1

    .line 121
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 123
    iput-object v2, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->callbacksArray:[Ljava/lang/Object;

    .line 129
    iget-boolean v1, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->notifying:Z

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->callbacks:Ljava/util/Vector;

    invoke-virtual {v1, v2, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 136
    :goto_0
    const/4 v0, 0x1

    .line 140
    :goto_1
    return v0

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->callbacks:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_0

    .line 140
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
