.class public Ljava/util/logging/MemoryHandler;
.super Ljava/util/logging/Handler;
.source "MemoryHandler.java"


# static fields
.field private static final DEFAULT_SIZE:I = 0x3e8


# instance fields
.field private buffer:[Ljava/util/logging/LogRecord;

.field private cursor:I

.field private final manager:Ljava/util/logging/LogManager;

.field private push:Ljava/util/logging/Level;

.field private size:I

.field private target:Ljava/util/logging/Handler;


# direct methods
.method public constructor <init>()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/16 v6, 0x3e8

    .line 90
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 67
    iput v6, p0, Ljava/util/logging/MemoryHandler;->size:I

    .line 70
    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    iput-object v6, p0, Ljava/util/logging/MemoryHandler;->push:Ljava/util/logging/Level;

    .line 73
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v6

    iput-object v6, p0, Ljava/util/logging/MemoryHandler;->manager:Ljava/util/logging/LogManager;

    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, className:Ljava/lang/String;
    iget-object v6, p0, Ljava/util/logging/MemoryHandler;->manager:Ljava/util/logging/LogManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".target"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, targetName:Ljava/lang/String;
    :try_start_33
    new-instance v6, Ljava/util/logging/MemoryHandler$1;

    invoke-direct {v6, p0, v5}, Ljava/util/logging/MemoryHandler$1;-><init>(Ljava/util/logging/MemoryHandler;Ljava/lang/String;)V

    invoke-static {v6}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 106
    .local v4, targetClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/logging/Handler;

    iput-object v6, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_46} :catch_9e

    .line 111
    iget-object v6, p0, Ljava/util/logging/MemoryHandler;->manager:Ljava/util/logging/LogManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".size"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, sizeString:Ljava/lang/String;
    if-eqz v3, :cond_6f

    .line 114
    :try_start_61
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Ljava/util/logging/MemoryHandler;->size:I

    .line 115
    iget v6, p0, Ljava/util/logging/MemoryHandler;->size:I

    if-gtz v6, :cond_6f

    .line 116
    const/16 v6, 0x3e8

    iput v6, p0, Ljava/util/logging/MemoryHandler;->size:I
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_6f} :catch_bf

    .line 123
    :cond_6f
    :goto_6f
    iget-object v6, p0, Ljava/util/logging/MemoryHandler;->manager:Ljava/util/logging/LogManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".push"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, pushName:Ljava/lang/String;
    if-eqz v2, :cond_90

    .line 126
    :try_start_8a
    invoke-static {v2}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v6

    iput-object v6, p0, Ljava/util/logging/MemoryHandler;->push:Ljava/util/logging/Level;
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_90} :catch_d8

    .line 132
    :cond_90
    :goto_90
    const-string v6, "ALL"

    const-string v7, "java.util.logging.SimpleFormatter"

    invoke-virtual {p0, v6, v9, v7, v9}, Ljava/util/logging/MemoryHandler;->initProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget v6, p0, Ljava/util/logging/MemoryHandler;->size:I

    new-array v6, v6, [Ljava/util/logging/LogRecord;

    iput-object v6, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    .line 134
    return-void

    .line 107
    .end local v2           #pushName:Ljava/lang/String;
    .end local v3           #sizeString:Ljava/lang/String;
    .end local v4           #targetClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_9e
    move-exception v6

    move-object v1, v6

    .line 108
    .local v1, e:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot load target handler \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 118
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v3       #sizeString:Ljava/lang/String;
    .restart local v4       #targetClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_bf
    move-exception v6

    move-object v1, v6

    .line 119
    .restart local v1       #e:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".size"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v3, v1}, Ljava/util/logging/MemoryHandler;->printInvalidPropMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_6f

    .line 127
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #pushName:Ljava/lang/String;
    :catch_d8
    move-exception v6

    move-object v1, v6

    .line 128
    .restart local v1       #e:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".push"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v2, v1}, Ljava/util/logging/MemoryHandler;->printInvalidPropMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_90
.end method

.method public constructor <init>(Ljava/util/logging/Handler;ILjava/util/logging/Level;)V
    .registers 7
    .parameter "target"
    .parameter "size"
    .parameter "pushLevel"

    .prologue
    const/4 v2, 0x0

    .line 154
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 67
    const/16 v0, 0x3e8

    iput v0, p0, Ljava/util/logging/MemoryHandler;->size:I

    .line 70
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    iput-object v0, p0, Ljava/util/logging/MemoryHandler;->push:Ljava/util/logging/Level;

    .line 73
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    iput-object v0, p0, Ljava/util/logging/MemoryHandler;->manager:Ljava/util/logging/LogManager;

    .line 155
    if-gtz p2, :cond_1c

    .line 156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_1c
    invoke-virtual {p1}, Ljava/util/logging/Handler;->getLevel()Ljava/util/logging/Level;

    .line 159
    invoke-virtual {p3}, Ljava/util/logging/Level;->intValue()I

    .line 160
    iput-object p1, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;

    .line 161
    iput p2, p0, Ljava/util/logging/MemoryHandler;->size:I

    .line 162
    iput-object p3, p0, Ljava/util/logging/MemoryHandler;->push:Ljava/util/logging/Level;

    .line 163
    const-string v0, "ALL"

    const-string v1, "java.util.logging.SimpleFormatter"

    invoke-virtual {p0, v0, v2, v1, v2}, Ljava/util/logging/MemoryHandler;->initProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    new-array v0, p2, [Ljava/util/logging/LogRecord;

    iput-object v0, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    .line 165
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Ljava/util/logging/MemoryHandler;->manager:Ljava/util/logging/LogManager;

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 177
    iget-object v0, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;

    invoke-virtual {v0}, Ljava/util/logging/Handler;->close()V

    .line 178
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Ljava/util/logging/MemoryHandler;->setLevel(Ljava/util/logging/Level;)V

    .line 179
    return-void
.end method

.method public flush()V
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;

    invoke-virtual {v0}, Ljava/util/logging/Handler;->flush()V

    .line 188
    return-void
.end method

.method public getPushLevel()Ljava/util/logging/Level;
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Ljava/util/logging/MemoryHandler;->push:Ljava/util/logging/Level;

    return-object v0
.end method

.method public isLoggable(Ljava/util/logging/LogRecord;)Z
    .registers 3
    .parameter "record"

    .prologue
    .line 240
    invoke-super {p0, p1}, Ljava/util/logging/Handler;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized publish(Ljava/util/logging/LogRecord;)V
    .registers 5
    .parameter "record"

    .prologue
    .line 202
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/logging/MemoryHandler;->isLoggable(Ljava/util/logging/LogRecord;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_30

    move-result v0

    if-nez v0, :cond_9

    .line 212
    :cond_7
    :goto_7
    monitor-exit p0

    return-void

    .line 205
    :cond_9
    :try_start_9
    iget v0, p0, Ljava/util/logging/MemoryHandler;->cursor:I

    iget v1, p0, Ljava/util/logging/MemoryHandler;->size:I

    if-lt v0, v1, :cond_12

    .line 206
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/logging/MemoryHandler;->cursor:I

    .line 208
    :cond_12
    iget-object v0, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    iget v1, p0, Ljava/util/logging/MemoryHandler;->cursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/logging/MemoryHandler;->cursor:I

    aput-object p1, v0, v1

    .line 209
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iget-object v1, p0, Ljava/util/logging/MemoryHandler;->push:Ljava/util/logging/Level;

    invoke-virtual {v1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_7

    .line 210
    invoke-virtual {p0}, Ljava/util/logging/MemoryHandler;->push()V
    :try_end_2f
    .catchall {:try_start_9 .. :try_end_2f} :catchall_30

    goto :goto_7

    .line 202
    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public push()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 248
    iget v0, p0, Ljava/util/logging/MemoryHandler;->cursor:I

    .local v0, i:I
    :goto_3
    iget v1, p0, Ljava/util/logging/MemoryHandler;->size:I

    if-ge v0, v1, :cond_1d

    .line 249
    iget-object v1, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    aget-object v1, v1, v0

    if-eqz v1, :cond_16

    .line 250
    iget-object v1, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;

    iget-object v2, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/logging/Handler;->publish(Ljava/util/logging/LogRecord;)V

    .line 252
    :cond_16
    iget-object v1, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    aput-object v3, v1, v0

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 254
    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    iget v1, p0, Ljava/util/logging/MemoryHandler;->cursor:I

    if-ge v0, v1, :cond_38

    .line 255
    iget-object v1, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    aget-object v1, v1, v0

    if-eqz v1, :cond_31

    .line 256
    iget-object v1, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;

    iget-object v2, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/logging/Handler;->publish(Ljava/util/logging/LogRecord;)V

    .line 258
    :cond_31
    iget-object v1, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    aput-object v3, v1, v0

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 260
    :cond_38
    const/4 v1, 0x0

    iput v1, p0, Ljava/util/logging/MemoryHandler;->cursor:I

    .line 261
    return-void
.end method

.method public setPushLevel(Ljava/util/logging/Level;)V
    .registers 3
    .parameter "newLevel"

    .prologue
    .line 276
    iget-object v0, p0, Ljava/util/logging/MemoryHandler;->manager:Ljava/util/logging/LogManager;

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 277
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    .line 278
    iput-object p1, p0, Ljava/util/logging/MemoryHandler;->push:Ljava/util/logging/Level;

    .line 279
    return-void
.end method
