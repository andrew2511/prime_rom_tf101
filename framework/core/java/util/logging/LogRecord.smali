.class public Ljava/util/logging/LogRecord;
.super Ljava/lang/Object;
.source "LogRecord.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final MAJOR:I = 0x1

.field private static final MINOR:I = 0x4

.field private static currentSequenceNumber:J = 0x0L

.field private static currentThreadId:Ljava/lang/ThreadLocal; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static initThreadId:I = 0x0

.field private static final serialVersionUID:J = 0x4a8d593df3695196L


# instance fields
.field private level:Ljava/util/logging/Level;

.field private loggerName:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private millis:J

.field private transient parameters:[Ljava/lang/Object;

.field private transient resourceBundle:Ljava/util/ResourceBundle;

.field private resourceBundleName:Ljava/lang/String;

.field private sequenceNumber:J

.field private sourceClassName:Ljava/lang/String;

.field private transient sourceInited:Z

.field private sourceMethodName:Ljava/lang/String;

.field private threadID:I

.field private thrown:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 53
    const-wide/16 v0, 0x0

    sput-wide v0, Ljava/util/logging/LogRecord;->currentSequenceNumber:J

    .line 56
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Ljava/util/logging/LogRecord;->currentThreadId:Ljava/lang/ThreadLocal;

    .line 59
    const/4 v0, 0x0

    sput v0, Ljava/util/logging/LogRecord;->initThreadId:I

    return-void
.end method

.method public constructor <init>(Ljava/util/logging/Level;Ljava/lang/String;)V
    .registers 10
    .parameter "level"
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    if-nez p1, :cond_e

    .line 156
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "level == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 158
    :cond_e
    iput-object p1, p0, Ljava/util/logging/LogRecord;->level:Ljava/util/logging/Level;

    .line 159
    iput-object p2, p0, Ljava/util/logging/LogRecord;->message:Ljava/lang/String;

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Ljava/util/logging/LogRecord;->millis:J

    .line 162
    const-class v1, Ljava/util/logging/LogRecord;

    monitor-enter v1

    .line 163
    :try_start_1b
    sget-wide v2, Ljava/util/logging/LogRecord;->currentSequenceNumber:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Ljava/util/logging/LogRecord;->currentSequenceNumber:J

    iput-wide v2, p0, Ljava/util/logging/LogRecord;->sequenceNumber:J

    .line 164
    sget-object v2, Ljava/util/logging/LogRecord;->currentThreadId:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 165
    .local v0, id:Ljava/lang/Integer;
    if-nez v0, :cond_51

    .line 166
    sget v2, Ljava/util/logging/LogRecord;->initThreadId:I

    iput v2, p0, Ljava/util/logging/LogRecord;->threadID:I

    .line 167
    sget-object v2, Ljava/util/logging/LogRecord;->currentThreadId:Ljava/lang/ThreadLocal;

    sget v3, Ljava/util/logging/LogRecord;->initThreadId:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Ljava/util/logging/LogRecord;->initThreadId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 171
    :goto_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_1b .. :try_end_42} :catchall_58

    .line 173
    iput-object v6, p0, Ljava/util/logging/LogRecord;->sourceClassName:Ljava/lang/String;

    .line 174
    iput-object v6, p0, Ljava/util/logging/LogRecord;->sourceMethodName:Ljava/lang/String;

    .line 175
    iput-object v6, p0, Ljava/util/logging/LogRecord;->loggerName:Ljava/lang/String;

    .line 176
    iput-object v6, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    .line 177
    iput-object v6, p0, Ljava/util/logging/LogRecord;->resourceBundle:Ljava/util/ResourceBundle;

    .line 178
    iput-object v6, p0, Ljava/util/logging/LogRecord;->resourceBundleName:Ljava/lang/String;

    .line 179
    iput-object v6, p0, Ljava/util/logging/LogRecord;->thrown:Ljava/lang/Throwable;

    .line 180
    return-void

    .line 169
    :cond_51
    :try_start_51
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Ljava/util/logging/LogRecord;->threadID:I

    goto :goto_41

    .line 171
    .end local v0           #id:Ljava/lang/Integer;
    :catchall_58
    move-exception v2

    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_51 .. :try_end_5a} :catchall_58

    throw v2
.end method

