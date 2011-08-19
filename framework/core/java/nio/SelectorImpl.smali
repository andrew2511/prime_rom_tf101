.class final Ljava/nio/SelectorImpl;
.super Ljava/nio/channels/spi/AbstractSelector;
.source "SelectorImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/SelectorImpl$UnaddableSet;
    }
.end annotation


# static fields
.field private static final ACCEPT_OR_READ:I = 0x11

.field private static final CONNECT_OR_WRITE:I = 0xc

.field static final EMPTY_FILE_DESCRIPTORS_ARRAY:[Ljava/io/FileDescriptor; = null

.field private static final EMPTY_SELECTION_KEY_IMPLS_ARRAY:[Ljava/nio/SelectionKeyImpl; = null

.field private static final NA:I = 0x0

.field private static final READABLE:I = 0x1

.field private static final SELECT_BLOCK:I = -0x1

.field private static final SELECT_NOW:I = 0x0

.field private static final WAKEUP_READ_SIZE:I = 0x8

.field private static final WAKEUP_WRITE_SIZE:I = 0x1

.field private static final WRITABLE:I = 0x2


# instance fields
.field private flags:[I

.field final keysLock:Ljava/lang/Object;

.field private final mutableKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/SelectionKeyImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final mutableSelectedKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field

.field private readableFDs:[Ljava/io/FileDescriptor;

.field private readyKeys:[Ljava/nio/SelectionKeyImpl;

.field private final selectedKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field

.field private final unmodifiableKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field

.field private final wakeupPipe:Ljava/nio/channels/Pipe;

.field private writableFDs:[Ljava/io/FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 47
    new-array v0, v1, [Ljava/io/FileDescriptor;

    sput-object v0, Ljava/nio/SelectorImpl;->EMPTY_FILE_DESCRIPTORS_ARRAY:[Ljava/io/FileDescriptor;

    .line 49
    new-array v0, v1, [Ljava/nio/SelectionKeyImpl;

    sput-object v0, Ljava/nio/SelectorImpl;->EMPTY_SELECTION_KEY_IMPLS_ARRAY:[Ljava/nio/SelectionKeyImpl;

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .registers 4
    .parameter "selectorProvider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-direct {p0, p1}, Ljava/nio/channels/spi/AbstractSelector;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/SelectorImpl;->keysLock:Ljava/lang/Object;

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljava/nio/SelectorImpl;->mutableKeys:Ljava/util/Set;

    .line 81
    iget-object v0, p0, Ljava/nio/SelectorImpl;->mutableKeys:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljava/nio/SelectorImpl;->unmodifiableKeys:Ljava/util/Set;

    .line 84
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljava/nio/SelectorImpl;->mutableSelectedKeys:Ljava/util/Set;

    .line 90
    new-instance v0, Ljava/nio/SelectorImpl$UnaddableSet;

    iget-object v1, p0, Ljava/nio/SelectorImpl;->mutableSelectedKeys:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/nio/SelectorImpl$UnaddableSet;-><init>(Ljava/util/Set;)V

    iput-object v0, p0, Ljava/nio/SelectorImpl;->selectedKeys:Ljava/util/Set;

    .line 104
    sget-object v0, Ljava/nio/SelectorImpl;->EMPTY_FILE_DESCRIPTORS_ARRAY:[Ljava/io/FileDescriptor;

    iput-object v0, p0, Ljava/nio/SelectorImpl;->readableFDs:[Ljava/io/FileDescriptor;

    .line 110
    sget-object v0, Ljava/nio/SelectorImpl;->EMPTY_FILE_DESCRIPTORS_ARRAY:[Ljava/io/FileDescriptor;

    iput-object v0, p0, Ljava/nio/SelectorImpl;->writableFDs:[Ljava/io/FileDescriptor;

    .line 117
    sget-object v0, Ljava/nio/SelectorImpl;->EMPTY_SELECTION_KEY_IMPLS_ARRAY:[Ljava/nio/SelectionKeyImpl;

    iput-object v0, p0, Ljava/nio/SelectorImpl;->readyKeys:[Ljava/nio/SelectionKeyImpl;

    .line 124
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Ljava/nio/SelectorImpl;->flags:[I

    .line 128
    invoke-virtual {p1}, Ljava/nio/channels/spi/SelectorProvider;->openPipe()Ljava/nio/channels/Pipe;

    move-result-object v0

    iput-object v0, p0, Ljava/nio/SelectorImpl;->wakeupPipe:Ljava/nio/channels/Pipe;

    .line 129
    iget-object v0, p0, Ljava/nio/SelectorImpl;->wakeupPipe:Ljava/nio/channels/Pipe;

    invoke-virtual {v0}, Ljava/nio/channels/Pipe;->source()Ljava/nio/channels/Pipe$SourceChannel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/Pipe$SourceChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 130
    return-void
.end method

.method private closeCheck()V
    .registers 2

    .prologue
    .line 172
    invoke-virtual {p0}, Ljava/nio/SelectorImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_c

    .line 173
    new-instance v0, Ljava/nio/channels/ClosedSelectorException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedSelectorException;-><init>()V

    throw v0

    .line 175
    :cond_c
    return-void
.end method

.method private doCancel()I
    .registers 7

    .prologue
    .line 354
    const/4 v3, 0x0

    .line 356
    .local v3, deselected:I
    invoke-virtual {p0}, Ljava/nio/SelectorImpl;->cancelledKeys()Ljava/util/Set;

    move-result-object v1

    .line 357
    .local v1, cancelledKeys:Ljava/util/Set;,"Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    monitor-enter v1

    .line 358
    :try_start_6
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_36

    .line 359
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_10
    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;

    .line 360
    .local v2, currentKey:Ljava/nio/channels/SelectionKey;
    iget-object v5, p0, Ljava/nio/SelectorImpl;->mutableKeys:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 361
    move-object v0, v2

    check-cast v0, Ljava/nio/channels/spi/AbstractSelectionKey;

    move-object v5, v0

    invoke-virtual {p0, v5}, Ljava/nio/SelectorImpl;->deregister(Ljava/nio/channels/spi/AbstractSelectionKey;)V

    .line 362
    iget-object v5, p0, Ljava/nio/SelectorImpl;->mutableSelectedKeys:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 363
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 366
    .end local v2           #currentKey:Ljava/nio/channels/SelectionKey;
    :cond_33
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 368
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_36
    monitor-exit v1

    .line 370
    return v3

    .line 368
    :catchall_38
    move-exception v5

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_6 .. :try_end_3a} :catchall_38

    throw v5
.end method

.method private getReadyOps(Ljava/nio/SelectionKeyImpl;)I
    .registers 4
    .parameter "key"

    .prologue
    .line 242
    invoke-virtual {p1}, Ljava/nio/SelectionKeyImpl;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    .line 243
    .local v0, channel:Ljava/nio/channels/SelectableChannel;
    instance-of v1, v0, Ljava/nio/channels/SocketChannel;

    if-eqz v1, :cond_12

    check-cast v0, Ljava/nio/channels/SocketChannel;

    .end local v0           #channel:Ljava/nio/channels/SelectableChannel;
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isConnectionPending()Z

    move-result v1

    if-nez v1, :cond_12

    const/4 v1, 0x4

    :goto_11
    return v1

    :cond_12
    const/16 v1, 0xc

    goto :goto_11
.end method

.method private prepareChannels(II)V
    .registers 13
    .parameter "numReadable"
    .parameter "numWritable"

    .prologue
    const/high16 v8, 0x3fc0

    .line 255
    iget-object v7, p0, Ljava/nio/SelectorImpl;->readableFDs:[Ljava/io/FileDescriptor;

    array-length v7, v7

    if-ge v7, p1, :cond_15

    .line 256
    iget-object v7, p0, Ljava/nio/SelectorImpl;->readableFDs:[Ljava/io/FileDescriptor;

    array-length v7, v7

    int-to-float v7, v7

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-static {v7, p1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 257
    .local v3, newSize:I
    new-array v7, v3, [Ljava/io/FileDescriptor;

    iput-object v7, p0, Ljava/nio/SelectorImpl;->readableFDs:[Ljava/io/FileDescriptor;

    .line 259
    .end local v3           #newSize:I
    :cond_15
    iget-object v7, p0, Ljava/nio/SelectorImpl;->writableFDs:[Ljava/io/FileDescriptor;

    array-length v7, v7

    if-ge v7, p2, :cond_28

    .line 260
    iget-object v7, p0, Ljava/nio/SelectorImpl;->writableFDs:[Ljava/io/FileDescriptor;

    array-length v7, v7

    int-to-float v7, v7

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-static {v7, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 261
    .restart local v3       #newSize:I
    new-array v7, v3, [Ljava/io/FileDescriptor;

    iput-object v7, p0, Ljava/nio/SelectorImpl;->writableFDs:[Ljava/io/FileDescriptor;

    .line 263
    .end local v3           #newSize:I
    :cond_28
    add-int v5, p1, p2

    .line 264
    .local v5, total:I
    iget-object v7, p0, Ljava/nio/SelectorImpl;->readyKeys:[Ljava/nio/SelectionKeyImpl;

    array-length v7, v7

    if-ge v7, v5, :cond_41

    .line 265
    iget-object v7, p0, Ljava/nio/SelectorImpl;->readyKeys:[Ljava/nio/SelectionKeyImpl;

    array-length v7, v7

    int-to-float v7, v7

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 266
    .restart local v3       #newSize:I
    new-array v7, v3, [Ljava/nio/SelectionKeyImpl;

    iput-object v7, p0, Ljava/nio/SelectorImpl;->readyKeys:[Ljava/nio/SelectionKeyImpl;

    .line 267
    new-array v7, v3, [I

    iput-object v7, p0, Ljava/nio/SelectorImpl;->flags:[I

    .line 271
    .end local v3           #newSize:I
    :cond_41
    iget-object v8, p0, Ljava/nio/SelectorImpl;->readableFDs:[Ljava/io/FileDescriptor;

    const/4 v9, 0x0

    iget-object v7, p0, Ljava/nio/SelectorImpl;->wakeupPipe:Ljava/nio/channels/Pipe;

    invoke-virtual {v7}, Ljava/nio/channels/Pipe;->source()Ljava/nio/channels/Pipe$SourceChannel;

    move-result-object v7

    check-cast v7, Lorg/apache/harmony/luni/platform/FileDescriptorHandler;

    invoke-interface {v7}, Lorg/apache/harmony/luni/platform/FileDescriptorHandler;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    aput-object v7, v8, v9

    .line 272
    const/4 v4, 0x1

    .line 273
    .local v4, r:I
    const/4 v6, 0x0

    .line 274
    .local v6, w:I
    iget-object v7, p0, Ljava/nio/SelectorImpl;->mutableKeys:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_5a
    :goto_5a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/SelectionKeyImpl;

    .line 275
    .local v2, key:Ljava/nio/SelectionKeyImpl;
    invoke-virtual {v2}, Ljava/nio/SelectionKeyImpl;->interestOpsNoCheck()I

    move-result v1

    .line 276
    .local v1, interestOps:I
    and-int/lit8 v7, v1, 0x11

    if-eqz v7, :cond_82

    .line 277
    iget-object v8, p0, Ljava/nio/SelectorImpl;->readableFDs:[Ljava/io/FileDescriptor;

    invoke-virtual {v2}, Ljava/nio/SelectionKeyImpl;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v7

    check-cast v7, Lorg/apache/harmony/luni/platform/FileDescriptorHandler;

    invoke-interface {v7}, Lorg/apache/harmony/luni/platform/FileDescriptorHandler;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    aput-object v7, v8, v4

    .line 278
    iget-object v7, p0, Ljava/nio/SelectorImpl;->readyKeys:[Ljava/nio/SelectionKeyImpl;

    aput-object v2, v7, v4

    .line 279
    add-int/lit8 v4, v4, 0x1

    .line 281
    :cond_82
    invoke-direct {p0, v2}, Ljava/nio/SelectorImpl;->getReadyOps(Ljava/nio/SelectionKeyImpl;)I

    move-result v7

    and-int/2addr v7, v1

    if-eqz v7, :cond_5a

    .line 282
    iget-object v8, p0, Ljava/nio/SelectorImpl;->writableFDs:[Ljava/io/FileDescriptor;

    invoke-virtual {v2}, Ljava/nio/SelectionKeyImpl;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v7

    check-cast v7, Lorg/apache/harmony/luni/platform/FileDescriptorHandler;

    invoke-interface {v7}, Lorg/apache/harmony/luni/platform/FileDescriptorHandler;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    aput-object v7, v8, v6

    .line 283
    iget-object v7, p0, Ljava/nio/SelectorImpl;->readyKeys:[Ljava/nio/SelectionKeyImpl;

    add-int v8, v6, p1

    aput-object v2, v7, v8

    .line 284
    add-int/lit8 v6, v6, 0x1

    goto :goto_5a

    .line 287
    .end local v1           #interestOps:I
    .end local v2           #key:Ljava/nio/SelectionKeyImpl;
    :cond_a0
    return-void
.end method

.method private processSelectResult()I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    iget-object v7, p0, Ljava/nio/SelectorImpl;->flags:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1e

    .line 298
    const/16 v7, 0x8

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 299
    .local v0, buf:Ljava/nio/ByteBuffer;
    :goto_e
    iget-object v7, p0, Ljava/nio/SelectorImpl;->wakeupPipe:Ljava/nio/channels/Pipe;

    invoke-virtual {v7}, Ljava/nio/channels/Pipe;->source()Ljava/nio/channels/Pipe$SourceChannel;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/nio/channels/Pipe$SourceChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v7

    if-lez v7, :cond_1e

    .line 300
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_e

    .line 304
    .end local v0           #buf:Ljava/nio/ByteBuffer;
    :cond_1e
    const/4 v4, 0x0

    .line 305
    .local v4, selected:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_20
    iget-object v7, p0, Ljava/nio/SelectorImpl;->flags:[I

    array-length v7, v7

    if-ge v1, v7, :cond_75

    .line 306
    iget-object v7, p0, Ljava/nio/SelectorImpl;->flags:[I

    aget v7, v7, v1

    if-nez v7, :cond_2e

    .line 305
    :cond_2b
    :goto_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 310
    :cond_2e
    iget-object v7, p0, Ljava/nio/SelectorImpl;->readyKeys:[Ljava/nio/SelectionKeyImpl;

    aget-object v2, v7, v1

    .line 311
    .local v2, key:Ljava/nio/SelectionKeyImpl;
    invoke-virtual {v2}, Ljava/nio/SelectionKeyImpl;->interestOpsNoCheck()I

    move-result v3

    .line 312
    .local v3, ops:I
    const/4 v5, 0x0

    .line 314
    .local v5, selectedOp:I
    iget-object v7, p0, Ljava/nio/SelectorImpl;->flags:[I

    aget v7, v7, v1

    packed-switch v7, :pswitch_data_76

    .line 327
    :goto_3e
    if-eqz v5, :cond_2b

    .line 328
    iget-object v7, p0, Ljava/nio/SelectorImpl;->mutableSelectedKeys:Ljava/util/Set;

    invoke-interface {v7, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 329
    .local v6, wasSelected:Z
    if-eqz v6, :cond_68

    invoke-virtual {v2}, Ljava/nio/SelectionKeyImpl;->readyOps()I

    move-result v7

    if-eq v7, v5, :cond_68

    .line 330
    invoke-virtual {v2}, Ljava/nio/SelectionKeyImpl;->readyOps()I

    move-result v7

    or-int/2addr v7, v5

    invoke-virtual {v2, v7}, Ljava/nio/SelectionKeyImpl;->setReadyOps(I)V

    .line 331
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 316
    .end local v6           #wasSelected:Z
    :pswitch_59
    and-int/lit8 v5, v3, 0x11

    .line 317
    goto :goto_3e

    .line 319
    :pswitch_5c
    invoke-virtual {v2}, Ljava/nio/SelectionKeyImpl;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_65

    .line 320
    and-int/lit8 v5, v3, 0x4

    goto :goto_3e

    .line 322
    :cond_65
    and-int/lit8 v5, v3, 0x8

    goto :goto_3e

    .line 332
    .restart local v6       #wasSelected:Z
    :cond_68
    if-nez v6, :cond_2b

    .line 333
    invoke-virtual {v2, v5}, Ljava/nio/SelectionKeyImpl;->setReadyOps(I)V

    .line 334
    iget-object v7, p0, Ljava/nio/SelectorImpl;->mutableSelectedKeys:Ljava/util/Set;

    invoke-interface {v7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 335
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 340
    .end local v2           #key:Ljava/nio/SelectionKeyImpl;
    .end local v3           #ops:I
    .end local v5           #selectedOp:I
    .end local v6           #wasSelected:Z
    :cond_75
    return v4

    .line 314
    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_59
        :pswitch_5c
    .end packed-switch
.end method

.method private selectInternal(J)I
    .registers 22
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-direct/range {p0 .. p0}, Ljava/nio/SelectorImpl;->closeCheck()V

    .line 194
    monitor-enter p0

    .line 195
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/nio/SelectorImpl;->unmodifiableKeys:Ljava/util/Set;

    move-object/from16 v17, v0

    monitor-enter v17
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_b4

    .line 196
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/nio/SelectorImpl;->selectedKeys:Ljava/util/Set;

    move-object/from16 v18, v0

    monitor-enter v18
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_b1

    .line 197
    :try_start_12
    invoke-direct/range {p0 .. p0}, Ljava/nio/SelectorImpl;->doCancel()I

    .line 198
    const-wide/16 v3, 0x0

    cmp-long v3, v3, p1

    if-eqz v3, :cond_4b

    const/4 v3, 0x1

    move v12, v3

    .line 199
    .local v12, isBlock:Z
    :goto_1d
    const/4 v6, 0x1

    .line 200
    .local v6, readableKeysCount:I
    const/4 v7, 0x0

    .line 201
    .local v7, writableKeysCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/nio/SelectorImpl;->keysLock:Ljava/lang/Object;

    move-object v3, v0

    monitor-enter v3
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_ae

    .line 202
    :try_start_25
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/nio/SelectorImpl;->mutableKeys:Ljava/util/Set;

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_2e
    :goto_2e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/nio/SelectionKeyImpl;

    .line 203
    .local v13, key:Ljava/nio/SelectionKeyImpl;
    invoke-virtual {v13}, Ljava/nio/SelectionKeyImpl;->interestOpsNoCheck()I

    move-result v14

    .line 204
    .local v14, ops:I
    and-int/lit8 v4, v14, 0x11

    if-eqz v4, :cond_44

    .line 205
    add-int/lit8 v6, v6, 0x1

    .line 207
    :cond_44
    and-int/lit8 v4, v14, 0xc

    if-eqz v4, :cond_2e

    .line 208
    add-int/lit8 v7, v7, 0x1

    goto :goto_2e

    .line 198
    .end local v6           #readableKeysCount:I
    .end local v7           #writableKeysCount:I
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #isBlock:Z
    .end local v13           #key:Ljava/nio/SelectionKeyImpl;
    .end local v14           #ops:I
    :cond_4b
    const/4 v3, 0x0

    move v12, v3

    goto :goto_1d

    .line 211
    .restart local v6       #readableKeysCount:I
    .restart local v7       #writableKeysCount:I
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v12       #isBlock:Z
    :cond_4e
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    invoke-direct {v0, v1, v2}, Ljava/nio/SelectorImpl;->prepareChannels(II)V

    .line 212
    monitor-exit v3
    :try_end_56
    .catchall {:try_start_25 .. :try_end_56} :catchall_ab

    .line 215
    if-eqz v12, :cond_5b

    .line 216
    :try_start_58
    invoke-virtual/range {p0 .. p0}, Ljava/nio/SelectorImpl;->begin()V

    .line 218
    :cond_5b
    sget-object v3, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/nio/SelectorImpl;->readableFDs:[Ljava/io/FileDescriptor;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/nio/SelectorImpl;->writableFDs:[Ljava/io/FileDescriptor;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/nio/SelectorImpl;->flags:[I

    move-object v10, v0

    move-wide/from16 v8, p1

    invoke-interface/range {v3 .. v10}, Lorg/apache/harmony/luni/platform/INetworkSystem;->select([Ljava/io/FileDescriptor;[Ljava/io/FileDescriptor;IIJ[I)Z
    :try_end_71
    .catchall {:try_start_58 .. :try_end_71} :catchall_b7

    move-result v16

    .line 221
    .local v16, success:Z
    if-eqz v12, :cond_77

    .line 222
    :try_start_74
    invoke-virtual/range {p0 .. p0}, Ljava/nio/SelectorImpl;->end()V

    .line 226
    :cond_77
    if-eqz v16, :cond_be

    invoke-direct/range {p0 .. p0}, Ljava/nio/SelectorImpl;->processSelectResult()I

    move-result v3

    move v15, v3

    .line 228
    .local v15, selected:I
    :goto_7e
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/nio/SelectorImpl;->readableFDs:[Ljava/io/FileDescriptor;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/nio/SelectorImpl;->writableFDs:[Ljava/io/FileDescriptor;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/nio/SelectorImpl;->readyKeys:[Ljava/nio/SelectionKeyImpl;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/nio/SelectorImpl;->flags:[I

    move-object v3, v0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 233
    invoke-direct/range {p0 .. p0}, Ljava/nio/SelectorImpl;->doCancel()I

    move-result v3

    sub-int/2addr v15, v3

    .line 235
    monitor-exit v18
    :try_end_a8
    .catchall {:try_start_74 .. :try_end_a8} :catchall_ae

    :try_start_a8
    monitor-exit v17
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_b1

    :try_start_a9
    monitor-exit p0
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_b4

    return v15

    .line 212
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v15           #selected:I
    .end local v16           #success:Z
    :catchall_ab
    move-exception v4

    :try_start_ac
    monitor-exit v3
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ab

    :try_start_ad
    throw v4

    .line 236
    .end local v6           #readableKeysCount:I
    .end local v7           #writableKeysCount:I
    .end local v12           #isBlock:Z
    :catchall_ae
    move-exception v3

    monitor-exit v18
    :try_end_b0
    .catchall {:try_start_ad .. :try_end_b0} :catchall_ae

    :try_start_b0
    throw v3

    .line 237
    :catchall_b1
    move-exception v3

    monitor-exit v17
    :try_end_b3
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_b1

    :try_start_b3
    throw v3

    .line 238
    :catchall_b4
    move-exception v3

    monitor-exit p0
    :try_end_b6
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_b4

    throw v3

    .line 221
    .restart local v6       #readableKeysCount:I
    .restart local v7       #writableKeysCount:I
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v12       #isBlock:Z
    :catchall_b7
    move-exception v3

    if-eqz v12, :cond_bd

    .line 222
    :try_start_ba
    invoke-virtual/range {p0 .. p0}, Ljava/nio/SelectorImpl;->end()V

    :cond_bd
    throw v3
    :try_end_be
    .catchall {:try_start_ba .. :try_end_be} :catchall_ae

    .line 226
    .restart local v16       #success:Z
    :cond_be
    const/4 v3, 0x0

    move v15, v3

    goto :goto_7e
.end method


# virtual methods
.method protected implCloseSelector()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p0}, Ljava/nio/SelectorImpl;->wakeup()Ljava/nio/channels/Selector;

    .line 134
    monitor-enter p0

    .line 135
    :try_start_4
    iget-object v2, p0, Ljava/nio/SelectorImpl;->unmodifiableKeys:Ljava/util/Set;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_3d

    .line 136
    :try_start_7
    iget-object v3, p0, Ljava/nio/SelectorImpl;->selectedKeys:Ljava/util/Set;

    monitor-enter v3
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_3a

    .line 137
    :try_start_a
    iget-object v4, p0, Ljava/nio/SelectorImpl;->wakeupPipe:Ljava/nio/channels/Pipe;

    invoke-virtual {v4}, Ljava/nio/channels/Pipe;->sink()Ljava/nio/channels/Pipe$SinkChannel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/Pipe$SinkChannel;->close()V

    .line 138
    iget-object v4, p0, Ljava/nio/SelectorImpl;->wakeupPipe:Ljava/nio/channels/Pipe;

    invoke-virtual {v4}, Ljava/nio/channels/Pipe;->source()Ljava/nio/channels/Pipe$SourceChannel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/Pipe$SourceChannel;->close()V

    .line 139
    invoke-direct {p0}, Ljava/nio/SelectorImpl;->doCancel()I

    .line 140
    iget-object v4, p0, Ljava/nio/SelectorImpl;->mutableKeys:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/SelectionKeyImpl;

    .line 141
    .local v1, sk:Ljava/nio/channels/SelectionKey;
    check-cast v1, Ljava/nio/channels/spi/AbstractSelectionKey;

    .end local v1           #sk:Ljava/nio/channels/SelectionKey;
    invoke-virtual {p0, v1}, Ljava/nio/SelectorImpl;->deregister(Ljava/nio/channels/spi/AbstractSelectionKey;)V

    goto :goto_25

    .line 143
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_37
    move-exception v4

    monitor-exit v3
    :try_end_39
    .catchall {:try_start_a .. :try_end_39} :catchall_37

    :try_start_39
    throw v4

    .line 144
    :catchall_3a
    move-exception v3

    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3a

    :try_start_3c
    throw v3

    .line 145
    :catchall_3d
    move-exception v2

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_3d

    throw v2

    .line 143
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_40
    :try_start_40
    monitor-exit v3
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_37

    .line 144
    :try_start_41
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_3a

    .line 145
    :try_start_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_3d

    .line 146
    return-void
.end method

.method public declared-synchronized keys()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljava/nio/SelectorImpl;->closeCheck()V

    .line 165
    iget-object v0, p0, Ljava/nio/SelectorImpl;->unmodifiableKeys:Ljava/util/Set;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    .line 164
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected register(Ljava/nio/channels/spi/AbstractSelectableChannel;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    .registers 7
    .parameter "channel"
    .parameter "operations"
    .parameter "attachment"

    .prologue
    .line 150
    invoke-virtual {p0}, Ljava/nio/SelectorImpl;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractSelectableChannel;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 151
    new-instance v1, Ljava/nio/channels/IllegalSelectorException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalSelectorException;-><init>()V

    throw v1

    .line 153
    :cond_14
    monitor-enter p0

    .line 154
    :try_start_15
    iget-object v1, p0, Ljava/nio/SelectorImpl;->unmodifiableKeys:Ljava/util/Set;

    monitor-enter v1
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_28

    .line 155
    :try_start_18
    new-instance v0, Ljava/nio/SelectionKeyImpl;

    invoke-direct {v0, p1, p2, p3, p0}, Ljava/nio/SelectionKeyImpl;-><init>(Ljava/nio/channels/spi/AbstractSelectableChannel;ILjava/lang/Object;Ljava/nio/SelectorImpl;)V

    .line 157
    .local v0, selectionKey:Ljava/nio/SelectionKeyImpl;
    iget-object v2, p0, Ljava/nio/SelectorImpl;->mutableKeys:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_25

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_28

    return-object v0

    .line 159
    .end local v0           #selectionKey:Ljava/nio/SelectionKeyImpl;
    :catchall_25
    move-exception v2

    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    :try_start_27
    throw v2

    .line 160
    :catchall_28
    move-exception v1

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public select()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Ljava/nio/SelectorImpl;->selectInternal(J)I

    move-result v0

    return v0
.end method

.method public select(J)I
    .registers 6
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v1, 0x0

    .line 182
    cmp-long v0, p1, v1

    if-gez v0, :cond_c

    .line 183
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 185
    :cond_c
    cmp-long v0, p1, v1

    if-nez v0, :cond_17

    const-wide/16 v0, -0x1

    :goto_12
    invoke-direct {p0, v0, v1}, Ljava/nio/SelectorImpl;->selectInternal(J)I

    move-result v0

    return v0

    :cond_17
    move-wide v0, p1

    goto :goto_12
.end method

.method public selectNow()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Ljava/nio/SelectorImpl;->selectInternal(J)I

    move-result v0

    return v0
.end method

.method public declared-synchronized selectedKeys()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 344
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljava/nio/SelectorImpl;->closeCheck()V

    .line 345
    iget-object v0, p0, Ljava/nio/SelectorImpl;->selectedKeys:Ljava/util/Set;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    .line 344
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public wakeup()Ljava/nio/channels/Selector;
    .registers 3

    .prologue
    .line 375
    :try_start_0
    iget-object v0, p0, Ljava/nio/SelectorImpl;->wakeupPipe:Ljava/nio/channels/Pipe;

    invoke-virtual {v0}, Ljava/nio/channels/Pipe;->sink()Ljava/nio/channels/Pipe$SinkChannel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/channels/Pipe$SinkChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_f

    .line 378
    :goto_e
    return-object p0

    .line 376
    :catch_f
    move-exception v0

    goto :goto_e
.end method
