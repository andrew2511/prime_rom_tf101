.class public Landroid/util/ShellCommand;
.super Ljava/lang/Object;
.source "ShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/ShellCommand$StreamChomper;
    }
.end annotation


# instance fields
.field private mCommand:Ljava/lang/String;

.field private mProcess:Ljava/lang/Process;

.field private mRetval:I

.field private mStderrChomper:Landroid/util/ShellCommand$StreamChomper;

.field private mStdoutChomper:Landroid/util/ShellCommand$StreamChomper;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 6
    .parameter "command"
    .parameter "inSeparateShell"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Landroid/util/ShellCommand;->mCommand:Ljava/lang/String;

    .line 77
    if-eqz p2, :cond_46

    .line 78
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/system/bin/sh"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "-c"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    .line 79
    .local v0, shellCmd:[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    iput-object v1, p0, Landroid/util/ShellCommand;->mProcess:Ljava/lang/Process;

    .line 85
    .end local v0           #shellCmd:[Ljava/lang/String;
    :goto_21
    new-instance v1, Landroid/util/ShellCommand$StreamChomper;

    iget-object v2, p0, Landroid/util/ShellCommand;->mProcess:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/util/ShellCommand$StreamChomper;-><init>(Landroid/util/ShellCommand;Ljava/io/InputStream;)V

    iput-object v1, p0, Landroid/util/ShellCommand;->mStdoutChomper:Landroid/util/ShellCommand$StreamChomper;

    .line 86
    new-instance v1, Landroid/util/ShellCommand$StreamChomper;

    iget-object v2, p0, Landroid/util/ShellCommand;->mProcess:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/util/ShellCommand$StreamChomper;-><init>(Landroid/util/ShellCommand;Ljava/io/InputStream;)V

    iput-object v1, p0, Landroid/util/ShellCommand;->mStderrChomper:Landroid/util/ShellCommand$StreamChomper;

    .line 87
    iget-object v1, p0, Landroid/util/ShellCommand;->mStdoutChomper:Landroid/util/ShellCommand$StreamChomper;

    invoke-virtual {v1}, Landroid/util/ShellCommand$StreamChomper;->start()V

    .line 88
    iget-object v1, p0, Landroid/util/ShellCommand;->mStderrChomper:Landroid/util/ShellCommand$StreamChomper;

    invoke-virtual {v1}, Landroid/util/ShellCommand$StreamChomper;->start()V

    .line 89
    return-void

    .line 81
    :cond_46
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    iput-object v1, p0, Landroid/util/ShellCommand;->mProcess:Ljava/lang/Process;

    goto :goto_21
.end method


# virtual methods
.method public complete()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 96
    :try_start_0
    iget-object v0, p0, Landroid/util/ShellCommand;->mProcess:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    iput v0, p0, Landroid/util/ShellCommand;->mRetval:I
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_e

    .line 98
    iget-object v0, p0, Landroid/util/ShellCommand;->mProcess:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 100
    return-void

    .line 98
    :catchall_e
    move-exception v0

    iget-object v1, p0, Landroid/util/ShellCommand;->mProcess:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    throw v0
.end method

.method public getCommand()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Landroid/util/ShellCommand;->mCommand:Ljava/lang/String;

    return-object v0
.end method

.method public getRetval()I
    .registers 2

    .prologue
    .line 109
    iget v0, p0, Landroid/util/ShellCommand;->mRetval:I

    return v0
.end method

.method public getStderr()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Landroid/util/ShellCommand;->mStderrChomper:Landroid/util/ShellCommand$StreamChomper;

    invoke-virtual {v0}, Landroid/util/ShellCommand$StreamChomper;->getContents()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStdout()Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Landroid/util/ShellCommand;->mStdoutChomper:Landroid/util/ShellCommand$StreamChomper;

    invoke-virtual {v0}, Landroid/util/ShellCommand$StreamChomper;->getContents()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
