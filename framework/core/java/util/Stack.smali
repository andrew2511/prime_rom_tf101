.class public Ljava/util/Stack;
.super Ljava/util/Vector;
.source "Stack.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Vector",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x10fe2ac2bb09861dL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    .local p0, this:Ljava/util/Stack;,"Ljava/util/Stack<TE;>;"
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public empty()Z
    .registers 2

    .prologue
    .line 42
    .local p0, this:Ljava/util/Stack;,"Ljava/util/Stack<TE;>;"
    invoke-virtual {p0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized peek()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, this:Ljava/util/Stack;,"Ljava/util/Stack<TE;>;"
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Ljava/util/Stack;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/Stack;->elementCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v1, v1, v2
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_13
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_9} :catch_b

    monitor-exit p0

    return-object v1

    .line 57
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 58
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_d
    new-instance v1, Ljava/util/EmptyStackException;

    invoke-direct {v1}, Ljava/util/EmptyStackException;-><init>()V

    throw v1
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_13

    .line 56
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catchall_13
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized pop()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, this:Ljava/util/Stack;,"Ljava/util/Stack<TE;>;"
    monitor-enter p0

    :try_start_1
    iget v2, p0, Ljava/util/Stack;->elementCount:I

    if-nez v2, :cond_e

    .line 74
    new-instance v2, Ljava/util/EmptyStackException;

    invoke-direct {v2}, Ljava/util/EmptyStackException;-><init>()V

    throw v2
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_b

    .line 73
    :catchall_b
    move-exception v2

    monitor-exit p0

    throw v2

    .line 76
    :cond_e
    :try_start_e
    iget v2, p0, Ljava/util/Stack;->elementCount:I

    const/4 v3, 0x1

    sub-int v0, v2, v3

    iput v0, p0, Ljava/util/Stack;->elementCount:I

    .line 77
    .local v0, index:I
    iget-object v2, p0, Ljava/util/Stack;->elementData:[Ljava/lang/Object;

    aget-object v1, v2, v0

    .line 78
    .local v1, obj:Ljava/lang/Object;,"TE;"
    iget-object v2, p0, Ljava/util/Stack;->elementData:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 79
    iget v2, p0, Ljava/util/Stack;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/Stack;->modCount:I
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_b

    .line 80
    monitor-exit p0

    return-object v1
.end method

.method public push(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, this:Ljava/util/Stack;,"Ljava/util/Stack<TE;>;"
    .local p1, object:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1}, Ljava/util/Stack;->addElement(Ljava/lang/Object;)V

    .line 94
    return-object p1
.end method

.method public declared-synchronized search(Ljava/lang/Object;)I
    .registers 6
    .parameter "o"

    .prologue
    .local p0, this:Ljava/util/Stack;,"Ljava/util/Stack<TE;>;"
    const/4 v3, 0x1

    .line 107
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Ljava/util/Stack;->elementData:[Ljava/lang/Object;

    .line 108
    .local v0, dumpArray:[Ljava/lang/Object;
    iget v2, p0, Ljava/util/Stack;->elementCount:I

    .line 109
    .local v2, size:I
    if-eqz p1, :cond_1b

    .line 110
    sub-int v1, v2, v3

    .local v1, i:I
    :goto_a
    if-ltz v1, :cond_29

    .line 111
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_2b

    move-result v3

    if-eqz v3, :cond_18

    .line 112
    sub-int v3, v2, v1

    .line 122
    :goto_16
    monitor-exit p0

    return v3

    .line 110
    :cond_18
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 116
    .end local v1           #i:I
    :cond_1b
    sub-int v1, v2, v3

    .restart local v1       #i:I
    :goto_1d
    if-ltz v1, :cond_29

    .line 117
    :try_start_1f
    aget-object v3, v0, v1
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_2b

    if-nez v3, :cond_26

    .line 118
    sub-int v3, v2, v1

    goto :goto_16

    .line 116
    :cond_26
    add-int/lit8 v1, v1, -0x1

    goto :goto_1d

    .line 122
    :cond_29
    const/4 v3, -0x1

    goto :goto_16

    .line 107
    .end local v0           #dumpArray:[Ljava/lang/Object;
    .end local v1           #i:I
    .end local v2           #size:I
    :catchall_2b
    move-exception v3

    monitor-exit p0

    throw v3
.end method
