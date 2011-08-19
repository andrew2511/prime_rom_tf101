.class public abstract Ljava/nio/channels/spi/AbstractSelectableChannel;
.super Ljava/nio/channels/SelectableChannel;
.source "AbstractSelectableChannel.java"


# instance fields
.field private final blockingLock:Ljava/lang/Object;

.field isBlocking:Z

.field private keyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field

.field private final provider:Ljava/nio/channels/spi/SelectorProvider;


# direct methods
.method protected constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .registers 3
    .parameter "selectorProvider"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/nio/channels/SelectableChannel;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyList:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->blockingLock:Ljava/lang/Object;

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->isBlocking:Z

    .line 57
    iput-object p1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->provider:Ljava/nio/channels/spi/SelectorProvider;

    .line 58
    return-void
.end method

.method private declared-synchronized containsValidKeys()Z
    .registers 4

    .prologue
    .line 281
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    :try_start_2
    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_20

    .line 282
    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 283
    .local v1, key:Ljava/nio/channels/SelectionKey;
    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isValid()Z
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_22

    move-result v2

    if-eqz v2, :cond_1d

    .line 284
    const/4 v2, 0x1

    .line 287
    .end local v1           #key:Ljava/nio/channels/SelectionKey;
    :goto_1b
    monitor-exit p0

    return v2

    .line 281
    .restart local v1       #key:Ljava/nio/channels/SelectionKey;
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 287
    .end local v1           #key:Ljava/nio/channels/SelectionKey;
    :cond_20
    const/4 v2, 0x0

    goto :goto_1b

    .line 281
    :catchall_22
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public final blockingLock()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->blockingLock:Ljava/lang/Object;

    return-object v0
.end method

.method public final configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    .registers 4
    .parameter "blockingMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 240
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->blockingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_9
    iget-boolean v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->isBlocking:Z

    if-ne v1, p1, :cond_f

    .line 242
    monitor-exit v0

    .line 250
    :goto_e
    return-object p0

    .line 244
    :cond_f
    if-eqz p1, :cond_20

    invoke-direct {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->containsValidKeys()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 245
    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v1

    .line 249
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_1d

    throw v1

    .line 247
    :cond_20
    :try_start_20
    invoke-virtual {p0, p1}, Ljava/nio/channels/spi/AbstractSelectableChannel;->implConfigureBlocking(Z)V

    .line 248
    iput-boolean p1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->isBlocking:Z

    .line 249
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_1d

    goto :goto_e

    .line 252
    :cond_27
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
.end method

.method declared-synchronized deregister(Ljava/nio/channels/SelectionKey;)V
    .registers 3
    .parameter "k"

    .prologue
    .line 271
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyList:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 272
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 274
    :cond_a
    monitor-exit p0

    return-void

    .line 271
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized implCloseChannel()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->implCloseSelectableChannel()V

    .line 177
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 178
    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 179
    .local v1, key:Ljava/nio/channels/SelectionKey;
    if-eqz v1, :cond_1a

    .line 180
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1f

    .line 177
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 183
    .end local v1           #key:Ljava/nio/channels/SelectionKey;
    :cond_1d
    monitor-exit p0

    return-void

    .line 176
    .end local v0           #i:I
    :catchall_1f
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected abstract implCloseSelectableChannel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract implConfigureBlocking(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final isBlocking()Z
    .registers 3

    .prologue
    .line 202
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->blockingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 203
    :try_start_3
    iget-boolean v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->isBlocking:Z

    monitor-exit v0

    return v1

    .line 204
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final declared-synchronized isRegistered()Z
    .registers 2

    .prologue
    .line 79
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;
    .registers 5
    .parameter "selector"

    .prologue
    .line 92
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    :try_start_2
    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_20

    .line 93
    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 94
    .local v1, key:Ljava/nio/channels/SelectionKey;
    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->selector()Ljava/nio/channels/Selector;
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_22

    move-result-object v2

    if-ne v2, p1, :cond_1d

    move-object v2, v1

    .line 98
    .end local v1           #key:Ljava/nio/channels/SelectionKey;
    :goto_1b
    monitor-exit p0

    return-object v2

    .line 92
    .restart local v1       #key:Ljava/nio/channels/SelectionKey;
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 98
    .end local v1           #key:Ljava/nio/channels/SelectionKey;
    :cond_20
    const/4 v2, 0x0

    goto :goto_1b

    .line 92
    :catchall_22
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final provider()Ljava/nio/channels/spi/SelectorProvider;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->provider:Ljava/nio/channels/spi/SelectorProvider;

    return-object v0
.end method

.method public final register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    .registers 7
    .parameter "selector"
    .parameter "interestSet"
    .parameter "attachment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_c

    .line 132
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v1

    .line 134
    :cond_c
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->validOps()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p2

    if-eqz v1, :cond_1b

    .line 135
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 138
    :cond_1b
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->blockingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 139
    :try_start_1e
    iget-boolean v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->isBlocking:Z

    if-eqz v2, :cond_2b

    .line 140
    new-instance v2, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v2}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v2

    .line 162
    .end local p1
    :catchall_28
    move-exception v2

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_1e .. :try_end_2a} :catchall_28

    throw v2

    .line 142
    .restart local p1
    :cond_2b
    :try_start_2b
    invoke-virtual {p1}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v2

    if-nez v2, :cond_3f

    .line 143
    if-nez p2, :cond_39

    .line 145
    new-instance v2, Ljava/nio/channels/IllegalSelectorException;

    invoke-direct {v2}, Ljava/nio/channels/IllegalSelectorException;-><init>()V

    throw v2

    .line 148
    :cond_39
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 150
    :cond_3f
    invoke-virtual {p0, p1}, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 151
    .local v0, key:Ljava/nio/channels/SelectionKey;
    if-nez v0, :cond_52

    .line 152
    check-cast p1, Ljava/nio/channels/spi/AbstractSelector;

    .end local p1
    invoke-virtual {p1, p0, p2, p3}, Ljava/nio/channels/spi/AbstractSelector;->register(Ljava/nio/channels/spi/AbstractSelectableChannel;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 153
    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    :goto_50
    monitor-exit v1

    return-object v0

    .line 155
    .restart local p1
    :cond_52
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v2

    if-nez v2, :cond_5e

    .line 156
    new-instance v2, Ljava/nio/channels/CancelledKeyException;

    invoke-direct {v2}, Ljava/nio/channels/CancelledKeyException;-><init>()V

    throw v2

    .line 158
    :cond_5e
    invoke-virtual {v0, p2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 159
    invoke-virtual {v0, p3}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_64
    .catchall {:try_start_2b .. :try_end_64} :catchall_28

    goto :goto_50
.end method
