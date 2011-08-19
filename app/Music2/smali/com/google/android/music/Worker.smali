.class public Lcom/google/android/music/Worker;
.super Landroid/os/Handler;
.source "Worker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/Worker$ThreadLooper;
    }
.end annotation


# static fields
.field private static final EXCEPTION_KEY:Ljava/lang/String; = "exception"

.field private static final LOG_ASYNC_STACKTRACE:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 27
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/music/Worker;-><init>(Ljava/lang/String;I)V

    .line 28
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "priority"

    .prologue
    .line 31
    new-instance v0, Lcom/google/android/music/Worker$ThreadLooper;

    invoke-direct {v0, p1, p2}, Lcom/google/android/music/Worker$ThreadLooper;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/google/android/music/Worker$ThreadLooper;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 32
    return-void
.end method

.method private static countDuplicates([Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)I
    .locals 5
    .parameter "currentStack"
    .parameter "parentStack"

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, duplicates:I
    array-length v3, p1

    .line 103
    .local v3, parentIndex:I
    array-length v1, p0

    .local v1, i:I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_0

    .line 104
    aget-object v2, p1, v3

    .line 105
    .local v2, parentFrame:Ljava/lang/StackTraceElement;
    aget-object v4, p0, v1

    invoke-virtual {v2, v4}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 106
    add-int/lit8 v0, v0, 0x1

    .line 110
    goto :goto_0

    .line 111
    .end local v2           #parentFrame:Ljava/lang/StackTraceElement;
    :cond_0
    return v0
.end method

.method private static createStackTrace()Ljava/lang/String;
    .locals 14

    .prologue
    .line 63
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v9, sb:Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    .line 65
    .local v4, exception:Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v10

    .line 66
    .local v10, stack:[Ljava/lang/StackTraceElement;
    const-string v12, "Async stack trace:"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    move-object v0, v10

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v3, v0, v6

    .line 68
    .local v3, element:Ljava/lang/StackTraceElement;
    const-string v12, "\n\tat "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 71
    .end local v3           #element:Ljava/lang/StackTraceElement;
    :cond_0
    move-object v8, v10

    .line 72
    .local v8, parentStack:[Ljava/lang/StackTraceElement;
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    .line 73
    .local v11, throwable:Ljava/lang/Throwable;
    :goto_1
    if-eqz v11, :cond_3

    .line 74
    const-string v12, "\nCaused by: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v11}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 77
    .local v1, currentStack:[Ljava/lang/StackTraceElement;
    invoke-static {v1, v8}, Lcom/google/android/music/Worker;->countDuplicates([Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)I

    move-result v2

    .line 78
    .local v2, duplicates:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    array-length v12, v1

    sub-int/2addr v12, v2

    if-ge v5, v12, :cond_1

    .line 79
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\n\tat "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v1, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 81
    :cond_1
    if-lez v2, :cond_2

    .line 82
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\n\t... "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " more"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :cond_2
    move-object v8, v1

    .line 85
    invoke-virtual {v11}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    .line 86
    goto :goto_1

    .line 87
    .end local v1           #currentStack:[Ljava/lang/StackTraceElement;
    .end local v2           #duplicates:I
    .end local v5           #i:I
    :cond_3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 52
    return-void
.end method

.method public quit()V
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/android/music/Worker;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 36
    return-void
.end method

.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 1
    .parameter "msg"
    .parameter "uptimeMillis"

    .prologue
    .line 59
    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method
