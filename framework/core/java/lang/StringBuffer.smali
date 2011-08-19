.class public final Ljava/lang/StringBuffer;
.super Ljava/lang/AbstractStringBuilder;
.source "StringBuffer.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/CharSequence;


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = 0x2f0707d9eac8ead3L


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 50
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "count"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "shared"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "value"

    const-class v4, [C

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/lang/StringBuffer;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/AbstractStringBuilder;-><init>()V

    .line 60
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .parameter "capacity"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;-><init>(I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "cs"

    .prologue
    .line 98
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "string"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 8
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 742
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v2

    .line 743
    .local v2, fields:Ljava/io/ObjectInputStream$GetField;
    const-string v4, "count"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v1

    .line 744
    .local v1, count:I
    const-string v4, "value"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [C

    move-object v0, v4

    check-cast v0, [C

    move-object v3, v0

    .line 745
    .local v3, value:[C
    invoke-virtual {p0, v3, v1}, Ljava/lang/StringBuffer;->set([CI)V

    .line 746
    return-void
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 733
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 734
    .local v0, fields:Ljava/io/ObjectOutputStream$PutField;
    const-string v1, "count"

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 735
    const-string v1, "shared"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 736
    const-string v1, "value"

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->getValue()[C

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 737
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 738
    monitor-exit p0

    return-void

    .line 733
    .end local v0           #fields:Ljava/io/ObjectOutputStream$PutField;
    :catchall_22
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized append(C)Ljava/lang/StringBuffer;
    .registers 3
    .parameter "ch"

    .prologue
    .line 126
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append0(C)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 127
    monitor-exit p0

    return-object p0

    .line 126
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public append(D)Ljava/lang/StringBuffer;
    .registers 4
    .parameter "d"

    .prologue
    .line 140
    invoke-static {}, Ljava/lang/RealToString;->getInstance()Ljava/lang/RealToString;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Ljava/lang/RealToString;->appendDouble(Ljava/lang/AbstractStringBuilder;D)V

    .line 141
    return-object p0
.end method

.method public append(F)Ljava/lang/StringBuffer;
    .registers 3
    .parameter "f"

    .prologue
    .line 154
    invoke-static {}, Ljava/lang/RealToString;->getInstance()Ljava/lang/RealToString;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/RealToString;->appendFloat(Ljava/lang/AbstractStringBuilder;F)V

    .line 155
    return-object p0
.end method

.method public append(I)Ljava/lang/StringBuffer;
    .registers 2
    .parameter "i"

    .prologue
    .line 168
    invoke-static {p0, p1}, Ljava/lang/IntegralToString;->appendInt(Ljava/lang/AbstractStringBuilder;I)V

    .line 169
    return-object p0
.end method

.method public append(J)Ljava/lang/StringBuffer;
    .registers 3
    .parameter "l"

    .prologue
    .line 182
    invoke-static {p0, p1, p2}, Ljava/lang/IntegralToString;->appendLong(Ljava/lang/AbstractStringBuilder;J)V

    .line 183
    return-object p0
.end method

.method public declared-synchronized append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;
    .registers 4
    .parameter "s"

    .prologue
    .line 295
    monitor-enter p0

    if-nez p1, :cond_8

    .line 296
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->appendNull()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_11

    .line 300
    :goto_6
    monitor-exit p0

    return-object p0

    .line 298
    :cond_8
    const/4 v0, 0x0

    :try_start_9
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/lang/StringBuffer;->append0(Ljava/lang/CharSequence;II)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_11

    goto :goto_6

    .line 295
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 323
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->append0(Ljava/lang/CharSequence;II)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 324
    monitor-exit p0

    return-object p0

    .line 323
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
    .registers 3
    .parameter "obj"

    .prologue
    .line 200
    monitor-enter p0

    if-nez p1, :cond_8

    .line 201
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->appendNull()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_10

    .line 205
    :goto_6
    monitor-exit p0

    return-object p0

    .line 203
    :cond_8
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append0(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_10

    goto :goto_6

    .line 200
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    .registers 3
    .parameter "string"

    .prologue
    .line 219
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append0(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 220
    monitor-exit p0

    return-object p0

    .line 219
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 5
    .parameter "sb"

    .prologue
    .line 237
    monitor-enter p0

    if-nez p1, :cond_8

    .line 238
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->appendNull()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1a

    .line 244
    :goto_6
    monitor-exit p0

    return-object p0

    .line 240
    :cond_8
    :try_start_8
    monitor-enter p1
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_1a

    .line 241
    :try_start_9
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->getValue()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Ljava/lang/StringBuffer;->append0([CII)V

    .line 242
    monitor-exit p1

    goto :goto_6

    :catchall_17
    move-exception v0

    monitor-exit p1
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_17

    :try_start_19
    throw v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1a

    .line 237
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public append(Z)Ljava/lang/StringBuffer;
    .registers 3
    .parameter "b"

    .prologue
    .line 114
    if-eqz p1, :cond_9

    const-string v0, "true"

    :goto_4
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    :cond_9
    const-string v0, "false"

    goto :goto_4
.end method

.method public declared-synchronized append([C)Ljava/lang/StringBuffer;
    .registers 3
    .parameter "chars"

    .prologue
    .line 257
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append0([C)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 258
    monitor-exit p0

    return-object p0

    .line 257
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized append([CII)Ljava/lang/StringBuffer;
    .registers 5
    .parameter "chars"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 278
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->append0([CII)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 279
    monitor-exit p0

    return-object p0

    .line 278
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public appendCodePoint(I)Ljava/lang/StringBuffer;
    .registers 3
    .parameter "codePoint"

    .prologue
    .line 341
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic capacity()I
    .registers 2

    .prologue
    .line 45
    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->capacity()I

    move-result v0

    return v0
.end method

.method public declared-synchronized charAt(I)C
    .registers 3
    .parameter "index"

    .prologue
    .line 346
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->charAt(I)C
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized codePointAt(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 351
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->codePointAt(I)I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized codePointBefore(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 356
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->codePointBefore(I)I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized codePointCount(II)I
    .registers 4
    .parameter "beginIndex"
    .parameter "endIndex"

    .prologue
    .line 361
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->codePointCount(II)I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized delete(II)Ljava/lang/StringBuffer;
    .registers 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 377
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->delete0(II)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 378
    monitor-exit p0

    return-object p0

    .line 377
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteCharAt(I)Ljava/lang/StringBuffer;
    .registers 3
    .parameter "location"

    .prologue
    .line 391
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->deleteCharAt0(I)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 392
    monitor-exit p0

    return-object p0

    .line 391
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ensureCapacity(I)V
    .registers 3
    .parameter "min"

    .prologue
    .line 397
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->ensureCapacity(I)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 398
    monitor-exit p0

    return-void

    .line 397
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getChars(II[CI)V
    .registers 6
    .parameter "start"
    .parameter "end"
    .parameter "buffer"
    .parameter "idx"

    .prologue
    .line 419
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1, p2, p3, p4}, Ljava/lang/AbstractStringBuilder;->getChars(II[CI)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 420
    monitor-exit p0

    return-void

    .line 419
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic indexOf(Ljava/lang/String;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 45
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized indexOf(Ljava/lang/String;I)I
    .registers 4
    .parameter "subString"
    .parameter "start"

    .prologue
    .line 424
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->indexOf(Ljava/lang/String;I)I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insert(IC)Ljava/lang/StringBuffer;
    .registers 4
    .parameter "index"
    .parameter "ch"

    .prologue
    .line 439
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->insert0(IC)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 440
    monitor-exit p0

    return-object p0

    .line 439
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public insert(ID)Ljava/lang/StringBuffer;
    .registers 5
    .parameter "index"
    .parameter "d"

    .prologue
    .line 504
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public insert(IF)Ljava/lang/StringBuffer;
    .registers 4
    .parameter "index"
    .parameter "f"

    .prologue
    .line 520
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public insert(II)Ljava/lang/StringBuffer;
    .registers 4
    .parameter "index"
    .parameter "i"

    .prologue
    .line 472
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public insert(IJ)Ljava/lang/StringBuffer;
    .registers 5
    .parameter "index"
    .parameter "l"

    .prologue
    .line 488
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuffer;
    .registers 4
    .parameter "index"
    .parameter "s"

    .prologue
    .line 622
    monitor-enter p0

    if-nez p2, :cond_a

    :try_start_3
    const-string v0, "null"

    :goto_5
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->insert0(ILjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_f

    .line 623
    monitor-exit p0

    return-object p0

    .line 622
    :cond_a
    :try_start_a
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_f

    move-result-object v0

    goto :goto_5

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insert(ILjava/lang/CharSequence;II)Ljava/lang/StringBuffer;
    .registers 6
    .parameter "index"
    .parameter "s"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 651
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuffer;->insert0(ILjava/lang/CharSequence;II)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 652
    monitor-exit p0

    return-object p0

    .line 651
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public insert(ILjava/lang/Object;)Ljava/lang/StringBuffer;
    .registers 4
    .parameter "index"
    .parameter "obj"

    .prologue
    .line 540
    if-nez p2, :cond_9

    const-string v0, "null"

    :goto_4
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    :cond_9
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public declared-synchronized insert(ILjava/lang/String;)Ljava/lang/StringBuffer;
    .registers 4
    .parameter "index"
    .parameter "string"

    .prologue
    .line 558
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->insert0(ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 559
    monitor-exit p0

    return-object p0

    .line 558
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public insert(IZ)Ljava/lang/StringBuffer;
    .registers 4
    .parameter "index"
    .parameter "b"

    .prologue
    .line 456
    if-eqz p2, :cond_9

    const-string v0, "true"

    :goto_4
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    :cond_9
    const-string v0, "false"

    goto :goto_4
.end method

.method public declared-synchronized insert(I[C)Ljava/lang/StringBuffer;
    .registers 4
    .parameter "index"
    .parameter "chars"

    .prologue
    .line 576
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->insert0(I[C)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 577
    monitor-exit p0

    return-object p0

    .line 576
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insert(I[CII)Ljava/lang/StringBuffer;
    .registers 6
    .parameter "index"
    .parameter "chars"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 601
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuffer;->insert0(I[CII)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 602
    monitor-exit p0

    return-object p0

    .line 601
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic lastIndexOf(Ljava/lang/String;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 45
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized lastIndexOf(Ljava/lang/String;I)I
    .registers 4
    .parameter "subString"
    .parameter "start"

    .prologue
    .line 657
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->lastIndexOf(Ljava/lang/String;I)I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic length()I
    .registers 2

    .prologue
    .line 45
    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public declared-synchronized offsetByCodePoints(II)I
    .registers 4
    .parameter "index"
    .parameter "codePointOffset"

    .prologue
    .line 662
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->offsetByCodePoints(II)I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized replace(IILjava/lang/String;)Ljava/lang/StringBuffer;
    .registers 5
    .parameter "start"
    .parameter "end"
    .parameter "string"

    .prologue
    .line 682
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->replace0(IILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 683
    monitor-exit p0

    return-object p0

    .line 682
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reverse()Ljava/lang/StringBuffer;
    .registers 2

    .prologue
    .line 692
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->reverse0()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 693
    monitor-exit p0

    return-object p0

    .line 692
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCharAt(IC)V
    .registers 4
    .parameter "index"
    .parameter "ch"

    .prologue
    .line 698
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->setCharAt(IC)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 699
    monitor-exit p0

    return-void

    .line 698
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLength(I)V
    .registers 3
    .parameter "length"

    .prologue
    .line 703
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->setLength(I)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 704
    monitor-exit p0

    return-void

    .line 703
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized subSequence(II)Ljava/lang/CharSequence;
    .registers 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 708
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->substring(II)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized substring(I)Ljava/lang/String;
    .registers 3
    .parameter "start"

    .prologue
    .line 713
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->substring(I)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized substring(II)Ljava/lang/String;
    .registers 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 718
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->substring(II)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 723
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized trimToSize()V
    .registers 2

    .prologue
    .line 728
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->trimToSize()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 729
    monitor-exit p0

    return-void

    .line 728
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
