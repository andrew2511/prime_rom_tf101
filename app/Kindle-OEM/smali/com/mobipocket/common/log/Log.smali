.class public final Lcom/mobipocket/common/log/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static final ALL_LOGS:I = 0x3f

.field public static final DEBUG:I = 0x2

.field public static final DEV:I = 0x10

.field public static final DEV_FEATURE:I = 0x20

.field public static final ERROR:I = 0x8

.field public static final PUBLIC_LOGS:I = 0xe

.field public static final TODO:I = 0x1

.field public static final WARNING:I = 0x4

.field private static enabledDevLog:[Ljava/lang/String;

.field private static logFilter:I

.field private static maxBufferSize:I

.field private static pLogger:Lcom/mobipocket/common/log/Logger;

.field private static privBuffer:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/mobipocket/common/log/Log;->enabledDevLog:[Ljava/lang/String;

    .line 88
    const/16 v0, 0xe

    sput v0, Lcom/mobipocket/common/log/Log;->logFilter:I

    .line 93
    sput-object v1, Lcom/mobipocket/common/log/Log;->pLogger:Lcom/mobipocket/common/log/Logger;

    .line 103
    sput-object v1, Lcom/mobipocket/common/log/Log;->privBuffer:Ljava/lang/StringBuffer;

    .line 108
    const/16 v0, 0x7d00

    sput v0, Lcom/mobipocket/common/log/Log;->maxBufferSize:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDevFeatureLog(Ljava/lang/String;)V
    .locals 4
    .parameter "featureName"

    .prologue
    const/4 v3, 0x0

    .line 344
    sget-object v0, Lcom/mobipocket/common/log/Log;->enabledDevLog:[Ljava/lang/String;

    .line 345
    .local v0, oldEnabledDevLog:[Ljava/lang/String;
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/mobipocket/common/log/Log;->enabledDevLog:[Ljava/lang/String;

    .line 346
    sget-object v1, Lcom/mobipocket/common/log/Log;->enabledDevLog:[Ljava/lang/String;

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 348
    sget-object v1, Lcom/mobipocket/common/log/Log;->enabledDevLog:[Ljava/lang/String;

    sget-object v2, Lcom/mobipocket/common/log/Log;->enabledDevLog:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aput-object p0, v1, v2

    .line 349
    return-void
.end method

.method public static clearLogs()V
    .locals 1

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/mobipocket/common/log/Log;->privBuffer:Ljava/lang/StringBuffer;

    .line 132
    return-void
.end method

.method public static getLogs()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    sget-object v1, Lcom/mobipocket/common/log/Log;->privBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, logs:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v1, Lcom/mobipocket/common/log/Log;->privBuffer:Ljava/lang/StringBuffer;

    .line 126
    return-object v0
.end method

.method private static isDevEnabledForClass(Ljava/lang/String;)Z
    .locals 2
    .parameter "className"

    .prologue
    .line 326
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/mobipocket/common/log/Log;->enabledDevLog:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 327
    sget-object v1, Lcom/mobipocket/common/log/Log;->enabledDevLog:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    const/4 v1, 0x1

    .line 332
    :goto_1
    return v1

    .line 326
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 332
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static keepLogsInMemory()V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/mobipocket/common/log/Log;->privBuffer:Ljava/lang/StringBuffer;

    .line 116
    return-void
.end method

.method public static final log(ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 148
    return-void
.end method

.method public static final log(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception occurred: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nException class:    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nException message:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nException stack trace:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 163
    return-void
.end method

.method public static final log(IZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 171
    return-void
.end method

.method public static final log(I[B)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 181
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 182
    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-byte v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    :cond_0
    return-void
.end method

.method public static logAssert(ZLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 197
    if-nez p0, :cond_0

    sget v0, Lcom/mobipocket/common/log/Log;->logFilter:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 205
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static final logFeature(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 216
    return-void
.end method

.method private static final out(ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 253
    return-void
.end method

.method private static final out(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 258
    const/16 v0, 0x20

    if-ne p0, v0, :cond_2

    .line 260
    if-eqz p1, :cond_1

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DEV_FEATURE--> ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DEV_FEATURE-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 268
    :cond_2
    sget v0, Lcom/mobipocket/common/log/Log;->logFilter:I

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    .line 272
    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TODO->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    :goto_1
    sget-object v0, Lcom/mobipocket/common/log/Log;->privBuffer:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    .line 302
    sget-object v0, Lcom/mobipocket/common/log/Log;->privBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    sget v1, Lcom/mobipocket/common/log/Log;->maxBufferSize:I

    if-le v0, v1, :cond_3

    .line 303
    sget-object v0, Lcom/mobipocket/common/log/Log;->privBuffer:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    sget v2, Lcom/mobipocket/common/log/Log;->maxBufferSize:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 305
    :cond_3
    sget-object v0, Lcom/mobipocket/common/log/Log;->privBuffer:Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 276
    :cond_4
    const/4 v0, 0x2

    if-ne p0, v0, :cond_5

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DEBUG>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 280
    :cond_5
    const/16 v0, 0x8

    if-ne p0, v0, :cond_6

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 284
    :cond_6
    const/4 v0, 0x4

    if-ne p0, v0, :cond_7

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WARN->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 288
    :cond_7
    const/16 v0, 0x10

    if-ne p0, v0, :cond_9

    .line 290
    if-eqz p1, :cond_8

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DEV--> ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 294
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DEV-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 299
    :cond_9
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNKNOWN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private static final outToLogger(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 313
    sget-object v0, Lcom/mobipocket/common/log/Log;->pLogger:Lcom/mobipocket/common/log/Logger;

    if-eqz v0, :cond_0

    .line 319
    :goto_0
    return-void

    .line 317
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setLogFilter(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 242
    sput p0, Lcom/mobipocket/common/log/Log;->logFilter:I

    .line 243
    return-void
.end method

.method public static setLogger(Lcom/mobipocket/common/log/Logger;)V
    .locals 0
    .parameter

    .prologue
    .line 230
    sput-object p0, Lcom/mobipocket/common/log/Log;->pLogger:Lcom/mobipocket/common/log/Logger;

    .line 234
    return-void
.end method
