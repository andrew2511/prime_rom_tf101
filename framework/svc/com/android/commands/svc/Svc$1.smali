.class final Lcom/android/commands/svc/Svc$1;
.super Lcom/android/commands/svc/Svc$Command;
.source "Svc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/svc/Svc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/commands/svc/Svc$Command;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public longHelp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/commands/svc/Svc$1;->shortHelp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run([Ljava/lang/String;)V
    .registers 14
    .parameter "args"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 67
    array-length v6, p1

    if-ne v6, v11, :cond_17

    .line 68
    aget-object v6, p1, v10

    #calls: Lcom/android/commands/svc/Svc;->lookupCommand(Ljava/lang/String;)Lcom/android/commands/svc/Svc$Command;
    invoke-static {v6}, Lcom/android/commands/svc/Svc;->access$000(Ljava/lang/String;)Lcom/android/commands/svc/Svc$Command;

    move-result-object v1

    .line 69
    .local v1, c:Lcom/android/commands/svc/Svc$Command;
    if-eqz v1, :cond_17

    .line 70
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lcom/android/commands/svc/Svc$Command;->longHelp()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 90
    .end local v1           #c:Lcom/android/commands/svc/Svc$Command;
    :cond_16
    return-void

    .line 75
    :cond_17
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "Available commands:"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 76
    sget-object v6, Lcom/android/commands/svc/Svc;->COMMANDS:[Lcom/android/commands/svc/Svc$Command;

    array-length v0, v6

    .line 77
    .local v0, N:I
    const/4 v5, 0x0

    .line 78
    .local v5, maxlen:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_23
    if-ge v3, v0, :cond_37

    .line 79
    sget-object v6, Lcom/android/commands/svc/Svc;->COMMANDS:[Lcom/android/commands/svc/Svc$Command;

    aget-object v1, v6, v3

    .line 80
    .restart local v1       #c:Lcom/android/commands/svc/Svc$Command;
    invoke-virtual {v1}, Lcom/android/commands/svc/Svc$Command;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    .line 81
    .local v4, len:I
    if-ge v5, v4, :cond_34

    .line 82
    move v5, v4

    .line 78
    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 85
    .end local v1           #c:Lcom/android/commands/svc/Svc$Command;
    .end local v4           #len:I
    :cond_37
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    %-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "s    %s"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, format:Ljava/lang/String;
    const/4 v3, 0x0

    :goto_51
    if-ge v3, v0, :cond_16

    .line 87
    sget-object v6, Lcom/android/commands/svc/Svc;->COMMANDS:[Lcom/android/commands/svc/Svc$Command;

    aget-object v1, v6, v3

    .line 88
    .restart local v1       #c:Lcom/android/commands/svc/Svc$Command;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-array v7, v11, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v1}, Lcom/android/commands/svc/Svc$Command;->name()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v1}, Lcom/android/commands/svc/Svc$Command;->shortHelp()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 86
    add-int/lit8 v3, v3, 0x1

    goto :goto_51
.end method

.method public shortHelp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    const-string v0, "Show information about the subcommands"

    return-object v0
.end method
