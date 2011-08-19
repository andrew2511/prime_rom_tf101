.class public final Ljava/io/Console;
.super Ljava/lang/Object;
.source "Console.java"

# interfaces
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/Console$ConsoleWriter;,
        Ljava/io/Console$ConsoleReader;
    }
.end annotation


# static fields
.field private static final CONSOLE_LOCK:Ljava/lang/Object;

.field private static final console:Ljava/io/Console;


# instance fields
.field private final reader:Ljava/io/Console$ConsoleReader;

.field private final writer:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/io/Console;->CONSOLE_LOCK:Ljava/lang/Object;

    .line 28
    invoke-static {}, Ljava/io/Console;->makeConsole()Ljava/io/Console;

    move-result-object v0

    sput-object v0, Ljava/io/Console;->console:Ljava/io/Console;

    return-void
.end method

.method private constructor <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/io/Console$ConsoleReader;

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/Console$ConsoleReader;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Ljava/io/Console;->reader:Ljava/io/Console$ConsoleReader;

    .line 55
    new-instance v0, Ljava/io/Console$ConsoleWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/Console$ConsoleWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Ljava/io/Console;->writer:Ljava/io/PrintWriter;

    .line 56
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Ljava/io/Console;->CONSOLE_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method public static getConsole()Ljava/io/Console;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Ljava/io/Console;->console:Ljava/io/Console;

    return-object v0
.end method

.method private static native isatty(I)Z
.end method

.method private static makeConsole()Ljava/io/Console;
    .registers 2

    .prologue
    .line 43
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/io/Console;->isatty(I)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/io/Console;->isatty(I)Z

    move-result v1

    if-nez v1, :cond_10

    .line 44
    :cond_e
    const/4 v1, 0x0

    .line 47
    :goto_f
    return-object v1

    :cond_10
    :try_start_10
    new-instance v1, Ljava/io/Console;

    invoke-direct {v1}, Ljava/io/Console;-><init>()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_16

    goto :goto_f

    .line 48
    :catch_16
    move-exception v1

    move-object v0, v1

    .line 49
    .local v0, ex:Ljava/io/IOException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private static setEcho(ZI)I
    .registers 4
    .parameter "on"
    .parameter "previousState"

    .prologue
    .line 148
    :try_start_0
    invoke-static {p0, p1}, Ljava/io/Console;->setEchoImpl(ZI)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    return v1

    .line 149
    :catch_5
    move-exception v0

    .line 150
    .local v0, ex:Ljava/io/IOException;
    new-instance v1, Ljava/io/IOError;

    invoke-direct {v1, v0}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static native setEchoImpl(ZI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public flush()V
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Ljava/io/Console;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 60
    return-void
.end method

.method public varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/Console;
    .registers 5
    .parameter "format"
    .parameter "args"

    .prologue
    .line 74
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Ljava/io/Console;->writer:Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 75
    .local v0, f:Ljava/util/Formatter;
    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 76
    invoke-virtual {v0}, Ljava/util/Formatter;->flush()V

    .line 77
    return-object p0
.end method

.method public varargs printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/Console;
    .registers 4
    .parameter "format"
    .parameter "args"

    .prologue
    .line 84
    invoke-virtual {p0, p1, p2}, Ljava/io/Console;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/Console;

    move-result-object v0

    return-object v0
.end method

.method public readLine()Ljava/lang/String;
    .registers 3

    .prologue
    .line 101
    :try_start_0
    iget-object v1, p0, Ljava/io/Console;->reader:Ljava/io/Console$ConsoleReader;

    invoke-virtual {v1}, Ljava/io/Console$ConsoleReader;->readLine()Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 102
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 103
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/io/IOError;

    invoke-direct {v1, v0}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public varargs readLine(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .parameter "format"
    .parameter "args"

    .prologue
    .line 122
    sget-object v0, Ljava/io/Console;->CONSOLE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_3
    invoke-virtual {p0, p1, p2}, Ljava/io/Console;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/Console;

    .line 124
    invoke-virtual {p0}, Ljava/io/Console;->readLine()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 125
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public readPassword()[C
    .registers 6

    .prologue
    .line 134
    sget-object v2, Ljava/io/Console;->CONSOLE_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 135
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_5
    invoke-static {v3, v4}, Ljava/io/Console;->setEcho(ZI)I
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_26

    move-result v1

    .line 137
    .local v1, previousState:I
    :try_start_9
    invoke-virtual {p0}, Ljava/io/Console;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, password:Ljava/lang/String;
    iget-object v3, p0, Ljava/io/Console;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_20

    .line 139
    if-nez v0, :cond_1b

    const/4 v3, 0x0

    .line 141
    :goto_15
    const/4 v4, 0x1

    :try_start_16
    invoke-static {v4, v1}, Ljava/io/Console;->setEcho(ZI)I

    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_26

    return-object v3

    .line 139
    :cond_1b
    :try_start_1b
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_20

    move-result-object v3

    goto :goto_15

    .line 141
    .end local v0           #password:Ljava/lang/String;
    :catchall_20
    move-exception v3

    const/4 v4, 0x1

    :try_start_22
    invoke-static {v4, v1}, Ljava/io/Console;->setEcho(ZI)I

    throw v3

    .line 143
    .end local v1           #previousState:I
    :catchall_26
    move-exception v3

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_26

    throw v3
.end method

.method public varargs readPassword(Ljava/lang/String;[Ljava/lang/Object;)[C
    .registers 5
    .parameter "format"
    .parameter "args"

    .prologue
    .line 167
    sget-object v0, Ljava/io/Console;->CONSOLE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_3
    invoke-virtual {p0, p1, p2}, Ljava/io/Console;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/Console;

    .line 169
    invoke-virtual {p0}, Ljava/io/Console;->readPassword()[C

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 170
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public reader()Ljava/io/Reader;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Ljava/io/Console;->reader:Ljava/io/Console$ConsoleReader;

    return-object v0
.end method

.method public writer()Ljava/io/PrintWriter;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Ljava/io/Console;->writer:Ljava/io/PrintWriter;

    return-object v0
.end method
