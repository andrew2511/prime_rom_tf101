.class public Lcom/android/commands/monkey/MonkeySourceNetworkVars$GetVarCommand;
.super Ljava/lang/Object;
.source "MonkeySourceNetworkVars.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/monkey/MonkeySourceNetworkVars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetVarCommand"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public translateCommand(Ljava/util/List;Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    .registers 7
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
    .local p1, command:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x1

    .line 187
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2b

    .line 188
    invoke-static {}, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->access$000()Ljava/util/Map;

    move-result-object v1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/commands/monkey/MonkeySourceNetworkVars$VarGetter;

    .line 189
    .local v0, getter:Lcom/android/commands/monkey/MonkeySourceNetworkVars$VarGetter;
    if-nez v0, :cond_21

    .line 190
    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    const/4 v2, 0x0

    const-string v3, "unknown var"

    invoke-direct {v1, v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    .line 194
    .end local v0           #getter:Lcom/android/commands/monkey/MonkeySourceNetworkVars$VarGetter;
    :goto_20
    return-object v1

    .line 192
    .restart local v0       #getter:Lcom/android/commands/monkey/MonkeySourceNetworkVars$VarGetter;
    :cond_21
    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    invoke-interface {v0}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$VarGetter;->get()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    goto :goto_20

    .line 194
    .end local v0           #getter:Lcom/android/commands/monkey/MonkeySourceNetworkVars$VarGetter;
    :cond_2b
    sget-object v1, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    goto :goto_20
.end method
