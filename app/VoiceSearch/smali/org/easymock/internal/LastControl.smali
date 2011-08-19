.class public Lorg/easymock/internal/LastControl;
.super Ljava/lang/Object;
.source "LastControl.java"


# static fields
.field private static final threadToArgumentMatcherStack:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Stack",
            "<",
            "Lorg/easymock/IArgumentMatcher;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final threadToControl:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/easymock/internal/MocksControl;",
            ">;"
        }
    .end annotation
.end field

.field private static final threadToCurrentArguments:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Stack",
            "<[",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/easymock/internal/LastControl;->threadToControl:Ljava/lang/ThreadLocal;

    .line 17
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/easymock/internal/LastControl;->threadToCurrentArguments:Ljava/lang/ThreadLocal;

    .line 19
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/easymock/internal/LastControl;->threadToArgumentMatcherStack:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static assertState(ZLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 77
    if-nez p0, :cond_0

    .line 78
    sget-object v0, Lorg/easymock/internal/LastControl;->threadToArgumentMatcherStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 79
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    return-void
.end method

.method public static getCurrentArguments()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 90
    sget-object v0, Lorg/easymock/internal/LastControl;->threadToCurrentArguments:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    .line 91
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    :cond_0
    const/4 v0, 0x0

    .line 94
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0
.end method

.method public static declared-synchronized lastControl()Lorg/easymock/internal/MocksControl;
    .locals 2

    .prologue
    .line 30
    const-class v1, Lorg/easymock/internal/LastControl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/easymock/internal/LastControl;->threadToControl:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/easymock/internal/MocksControl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static popCurrentArguments()V
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lorg/easymock/internal/LastControl;->threadToCurrentArguments:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    .line 108
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 109
    return-void
.end method

.method private static popLastArgumentMatchers(I)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lorg/easymock/IArgumentMatcher;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 64
    sget-object v0, Lorg/easymock/internal/LastControl;->threadToArgumentMatcherStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    .line 65
    if-eqz v0, :cond_0

    move v1, v3

    :goto_0
    const-string v2, "no matchers found."

    invoke-static {v1, v2}, Lorg/easymock/internal/LastControl;->assertState(ZLjava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v1

    if-lt v1, p0, :cond_1

    move v1, v3

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " matchers expected, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " recorded."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/easymock/internal/LastControl;->assertState(ZLjava/lang/String;)V

    .line 68
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 69
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v2

    sub-int/2addr v2, p0

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Stack;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v2, v4

    .line 70
    :goto_2
    if-ge v2, p0, :cond_2

    .line 71
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 70
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    move v1, v4

    .line 65
    goto :goto_0

    :cond_1
    move v1, v4

    .line 66
    goto :goto_1

    .line 73
    :cond_2
    return-object v1
.end method

.method public static declared-synchronized pullMatchers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/easymock/IArgumentMatcher;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    const-class v1, Lorg/easymock/internal/LastControl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/easymock/internal/LastControl;->threadToArgumentMatcherStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 48
    :goto_0
    monitor-exit v1

    return-object v0

    .line 47
    :cond_0
    :try_start_1
    sget-object v2, Lorg/easymock/internal/LastControl;->threadToArgumentMatcherStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    .line 48
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static pushCurrentArguments([Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 98
    sget-object v0, Lorg/easymock/internal/LastControl;->threadToCurrentArguments:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    .line 99
    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 101
    sget-object v1, Lorg/easymock/internal/LastControl;->threadToCurrentArguments:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 103
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-void
.end method

.method public static declared-synchronized reportAnd(I)V
    .locals 4
    .parameter

    .prologue
    .line 52
    const-class v1, Lorg/easymock/internal/LastControl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/easymock/internal/LastControl;->threadToArgumentMatcherStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    .line 53
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    const-string v3, "no matchers found."

    invoke-static {v2, v3}, Lorg/easymock/internal/LastControl;->assertState(ZLjava/lang/String;)V

    .line 54
    new-instance v2, Lorg/easymock/internal/matchers/And;

    invoke-static {p0}, Lorg/easymock/internal/LastControl;->popLastArgumentMatchers(I)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/easymock/internal/matchers/And;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit v1

    return-void

    .line 53
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized reportLastControl(Lorg/easymock/internal/MocksControl;)V
    .locals 2
    .parameter

    .prologue
    .line 22
    const-class v0, Lorg/easymock/internal/LastControl;

    monitor-enter v0

    if-eqz p0, :cond_0

    .line 23
    :try_start_0
    sget-object v1, Lorg/easymock/internal/LastControl;->threadToControl:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :goto_0
    monitor-exit v0

    return-void

    .line 25
    :cond_0
    :try_start_1
    sget-object v1, Lorg/easymock/internal/LastControl;->threadToControl:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 22
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized reportMatcher(Lorg/easymock/IArgumentMatcher;)V
    .locals 3
    .parameter

    .prologue
    .line 34
    const-class v1, Lorg/easymock/internal/LastControl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/easymock/internal/LastControl;->threadToArgumentMatcherStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    .line 35
    if-nez v0, :cond_0

    .line 36
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 37
    sget-object v2, Lorg/easymock/internal/LastControl;->threadToArgumentMatcherStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 39
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit v1

    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized reportNot()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 58
    const-class v2, Lorg/easymock/internal/LastControl;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lorg/easymock/internal/LastControl;->threadToArgumentMatcherStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    .line 59
    if-eqz v0, :cond_0

    move v1, v3

    :cond_0
    const-string v3, "no matchers found."

    invoke-static {v1, v3}, Lorg/easymock/internal/LastControl;->assertState(ZLjava/lang/String;)V

    .line 60
    new-instance v3, Lorg/easymock/internal/matchers/Not;

    const/4 v1, 0x1

    invoke-static {v1}, Lorg/easymock/internal/LastControl;->popLastArgumentMatchers(I)Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/easymock/IArgumentMatcher;

    invoke-direct {v3, v1}, Lorg/easymock/internal/matchers/Not;-><init>(Lorg/easymock/IArgumentMatcher;)V

    invoke-virtual {v0, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit v2

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static reportOr(I)V
    .locals 3
    .parameter

    .prologue
    .line 84
    sget-object v0, Lorg/easymock/internal/LastControl;->threadToArgumentMatcherStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    .line 85
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v2, "no matchers found."

    invoke-static {v1, v2}, Lorg/easymock/internal/LastControl;->assertState(ZLjava/lang/String;)V

    .line 86
    new-instance v1, Lorg/easymock/internal/matchers/Or;

    invoke-static {p0}, Lorg/easymock/internal/LastControl;->popLastArgumentMatchers(I)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/easymock/internal/matchers/Or;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void

    .line 85
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
