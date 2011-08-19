.class Lcom/android/commands/monkey/MonkeySourceNetwork$TouchCommand;
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
    name = "TouchCommand"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/commands/monkey/MonkeySourceNetwork$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork$TouchCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public translateCommand(Ljava/util/List;Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    .registers 12
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
    .line 135
    .local p1, command:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_80

    .line 136
    const/4 v5, 0x1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 137
    .local v1, actionName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 138
    .local v3, x:I
    const/4 v4, 0x0

    .line 140
    .local v4, y:I
    const/4 v5, 0x2

    :try_start_11
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 141
    const/4 v5, 0x3

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_25} :catch_4e

    move-result v4

    .line 149
    const/4 v0, -0x1

    .line 150
    .local v0, action:I
    const-string v5, "down"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 151
    const/4 v0, 0x0

    .line 157
    :cond_30
    :goto_30
    const/4 v5, -0x1

    if-ne v0, v5, :cond_6e

    .line 158
    const-string v5, "MonkeyStub"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got a bad action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    sget-object v5, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    .line 166
    .end local v0           #action:I
    .end local v1           #actionName:Ljava/lang/String;
    .end local v3           #x:I
    .end local v4           #y:I
    :goto_4d
    return-object v5

    .line 142
    .restart local v1       #actionName:Ljava/lang/String;
    .restart local v3       #x:I
    .restart local v4       #y:I
    :catch_4e
    move-exception v5

    move-object v2, v5

    .line 144
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v5, "MonkeyStub"

    const-string v6, "Got something that wasn\'t a number"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    sget-object v5, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    goto :goto_4d

    .line 152
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .restart local v0       #action:I
    :cond_5a
    const-string v5, "up"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 153
    const/4 v0, 0x1

    goto :goto_30

    .line 154
    :cond_64
    const-string v5, "move"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 155
    const/4 v0, 0x2

    goto :goto_30

    .line 162
    :cond_6e
    new-instance v5, Lcom/android/commands/monkey/MonkeyTouchEvent;

    invoke-direct {v5, v0}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    const/4 v6, 0x0

    int-to-float v7, v3

    int-to-float v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/commands/monkey/MonkeyTouchEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v5

    invoke-interface {p2, v5}, Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;->enqueueEvent(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 164
    sget-object v5, Lcom/android/commands/monkey/MonkeySourceNetwork;->OK:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    goto :goto_4d

    .line 166
    .end local v0           #action:I
    .end local v1           #actionName:Ljava/lang/String;
    .end local v3           #x:I
    .end local v4           #y:I
    .restart local p0
    :cond_80
    sget-object v5, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    goto :goto_4d
.end method
