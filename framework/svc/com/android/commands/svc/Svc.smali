.class public Lcom/android/commands/svc/Svc;
.super Ljava/lang/Object;
.source "Svc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/svc/Svc$Command;
    }
.end annotation


# static fields
.field public static final COMMANDS:[Lcom/android/commands/svc/Svc$Command;

.field public static final COMMAND_HELP:Lcom/android/commands/svc/Svc$Command;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 59
    new-instance v0, Lcom/android/commands/svc/Svc$1;

    const-string v1, "help"

    invoke-direct {v0, v1}, Lcom/android/commands/svc/Svc$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/commands/svc/Svc;->COMMAND_HELP:Lcom/android/commands/svc/Svc$Command;

    .line 93
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/commands/svc/Svc$Command;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/commands/svc/Svc;->COMMAND_HELP:Lcom/android/commands/svc/Svc$Command;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/android/commands/svc/PowerCommand;

    invoke-direct {v2}, Lcom/android/commands/svc/PowerCommand;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/android/commands/svc/DataCommand;

    invoke-direct {v2}, Lcom/android/commands/svc/DataCommand;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/android/commands/svc/WifiCommand;

    invoke-direct {v2}, Lcom/android/commands/svc/WifiCommand;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/commands/svc/Svc;->COMMANDS:[Lcom/android/commands/svc/Svc$Command;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Lcom/android/commands/svc/Svc$Command;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    invoke-static {p0}, Lcom/android/commands/svc/Svc;->lookupCommand(Ljava/lang/String;)Lcom/android/commands/svc/Svc$Command;

    move-result-object v0

    return-object v0
.end method

.method private static lookupCommand(Ljava/lang/String;)Lcom/android/commands/svc/Svc$Command;
    .registers 5
    .parameter "name"

    .prologue
    .line 49
    sget-object v3, Lcom/android/commands/svc/Svc;->COMMANDS:[Lcom/android/commands/svc/Svc$Command;

    array-length v0, v3

    .line 50
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_4
    if-ge v2, v0, :cond_19

    .line 51
    sget-object v3, Lcom/android/commands/svc/Svc;->COMMANDS:[Lcom/android/commands/svc/Svc$Command;

    aget-object v1, v3, v2

    .line 52
    .local v1, c:Lcom/android/commands/svc/Svc$Command;
    invoke-virtual {v1}, Lcom/android/commands/svc/Svc$Command;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    move-object v3, v1

    .line 56
    .end local v1           #c:Lcom/android/commands/svc/Svc$Command;
    :goto_15
    return-object v3

    .line 50
    .restart local v1       #c:Lcom/android/commands/svc/Svc$Command;
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 56
    .end local v1           #c:Lcom/android/commands/svc/Svc$Command;
    :cond_19
    const/4 v3, 0x0

    goto :goto_15
.end method

.method public static main([Ljava/lang/String;)V
    .registers 4
    .parameter "args"

    .prologue
    .line 38
    array-length v1, p0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_11

    .line 39
    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-static {v1}, Lcom/android/commands/svc/Svc;->lookupCommand(Ljava/lang/String;)Lcom/android/commands/svc/Svc$Command;

    move-result-object v0

    .line 40
    .local v0, c:Lcom/android/commands/svc/Svc$Command;
    if-eqz v0, :cond_11

    .line 41
    invoke-virtual {v0, p0}, Lcom/android/commands/svc/Svc$Command;->run([Ljava/lang/String;)V

    .line 46
    .end local v0           #c:Lcom/android/commands/svc/Svc$Command;
    :goto_10
    return-void

    .line 45
    :cond_11
    sget-object v1, Lcom/android/commands/svc/Svc;->COMMAND_HELP:Lcom/android/commands/svc/Svc$Command;

    invoke-virtual {v1, p0}, Lcom/android/commands/svc/Svc$Command;->run([Ljava/lang/String;)V

    goto :goto_10
.end method
