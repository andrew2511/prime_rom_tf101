.class Lcom/amazon/topaz/internal/binxml/IChunker$Chunk;
.super Ljava/lang/Object;
.source "IChunker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/internal/binxml/IChunker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Chunk"
.end annotation


# instance fields
.field public volatile data:[B

.field public final position:I

.field public final size:I

.field public final zsize:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .parameter "position"
    .parameter "size"
    .parameter "zsize"

    .prologue
    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    iput p1, p0, Lcom/amazon/topaz/internal/binxml/IChunker$Chunk;->position:I

    .line 387
    iput p2, p0, Lcom/amazon/topaz/internal/binxml/IChunker$Chunk;->size:I

    .line 388
    iput p3, p0, Lcom/amazon/topaz/internal/binxml/IChunker$Chunk;->zsize:I

    .line 389
    return-void
.end method
