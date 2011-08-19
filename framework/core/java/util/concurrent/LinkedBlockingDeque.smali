.class public Ljava/util/concurrent/LinkedBlockingDeque;
.super Ljava/util/AbstractQueue;
.source "LinkedBlockingDeque.java"

# interfaces
.implements Ljava/util/concurrent/BlockingDeque;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/LinkedBlockingDeque$1;,
        Ljava/util/concurrent/LinkedBlockingDeque$DescendingItr;,
        Ljava/util/concurrent/LinkedBlockingDeque$Itr;,
        Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;,
        Ljava/util/concurrent/LinkedBlockingDeque$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Ljava/util/concurrent/BlockingDeque",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x56223931da801daL


# instance fields
.field private final capacity:I

.field private transient count:I

.field transient first:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field transient last:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final notEmpty:Ljava/util/concurrent/locks/Condition;

.field private final notFull:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 139
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    .line 140
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "capacity"

    .prologue
    .line 148
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 126
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 129
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 132
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    .line 149
    if-gtz p1, :cond_22

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 150
    :cond_22
    iput p1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->capacity:I

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    const v3, 0x7fffffff

    invoke-direct {p0, v3}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    .line 165
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 166
    .local v2, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 168
    :try_start_b
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 169
    .local v0, e:Ljava/lang/Object;,"TE;"
    if-nez v0, :cond_26

    .line 170
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_21

    .line 175
    .end local v0           #e:Ljava/lang/Object;,"TE;"
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_21
    move-exception v3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 171
    .restart local v0       #e:Ljava/lang/Object;,"TE;"
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_26
    :try_start_26
    new-instance v3, Ljava/util/concurrent/LinkedBlockingDeque$Node;

    invoke-direct {v3, v0}, Ljava/util/concurrent/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v3}, Ljava/util/concurrent/LinkedBlockingDeque;->linkLast(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 172
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Deque full"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_39
    .catchall {:try_start_26 .. :try_end_39} :catchall_21

    .line 175
    .end local v0           #e:Ljava/lang/Object;,"TE;"
    :cond_39
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 177
    return-void
.end method

.method private linkFirst(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Z
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingDeque$Node",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 187
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, node:Ljava/util/concurrent/LinkedBlockingDeque$Node;,"Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iget v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    iget v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->capacity:I

    if-lt v1, v2, :cond_8

    .line 188
    const/4 v1, 0x0

    .line 198
    :goto_7
    return v1

    .line 189
    :cond_8
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 190
    .local v0, f:Ljava/util/concurrent/LinkedBlockingDeque$Node;,"Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iput-object v0, p1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 191
    iput-object p1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 192
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    if-nez v1, :cond_21

    .line 193
    iput-object p1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 196
    :goto_14
    iget v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    .line 197
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 198
    const/4 v1, 0x1

    goto :goto_7

    .line 195
    :cond_21
    iput-object p1, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->prev:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    goto :goto_14
.end method

.method private linkLast(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Z
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingDeque$Node",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, node:Ljava/util/concurrent/LinkedBlockingDeque$Node;,"Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iget v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    iget v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->capacity:I

    if-lt v1, v2, :cond_8

    .line 207
    const/4 v1, 0x0

    .line 217
    :goto_7
    return v1

    .line 208
    :cond_8
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 209
    .local v0, l:Ljava/util/concurrent/LinkedBlockingDeque$Node;,"Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iput-object v0, p1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->prev:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 210
    iput-object p1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 211
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    if-nez v1, :cond_21

    .line 212
    iput-object p1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 215
    :goto_14
    iget v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    .line 216
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 217
    const/4 v1, 0x1

    goto :goto_7

    .line 214
    :cond_21
    iput-object p1, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    goto :goto_14
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    const/4 v2, 0x0

    .line 1155
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1156
    const/4 v1, 0x0

    iput v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    .line 1157
    iput-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 1158
    iput-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 1162
    :goto_b
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 1163
    .local v0, item:Ljava/lang/Object;,"TE;"
    if-nez v0, :cond_12

    .line 1167
    return-void

    .line 1165
    :cond_12
    invoke-virtual {p0, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    goto :goto_b
.end method

.method private unlinkFirst()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    const/4 v3, 0x0

    .line 225
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 226
    .local v0, f:Ljava/util/concurrent/LinkedBlockingDeque$Node;,"Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    if-nez v0, :cond_6

    .line 239
    :goto_5
    return-object v3

    .line 228
    :cond_6
    iget-object v2, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 229
    .local v2, n:Ljava/util/concurrent/LinkedBlockingDeque$Node;,"Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iget-object v1, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 230
    .local v1, item:Ljava/lang/Object;,"TE;"
    iput-object v3, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 231
    iput-object v0, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 232
    iput-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 233
    if-nez v2, :cond_21

    .line 234
    iput-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 237
    :goto_14
    iget v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    .line 238
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V

    move-object v3, v1

    .line 239
    goto :goto_5

    .line 236
    :cond_21
    iput-object v3, v2, Ljava/util/concurrent/LinkedBlockingDeque$Node;->prev:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    goto :goto_14
.end method

.method private unlinkLast()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    const/4 v3, 0x0

    .line 247
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 248
    .local v1, l:Ljava/util/concurrent/LinkedBlockingDeque$Node;,"Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    if-nez v1, :cond_6

    .line 261
    :goto_5
    return-object v3

    .line 250
    :cond_6
    iget-object v2, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->prev:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 251
    .local v2, p:Ljava/util/concurrent/LinkedBlockingDeque$Node;,"Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 252
    .local v0, item:Ljava/lang/Object;,"TE;"
    iput-object v3, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 253
    iput-object v1, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->prev:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 254
    iput-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 255
    if-nez v2, :cond_21

    .line 256
    iput-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 259
    :goto_14
    iget v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    .line 260
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V

    move-object v3, v0

    .line 261
    goto :goto_5

    .line 258
    :cond_21
    iput-object v3, v2, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    goto :goto_14
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1133
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1134
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1137
    :try_start_5
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1139
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .local v1, p:Ljava/util/concurrent/LinkedBlockingDeque$Node;,"Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :goto_a
    if-eqz v1, :cond_14

    .line 1140
    iget-object v2, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1139
    iget-object v1, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    goto :goto_a

    .line 1142
    :cond_14
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_1c

    .line 1144
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1146
    return-void

    .line 1144
    .end local v1           #p:Ljava/util/concurrent/LinkedBlockingDeque$Node;,"Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :catchall_1c
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 602
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->addLast(Ljava/lang/Object;)V

    .line 603
    const/4 v0, 0x1

    return v0
.end method

.method public addFirst(Ljava/lang/Object;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offerFirst(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 294
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deque full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_e
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 302
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offerLast(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 303
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deque full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_e
    return-void
.end method

.method public clear()V
    .registers 5

    .prologue
    .line 957
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 958
    .local v1, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 960
    :try_start_5
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .local v0, f:Ljava/util/concurrent/LinkedBlockingDeque$Node;,"Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :goto_7
    if-eqz v0, :cond_16

    .line 961
    const/4 v3, 0x0

    iput-object v3, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 962
    iget-object v2, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 963
    .local v2, n:Ljava/util/concurrent/LinkedBlockingDeque$Node;,"Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    const/4 v3, 0x0

    iput-object v3, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->prev:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 964
    const/4 v3, 0x0

    iput-object v3, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 965
    move-object v0, v2

    .line 966
    goto :goto_7

    .line 967
    .end local v2           #n:Ljava/util/concurrent/LinkedBlockingDeque$Node;,"Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :cond_16
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    iput-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 968
    const/4 v3, 0x0

    iput v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    .line 969
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_27

    .line 971
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 973
    return-void

    .line 971
    .end local v0           #f:Ljava/util/concurrent/LinkedBlockingDeque$Node;,"Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    const/4 v3, 0x0

    .line 791
    if-nez p1, :cond_5

    move v2, v3

    .line 800
    :goto_4
    return v2

    .line 792
    :cond_5
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 793
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 795
    :try_start_a
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .local v1, p:Ljava/util/concurrent/LinkedBlockingDeque$Node;,"Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :goto_c
    if-eqz v1, :cond_1e

    .line 796
    iget-object v2, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_23

    move-result v2

    if-eqz v2, :cond_1b

    .line 797
    const/4 v2, 0x1

    .line 800
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_4

    .line 795
    :cond_1b
    :try_start_1b
    iget-object v1, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_23

    goto :goto_c

    .line 800
    :cond_1e
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v2, v3

    goto :goto_4

    .end local v1           #p:Ljava/util/concurrent/LinkedBlockingDeque$Node;,"Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :catchall_23
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1007
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque$DescendingItr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/concurrent/LinkedBlockingDeque$DescendingItr;-><init>(Ljava/util/concurrent/LinkedBlockingDeque;Ljava/util/concurrent/LinkedBlockingDeque$1;)V

    return-object v0
.end method

.method public drainTo(Ljava/util/Collection;)I
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;)I"
        }
    .end annotation

    .prologue
    .line 702
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<-TE;>;"
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->drainTo(Ljava/util/Collection;I)I

    move-result v0

    return v0
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .registers 7
    .parameter
    .parameter "maxElements"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;I)I"
        }
    .end annotation

    .prologue
    .line 712
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<-TE;>;"
    if-nez p1, :cond_8

    .line 713
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 714
    :cond_8
    if-ne p1, p0, :cond_10

    .line 715
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 716
    :cond_10
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 717
    .local v1, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 719
    :try_start_15
    iget v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 720
    .local v2, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1c
    if-ge v0, v2, :cond_2b

    .line 721
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    iget-object v3, v3, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 722
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_2f

    .line 720
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 726
    :cond_2b
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    .end local v0           #i:I
    .end local v2           #n:I
    :catchall_2f
    move-exception v3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public element()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 667
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 520
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    .line 521
    .local v0, x:Ljava/lang/Object;,"TE;"
    if-nez v0, :cond_c

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 522
    :cond_c
    return-object v0
.end method

.method public getLast()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 529
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    .line 530
    .local v0, x:Ljava/lang/Object;,"TE;"
    if-nez v0, :cond_c

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 531
    :cond_c
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 989
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque$Itr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/concurrent/LinkedBlockingDeque$Itr;-><init>(Ljava/util/concurrent/LinkedBlockingDeque;Ljava/util/concurrent/LinkedBlockingDeque$1;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 610
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offerLast(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .registers 6
    .parameter
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 627
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/LinkedBlockingDeque;->offerLast(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public offerFirst(Ljava/lang/Object;)Z
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 310
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    if-nez p1, :cond_8

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 311
    :cond_8
    new-instance v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;

    invoke-direct {v1, p1}, Ljava/util/concurrent/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 312
    .local v1, node:Ljava/util/concurrent/LinkedBlockingDeque$Node;,"Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 313
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 315
    :try_start_12
    invoke-direct {p0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->linkFirst(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Z
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1a

    move-result v2

    .line 317
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    :catchall_1a
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public offerFirst(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .registers 11
    .parameter
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 376
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    if-nez p1, :cond_8

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 377
    :cond_8
    new-instance v3, Ljava/util/concurrent/LinkedBlockingDeque$Node;

    invoke-direct {v3, p1}, Ljava/util/concurrent/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 378
    .local v3, node:Ljava/util/concurrent/LinkedBlockingDeque$Node;,"Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    .line 379
    .local v1, nanos:J
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 380
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 382
    :goto_16
    :try_start_16
    invoke-direct {p0, v3}, Ljava/util/concurrent/LinkedBlockingDeque;->linkFirst(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Z
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_33

    move-result v4

    if-nez v4, :cond_2e

    .line 383
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gtz v4, :cond_27

    .line 384
    const/4 v4, 0x0

    .line 389
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_26
    return v4

    .line 385
    :cond_27
    :try_start_27
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4, v1, v2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_33

    move-result-wide v1

    goto :goto_16

    .line 387
    :cond_2e
    const/4 v4, 0x1

    .line 389
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_26

    :catchall_33
    move-exception v4

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public offerLast(Ljava/lang/Object;)Z
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 325
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    if-nez p1, :cond_8

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 326
    :cond_8
    new-instance v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;

    invoke-direct {v1, p1}, Ljava/util/concurrent/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 327
    .local v1, node:Ljava/util/concurrent/LinkedBlockingDeque$Node;,"Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 328
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 330
    :try_start_12
    invoke-direct {p0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->linkLast(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Z
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1a

    move-result v2

    .line 332
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    :catchall_1a
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public offerLast(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .registers 11
    .parameter
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 399
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    if-nez p1, :cond_8

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 400
    :cond_8
    new-instance v3, Ljava/util/concurrent/LinkedBlockingDeque$Node;

    invoke-direct {v3, p1}, Ljava/util/concurrent/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 401
    .local v3, node:Ljava/util/concurrent/LinkedBlockingDeque$Node;,"Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    .line 402
    .local v1, nanos:J
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 403
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 405
    :goto_16
    :try_start_16
    invoke-direct {p0, v3}, Ljava/util/concurrent/LinkedBlockingDeque;->linkLast(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Z
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_33

    move-result v4

    if-nez v4, :cond_2e

    .line 406
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gtz v4, :cond_27

    .line 407
    const/4 v4, 0x0

    .line 412
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_26
    return v4

    .line 408
    :cond_27
    :try_start_27
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4, v1, v2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_33

    move-result-wide v1

    goto :goto_16

    .line 410
    :cond_2e
    const/4 v4, 0x1

    .line 412
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_26

    :catchall_33
    move-exception v4

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public peek()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 671
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public peekFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 535
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 536
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 538
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_13

    if-nez v1, :cond_e

    const/4 v1, 0x0

    .line 540
    :goto_a
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    .line 538
    :cond_e
    :try_start_e
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    iget-object v1, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_13

    goto :goto_a

    .line 540
    :catchall_13
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public peekLast()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 545
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 546
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 548
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_13

    if-nez v1, :cond_e

    const/4 v1, 0x0

    .line 550
    :goto_a
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    .line 548
    :cond_e
    :try_start_e
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    iget-object v1, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_13

    goto :goto_a

    .line 550
    :catchall_13
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public poll()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 645
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 653
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/LinkedBlockingDeque;->pollFirst(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 435
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 436
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 438
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    move-result-object v1

    .line 440
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_d
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public pollFirst(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 10
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 482
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    .line 483
    .local v1, nanos:J
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 484
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 487
    :goto_9
    :try_start_9
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_26

    move-result-object v3

    .local v3, x:Ljava/lang/Object;,"TE;"
    if-nez v3, :cond_21

    .line 488
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gtz v4, :cond_1a

    .line 489
    const/4 v4, 0x0

    .line 494
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_19
    return-object v4

    .line 490
    :cond_1a
    :try_start_1a
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4, v1, v2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_26

    move-result-wide v1

    goto :goto_9

    .line 494
    :cond_21
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v4, v3

    goto :goto_19

    .end local v3           #x:Ljava/lang/Object;,"TE;"
    :catchall_26
    move-exception v4

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public pollLast()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 445
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 446
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 448
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->unlinkLast()Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    move-result-object v1

    .line 450
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_d
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public pollLast(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 10
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 500
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    .line 501
    .local v1, nanos:J
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 502
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 505
    :goto_9
    :try_start_9
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->unlinkLast()Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_26

    move-result-object v3

    .local v3, x:Ljava/lang/Object;,"TE;"
    if-nez v3, :cond_21

    .line 506
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gtz v4, :cond_1a

    .line 507
    const/4 v4, 0x0

    .line 512
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_19
    return-object v4

    .line 508
    :cond_1a
    :try_start_1a
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4, v1, v2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_26

    move-result-wide v1

    goto :goto_9

    .line 512
    :cond_21
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v4, v3

    goto :goto_19

    .end local v3           #x:Ljava/lang/Object;,"TE;"
    :catchall_26
    move-exception v4

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public pop()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 744
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 737
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->addFirst(Ljava/lang/Object;)V

    .line 738
    return-void
.end method

.method public put(Ljava/lang/Object;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 618
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->putLast(Ljava/lang/Object;)V

    .line 619
    return-void
.end method

.method public putFirst(Ljava/lang/Object;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 341
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    if-nez p1, :cond_8

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 342
    :cond_8
    new-instance v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;

    invoke-direct {v1, p1}, Ljava/util/concurrent/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 343
    .local v1, node:Ljava/util/concurrent/LinkedBlockingDeque$Node;,"Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 344
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 346
    :goto_12
    :try_start_12
    invoke-direct {p0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->linkFirst(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 347
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_1e

    goto :goto_12

    .line 349
    :catchall_1e
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    :cond_23
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 351
    return-void
.end method

.method public putLast(Ljava/lang/Object;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 358
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    if-nez p1, :cond_8

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 359
    :cond_8
    new-instance v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;

    invoke-direct {v1, p1}, Ljava/util/concurrent/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 360
    .local v1, node:Ljava/util/concurrent/LinkedBlockingDeque$Node;,"Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 361
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 363
    :goto_12
    :try_start_12
    invoke-direct {p0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->linkLast(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 364
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_1e

    goto :goto_12

    .line 366
    :catchall_1e
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    :cond_23
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 368
    return-void
.end method

.method public remainingCapacity()I
    .registers 4

    .prologue
    .line 686
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 687
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 689
    :try_start_5
    iget v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->capacity:I

    iget v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_e

    sub-int/2addr v1, v2

    .line 691
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_e
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public remove()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 641
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .parameter "o"

    .prologue
    .line 764
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 420
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    .line 421
    .local v0, x:Ljava/lang/Object;,"TE;"
    if-nez v0, :cond_c

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 422
    :cond_c
    return-object v0
.end method

.method public removeFirstOccurrence(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    const/4 v3, 0x0

    .line 555
    if-nez p1, :cond_5

    move v2, v3

    .line 567
    :goto_4
    return v2

    .line 556
    :cond_5
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 557
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 559
    :try_start_a
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .local v1, p:Ljava/util/concurrent/LinkedBlockingDeque$Node;,"Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :goto_c
    if-eqz v1, :cond_21

    .line 560
    iget-object v2, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 561
    invoke-virtual {p0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->unlink(Ljava/util/concurrent/LinkedBlockingDeque$Node;)V
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_26

    .line 562
    const/4 v2, 0x1

    .line 567
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_4

    .line 559
    :cond_1e
    :try_start_1e
    iget-object v1, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    :try_end_20
    .catchall {:try_start_1e .. :try_end_20} :catchall_26

    goto :goto_c

    .line 567
    :cond_21
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v2, v3

    goto :goto_4

    .end local v1           #p:Ljava/util/concurrent/LinkedBlockingDeque$Node;,"Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :catchall_26
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public removeLast()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 429
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    .line 430
    .local v0, x:Ljava/lang/Object;,"TE;"
    if-nez v0, :cond_c

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 431
    :cond_c
    return-object v0
.end method

.method public removeLastOccurrence(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    const/4 v3, 0x0

    .line 572
    if-nez p1, :cond_5

    move v2, v3

    .line 584
    :goto_4
    return v2

    .line 573
    :cond_5
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 574
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 576
    :try_start_a
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .local v1, p:Ljava/util/concurrent/LinkedBlockingDeque$Node;,"Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :goto_c
    if-eqz v1, :cond_21

    .line 577
    iget-object v2, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 578
    invoke-virtual {p0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->unlink(Ljava/util/concurrent/LinkedBlockingDeque$Node;)V
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_26

    .line 579
    const/4 v2, 0x1

    .line 584
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_4

    .line 576
    :cond_1e
    :try_start_1e
    iget-object v1, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->prev:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    :try_end_20
    .catchall {:try_start_1e .. :try_end_20} :catchall_26

    goto :goto_c

    .line 584
    :cond_21
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v2, v3

    goto :goto_4

    .end local v1           #p:Ljava/util/concurrent/LinkedBlockingDeque$Node;,"Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :catchall_26
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public size()I
    .registers 3

    .prologue
    .line 773
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 774
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 776
    :try_start_5
    iget v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_b

    .line 778
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_b
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public take()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 649
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->takeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public takeFirst()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 455
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 456
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 459
    :goto_5
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;

    move-result-object v1

    .local v1, x:Ljava/lang/Object;,"TE;"
    if-nez v1, :cond_16

    .line 460
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    goto :goto_5

    .line 463
    .end local v1           #x:Ljava/lang/Object;,"TE;"
    :catchall_11
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .restart local v1       #x:Ljava/lang/Object;,"TE;"
    :cond_16
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1
.end method

.method public takeLast()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 468
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 469
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 472
    :goto_5
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->unlinkLast()Ljava/lang/Object;

    move-result-object v1

    .local v1, x:Ljava/lang/Object;,"TE;"
    if-nez v1, :cond_16

    .line 473
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    goto :goto_5

    .line 476
    .end local v1           #x:Ljava/lang/Object;,"TE;"
    :catchall_11
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .restart local v1       #x:Ljava/lang/Object;,"TE;"
    :cond_16
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 7

    .prologue
    .line 860
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 861
    .local v3, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 863
    :try_start_5
    iget v5, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    new-array v0, v5, [Ljava/lang/Object;

    .line 864
    .local v0, a:[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 865
    .local v1, k:I
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .local v4, p:Ljava/util/concurrent/LinkedBlockingDeque$Node;,"Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    move v2, v1

    .end local v1           #k:I
    .local v2, k:I
    :goto_d
    if-eqz v4, :cond_19

    .line 866
    add-int/lit8 v1, v2, 0x1

    .end local v2           #k:I
    .restart local v1       #k:I
    iget-object v5, v4, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    aput-object v5, v0, v2

    .line 865
    iget-object v4, v4, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_1d

    move v2, v1

    .end local v1           #k:I
    .restart local v2       #k:I
    goto :goto_d

    .line 869
    :cond_19
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .end local v0           #a:[Ljava/lang/Object;
    .end local v2           #k:I
    .end local v4           #p:Ljava/util/concurrent/LinkedBlockingDeque$Node;,"Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :catchall_1d
    move-exception v5

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 911
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, a:[Ljava/lang/Object;,"[TT;"
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 912
    .local v3, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 914
    :try_start_5
    array-length v5, p1

    iget v6, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    if-ge v5, v6, :cond_1e

    .line 915
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    iget v6, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    .line 918
    :cond_1e
    const/4 v1, 0x0

    .line 919
    .local v1, k:I
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .local v4, p:Ljava/util/concurrent/LinkedBlockingDeque$Node;,"Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    move v2, v1

    .end local v1           #k:I
    .local v2, k:I
    :goto_22
    if-eqz v4, :cond_2e

    .line 920
    add-int/lit8 v1, v2, 0x1

    .end local v2           #k:I
    .restart local v1       #k:I
    iget-object v5, v4, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    aput-object v5, p1, v2

    .line 919
    iget-object v4, v4, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    move v2, v1

    .end local v1           #k:I
    .restart local v2       #k:I
    goto :goto_22

    .line 921
    :cond_2e
    array-length v5, p1

    if-le v5, v2, :cond_34

    .line 922
    const/4 v5, 0x0

    aput-object v5, p1, v2
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_38

    .line 925
    :cond_34
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .end local v2           #k:I
    .end local v4           #p:Ljava/util/concurrent/LinkedBlockingDeque$Node;,"Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :catchall_38
    move-exception v5

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 930
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 931
    .local v1, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 933
    :try_start_5
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 934
    .local v2, p:Ljava/util/concurrent/LinkedBlockingDeque$Node;,"Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    if-nez v2, :cond_f

    .line 935
    const-string v4, "[]"
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_42

    .line 948
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_e
    return-object v4

    .line 937
    :cond_f
    :try_start_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 938
    .local v3, sb:Ljava/lang/StringBuilder;
    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 940
    :goto_19
    iget-object v0, v2, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 941
    .local v0, e:Ljava/lang/Object;,"TE;"
    if-ne v0, p0, :cond_34

    const-string v4, "(this Collection)"

    :goto_1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 942
    iget-object v2, v2, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 943
    if-nez v2, :cond_36

    .line 944
    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_f .. :try_end_2f} :catchall_42

    move-result-object v4

    .line 948
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_e

    :cond_34
    move-object v4, v0

    .line 941
    goto :goto_1f

    .line 945
    :cond_36
    const/16 v4, 0x2c

    :try_start_38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_41
    .catchall {:try_start_38 .. :try_end_41} :catchall_42

    goto :goto_19

    .line 948
    .end local v0           #e:Ljava/lang/Object;,"TE;"
    .end local v2           #p:Ljava/util/concurrent/LinkedBlockingDeque$Node;,"Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :catchall_42
    move-exception v4

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method unlink(Ljava/util/concurrent/LinkedBlockingDeque$Node;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingDeque$Node",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, this:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, x:Ljava/util/concurrent/LinkedBlockingDeque$Node;,"Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iget-object v1, p1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->prev:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 270
    .local v1, p:Ljava/util/concurrent/LinkedBlockingDeque$Node;,"Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, p1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 271
    .local v0, n:Ljava/util/concurrent/LinkedBlockingDeque$Node;,"Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    if-nez v1, :cond_a

    .line 272
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;

    .line 284
    :goto_9
    return-void

    .line 273
    :cond_a
    if-nez v0, :cond_10

    .line 274
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->unlinkLast()Ljava/lang/Object;

    goto :goto_9

    .line 276
    :cond_10
    iput-object v0, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 277
    iput-object v1, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->prev:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 278
    const/4 v2, 0x0

    iput-object v2, p1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 281
    iget v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    .line 282
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V

    goto :goto_9
.end method
