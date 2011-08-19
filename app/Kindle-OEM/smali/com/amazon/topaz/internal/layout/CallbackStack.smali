.class final Lcom/amazon/topaz/internal/layout/CallbackStack;
.super Ljava/lang/Object;
.source "CallbackStack.java"


# instance fields
.field private cachedAllActiveCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation
.end field

.field private final callbackLists:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazon/topaz/Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private topBlock:Lcom/amazon/topaz/internal/layout/Block;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/CallbackStack;->callbackLists:Ljava/util/Stack;

    .line 36
    return-void
.end method

.method private currentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/topaz/Callback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/CallbackStack;->callbackLists:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public endBlock(Lcom/amazon/topaz/internal/layout/Block;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/CallbackStack;->topBlock:Lcom/amazon/topaz/internal/layout/Block;

    if-eq v0, p1, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/CallbackStack;->callbackLists:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 61
    iget-object v0, p1, Lcom/amazon/topaz/internal/layout/Block;->parent:Lcom/amazon/topaz/internal/layout/Block;

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/CallbackStack;->topBlock:Lcom/amazon/topaz/internal/layout/Block;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/CallbackStack;->cachedAllActiveCallbacks:Ljava/util/List;

    .line 63
    return-void
.end method

.method public endCallback()Lcom/amazon/topaz/Callback;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Lcom/amazon/topaz/internal/layout/CallbackStack;->currentList()Ljava/util/List;

    move-result-object v0

    .line 88
    .local v0, callbacks:Ljava/util/List;,"Ljava/util/List<Lcom/amazon/topaz/Callback;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 89
    .local v1, numCallbacks:I
    if-lez v1, :cond_0

    .line 91
    iput-object v2, p0, Lcom/amazon/topaz/internal/layout/CallbackStack;->cachedAllActiveCallbacks:Ljava/util/List;

    .line 92
    const/4 v2, 0x1

    sub-int v2, v1, v2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/topaz/Callback;

    move-object v2, p0

    .line 96
    :cond_0
    return-object v2
.end method

.method public getAllActiveCallbacks()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/topaz/Callback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/CallbackStack;->cachedAllActiveCallbacks:Ljava/util/List;

    if-nez v0, :cond_1

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/CallbackStack;->callbackLists:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/CallbackStack;->callbackLists:Ljava/util/Stack;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 112
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 109
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 115
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/CallbackStack;->cachedAllActiveCallbacks:Ljava/util/List;

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/CallbackStack;->cachedAllActiveCallbacks:Ljava/util/List;

    return-object v0
.end method

.method public startBlock(Lcom/amazon/topaz/internal/layout/Block;)V
    .locals 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/CallbackStack;->callbackLists:Ljava/util/Stack;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iput-object p1, p0, Lcom/amazon/topaz/internal/layout/CallbackStack;->topBlock:Lcom/amazon/topaz/internal/layout/Block;

    .line 47
    return-void
.end method

.method public startCallback(Lcom/amazon/topaz/Callback;)V
    .locals 1
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/amazon/topaz/internal/layout/CallbackStack;->currentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/CallbackStack;->cachedAllActiveCallbacks:Ljava/util/List;

    .line 78
    return-void
.end method
