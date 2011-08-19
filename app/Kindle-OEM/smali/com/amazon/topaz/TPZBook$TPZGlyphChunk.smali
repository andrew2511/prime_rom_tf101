.class Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;
.super Ljava/lang/Object;
.source "TPZBook.java"

# interfaces
.implements Lcom/amazon/topaz/internal/caching/Cacheable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/TPZBook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TPZGlyphChunk"
.end annotation


# instance fields
.field private final chunkID:I

.field private final glyphs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazon/topaz/internal/book/Glyph;",
            ">;"
        }
    .end annotation
.end field

.field private glyphsTable:Lcom/amazon/topaz/internal/binxml/Table;

.field private sizeObserver:Lcom/amazon/topaz/internal/caching/Cacheable$SizeObserver;

.field private tables:Lcom/amazon/topaz/internal/binxml/Collection;

.field final synthetic this$0:Lcom/amazon/topaz/TPZBook;


# direct methods
.method public constructor <init>(Lcom/amazon/topaz/TPZBook;I)V
    .locals 1
    .parameter
    .parameter "chunkID"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->this$0:Lcom/amazon/topaz/TPZBook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput p2, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->chunkID:I

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->glyphs:Ljava/util/ArrayList;

    .line 180
    return-void
.end method

.method static synthetic access$100(Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;I)Lcom/amazon/topaz/internal/drawing/VectorImage;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/InvalidContourException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->loadGlyph(I)Lcom/amazon/topaz/internal/drawing/VectorImage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;I)Lcom/amazon/system/drawing/Rectangle;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->getGlyphSize(I)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method private getGlyphSize(I)Lcom/amazon/system/drawing/Rectangle;
    .locals 8
    .parameter "id"

    .prologue
    const/4 v7, 0x0

    .line 357
    iget-object v3, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->glyphsTable:Lcom/amazon/topaz/internal/binxml/Table;

    if-nez v3, :cond_0

    .line 359
    iget-object v3, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->this$0:Lcom/amazon/topaz/TPZBook;

    invoke-virtual {v3}, Lcom/amazon/topaz/TPZBook;->loadGlyphChunks()V

    .line 361
    :cond_0
    iget-object v3, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->this$0:Lcom/amazon/topaz/TPZBook;

    iget-object v0, v3, Lcom/amazon/topaz/TPZBook;->dict:Lcom/amazon/topaz/internal/binxml/Dictionary;

    .line 363
    .local v0, dict:Lcom/amazon/topaz/internal/binxml/Dictionary;
    iget v3, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->chunkID:I

    shl-int/lit8 v3, v3, 0x8

    sub-int v2, p1, v3

    .line 364
    .local v2, glyphID:I
    iget-object v3, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->glyphsTable:Lcom/amazon/topaz/internal/binxml/Table;

    iget-object v4, v0, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_DPI:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v3, v2, v4}, Lcom/amazon/topaz/internal/binxml/Table;->getInt(ILcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v1

    .line 365
    .local v1, dpi:I
    new-instance v3, Lcom/amazon/system/drawing/Rectangle;

    iget-object v4, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->glyphsTable:Lcom/amazon/topaz/internal/binxml/Table;

    iget-object v5, v0, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_W:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v4, v2, v5}, Lcom/amazon/topaz/internal/binxml/Table;->getInt(ILcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x5a0

    div-int/2addr v4, v1

    iget-object v5, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->glyphsTable:Lcom/amazon/topaz/internal/binxml/Table;

    iget-object v6, v0, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_H:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v5, v2, v6}, Lcom/amazon/topaz/internal/binxml/Table;->getInt(ILcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v5

    mul-int/lit16 v5, v5, 0x5a0

    div-int/2addr v5, v1

    invoke-direct {v3, v7, v7, v4, v5}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    return-object v3
.end method

.method private loadGlyph(I)Lcom/amazon/topaz/internal/drawing/VectorImage;
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/InvalidContourException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v13, 0x0

    .line 288
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->tables:Lcom/amazon/topaz/internal/binxml/Collection;

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->this$0:Lcom/amazon/topaz/TPZBook;

    invoke-virtual {v0}, Lcom/amazon/topaz/TPZBook;->loadGlyphChunks()V

    .line 292
    :cond_0
    iget v0, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->chunkID:I

    shl-int/lit8 v0, v0, 0x8

    sub-int v1, p1, v0

    .line 294
    if-ltz v1, :cond_1

    iget-object v0, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->glyphsTable:Lcom/amazon/topaz/internal/binxml/Table;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/binxml/Table;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 295
    :cond_1
    const/4 v0, 0x0

    .line 342
    :goto_0
    return-object v0

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->this$0:Lcom/amazon/topaz/TPZBook;

    iget-object v12, v0, Lcom/amazon/topaz/TPZBook;->dict:Lcom/amazon/topaz/internal/binxml/Dictionary;

    .line 299
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->glyphsTable:Lcom/amazon/topaz/internal/binxml/Table;

    iget-object v2, v12, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_VTX:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/topaz/internal/binxml/Table;->getInt(ILcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v5

    .line 302
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->glyphsTable:Lcom/amazon/topaz/internal/binxml/Table;

    iget-object v2, v12, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_LEN:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/topaz/internal/binxml/Table;->getInt(ILcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v8

    .line 305
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->glyphsTable:Lcom/amazon/topaz/internal/binxml/Table;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/binxml/Table;->size()I

    move-result v0

    sub-int/2addr v0, v4

    if-ge v1, v0, :cond_3

    .line 307
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->glyphsTable:Lcom/amazon/topaz/internal/binxml/Table;

    add-int/lit8 v2, v1, 0x1

    iget-object v3, v12, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_LEN:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v0, v2, v3}, Lcom/amazon/topaz/internal/binxml/Table;->getInt(ILcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v0

    sub-int/2addr v0, v4

    .line 313
    :goto_1
    sub-int v2, v0, v8

    add-int/lit8 v9, v2, 0x1

    .line 315
    if-lez v9, :cond_4

    .line 317
    iget-object v2, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->tables:Lcom/amazon/topaz/internal/binxml/Collection;

    iget-object v3, v12, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_VTX:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v2, v3}, Lcom/amazon/topaz/internal/binxml/Collection;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Table;

    move-result-object v2

    .line 318
    iget-object v3, v12, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_X:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v2, v3}, Lcom/amazon/topaz/internal/binxml/Table;->getColNum(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v3

    .line 319
    iget-object v4, v12, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_Y:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v2, v4}, Lcom/amazon/topaz/internal/binxml/Table;->getColNum(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v4

    .line 323
    iget-object v6, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->tables:Lcom/amazon/topaz/internal/binxml/Collection;

    iget-object v7, v12, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_LEN:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v6, v7}, Lcom/amazon/topaz/internal/binxml/Collection;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Table;

    move-result-object v7

    .line 324
    iget-object v6, v12, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_N:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v7, v6}, Lcom/amazon/topaz/internal/binxml/Table;->getColNum(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v10

    .line 326
    invoke-virtual {v2, v3}, Lcom/amazon/topaz/internal/binxml/Table;->getColumn(I)[I

    move-result-object v3

    .line 327
    invoke-virtual {v2, v4}, Lcom/amazon/topaz/internal/binxml/Table;->getColumn(I)[I

    move-result-object v4

    .line 328
    invoke-virtual {v7, v0, v10}, Lcom/amazon/topaz/internal/binxml/Table;->getInt(II)I

    move-result v0

    add-int/lit8 v6, v0, 0x1

    .line 329
    invoke-virtual {v7, v10}, Lcom/amazon/topaz/internal/binxml/Table;->getColumn(I)[I

    move-result-object v7

    .line 331
    new-instance v0, Lcom/amazon/topaz/internal/drawing/VectorImage;

    iget-object v2, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->this$0:Lcom/amazon/topaz/TPZBook;

    invoke-static {v2}, Lcom/amazon/topaz/TPZBook;->access$500(Lcom/amazon/topaz/TPZBook;)Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;

    move-result-object v2

    iget-object v10, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->this$0:Lcom/amazon/topaz/TPZBook;

    invoke-static {v10}, Lcom/amazon/topaz/TPZBook;->access$400(Lcom/amazon/topaz/TPZBook;)Z

    move-result v10

    iget-object v11, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->glyphsTable:Lcom/amazon/topaz/internal/binxml/Table;

    iget-object v13, v12, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_W:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v11, v1, v13}, Lcom/amazon/topaz/internal/binxml/Table;->getInt(ILcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v11

    iget-object v13, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->glyphsTable:Lcom/amazon/topaz/internal/binxml/Table;

    iget-object v12, v12, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_H:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v13, v1, v12}, Lcom/amazon/topaz/internal/binxml/Table;->getInt(ILcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v12

    move v1, p1

    invoke-direct/range {v0 .. v12}, Lcom/amazon/topaz/internal/drawing/VectorImage;-><init>(ILcom/amazon/topaz/internal/drawing/FreeType$TRaster;[I[III[IIIZII)V

    goto/16 :goto_0

    .line 310
    :cond_3
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->tables:Lcom/amazon/topaz/internal/binxml/Collection;

    iget-object v2, v12, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_LEN:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v0, v2}, Lcom/amazon/topaz/internal/binxml/Collection;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Table;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/binxml/Table;->size()I

    move-result v0

    sub-int/2addr v0, v4

    goto :goto_1

    .line 342
    :cond_4
    new-instance v0, Lcom/amazon/topaz/internal/drawing/VectorImage;

    iget-object v2, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->this$0:Lcom/amazon/topaz/TPZBook;

    invoke-static {v2}, Lcom/amazon/topaz/TPZBook;->access$500(Lcom/amazon/topaz/TPZBook;)Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;

    move-result-object v2

    new-array v3, v13, [I

    new-array v4, v13, [I

    new-array v7, v13, [I

    iget-object v5, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->this$0:Lcom/amazon/topaz/TPZBook;

    invoke-static {v5}, Lcom/amazon/topaz/TPZBook;->access$400(Lcom/amazon/topaz/TPZBook;)Z

    move-result v10

    iget-object v5, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->glyphsTable:Lcom/amazon/topaz/internal/binxml/Table;

    iget-object v6, v12, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_W:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v5, v1, v6}, Lcom/amazon/topaz/internal/binxml/Table;->getInt(ILcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v11

    iget-object v5, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->glyphsTable:Lcom/amazon/topaz/internal/binxml/Table;

    iget-object v6, v12, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_H:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v5, v1, v6}, Lcom/amazon/topaz/internal/binxml/Table;->getInt(ILcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v12

    move v1, p1

    move v5, v13

    move v6, v13

    move v8, v13

    move v9, v13

    invoke-direct/range {v0 .. v12}, Lcom/amazon/topaz/internal/drawing/VectorImage;-><init>(ILcom/amazon/topaz/internal/drawing/FreeType$TRaster;[I[III[IIIZII)V

    goto/16 :goto_0
.end method

.method private storeGlyph(ILcom/amazon/topaz/internal/book/Glyph;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->glyphs:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 246
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->glyphs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v1, p1, 0x1

    if-ge v0, v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->glyphs:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->glyphs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 252
    return-void
.end method


# virtual methods
.method public getAllocSize()I
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->tables:Lcom/amazon/topaz/internal/binxml/Collection;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->tables:Lcom/amazon/topaz/internal/binxml/Collection;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/binxml/Collection;->getAllocSize()I

    move-result v0

    .line 384
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCacheKey()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 373
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->chunkID:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method public getGlyph(I)Lcom/amazon/topaz/TPZBook$GlyphImpl;
    .locals 4
    .parameter "glyphID"

    .prologue
    .line 261
    iget v3, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->chunkID:I

    shl-int/lit8 v0, v3, 0x8

    .line 262
    .local v0, first:I
    sub-int v1, p1, v0

    .line 264
    .local v1, index:I
    const/4 v2, 0x0

    .line 265
    .local v2, retval:Lcom/amazon/topaz/TPZBook$GlyphImpl;
    iget-object v3, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->glyphs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 267
    iget-object v3, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->glyphs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #retval:Lcom/amazon/topaz/TPZBook$GlyphImpl;
    check-cast v2, Lcom/amazon/topaz/TPZBook$GlyphImpl;

    .line 270
    .restart local v2       #retval:Lcom/amazon/topaz/TPZBook$GlyphImpl;
    :cond_0
    if-nez v2, :cond_1

    .line 272
    new-instance v2, Lcom/amazon/topaz/TPZBook$GlyphImpl;

    .end local v2           #retval:Lcom/amazon/topaz/TPZBook$GlyphImpl;
    iget-object v3, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->this$0:Lcom/amazon/topaz/TPZBook;

    invoke-direct {v2, v3, p1}, Lcom/amazon/topaz/TPZBook$GlyphImpl;-><init>(Lcom/amazon/topaz/TPZBook;I)V

    .line 273
    .restart local v2       #retval:Lcom/amazon/topaz/TPZBook$GlyphImpl;
    invoke-direct {p0, v1, v2}, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->storeGlyph(ILcom/amazon/topaz/internal/book/Glyph;)V

    .line 276
    :cond_1
    return-object v2
.end method

.method public load()V
    .locals 4

    .prologue
    .line 188
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->tables:Lcom/amazon/topaz/internal/binxml/Collection;

    if-nez v0, :cond_2

    .line 192
    :try_start_0
    new-instance v0, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;

    iget-object v1, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->this$0:Lcom/amazon/topaz/TPZBook;

    invoke-static {v1}, Lcom/amazon/topaz/TPZBook;->access$300(Lcom/amazon/topaz/TPZBook;)Lcom/amazon/topaz/internal/binxml/IChunker;

    move-result-object v1

    sget-object v2, Lcom/amazon/topaz/internal/TopazStrings;->CHUNKNAME_GLYPHS:Ljava/lang/String;

    iget v3, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->chunkID:I

    invoke-virtual {v1, v2, v3}, Lcom/amazon/topaz/internal/binxml/IChunker;->getChunkData(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;-><init>([B)V

    .line 196
    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->skipSentinel(I)V

    .line 197
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->readString()Ljava/lang/String;

    .line 198
    new-instance v1, Lcom/amazon/topaz/internal/binxml/Collection;

    iget-object v2, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->this$0:Lcom/amazon/topaz/TPZBook;

    iget-object v2, v2, Lcom/amazon/topaz/TPZBook;->dict:Lcom/amazon/topaz/internal/binxml/Dictionary;

    invoke-direct {v1, v2, v0}, Lcom/amazon/topaz/internal/binxml/Collection;-><init>(Lcom/amazon/topaz/internal/binxml/Dictionary;Lcom/amazon/topaz/internal/binxml/Deserializer;)V

    iput-object v1, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->tables:Lcom/amazon/topaz/internal/binxml/Collection;

    .line 199
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->this$0:Lcom/amazon/topaz/TPZBook;

    invoke-static {v0}, Lcom/amazon/topaz/TPZBook;->access$300(Lcom/amazon/topaz/TPZBook;)Lcom/amazon/topaz/internal/binxml/IChunker;

    move-result-object v0

    sget-object v1, Lcom/amazon/topaz/internal/TopazStrings;->CHUNKNAME_GLYPHS:Ljava/lang/String;

    iget v2, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->chunkID:I

    invoke-virtual {v0, v1, v2}, Lcom/amazon/topaz/internal/binxml/IChunker;->flush(Ljava/lang/String;I)V

    .line 201
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->sizeObserver:Lcom/amazon/topaz/internal/caching/Cacheable$SizeObserver;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->sizeObserver:Lcom/amazon/topaz/internal/caching/Cacheable$SizeObserver;

    invoke-virtual {p0}, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->getAllocSize()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/amazon/topaz/internal/caching/Cacheable$SizeObserver;->sizeChanged(Lcom/amazon/topaz/internal/caching/Cacheable;I)V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->tables:Lcom/amazon/topaz/internal/binxml/Collection;

    iget-object v1, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->this$0:Lcom/amazon/topaz/TPZBook;

    iget-object v1, v1, Lcom/amazon/topaz/TPZBook;->dict:Lcom/amazon/topaz/internal/binxml/Dictionary;

    iget-object v1, v1, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLENAME_GLYPH:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/binxml/Collection;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Table;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->glyphsTable:Lcom/amazon/topaz/internal/binxml/Table;

    .line 207
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->glyphs:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->glyphsTable:Lcom/amazon/topaz/internal/binxml/Table;

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/binxml/Table;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 209
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->this$0:Lcom/amazon/topaz/TPZBook;

    invoke-static {v0}, Lcom/amazon/topaz/TPZBook;->access$400(Lcom/amazon/topaz/TPZBook;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->glyphs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 213
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->glyphs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/TPZBook$GlyphImpl;

    .line 215
    if-eqz v0, :cond_1

    .line 217
    invoke-virtual {v0}, Lcom/amazon/topaz/TPZBook$GlyphImpl;->forceLoad()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/amazon/topaz/exception/TopazException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 233
    :catchall_0
    move-exception v0

    throw v0

    :catch_0
    move-exception v0

    .line 236
    :cond_2
    :goto_1
    return-void

    .line 224
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public setSizeObserver(Lcom/amazon/topaz/internal/caching/Cacheable$SizeObserver;)I
    .locals 1
    .parameter "observer"

    .prologue
    .line 391
    iput-object p1, p0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->sizeObserver:Lcom/amazon/topaz/internal/caching/Cacheable$SizeObserver;

    .line 392
    invoke-virtual {p0}, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->getAllocSize()I

    move-result v0

    return v0
.end method
