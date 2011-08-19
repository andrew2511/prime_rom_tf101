.class public final Lcom/amazon/topaz/internal/book/Word$Builder;
.super Lcom/amazon/topaz/internal/book/Drawable$Builder;
.source "Word.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/internal/book/Word;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private clearRect:Lcom/amazon/system/drawing/Rectangle;

.field private final clearedGlyphs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final glommedAltTextIDs:[I

.field private final glommedShWidths:[I

.field private final glyphs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;",
            ">;"
        }
    .end annotation
.end field

.field private isForeign:Z

.field private stemProvider:Lcom/amazon/topaz/internal/book/PageParser$WordStemProvider;


# direct methods
.method public constructor <init>(Lcom/amazon/topaz/internal/book/Drawable$DrawableId;)V
    .locals 2
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1}, Lcom/amazon/topaz/internal/book/Drawable$Builder;-><init>(Lcom/amazon/topaz/internal/book/Drawable$DrawableId;)V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/internal/book/Word$Builder;->glyphs:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/internal/book/Word$Builder;->clearedGlyphs:Ljava/util/ArrayList;

    .line 74
    iput-object v1, p0, Lcom/amazon/topaz/internal/book/Word$Builder;->glommedShWidths:[I

    .line 75
    iput-object v1, p0, Lcom/amazon/topaz/internal/book/Word$Builder;->glommedAltTextIDs:[I

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/amazon/topaz/internal/book/Word;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-direct {p0, p1}, Lcom/amazon/topaz/internal/book/Drawable$Builder;-><init>(Lcom/amazon/topaz/internal/book/Drawable;)V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/internal/book/Word$Builder;->glyphs:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/internal/book/Word$Builder;->clearedGlyphs:Ljava/util/ArrayList;

    .line 85
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Word$Builder;->glyphs:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/amazon/topaz/internal/book/Word;->access$000(Lcom/amazon/topaz/internal/book/Word;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 86
    iput-object v2, p0, Lcom/amazon/topaz/internal/book/Word$Builder;->glommedShWidths:[I

    .line 87
    iput-object v2, p0, Lcom/amazon/topaz/internal/book/Word$Builder;->glommedAltTextIDs:[I

    .line 88
    return-void
.end method

.method public constructor <init>(Lcom/amazon/topaz/internal/book/Word;II)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 98
    invoke-direct {p0, p1}, Lcom/amazon/topaz/internal/book/Drawable$Builder;-><init>(Lcom/amazon/topaz/internal/book/Drawable;)V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/internal/book/Word$Builder;->glyphs:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/internal/book/Word$Builder;->clearedGlyphs:Ljava/util/ArrayList;

    .line 99
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Word$Builder;->glyphs:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/amazon/topaz/internal/book/Word;->access$000(Lcom/amazon/topaz/internal/book/Word;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 101
    invoke-static {p1}, Lcom/amazon/topaz/internal/book/Word;->access$100(Lcom/amazon/topaz/internal/book/Word;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    invoke-static {p1}, Lcom/amazon/topaz/internal/book/Word;->access$100(Lcom/amazon/topaz/internal/book/Word;)[I

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amazon/topaz/internal/book/Word$Builder;->glommedShWidths:[I

    move v0, v3

    .line 104
    :goto_0
    invoke-static {p1}, Lcom/amazon/topaz/internal/book/Word;->access$100(Lcom/amazon/topaz/internal/book/Word;)[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/amazon/topaz/internal/book/Word$Builder;->glommedShWidths:[I

    invoke-static {p1}, Lcom/amazon/topaz/internal/book/Word;->access$100(Lcom/amazon/topaz/internal/book/Word;)[I

    move-result-object v2

    aget v2, v2, v0

    aput v2, v1, v0

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_0
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/amazon/topaz/internal/book/Word$Builder;->glommedShWidths:[I

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Word$Builder;->glommedShWidths:[I

    iget-object v1, p0, Lcom/amazon/topaz/internal/book/Word$Builder;->glommedShWidths:[I

    array-length v1, v1

    sub-int/2addr v1, v4

    aput p2, v0, v1

    .line 115
    invoke-static {p1}, Lcom/amazon/topaz/internal/book/Word;->access$200(Lcom/amazon/topaz/internal/book/Word;)[I

    move-result-object v0

    if-eqz v0, :cond_2

    .line 117
    invoke-static {p1}, Lcom/amazon/topaz/internal/book/Word;->access$200(Lcom/amazon/topaz/internal/book/Word;)[I

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amazon/topaz/internal/book/Word$Builder;->glommedAltTextIDs:[I

    move v0, v3

    .line 118
    :goto_1
    invoke-static {p1}, Lcom/amazon/topaz/internal/book/Word;->access$200(Lcom/amazon/topaz/internal/book/Word;)[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 120
    iget-object v1, p0, Lcom/amazon/topaz/internal/book/Word$Builder;->glommedAltTextIDs:[I

    invoke-static {p1}, Lcom/amazon/topaz/internal/book/Word;->access$200(Lcom/amazon/topaz/internal/book/Word;)[I

    move-result-object v2

    aget v2, v2, v0

    aput v2, v1, v0

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 125
    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amazon/topaz/internal/book/Word$Builder;->glommedAltTextIDs:[I

    .line 126
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Word$Builder;->glommedAltTextIDs:[I

    invoke-virtual {p1}, Lcom/amazon/topaz/internal/book/Word;->getAltTextID()I

    move-result v1

    aput v1, v0, v3

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Word$Builder;->glommedAltTextIDs:[I

    iget-object v1, p0, Lcom/amazon/topaz/internal/book/Word$Builder;->glommedAltTextIDs:[I

    array-length v1, v1

    sub-int/2addr v1, v4

    aput p3, v0, v1

    .line 129
    return-void
.end method


# virtual methods
.method public addClear(I)Lcom/amazon/topaz/internal/book/Word$Builder;
    .locals 2
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Word$Builder;->clearedGlyphs:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    return-object p0
.end method

.method public addGlyph(Lcom/amazon/topaz/internal/book/Glyph;II)Lcom/amazon/topaz/internal/book/Word$Builder;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Word$Builder;->glyphs:Ljava/util/ArrayList;

    new-instance v1, Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;-><init>(Lcom/amazon/topaz/internal/book/Glyph;IILcom/amazon/topaz/internal/book/Word$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    return-object p0
.end method

.method public addGlyph(Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;)Lcom/amazon/topaz/internal/book/Word$Builder;
    .locals 1
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Word$Builder;->glyphs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    return-object p0
.end method

.method public build()Lcom/amazon/topaz/internal/book/Drawable;
    .locals 13

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/amazon/topaz/internal/book/Word$Builder;->getBaseline()I

    move-result v3

    .line 135
    .local v3, baseline:I
    new-instance v0, Lcom/amazon/topaz/internal/book/Word;

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/book/Word$Builder;->getPageNum()I

    move-result v1

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/book/Word$Builder;->getID()I

    move-result v2

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/book/Word$Builder;->getAltTextID()I

    move-result v4

    iget-object v5, p0, Lcom/amazon/topaz/internal/book/Word$Builder;->glyphs:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/amazon/topaz/internal/book/Word$Builder;->clearedGlyphs:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/amazon/topaz/internal/book/Word$Builder;->clearRect:Lcom/amazon/system/drawing/Rectangle;

    iget-object v8, p0, Lcom/amazon/topaz/internal/book/Word$Builder;->glommedShWidths:[I

    iget-object v9, p0, Lcom/amazon/topaz/internal/book/Word$Builder;->glommedAltTextIDs:[I

    iget-object v10, p0, Lcom/amazon/topaz/internal/book/Word$Builder;->stemProvider:Lcom/amazon/topaz/internal/book/PageParser$WordStemProvider;

    iget-boolean v11, p0, Lcom/amazon/topaz/internal/book/Word$Builder;->isForeign:Z

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v12}, Lcom/amazon/topaz/internal/book/Word;-><init>(IIIILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/amazon/system/drawing/Rectangle;[I[ILcom/amazon/topaz/internal/book/PageParser$WordStemProvider;ZLcom/amazon/topaz/internal/book/Word$1;)V

    return-object v0
.end method

.method public numGlyphs()I
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Word$Builder;->glyphs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public reserveGlyphSpace(I)Lcom/amazon/topaz/internal/book/Word$Builder;
    .locals 1
    .parameter "numGlyphs"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Word$Builder;->glyphs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 146
    return-object p0
.end method

.method public setClearRect(Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/topaz/internal/book/Word$Builder;
    .locals 1
    .parameter "clearRect"

    .prologue
    .line 192
    new-instance v0, Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v0, p1}, Lcom/amazon/system/drawing/Rectangle;-><init>(Lcom/amazon/system/drawing/Rectangle;)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/book/Word$Builder;->clearRect:Lcom/amazon/system/drawing/Rectangle;

    .line 194
    return-object p0
.end method

.method public setForeign(Z)V
    .locals 0
    .parameter "isForeign"

    .prologue
    .line 215
    iput-boolean p1, p0, Lcom/amazon/topaz/internal/book/Word$Builder;->isForeign:Z

    .line 216
    return-void
.end method

.method public setStemProvider(Lcom/amazon/topaz/internal/book/PageParser$WordStemProvider;)V
    .locals 0
    .parameter "stemProvider"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/amazon/topaz/internal/book/Word$Builder;->stemProvider:Lcom/amazon/topaz/internal/book/PageParser$WordStemProvider;

    .line 225
    return-void
.end method
