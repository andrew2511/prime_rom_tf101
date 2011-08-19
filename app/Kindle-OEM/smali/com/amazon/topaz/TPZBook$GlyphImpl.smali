.class Lcom/amazon/topaz/TPZBook$GlyphImpl;
.super Ljava/lang/Object;
.source "TPZBook.java"

# interfaces
.implements Lcom/amazon/topaz/internal/book/Glyph;
.implements Lcom/amazon/topaz/internal/caching/Cacheable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/TPZBook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GlyphImpl"
.end annotation


# instance fields
.field private final glyphID:Ljava/lang/Integer;

.field private image:Lcom/amazon/topaz/internal/drawing/VectorImage;

.field private size:Lcom/amazon/system/drawing/Rectangle;

.field private sizeObserver:Lcom/amazon/topaz/internal/caching/Cacheable$SizeObserver;

.field final synthetic this$0:Lcom/amazon/topaz/TPZBook;


# direct methods
.method public constructor <init>(Lcom/amazon/topaz/TPZBook;I)V
    .locals 1
    .parameter
    .parameter "id"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/amazon/topaz/TPZBook$GlyphImpl;->this$0:Lcom/amazon/topaz/TPZBook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/topaz/TPZBook$GlyphImpl;->glyphID:Ljava/lang/Integer;

    .line 86
    return-void
.end method


# virtual methods
.method public forceLoad()V
    .locals 0

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/amazon/topaz/TPZBook$GlyphImpl;->getImage()Lcom/amazon/topaz/internal/book/IImage;

    .line 94
    invoke-virtual {p0}, Lcom/amazon/topaz/TPZBook$GlyphImpl;->getSize()Lcom/amazon/system/drawing/Rectangle;

    .line 95
    return-void
.end method

.method public getAllocSize()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook$GlyphImpl;->image:Lcom/amazon/topaz/internal/drawing/VectorImage;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook$GlyphImpl;->image:Lcom/amazon/topaz/internal/drawing/VectorImage;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/drawing/VectorImage;->getAllocSize()I

    move-result v0

    .line 138
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCacheKey()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook$GlyphImpl;->glyphID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getImage()Lcom/amazon/topaz/internal/book/IImage;
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook$GlyphImpl;->image:Lcom/amazon/topaz/internal/drawing/VectorImage;

    if-nez v0, :cond_0

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook$GlyphImpl;->this$0:Lcom/amazon/topaz/TPZBook;

    iget-object v1, p0, Lcom/amazon/topaz/TPZBook$GlyphImpl;->glyphID:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/amazon/topaz/TPZBook;->access$000(Lcom/amazon/topaz/TPZBook;I)Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/topaz/TPZBook$GlyphImpl;->glyphID:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->access$100(Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;I)Lcom/amazon/topaz/internal/drawing/VectorImage;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/topaz/TPZBook$GlyphImpl;->image:Lcom/amazon/topaz/internal/drawing/VectorImage;

    .line 106
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook$GlyphImpl;->sizeObserver:Lcom/amazon/topaz/internal/caching/Cacheable$SizeObserver;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook$GlyphImpl;->sizeObserver:Lcom/amazon/topaz/internal/caching/Cacheable$SizeObserver;

    iget-object v1, p0, Lcom/amazon/topaz/TPZBook$GlyphImpl;->image:Lcom/amazon/topaz/internal/drawing/VectorImage;

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/drawing/VectorImage;->getAllocSize()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/amazon/topaz/internal/caching/Cacheable$SizeObserver;->sizeChanged(Lcom/amazon/topaz/internal/caching/Cacheable;I)V
    :try_end_0
    .catch Lcom/amazon/topaz/exception/InvalidContourException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook$GlyphImpl;->image:Lcom/amazon/topaz/internal/drawing/VectorImage;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getSize()Lcom/amazon/system/drawing/Rectangle;
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook$GlyphImpl;->size:Lcom/amazon/system/drawing/Rectangle;

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook$GlyphImpl;->this$0:Lcom/amazon/topaz/TPZBook;

    iget-object v1, p0, Lcom/amazon/topaz/TPZBook$GlyphImpl;->glyphID:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/amazon/topaz/TPZBook;->access$000(Lcom/amazon/topaz/TPZBook;I)Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/topaz/TPZBook$GlyphImpl;->glyphID:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->access$200(Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;I)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/topaz/TPZBook$GlyphImpl;->size:Lcom/amazon/system/drawing/Rectangle;

    .line 126
    :cond_0
    new-instance v0, Lcom/amazon/system/drawing/Rectangle;

    iget-object v1, p0, Lcom/amazon/topaz/TPZBook$GlyphImpl;->size:Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v0, v1}, Lcom/amazon/system/drawing/Rectangle;-><init>(Lcom/amazon/system/drawing/Rectangle;)V

    return-object v0
.end method

.method public setSizeObserver(Lcom/amazon/topaz/internal/caching/Cacheable$SizeObserver;)I
    .locals 1
    .parameter "observer"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/amazon/topaz/TPZBook$GlyphImpl;->sizeObserver:Lcom/amazon/topaz/internal/caching/Cacheable$SizeObserver;

    .line 152
    invoke-virtual {p0}, Lcom/amazon/topaz/TPZBook$GlyphImpl;->getAllocSize()I

    move-result v0

    return v0
.end method
