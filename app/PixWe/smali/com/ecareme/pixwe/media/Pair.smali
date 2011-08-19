.class public Lcom/ecareme/pixwe/media/Pair;
.super Ljava/lang/Object;
.source "Pair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final first:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field public final second:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TT;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, this:Lcom/ecareme/pixwe/media/Pair;,"Lcom/ecareme/pixwe/media/Pair<TS;TT;>;"
    .local p1, first:Ljava/lang/Object;,"TS;"
    .local p2, second:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/ecareme/pixwe/media/Pair;->first:Ljava/lang/Object;

    .line 28
    iput-object p2, p0, Lcom/ecareme/pixwe/media/Pair;->second:Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public static create(Ljava/lang/Object;Ljava/lang/Object;)Lcom/ecareme/pixwe/media/Pair;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(TS;TT;)",
            "Lcom/ecareme/pixwe/media/Pair",
            "<TS;TT;>;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, first:Ljava/lang/Object;,"TS;"
    .local p1, second:Ljava/lang/Object;,"TT;"
    new-instance v0, Lcom/ecareme/pixwe/media/Pair;

    invoke-direct {v0, p0, p1}, Lcom/ecareme/pixwe/media/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    .local p0, this:Lcom/ecareme/pixwe/media/Pair;,"Lcom/ecareme/pixwe/media/Pair<TS;TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 47
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 67
    :goto_0
    return v2

    .line 50
    :cond_0
    if-nez p1, :cond_1

    move v2, v4

    .line 51
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    move v2, v4

    .line 54
    goto :goto_0

    .line 56
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/ecareme/pixwe/media/Pair;

    move-object v1, v0

    .line 57
    .local v1, other:Lcom/ecareme/pixwe/media/Pair;,"Lcom/ecareme/pixwe/media/Pair<TS;TT;>;"
    iget-object v2, p0, Lcom/ecareme/pixwe/media/Pair;->first:Ljava/lang/Object;

    if-nez v2, :cond_3

    iget-object v2, v1, Lcom/ecareme/pixwe/media/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_3

    move v2, v4

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    iget-object v2, p0, Lcom/ecareme/pixwe/media/Pair;->first:Ljava/lang/Object;

    iget-object v3, v1, Lcom/ecareme/pixwe/media/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v4

    .line 60
    goto :goto_0

    .line 62
    :cond_4
    iget-object v2, p0, Lcom/ecareme/pixwe/media/Pair;->second:Ljava/lang/Object;

    if-nez v2, :cond_5

    iget-object v2, v1, Lcom/ecareme/pixwe/media/Pair;->second:Ljava/lang/Object;

    if-eqz v2, :cond_5

    move v2, v4

    .line 63
    goto :goto_0

    .line 64
    :cond_5
    iget-object v2, p0, Lcom/ecareme/pixwe/media/Pair;->second:Ljava/lang/Object;

    iget-object v3, v1, Lcom/ecareme/pixwe/media/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v4

    .line 65
    goto :goto_0

    :cond_6
    move v2, v5

    .line 67
    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .local p0, this:Lcom/ecareme/pixwe/media/Pair;,"Lcom/ecareme/pixwe/media/Pair<TS;TT;>;"
    const/4 v4, 0x0

    .line 37
    const/16 v0, 0x1f

    .line 38
    .local v0, PRIME:I
    const/4 v1, 0x1

    .line 39
    .local v1, result:I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v2, p0, Lcom/ecareme/pixwe/media/Pair;->first:Ljava/lang/Object;

    if-nez v2, :cond_0

    move v2, v4

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 40
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/ecareme/pixwe/media/Pair;->second:Ljava/lang/Object;

    if-nez v3, :cond_1

    move v3, v4

    :goto_1
    add-int v1, v2, v3

    .line 41
    return v1

    .line 39
    :cond_0
    iget-object v2, p0, Lcom/ecareme/pixwe/media/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    .line 40
    :cond_1
    iget-object v3, p0, Lcom/ecareme/pixwe/media/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1
.end method
