.class public Ljava/lang/Throwable;
.super Ljava/lang/Object;
.source "Throwable.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2a39cad8c6884735L


# instance fields
.field private cause:Ljava/lang/Throwable;

.field private detailMessage:Ljava/lang/String;

.field private volatile stackState:Ljava/lang/Object;

.field private stackTrace:[Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    .line 74
    invoke-virtual {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "detailMessage"

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 86
    iput-object p1, p0, Ljava/lang/Throwable;->detailMessage:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "detailMessage"
    .parameter "throwable"

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 100
    iput-object p1, p0, Ljava/lang/Throwable;->detailMessage:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3
    .parameter "throwable"

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 113
    if-nez p1, :cond_b

    const/4 v0, 0x0

    :goto_6
    iput-object v0, p0, Ljava/lang/Throwable;->detailMessage:Ljava/lang/String;

    .line 114
    iput-object p1, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    .line 115
    return-void

    .line 113
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method private static countDuplicates([Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)I
    .registers 7
    .parameter "currentStack"
    .parameter "parentStack"

    .prologue
    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, duplicates:I
    array-length v3, p1

    .line 226
    .local v3, parentIndex:I
    array-length v1, p0

    .local v1, i:I
    :goto_3
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_18

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_18

    .line 227
    aget-object v2, p1, v3

    .line 228
    .local v2, parentFrame:Ljava/lang/StackTraceElement;
    aget-object v4, p0, v1

    invoke-virtual {v2, v4}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 229
    add-int/lit8 v0, v0, 0x1

    .line 233
    goto :goto_3

    .line 234
    .end local v2           #parentFrame:Ljava/lang/StackTraceElement;
    :cond_18
    return v0
.end method

.method private getInternalStackTrace()[Ljava/lang/StackTraceElement;
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    if-nez v0, :cond_f

    .line 245
    iget-object v0, p0, Ljava/lang/Throwable;->stackState:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Throwable;->nativeGetStackTrace(Ljava/lang/Object;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/Throwable;->stackState:Ljava/lang/Object;

    .line 248
    :cond_f
    iget-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    return-object v0
.end method

.method private static native nativeFillInStackTrace()Ljava/lang/Object;
.end method

.method private static native nativeGetStackTrace(Ljava/lang/Object;)[Ljava/lang/StackTraceElement;
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    invoke-direct {p0}, Ljava/lang/Throwable;->getInternalStackTrace()[Ljava/lang/StackTraceElement;

    .line 376
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 377
    return-void
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 135
    invoke-static {}, Ljava/lang/Throwable;->nativeFillInStackTrace()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Throwable;->stackState:Ljava/lang/Object;

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 138
    return-object p0
.end method

.method public getCause()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 367
    iget-object v0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    if-ne v0, p0, :cond_6

    .line 368
    const/4 v0, 0x0

    .line 370
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    goto :goto_5
.end method

.method public getLocalizedMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 161
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Ljava/lang/Throwable;->detailMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getStackTrace()[Ljava/lang/StackTraceElement;
    .registers 2

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Throwable;->getInternalStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/StackTraceElement;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/StackTraceElement;

    return-object p0
.end method

.method public initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 4
    .parameter "throwable"

    .prologue
    .line 350
    iget-object v0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    if-ne v0, p0, :cond_11

    .line 351
    if-eq p1, p0, :cond_9

    .line 352
    iput-object p1, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    .line 353
    return-object p0

    .line 355
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cause cannot be the receiver"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cause already initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public printStackTrace()V
    .registers 2

    .prologue
    .line 210
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 211
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .registers 14
    .parameter "err"

    .prologue
    .line 261
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 264
    invoke-direct {p0}, Ljava/lang/Throwable;->getInternalStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    .line 265
    .local v8, stack:[Ljava/lang/StackTraceElement;
    if-eqz v8, :cond_2d

    .line 266
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_10
    if-ge v5, v6, :cond_2d

    aget-object v3, v0, v5

    .line 267
    .local v3, element:Ljava/lang/StackTraceElement;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\tat "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 266
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 271
    .end local v0           #arr$:[Ljava/lang/StackTraceElement;
    .end local v3           #element:Ljava/lang/StackTraceElement;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_2d
    move-object v7, v8

    .line 272
    .local v7, parentStack:[Ljava/lang/StackTraceElement;
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    .line 273
    .local v9, throwable:Ljava/lang/Throwable;
    :goto_32
    if-eqz v9, :cond_88

    .line 274
    const-string v10, "Caused by: "

    invoke-virtual {p1, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p1, v9}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 276
    invoke-direct {v9}, Ljava/lang/Throwable;->getInternalStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 277
    .local v1, currentStack:[Ljava/lang/StackTraceElement;
    invoke-static {v1, v7}, Ljava/lang/Throwable;->countDuplicates([Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)I

    move-result v2

    .line 278
    .local v2, duplicates:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_45
    array-length v10, v1

    sub-int/2addr v10, v2

    if-ge v4, v10, :cond_64

    .line 279
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\tat "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v1, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 278
    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    .line 281
    :cond_64
    if-lez v2, :cond_82

    .line 282
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\t... "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " more"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 284
    :cond_82
    move-object v7, v1

    .line 285
    invoke-virtual {v9}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    .line 286
    goto :goto_32

    .line 287
    .end local v1           #currentStack:[Ljava/lang/StackTraceElement;
    .end local v2           #duplicates:I
    .end local v4           #i:I
    :cond_88
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .registers 14
    .parameter "err"

    .prologue
    .line 299
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 302
    invoke-direct {p0}, Ljava/lang/Throwable;->getInternalStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    .line 303
    .local v8, stack:[Ljava/lang/StackTraceElement;
    if-eqz v8, :cond_2d

    .line 304
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_10
    if-ge v5, v6, :cond_2d

    aget-object v3, v0, v5

    .line 305
    .local v3, element:Ljava/lang/StackTraceElement;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\tat "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 304
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 309
    .end local v0           #arr$:[Ljava/lang/StackTraceElement;
    .end local v3           #element:Ljava/lang/StackTraceElement;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_2d
    move-object v7, v8

    .line 310
    .local v7, parentStack:[Ljava/lang/StackTraceElement;
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    .line 311
    .local v9, throwable:Ljava/lang/Throwable;
    :goto_32
    if-eqz v9, :cond_88

    .line 312
    const-string v10, "Caused by: "

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 314
    invoke-direct {v9}, Ljava/lang/Throwable;->getInternalStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 315
    .local v1, currentStack:[Ljava/lang/StackTraceElement;
    invoke-static {v1, v7}, Ljava/lang/Throwable;->countDuplicates([Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)I

    move-result v2

    .line 316
    .local v2, duplicates:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_45
    array-length v10, v1

    sub-int/2addr v10, v2

    if-ge v4, v10, :cond_64

    .line 317
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\tat "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v1, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    .line 319
    :cond_64
    if-lez v2, :cond_82

    .line 320
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\t... "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " more"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 322
    :cond_82
    move-object v7, v1

    .line 323
    invoke-virtual {v9}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    .line 324
    goto :goto_32

    .line 325
    .end local v1           #currentStack:[Ljava/lang/StackTraceElement;
    .end local v2           #duplicates:I
    .end local v4           #i:I
    :cond_88
    return-void
.end method

.method public setStackTrace([Ljava/lang/StackTraceElement;)V
    .registers 8
    .parameter "trace"

    .prologue
    .line 195
    invoke-virtual {p1}, [Ljava/lang/StackTraceElement;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/StackTraceElement;

    .line 196
    .local v4, newTrace:[Ljava/lang/StackTraceElement;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_9
    if-ge v2, v3, :cond_18

    aget-object v1, v0, v2

    .line 197
    .local v1, element:Ljava/lang/StackTraceElement;
    if-nez v1, :cond_15

    .line 198
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 196
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 201
    .end local v1           #element:Ljava/lang/StackTraceElement;
    :cond_18
    iput-object v4, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 202
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 329
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, msg:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, name:Ljava/lang/String;
    if-nez v0, :cond_10

    move-object v2, v1

    .line 334
    :goto_f
    return-object v2

    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_f
.end method
