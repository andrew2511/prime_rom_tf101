.class Landroid/view/ViewRoot$RunQueue$HandlerAction;
.super Ljava/lang/Object;
.source "ViewRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRoot$RunQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandlerAction"
.end annotation


# instance fields
.field action:Ljava/lang/Runnable;

.field delay:J


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 3968
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/ViewRoot$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 3968
    invoke-direct {p0}, Landroid/view/ViewRoot$RunQueue$HandlerAction;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3974
    if-ne p0, p1, :cond_6

    move v2, v5

    .line 3978
    :goto_5
    return v2

    .line 3975
    :cond_6
    if-eqz p1, :cond_12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_14

    :cond_12
    move v2, v4

    goto :goto_5

    .line 3977
    :cond_14
    move-object v0, p1

    check-cast v0, Landroid/view/ViewRoot$RunQueue$HandlerAction;

    move-object v1, v0

    .line 3978
    .local v1, that:Landroid/view/ViewRoot$RunQueue$HandlerAction;
    iget-object v2, p0, Landroid/view/ViewRoot$RunQueue$HandlerAction;->action:Ljava/lang/Runnable;

    if-eqz v2, :cond_28

    iget-object v2, p0, Landroid/view/ViewRoot$RunQueue$HandlerAction;->action:Ljava/lang/Runnable;

    iget-object v3, v1, Landroid/view/ViewRoot$RunQueue$HandlerAction;->action:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    :cond_26
    move v2, v4

    goto :goto_5

    :cond_28
    iget-object v2, v1, Landroid/view/ViewRoot$RunQueue$HandlerAction;->action:Ljava/lang/Runnable;

    if-nez v2, :cond_26

    :cond_2c
    move v2, v5

    goto :goto_5
.end method

.method public hashCode()I
    .registers 8

    .prologue
    .line 3984
    iget-object v1, p0, Landroid/view/ViewRoot$RunQueue$HandlerAction;->action:Ljava/lang/Runnable;

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/view/ViewRoot$RunQueue$HandlerAction;->action:Ljava/lang/Runnable;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    move v0, v1

    .line 3985
    .local v0, result:I
    :goto_b
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/view/ViewRoot$RunQueue$HandlerAction;->delay:J

    iget-wide v4, p0, Landroid/view/ViewRoot$RunQueue$HandlerAction;->delay:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 3986
    return v0

    .line 3984
    .end local v0           #result:I
    :cond_19
    const/4 v1, 0x0

    move v0, v1

    goto :goto_b
.end method