.method private initSource()V
    .registers 8

    .prologue
    .line 364
    iget-boolean v6, p0, Ljava/util/logging/LogRecord;->sourceInited:Z

    if-eqz v6, :cond_5

    .line 382
    :goto_4
    return-void

    .line 368
    :cond_5
    const/4 v5, 0x0

    .line 369
    .local v5, sawLogger:Z
    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_11
    if-ge v3, v4, :cond_37

    aget-object v2, v0, v3

    .line 370
    .local v2, element:Ljava/lang/StackTraceElement;
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, current:Ljava/lang/String;
    const-class v6, Ljava/util/logging/Logger;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 372
    const/4 v5, 0x1

    .line 369
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 373
    :cond_29
    if-eqz v5, :cond_26

    .line 374
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/util/logging/LogRecord;->sourceClassName:Ljava/lang/String;

    .line 375
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/util/logging/LogRecord;->sourceMethodName:Ljava/lang/String;

    .line 380
    .end local v1           #current:Ljava/lang/String;
    .end local v2           #element:Ljava/lang/StackTraceElement;
    :cond_37
    const/4 v6, 0x1

    iput-boolean v6, p0, Ljava/util/logging/LogRecord;->sourceInited:Z

    goto :goto_4
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 10
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 483
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 484
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readByte()B

    move-result v3

    .line 485
    .local v3, major:B
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readByte()B

    move-result v4

    .line 487
    .local v4, minor:B
    const/4 v5, 0x1

    if-eq v3, v5, :cond_39

    .line 488
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Different version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 491
    :cond_39
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 492
    .local v2, length:I
    if-ltz v2, :cond_54

    .line 493
    new-array v5, v2, [Ljava/lang/Object;

    iput-object v5, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    .line 494
    const/4 v1, 0x0

    .local v1, i:I
    :goto_44
    iget-object v5, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    array-length v5, v5

    if-ge v1, v5, :cond_54

    .line 495
    iget-object v5, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v1

    .line 494
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 498
    .end local v1           #i:I
    :cond_54
    iget-object v5, p0, Ljava/util/logging/LogRecord;->resourceBundleName:Ljava/lang/String;

    if-eqz v5, :cond_60

    .line 500
    :try_start_58
    iget-object v5, p0, Ljava/util/logging/LogRecord;->resourceBundleName:Ljava/lang/String;

    invoke-static {v5}, Ljava/util/logging/Logger;->loadResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v5

    iput-object v5, p0, Ljava/util/logging/LogRecord;->resourceBundle:Ljava/util/ResourceBundle;
    :try_end_60
    .catch Ljava/util/MissingResourceException; {:try_start_58 .. :try_end_60} :catch_61

    .line 506
    :cond_60
    :goto_60
    return-void

    .line 501
    :catch_61
    move-exception v5

    move-object v0, v5

    .line 503
    .local v0, e:Ljava/util/MissingResourceException;
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/logging/LogRecord;->resourceBundle:Ljava/util/ResourceBundle;

    goto :goto_60
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 7
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 465
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 466
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeByte(I)V

    .line 467
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeByte(I)V

    .line 468
    iget-object v4, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    if-nez v4, :cond_14

    .line 469
    const/4 v4, -0x1

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 476
    :cond_13
    return-void

    .line 471
    :cond_14
    iget-object v4, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    array-length v4, v4

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 472
    iget-object v0, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    .local v0, arr$:[Ljava/lang/Object;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1e
    if-ge v2, v3, :cond_13

    aget-object v1, v0, v2

    .line 473
    .local v1, element:Ljava/lang/Object;
    if-nez v1, :cond_2b

    const/4 v4, 0x0

    :goto_25
    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 472
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 473
    :cond_2b
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_25
.end method


# virtual methods
.method public getLevel()Ljava/util/logging/Level;
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Ljava/util/logging/LogRecord;->level:Ljava/util/logging/Level;

    return-object v0
.end method

.method public getLoggerName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Ljava/util/logging/LogRecord;->loggerName:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Ljava/util/logging/LogRecord;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getMillis()J
    .registers 3

    .prologue
    .line 252
    iget-wide v0, p0, Ljava/util/logging/LogRecord;->millis:J

    return-wide v0
.end method

.method public getParameters()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    return-object v0
.end method

.method public getResourceBundle()Ljava/util/ResourceBundle;
    .registers 2

    .prologue
    .line 293
    iget-object v0, p0, Ljava/util/logging/LogRecord;->resourceBundle:Ljava/util/ResourceBundle;

    return-object v0
.end method

.method public getResourceBundleName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 314
    iget-object v0, p0, Ljava/util/logging/LogRecord;->resourceBundleName:Ljava/lang/String;

    return-object v0
.end method

.method public getSequenceNumber()J
    .registers 3

    .prologue
    .line 333
    iget-wide v0, p0, Ljava/util/logging/LogRecord;->sequenceNumber:J

    return-wide v0
.end method

.method public getSourceClassName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 355
    invoke-direct {p0}, Ljava/util/logging/LogRecord;->initSource()V

    .line 356
    iget-object v0, p0, Ljava/util/logging/LogRecord;->sourceClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceMethodName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 402
    invoke-direct {p0}, Ljava/util/logging/LogRecord;->initSource()V

    .line 403
    iget-object v0, p0, Ljava/util/logging/LogRecord;->sourceMethodName:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadID()I
    .registers 2

    .prologue
    .line 428
    iget v0, p0, Ljava/util/logging/LogRecord;->threadID:I

    return v0
.end method

.method public getThrown()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 447
    iget-object v0, p0, Ljava/util/logging/LogRecord;->thrown:Ljava/lang/Throwable;

    return-object v0
.end method

.method public setLevel(Ljava/util/logging/Level;)V
    .registers 4
    .parameter "level"

    .prologue
    .line 200
    if-nez p1, :cond_a

    .line 201
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "level == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_a
    iput-object p1, p0, Ljava/util/logging/LogRecord;->level:Ljava/util/logging/Level;

    .line 204
    return-void
.end method

.method public setLoggerName(Ljava/lang/String;)V
    .registers 2
    .parameter "loggerName"

    .prologue
    .line 222
    iput-object p1, p0, Ljava/util/logging/LogRecord;->loggerName:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 243
    iput-object p1, p0, Ljava/util/logging/LogRecord;->message:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public setMillis(J)V
    .registers 3
    .parameter "millis"

    .prologue
    .line 262
    iput-wide p1, p0, Ljava/util/logging/LogRecord;->millis:J

    .line 263
    return-void
.end method

.method public setParameters([Ljava/lang/Object;)V
    .registers 2
    .parameter "parameters"

    .prologue
    .line 282
    iput-object p1, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    .line 283
    return-void
.end method

.method public setResourceBundle(Ljava/util/ResourceBundle;)V
    .registers 2
    .parameter "resourceBundle"

    .prologue
    .line 304
    iput-object p1, p0, Ljava/util/logging/LogRecord;->resourceBundle:Ljava/util/ResourceBundle;

    .line 305
    return-void
.end method

.method public setResourceBundleName(Ljava/lang/String;)V
    .registers 2
    .parameter "resourceBundleName"

    .prologue
    .line 324
    iput-object p1, p0, Ljava/util/logging/LogRecord;->resourceBundleName:Ljava/lang/String;

    .line 325
    return-void
.end method

.method public setSequenceNumber(J)V
    .registers 3
    .parameter "sequenceNumber"

    .prologue
    .line 345
    iput-wide p1, p0, Ljava/util/logging/LogRecord;->sequenceNumber:J

    .line 346
    return-void
.end method

.method public setSourceClassName(Ljava/lang/String;)V
    .registers 3
    .parameter "sourceClassName"

    .prologue
    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/logging/LogRecord;->sourceInited:Z

    .line 393
    iput-object p1, p0, Ljava/util/logging/LogRecord;->sourceClassName:Ljava/lang/String;

    .line 394
    return-void
.end method

.method public setSourceMethodName(Ljava/lang/String;)V
    .registers 3
    .parameter "sourceMethodName"

    .prologue
    .line 414
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/logging/LogRecord;->sourceInited:Z

    .line 415
    iput-object p1, p0, Ljava/util/logging/LogRecord;->sourceMethodName:Ljava/lang/String;

    .line 416
    return-void
.end method

.method public setThreadID(I)V
    .registers 2
    .parameter "threadID"

    .prologue
    .line 438
    iput p1, p0, Ljava/util/logging/LogRecord;->threadID:I

    .line 439
    return-void
.end method

.method public setThrown(Ljava/lang/Throwable;)V
    .registers 2
    .parameter "thrown"

    .prologue
    .line 458
    iput-object p1, p0, Ljava/util/logging/LogRecord;->thrown:Ljava/lang/Throwable;

    .line 459
    return-void
.end method
