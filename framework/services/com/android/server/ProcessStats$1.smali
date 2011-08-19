.class final Lcom/android/server/ProcessStats$1;
.super Ljava/lang/Object;
.source "ProcessStats.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/ProcessStats$Stats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/server/ProcessStats$Stats;Lcom/android/server/ProcessStats$Stats;)I
    .registers 9
    .parameter "sta"
    .parameter "stb"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 237
    iget v2, p1, Lcom/android/server/ProcessStats$Stats;->rel_utime:I

    iget v3, p1, Lcom/android/server/ProcessStats$Stats;->rel_stime:I

    add-int v0, v2, v3

    .line 238
    .local v0, ta:I
    iget v2, p2, Lcom/android/server/ProcessStats$Stats;->rel_utime:I

    iget v3, p2, Lcom/android/server/ProcessStats$Stats;->rel_stime:I

    add-int v1, v2, v3

    .line 239
    .local v1, tb:I
    if-eq v0, v1, :cond_16

    .line 240
    if-le v0, v1, :cond_14

    move v2, v4

    .line 248
    :goto_13
    return v2

    :cond_14
    move v2, v5

    .line 240
    goto :goto_13

    .line 242
    :cond_16
    iget-boolean v2, p1, Lcom/android/server/ProcessStats$Stats;->added:Z

    iget-boolean v3, p2, Lcom/android/server/ProcessStats$Stats;->added:Z

    if-eq v2, v3, :cond_24

    .line 243
    iget-boolean v2, p1, Lcom/android/server/ProcessStats$Stats;->added:Z

    if-eqz v2, :cond_22

    move v2, v4

    goto :goto_13

    :cond_22
    move v2, v5

    goto :goto_13

    .line 245
    :cond_24
    iget-boolean v2, p1, Lcom/android/server/ProcessStats$Stats;->removed:Z

    iget-boolean v3, p2, Lcom/android/server/ProcessStats$Stats;->removed:Z

    if-eq v2, v3, :cond_32

    .line 246
    iget-boolean v2, p1, Lcom/android/server/ProcessStats$Stats;->added:Z

    if-eqz v2, :cond_30

    move v2, v4

    goto :goto_13

    :cond_30
    move v2, v5

    goto :goto_13

    .line 248
    :cond_32
    const/4 v2, 0x0

    goto :goto_13
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 234
    check-cast p1, Lcom/android/server/ProcessStats$Stats;

    .end local p1
    check-cast p2, Lcom/android/server/ProcessStats$Stats;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ProcessStats$1;->compare(Lcom/android/server/ProcessStats$Stats;Lcom/android/server/ProcessStats$Stats;)I

    move-result v0

    return v0
.end method
