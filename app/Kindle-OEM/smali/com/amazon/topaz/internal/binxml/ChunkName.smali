.class Lcom/amazon/topaz/internal/binxml/ChunkName;
.super Ljava/lang/Object;
.source "ChunkName.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/amazon/topaz/internal/binxml/ChunkName;",
        ">;"
    }
.end annotation


# instance fields
.field public final index:I

.field public final position:I

.field public final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter "type_"
    .parameter "index_"
    .parameter "pos_"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/amazon/topaz/internal/binxml/ChunkName;->type:Ljava/lang/String;

    .line 18
    iput p2, p0, Lcom/amazon/topaz/internal/binxml/ChunkName;->index:I

    .line 19
    iput p3, p0, Lcom/amazon/topaz/internal/binxml/ChunkName;->position:I

    .line 20
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/amazon/topaz/internal/binxml/ChunkName;)I
    .locals 3
    .parameter "o"

    .prologue
    .line 23
    move-object v0, p1

    .line 25
    .local v0, otherChunk:Lcom/amazon/topaz/internal/binxml/ChunkName;
    iget v1, p0, Lcom/amazon/topaz/internal/binxml/ChunkName;->position:I

    iget v2, v0, Lcom/amazon/topaz/internal/binxml/ChunkName;->position:I

    if-ge v1, v2, :cond_0

    .line 27
    const/4 v1, -0x1

    .line 35
    :goto_0
    return v1

    .line 29
    :cond_0
    iget v1, p0, Lcom/amazon/topaz/internal/binxml/ChunkName;->position:I

    iget v2, v0, Lcom/amazon/topaz/internal/binxml/ChunkName;->position:I

    if-le v1, v2, :cond_1

    .line 31
    const/4 v1, 0x1

    goto :goto_0

    .line 35
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/amazon/topaz/internal/binxml/ChunkName;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/amazon/topaz/internal/binxml/ChunkName;->compareTo(Lcom/amazon/topaz/internal/binxml/ChunkName;)I

    move-result v0

    return v0
.end method
