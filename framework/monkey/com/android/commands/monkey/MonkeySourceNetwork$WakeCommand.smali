.class Lcom/android/commands/monkey/MonkeySourceNetwork$WakeCommand;
.super Ljava/lang/Object;
.source "MonkeySourceNetwork.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/monkey/MonkeySourceNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WakeCommand"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/commands/monkey/MonkeySourceNetwork$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork$WakeCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public translateCommand(Ljava/util/List;Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    .registers 4
    .parameter
    .parameter "queue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;",
            ")",
            "Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;"
        }
    .end annotation

    .prologue
    .line 317
    .local p1, command:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    #calls: Lcom/android/commands/monkey/MonkeySourceNetwork;->wake()Z
    invoke-static {}, Lcom/android/commands/monkey/MonkeySourceNetwork;->access$100()Z

    move-result v0

    if-nez v0, :cond_9

    .line 318
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->ERROR:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    .line 320
    :goto_8
    return-object v0

    :cond_9
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->OK:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    goto :goto_8
.end method
