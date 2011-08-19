.class public Lcom/amazon/topaz/TPZBook;
.super Lcom/amazon/topaz/Book;
.source "TPZBook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/topaz/TPZBook$GlyphHit;,
        Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;,
        Lcom/amazon/topaz/TPZBook$GlyphImpl;
    }
.end annotation


# static fields
.field public static CACHENAME_GLYPHCHUNKS:Ljava/lang/String; = null

.field public static CACHENAME_GLYPHEDGECACHE:Ljava/lang/String; = null

.field public static CACHENAME_GLYPHS:Ljava/lang/String; = null

.field public static CACHENAME_IMAGES:Ljava/lang/String; = null

.field public static CACHENAME_PAGES:Ljava/lang/String; = null

.field public static CACHENAME_TEXTPAGES:Ljava/lang/String; = null

.field public static final CACHE_SIZE:I = 0x0

.field private static final GLYPH_COPY_THRESHOLD:J = 0x1200000L


# instance fields
.field private final callbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazon/topaz/Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final chunks:Lcom/amazon/topaz/internal/binxml/IChunker;

.field private final copyGlyphData:Z

.field private final delayLoadChunkList:[Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;

.field private detailsLoaded:Z

.field private final freeTypeRaster:Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;

.field private final glyphCache:Lcom/amazon/topaz/internal/caching/Cache;

.field private final glyphChunkCache:Lcom/amazon/topaz/internal/caching/Cache;

.field private final glyphEdgeCache:Lcom/amazon/topaz/internal/caching/Cache;

.field private final imgCache:Lcom/amazon/topaz/internal/caching/Cache;

.field private lastPage:I

.field private linksLoaded:Z

.field private origLayoutLoaded:Z

.field private pageInfoLoaded:Z

.field private final pages:Lcom/amazon/topaz/internal/caching/Cache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 397
    const-string v0, "Pages"

    sput-object v0, Lcom/amazon/topaz/TPZBook;->CACHENAME_PAGES:Ljava/lang/String;

    .line 398
    const-string v0, "TextPages"

    sput-object v0, Lcom/amazon/topaz/TPZBook;->CACHENAME_TEXTPAGES:Ljava/lang/String;

    .line 399
    const-string v0, "Images"

    sput-object v0, Lcom/amazon/topaz/TPZBook;->CACHENAME_IMAGES:Ljava/lang/String;

    .line 400
    const-string v0, "Glyph Chunks"

    sput-object v0, Lcom/amazon/topaz/TPZBook;->CACHENAME_GLYPHCHUNKS:Ljava/lang/String;

    .line 401
    const-string v0, "Glyphs"

    sput-object v0, Lcom/amazon/topaz/TPZBook;->CACHENAME_GLYPHS:Ljava/lang/String;

    .line 402
    const-string v0, "Glyph Edge Cache"

    sput-object v0, Lcom/amazon/topaz/TPZBook;->CACHENAME_GLYPHEDGECACHE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/system/io/IFileInputStream;Lcom/amazon/system/io/InflaterFactory;J)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 432
    invoke-direct {p0}, Lcom/amazon/topaz/Book;-><init>()V

    .line 433
    const-wide/32 v0, 0x1200000

    cmp-long v0, p3, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/amazon/topaz/TPZBook;->copyGlyphData:Z

    .line 434
    iput-boolean v7, p0, Lcom/amazon/topaz/TPZBook;->detailsLoaded:Z

    .line 435
    new-instance v0, Lcom/amazon/topaz/internal/binxml/IChunker;

    invoke-direct {v0, p1, p2}, Lcom/amazon/topaz/internal/binxml/IChunker;-><init>(Lcom/amazon/system/io/IFileInputStream;Lcom/amazon/system/io/InflaterFactory;)V

    iput-object v0, p0, Lcom/amazon/topaz/TPZBook;->chunks:Lcom/amazon/topaz/internal/binxml/IChunker;

    .line 437
    new-instance v0, Lcom/amazon/topaz/TPZBook$1;

    invoke-direct {v0, p0}, Lcom/amazon/topaz/TPZBook$1;-><init>(Lcom/amazon/topaz/TPZBook;)V

    .line 450
    sget-object v1, Lcom/amazon/topaz/internal/performance/TopazPerfCounters;->PAGES_LOADED:Lcom/amazon/foundation/internal/performance/CacheCounter;

    invoke-interface {v0, v1}, Lcom/amazon/topaz/internal/caching/CacheFactory;->newCache(Lcom/amazon/foundation/internal/performance/CacheCounter;)Lcom/amazon/topaz/internal/caching/Cache;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/topaz/TPZBook;->pages:Lcom/amazon/topaz/internal/caching/Cache;

    .line 451
    sget-object v1, Lcom/amazon/topaz/internal/performance/TopazPerfCounters;->IMAGES_LOADED:Lcom/amazon/foundation/internal/performance/CacheCounter;

    invoke-interface {v0, v1}, Lcom/amazon/topaz/internal/caching/CacheFactory;->newCache(Lcom/amazon/foundation/internal/performance/CacheCounter;)Lcom/amazon/topaz/internal/caching/Cache;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/topaz/TPZBook;->imgCache:Lcom/amazon/topaz/internal/caching/Cache;

    .line 452
    sget-object v1, Lcom/amazon/topaz/internal/performance/TopazPerfCounters;->GLYPHS_RENDERED:Lcom/amazon/foundation/internal/performance/CacheCounter;

    invoke-interface {v0, v1}, Lcom/amazon/topaz/internal/caching/CacheFactory;->newCache(Lcom/amazon/foundation/internal/performance/CacheCounter;)Lcom/amazon/topaz/internal/caching/Cache;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/topaz/TPZBook;->glyphEdgeCache:Lcom/amazon/topaz/internal/caching/Cache;

    .line 453
    sget-object v1, Lcom/amazon/topaz/internal/performance/TopazPerfCounters;->GLYPH_CHUNKS_LOADED:Lcom/amazon/foundation/internal/performance/CacheCounter;

    invoke-interface {v0, v1}, Lcom/amazon/topaz/internal/caching/CacheFactory;->newCache(Lcom/amazon/foundation/internal/performance/CacheCounter;)Lcom/amazon/topaz/internal/caching/Cache;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/topaz/TPZBook;->glyphChunkCache:Lcom/amazon/topaz/internal/caching/Cache;

    .line 454
    sget-object v1, Lcom/amazon/topaz/internal/performance/TopazPerfCounters;->GLYPHS_LOADED:Lcom/amazon/foundation/internal/performance/CacheCounter;

    invoke-interface {v0, v1}, Lcom/amazon/topaz/internal/caching/CacheFactory;->newCache(Lcom/amazon/foundation/internal/performance/CacheCounter;)Lcom/amazon/topaz/internal/caching/Cache;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/topaz/TPZBook;->glyphCache:Lcom/amazon/topaz/internal/caching/Cache;

    .line 455
    new-instance v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;

    iget-object v1, p0, Lcom/amazon/topaz/TPZBook;->glyphEdgeCache:Lcom/amazon/topaz/internal/caching/Cache;

    invoke-direct {v0, v1}, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;-><init>(Lcom/amazon/topaz/internal/caching/Cache;)V

    iput-object v0, p0, Lcom/amazon/topaz/TPZBook;->freeTypeRaster:Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;

    .line 457
    iput v7, p0, Lcom/amazon/topaz/TPZBook;->lastPage:I

    move v0, v7

    .line 462
    :goto_1
    iget-object v1, p0, Lcom/amazon/topaz/TPZBook;->chunks:Lcom/amazon/topaz/internal/binxml/IChunker;

    sget-object v2, Lcom/amazon/topaz/internal/TopazStrings;->CHUNKNAME_METADATA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/amazon/topaz/internal/binxml/IChunker;->numChunks(Ljava/lang/String;)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 463
    new-instance v1, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;

    iget-object v2, p0, Lcom/amazon/topaz/TPZBook;->chunks:Lcom/amazon/topaz/internal/binxml/IChunker;

    sget-object v3, Lcom/amazon/topaz/internal/TopazStrings;->CHUNKNAME_METADATA:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/amazon/topaz/internal/binxml/IChunker;->getChunkData(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;-><init>([B)V

    .line 465
    invoke-virtual {v1}, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->readInt()I

    move-result v2

    move v3, v7

    .line 466
    :goto_2
    if-ge v3, v2, :cond_1

    .line 467
    invoke-virtual {v1}, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->readString()Ljava/lang/String;

    move-result-object v4

    .line 468
    invoke-virtual {v1}, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->readString()Ljava/lang/String;

    move-result-object v5

    .line 469
    iget-object v6, p0, Lcom/amazon/topaz/TPZBook;->metadata:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_0
    move v0, v7

    .line 433
    goto :goto_0

    .line 471
    :cond_1
    iget-object v1, p0, Lcom/amazon/topaz/TPZBook;->chunks:Lcom/amazon/topaz/internal/binxml/IChunker;

    sget-object v2, Lcom/amazon/topaz/internal/TopazStrings;->CHUNKNAME_METADATA:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/amazon/topaz/internal/binxml/IChunker;->flush(Ljava/lang/String;I)V

    .line 462
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 474
    :cond_2
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook;->metadata:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/topaz/TPZBook;->metadata:Ljava/util/Map;

    .line 476
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook;->chunks:Lcom/amazon/topaz/internal/binxml/IChunker;

    sget-object v1, Lcom/amazon/topaz/internal/TopazStrings;->CHUNKNAME_PAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/binxml/IChunker;->numChunks(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amazon/topaz/TPZBook;->lastPage:I

    .line 477
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook;->chunks:Lcom/amazon/topaz/internal/binxml/IChunker;

    sget-object v1, Lcom/amazon/topaz/internal/TopazStrings;->CHUNKNAME_GLYPHS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/binxml/IChunker;->numChunks(Ljava/lang/String;)I

    move-result v0

    new-array v0, v0, [Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;

    iput-object v0, p0, Lcom/amazon/topaz/TPZBook;->delayLoadChunkList:[Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;

    .line 478
    iput-boolean v7, p0, Lcom/amazon/topaz/TPZBook;->linksLoaded:Z

    .line 479
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/TPZBook;->callbacks:Ljava/util/ArrayList;

    .line 480
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/topaz/TPZBook;I)Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/amazon/topaz/TPZBook;->getGlyphChunk(I)Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/topaz/TPZBook;)Lcom/amazon/topaz/internal/binxml/IChunker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook;->chunks:Lcom/amazon/topaz/internal/binxml/IChunker;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amazon/topaz/TPZBook;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/amazon/topaz/TPZBook;->copyGlyphData:Z

    return v0
.end method

.method static synthetic access$500(Lcom/amazon/topaz/TPZBook;)Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook;->freeTypeRaster:Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;

    return-object v0
.end method

.method private getGlyphChunk(I)Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;
    .locals 4
    .parameter "glyphId"

    .prologue
    .line 921
    shr-int/lit8 v1, p1, 0x8

    .line 923
    .local v1, chunkID:I
    iget-object v2, p0, Lcom/amazon/topaz/TPZBook;->glyphChunkCache:Lcom/amazon/topaz/internal/caching/Cache;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/amazon/topaz/internal/caching/Cache;->get(Ljava/lang/Integer;)Lcom/amazon/topaz/internal/caching/Cacheable;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;

    .line 925
    .local v0, chunk:Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;
    if-nez v0, :cond_0

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/amazon/topaz/TPZBook;->chunks:Lcom/amazon/topaz/internal/binxml/IChunker;

    sget-object v3, Lcom/amazon/topaz/internal/TopazStrings;->CHUNKNAME_GLYPHS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/amazon/topaz/internal/binxml/IChunker;->numChunks(Ljava/lang/String;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 929
    new-instance v0, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;

    .end local v0           #chunk:Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;
    invoke-direct {v0, p0, v1}, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;-><init>(Lcom/amazon/topaz/TPZBook;I)V

    .line 930
    .restart local v0       #chunk:Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;
    iget-object v2, p0, Lcom/amazon/topaz/TPZBook;->glyphChunkCache:Lcom/amazon/topaz/internal/caching/Cache;

    invoke-virtual {v2, v0}, Lcom/amazon/topaz/internal/caching/Cache;->add(Lcom/amazon/topaz/internal/caching/Cacheable;)V

    .line 931
    iget-object v2, p0, Lcom/amazon/topaz/TPZBook;->delayLoadChunkList:[Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;

    aput-object v0, v2, v1

    .line 934
    :cond_0
    if-eqz v0, :cond_1

    move-object v2, v0

    .line 938
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private declared-synchronized loadDetails()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 720
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/topaz/TPZBook;->detailsLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 756
    :goto_0
    monitor-exit p0

    return-void

    .line 725
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/amazon/topaz/TPZBook;->loadPageInfo()V

    .line 728
    new-instance v1, Lcom/amazon/topaz/styles/StyleSheet$Builder;

    iget-object v0, p0, Lcom/amazon/topaz/TPZBook;->styleSheet:Lcom/amazon/topaz/styles/StyleSheet;

    invoke-direct {v1, v0}, Lcom/amazon/topaz/styles/StyleSheet$Builder;-><init>(Lcom/amazon/topaz/styles/AbstractStyleSheet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 731
    :try_start_2
    iget-object v2, p0, Lcom/amazon/topaz/TPZBook;->dict:Lcom/amazon/topaz/internal/binxml/Dictionary;

    .line 732
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook;->other:Lcom/amazon/topaz/internal/binxml/Tree;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/binxml/Tree;->root()Lcom/amazon/topaz/internal/binxml/Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/binxml/Node;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 733
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 734
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/binxml/Node;

    .line 735
    iget-object v4, v2, Lcom/amazon/topaz/internal/binxml/Dictionary;->NODETYPE_STYLESHEET:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v4}, Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;->intValue()I

    move-result v4

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/binxml/Node;->getType()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v5

    if-ne v4, v5, :cond_1

    .line 738
    :try_start_3
    invoke-virtual {v1, v0}, Lcom/amazon/topaz/styles/StyleSheet$Builder;->addRules(Lcom/amazon/topaz/internal/binxml/Node;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lcom/amazon/topaz/exception/InvalidNodeTypeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    .line 750
    :cond_2
    :try_start_4
    invoke-virtual {v1}, Lcom/amazon/topaz/styles/StyleSheet$Builder;->build()Lcom/amazon/topaz/styles/StyleSheet;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/topaz/TPZBook;->styleSheet:Lcom/amazon/topaz/styles/StyleSheet;

    .line 753
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook;->chunks:Lcom/amazon/topaz/internal/binxml/IChunker;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/binxml/IChunker;->flushAll()V

    .line 755
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/topaz/TPZBook;->detailsLoaded:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 720
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 750
    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v1}, Lcom/amazon/topaz/styles/StyleSheet$Builder;->build()Lcom/amazon/topaz/styles/StyleSheet;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/topaz/TPZBook;->styleSheet:Lcom/amazon/topaz/styles/StyleSheet;

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private loadPageInfo()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/TopazException;,
            Lcom/amazon/topaz/exception/EndOfFileException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 792
    iget-boolean v0, p0, Lcom/amazon/topaz/TPZBook;->pageInfoLoaded:Z

    if-eqz v0, :cond_0

    .line 831
    :goto_0
    return-void

    .line 795
    :cond_0
    :try_start_0
    new-instance v0, Lcom/amazon/topaz/internal/binxml/Dictionary;

    iget-object v1, p0, Lcom/amazon/topaz/TPZBook;->chunks:Lcom/amazon/topaz/internal/binxml/IChunker;

    sget-object v2, Lcom/amazon/topaz/internal/TopazStrings;->CHUNKNAME_DICT:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/amazon/topaz/internal/binxml/IChunker;->getChunkData(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/topaz/internal/binxml/Dictionary;-><init>([B)V

    iput-object v0, p0, Lcom/amazon/topaz/TPZBook;->dict:Lcom/amazon/topaz/internal/binxml/Dictionary;

    .line 799
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook;->chunks:Lcom/amazon/topaz/internal/binxml/IChunker;

    sget-object v1, Lcom/amazon/topaz/internal/TopazStrings;->CHUNKNAME_DICT:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/topaz/internal/binxml/IChunker;->flush(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 807
    :try_start_1
    new-instance v0, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;

    iget-object v1, p0, Lcom/amazon/topaz/TPZBook;->chunks:Lcom/amazon/topaz/internal/binxml/IChunker;

    sget-object v2, Lcom/amazon/topaz/internal/TopazStrings;->CHUNKNAME_OTHER:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/amazon/topaz/internal/binxml/IChunker;->getChunkData(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;-><init>([B)V

    .line 809
    new-instance v1, Lcom/amazon/topaz/internal/binxml/Tree;

    iget-object v2, p0, Lcom/amazon/topaz/TPZBook;->dict:Lcom/amazon/topaz/internal/binxml/Dictionary;

    invoke-direct {v1, v2, v0}, Lcom/amazon/topaz/internal/binxml/Tree;-><init>(Lcom/amazon/topaz/internal/binxml/Dictionary;Lcom/amazon/topaz/internal/binxml/Deserializer;)V

    iput-object v1, p0, Lcom/amazon/topaz/TPZBook;->other:Lcom/amazon/topaz/internal/binxml/Tree;

    .line 810
    new-instance v1, Lcom/amazon/topaz/internal/binxml/Collection;

    iget-object v2, p0, Lcom/amazon/topaz/TPZBook;->dict:Lcom/amazon/topaz/internal/binxml/Dictionary;

    invoke-direct {v1, v2, v0}, Lcom/amazon/topaz/internal/binxml/Collection;-><init>(Lcom/amazon/topaz/internal/binxml/Dictionary;Lcom/amazon/topaz/internal/binxml/Deserializer;)V

    iput-object v1, p0, Lcom/amazon/topaz/TPZBook;->info:Lcom/amazon/topaz/internal/binxml/Collection;

    .line 811
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook;->chunks:Lcom/amazon/topaz/internal/binxml/IChunker;

    sget-object v1, Lcom/amazon/topaz/internal/TopazStrings;->CHUNKNAME_OTHER:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/topaz/internal/binxml/IChunker;->flush(Ljava/lang/String;I)V
    :try_end_1
    .catch Lcom/amazon/topaz/exception/TopazException; {:try_start_1 .. :try_end_1} :catch_0

    .line 818
    :goto_1
    iput v4, p0, Lcom/amazon/topaz/TPZBook;->lastPage:I

    .line 819
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook;->info:Lcom/amazon/topaz/internal/binxml/Collection;

    iget-object v1, p0, Lcom/amazon/topaz/TPZBook;->dict:Lcom/amazon/topaz/internal/binxml/Dictionary;

    iget-object v1, v1, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLENAME_PAGES:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/binxml/Collection;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Table;

    move-result-object v1

    .line 820
    invoke-virtual {v1}, Lcom/amazon/topaz/internal/binxml/Table;->iterator()Lcom/amazon/topaz/internal/binxml/Table$TableRowIterator;

    move-result-object v2

    .line 821
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 822
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 823
    iget-object v3, p0, Lcom/amazon/topaz/TPZBook;->dict:Lcom/amazon/topaz/internal/binxml/Dictionary;

    iget-object v3, v3, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_ID:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v1, v0, v3}, Lcom/amazon/topaz/internal/binxml/Table;->getInt(ILcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v3

    .line 824
    iget v4, p0, Lcom/amazon/topaz/TPZBook;->lastPage:I

    if-ge v4, v3, :cond_1

    .line 825
    iput v3, p0, Lcom/amazon/topaz/TPZBook;->lastPage:I

    .line 827
    :cond_1
    iget-object v3, p0, Lcom/amazon/topaz/TPZBook;->dict:Lcom/amazon/topaz/internal/binxml/Dictionary;

    iget-object v3, v3, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_ID:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v1, v0, v3}, Lcom/amazon/topaz/internal/binxml/Table;->getInt(ILcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v3

    iget-object v4, p0, Lcom/amazon/topaz/TPZBook;->dict:Lcom/amazon/topaz/internal/binxml/Dictionary;

    iget-object v4, v4, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_REF:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v1, v0, v4}, Lcom/amazon/topaz/internal/binxml/Table;->getInt(ILcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v0

    invoke-virtual {p0, v3, v0}, Lcom/amazon/topaz/TPZBook;->putInternalPageID(II)V

    goto :goto_2

    .line 803
    :catchall_0
    move-exception v0

    throw v0

    .line 830
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/topaz/TPZBook;->pageInfoLoaded:Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public clearCaches()V
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook;->pages:Lcom/amazon/topaz/internal/caching/Cache;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/caching/Cache;->clear()V

    .line 496
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook;->imgCache:Lcom/amazon/topaz/internal/caching/Cache;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/caching/Cache;->clear()V

    .line 497
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook;->glyphChunkCache:Lcom/amazon/topaz/internal/caching/Cache;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/caching/Cache;->clear()V

    .line 498
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook;->glyphEdgeCache:Lcom/amazon/topaz/internal/caching/Cache;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/caching/Cache;->clear()V

    .line 499
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook;->chunks:Lcom/amazon/topaz/internal/binxml/IChunker;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/binxml/IChunker;->flushAll()V

    .line 500
    return-void
.end method

.method public bridge synthetic firstID(I)I
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/amazon/topaz/Book;->firstID(I)I

    move-result v0

    return v0
.end method

.method getCallbacks()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/topaz/Callback;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 696
    invoke-direct {p0}, Lcom/amazon/topaz/TPZBook;->loadDetails()V

    .line 698
    iget-boolean v0, p0, Lcom/amazon/topaz/TPZBook;->linksLoaded:Z

    if-nez v0, :cond_1

    .line 700
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook;->info:Lcom/amazon/topaz/internal/binxml/Collection;

    iget-object v2, p0, Lcom/amazon/topaz/TPZBook;->dict:Lcom/amazon/topaz/internal/binxml/Dictionary;

    iget-object v2, v2, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLENAME_LINKS:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v0, v2}, Lcom/amazon/topaz/internal/binxml/Collection;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Table;

    move-result-object v3

    .line 701
    invoke-virtual {v3}, Lcom/amazon/topaz/internal/binxml/Table;->iterator()Lcom/amazon/topaz/internal/binxml/Table$TableRowIterator;

    move-result-object v6

    .line 702
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 703
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v0, p0

    move v2, v1

    move v5, v1

    .line 707
    invoke-static/range {v0 .. v5}, Lcom/amazon/topaz/internal/book/Link;->resolve(Lcom/amazon/topaz/TPZBook;IILcom/amazon/topaz/internal/binxml/Table;IZ)Lcom/amazon/topaz/internal/book/Link;

    move-result-object v0

    .line 708
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/book/Link;->getCallback()Lcom/amazon/topaz/Callback;

    move-result-object v0

    .line 709
    iget-object v2, p0, Lcom/amazon/topaz/TPZBook;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 711
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/topaz/TPZBook;->linksLoaded:Z

    .line 714
    :cond_1
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook;->callbacks:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCoverArt()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 520
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook;->chunks:Lcom/amazon/topaz/internal/binxml/IChunker;

    sget-object v1, Lcom/amazon/topaz/internal/TopazStrings;->CHUNKNAME_IMAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/binxml/IChunker;->numChunks(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook;->chunks:Lcom/amazon/topaz/internal/binxml/IChunker;

    sget-object v1, Lcom/amazon/topaz/internal/TopazStrings;->CHUNKNAME_IMAGE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/topaz/internal/binxml/IChunker;->getChunkData(Ljava/lang/String;I)[B

    move-result-object v0

    .line 525
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v2, [B

    goto :goto_0
.end method

.method getDPI()I
    .locals 1

    .prologue
    .line 511
    const/16 v0, 0x5a0

    return v0
.end method

.method getFileSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 552
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook;->chunks:Lcom/amazon/topaz/internal/binxml/IChunker;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/binxml/IChunker;->getFileSize()I

    move-result v0

    return v0
.end method

.method public getGlyph(II)Lcom/amazon/topaz/internal/book/Glyph;
    .locals 4
    .parameter "id"
    .parameter "scale"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 837
    iget-object v2, p0, Lcom/amazon/topaz/TPZBook;->glyphCache:Lcom/amazon/topaz/internal/caching/Cache;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/amazon/topaz/internal/caching/Cache;->get(Ljava/lang/Integer;)Lcom/amazon/topaz/internal/caching/Cacheable;

    move-result-object v1

    check-cast v1, Lcom/amazon/topaz/TPZBook$GlyphImpl;

    .line 839
    .local v1, glyph:Lcom/amazon/topaz/TPZBook$GlyphImpl;
    if-nez v1, :cond_1

    .line 842
    invoke-direct {p0, p1}, Lcom/amazon/topaz/TPZBook;->getGlyphChunk(I)Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;

    move-result-object v0

    .line 843
    .local v0, gc:Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;
    if-nez v0, :cond_0

    .line 845
    const/4 v2, 0x0

    .line 852
    .end local v0           #gc:Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;
    :goto_0
    return-object v2

    .line 848
    .restart local v0       #gc:Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;
    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->getGlyph(I)Lcom/amazon/topaz/TPZBook$GlyphImpl;

    move-result-object v1

    .line 849
    iget-object v2, p0, Lcom/amazon/topaz/TPZBook;->glyphCache:Lcom/amazon/topaz/internal/caching/Cache;

    invoke-virtual {v2, v1}, Lcom/amazon/topaz/internal/caching/Cache;->add(Lcom/amazon/topaz/internal/caching/Cacheable;)V

    .end local v0           #gc:Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;
    :cond_1
    move-object v2, v1

    .line 852
    goto :goto_0
.end method

.method public getImage(I)Lcom/amazon/topaz/internal/book/IImage;
    .locals 9
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 858
    if-ltz p1, :cond_0

    iget-object v7, p0, Lcom/amazon/topaz/TPZBook;->chunks:Lcom/amazon/topaz/internal/binxml/IChunker;

    sget-object v8, Lcom/amazon/topaz/internal/TopazStrings;->CHUNKNAME_IMAGE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/amazon/topaz/internal/binxml/IChunker;->numChunks(Ljava/lang/String;)I

    move-result v7

    if-lt p1, v7, :cond_1

    .line 859
    :cond_0
    const/4 v7, 0x0

    .line 877
    :goto_0
    return-object v7

    .line 861
    :cond_1
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 862
    .local v3, intId:Ljava/lang/Integer;
    iget-object v7, p0, Lcom/amazon/topaz/TPZBook;->imgCache:Lcom/amazon/topaz/internal/caching/Cache;

    invoke-virtual {v7, v3}, Lcom/amazon/topaz/internal/caching/Cache;->get(Ljava/lang/Integer;)Lcom/amazon/topaz/internal/caching/Cacheable;

    move-result-object v4

    check-cast v4, Lcom/amazon/topaz/internal/book/IImage;

    .line 863
    .local v4, ret:Lcom/amazon/topaz/internal/book/IImage;
    if-eqz v4, :cond_2

    move-object v7, v4

    .line 864
    goto :goto_0

    .line 866
    :cond_2
    invoke-static {}, Lcom/amazon/topaz/Viewer;->getImageFactory()Lcom/amazon/system/drawing/ImageFactoryExtended;

    move-result-object v7

    invoke-interface {v7}, Lcom/amazon/system/drawing/ImageFactoryExtended;->createImageIO()Lcom/amazon/system/io/ImageIO;

    move-result-object v2

    .line 867
    .local v2, imageIO:Lcom/amazon/system/io/ImageIO;
    iget-object v7, p0, Lcom/amazon/topaz/TPZBook;->chunks:Lcom/amazon/topaz/internal/binxml/IChunker;

    sget-object v8, Lcom/amazon/topaz/internal/TopazStrings;->CHUNKNAME_IMAGE:Ljava/lang/String;

    invoke-virtual {v7, v8, p1}, Lcom/amazon/topaz/internal/binxml/IChunker;->getChunkData(Ljava/lang/String;I)[B

    move-result-object v1

    .line 868
    .local v1, data:[B
    invoke-interface {v2, v1}, Lcom/amazon/system/io/ImageIO;->read([B)Lcom/amazon/system/drawing/BufferedImageExtended;

    move-result-object v6

    .line 870
    .local v6, tpz:Lcom/amazon/system/drawing/BufferedImageExtended;
    new-instance v5, Lcom/amazon/topaz/internal/drawing/RasterImage;

    invoke-direct {v5, v6}, Lcom/amazon/topaz/internal/drawing/RasterImage;-><init>(Lcom/amazon/system/drawing/BufferedImageExtended;)V

    .line 871
    .local v5, ri:Lcom/amazon/topaz/internal/drawing/RasterImage;
    new-instance v0, Lcom/amazon/topaz/internal/drawing/CacheableImage;

    invoke-direct {v0, v3, v5}, Lcom/amazon/topaz/internal/drawing/CacheableImage;-><init>(Ljava/lang/Integer;Lcom/amazon/topaz/internal/book/IImage;)V

    .line 872
    .local v0, ci:Lcom/amazon/topaz/internal/drawing/CacheableImage;
    move-object v4, v0

    .line 874
    iget-object v7, p0, Lcom/amazon/topaz/TPZBook;->chunks:Lcom/amazon/topaz/internal/binxml/IChunker;

    sget-object v8, Lcom/amazon/topaz/internal/TopazStrings;->CHUNKNAME_IMAGE:Ljava/lang/String;

    invoke-virtual {v7, v8, p1}, Lcom/amazon/topaz/internal/binxml/IChunker;->flush(Ljava/lang/String;I)V

    .line 875
    iget-object v7, p0, Lcom/amazon/topaz/TPZBook;->imgCache:Lcom/amazon/topaz/internal/caching/Cache;

    invoke-virtual {v7, v0}, Lcom/amazon/topaz/internal/caching/Cache;->add(Lcom/amazon/topaz/internal/caching/Cacheable;)V

    move-object v7, v4

    .line 877
    goto :goto_0
.end method

.method public getImageBytes(I)[B
    .locals 2
    .parameter "imageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 537
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/amazon/topaz/TPZBook;->chunks:Lcom/amazon/topaz/internal/binxml/IChunker;

    sget-object v1, Lcom/amazon/topaz/internal/TopazStrings;->CHUNKNAME_IMAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/binxml/IChunker;->numChunks(Ljava/lang/String;)I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook;->chunks:Lcom/amazon/topaz/internal/binxml/IChunker;

    sget-object v1, Lcom/amazon/topaz/internal/TopazStrings;->CHUNKNAME_IMAGE:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/amazon/topaz/internal/binxml/IChunker;->getChunkData(Ljava/lang/String;I)[B

    move-result-object v0

    .line 541
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method

.method public bridge synthetic getMetadata(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/amazon/topaz/Book;->getMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPage(I)Lcom/amazon/topaz/internal/book/Page;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 883
    invoke-direct {p0}, Lcom/amazon/topaz/TPZBook;->loadDetails()V

    .line 885
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook;->pages:Lcom/amazon/topaz/internal/caching/Cache;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/caching/Cache;->get(Ljava/lang/Integer;)Lcom/amazon/topaz/internal/caching/Cacheable;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/book/Page;

    .line 886
    if-nez v0, :cond_0

    .line 888
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazon/topaz/TPZBook;->getInternalPageID(I)Ljava/lang/Integer;

    move-result-object v0

    .line 896
    if-nez v0, :cond_1

    .line 898
    const/4 v0, 0x0

    .line 914
    :cond_0
    :goto_0
    return-object v0

    .line 900
    :cond_1
    new-instance v1, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;

    iget-object v2, p0, Lcom/amazon/topaz/TPZBook;->chunks:Lcom/amazon/topaz/internal/binxml/IChunker;

    sget-object v3, Lcom/amazon/topaz/internal/TopazStrings;->CHUNKNAME_PAGE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/amazon/topaz/internal/binxml/IChunker;->getChunkData(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;-><init>([B)V

    .line 902
    new-instance v2, Lcom/amazon/topaz/internal/book/PageParser;

    invoke-direct {v2, p0, p1, v1}, Lcom/amazon/topaz/internal/book/PageParser;-><init>(Lcom/amazon/topaz/TPZBook;ILcom/amazon/topaz/internal/binxml/Deserializer;)V

    .line 904
    iget-object v1, p0, Lcom/amazon/topaz/TPZBook;->chunks:Lcom/amazon/topaz/internal/binxml/IChunker;

    sget-object v3, Lcom/amazon/topaz/internal/TopazStrings;->CHUNKNAME_PAGE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Lcom/amazon/topaz/internal/binxml/IChunker;->flush(Ljava/lang/String;I)V

    .line 905
    invoke-virtual {v2}, Lcom/amazon/topaz/internal/book/PageParser;->getPage()Lcom/amazon/topaz/internal/book/Page;

    move-result-object v0

    .line 906
    iget-object v1, p0, Lcom/amazon/topaz/TPZBook;->pages:Lcom/amazon/topaz/internal/caching/Cache;

    invoke-virtual {v1, v0}, Lcom/amazon/topaz/internal/caching/Cache;->add(Lcom/amazon/topaz/internal/caching/Cacheable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 910
    :catchall_0
    move-exception v0

    throw v0
.end method

.method public bridge synthetic getPage(Ljava/lang/String;)Lcom/amazon/topaz/internal/book/Page;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/amazon/topaz/Book;->getPage(Ljava/lang/String;)Lcom/amazon/topaz/internal/book/Page;

    move-result-object v0

    return-object v0
.end method

.method getPageID(I)Ljava/lang/String;
    .locals 2
    .parameter "pagenum"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/EndOfFileException;,
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/TopazException;
        }
    .end annotation

    .prologue
    .line 608
    invoke-virtual {p0}, Lcom/amazon/topaz/TPZBook;->lastPage()I

    move-result v1

    if-le p1, v1, :cond_0

    .line 609
    invoke-virtual {p0}, Lcom/amazon/topaz/TPZBook;->lastPage()I

    move-result p1

    .line 611
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/topaz/TPZBook;->getOrigPageID(I)Ljava/lang/String;

    move-result-object v0

    .line 612
    .local v0, pageID:Ljava/lang/String;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 618
    :goto_0
    return-object v1

    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getPageNum(Ljava/lang/String;)I
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 623
    invoke-virtual {p0}, Lcom/amazon/topaz/TPZBook;->loadOrigLayout()V

    .line 625
    invoke-virtual {p0, p1}, Lcom/amazon/topaz/TPZBook;->getOrigLayout(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 626
    .local v1, pagenums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    if-nez v1, :cond_0

    .line 628
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .local v0, pagenum:I
    move v2, v0

    .line 643
    .end local v0           #pagenum:I
    .end local p0
    :goto_0
    return v2

    .line 632
    .restart local p0
    :catch_0
    move-exception v2

    move v2, v3

    goto :goto_0

    .line 636
    :cond_0
    monitor-enter v1

    .line 639
    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 640
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    monitor-exit v1

    goto :goto_0

    .line 641
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .restart local p0
    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v2, v3

    .line 643
    goto :goto_0
.end method

.method getStatistics()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 659
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 660
    const-string v1, "glyph_chunk_size"

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/amazon/topaz/TPZBook;->glyphChunkAllocation()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    const-string v1, "image_data_size"

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/amazon/topaz/TPZBook;->imageDataAllocation()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    const-string v1, "glyphCacheAccess"

    new-instance v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/amazon/topaz/TPZBook;->glyphChunkCache:Lcom/amazon/topaz/internal/caching/Cache;

    invoke-virtual {v3}, Lcom/amazon/topaz/internal/caching/Cache;->getAccesses()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    const-string v1, "glyphCacheMiss"

    new-instance v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/amazon/topaz/TPZBook;->glyphChunkCache:Lcom/amazon/topaz/internal/caching/Cache;

    invoke-virtual {v3}, Lcom/amazon/topaz/internal/caching/Cache;->getMisses()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    return-object v0
.end method

.method getStyleSheet()Lcom/amazon/topaz/styles/StyleSheet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 650
    invoke-direct {p0}, Lcom/amazon/topaz/TPZBook;->loadDetails()V

    .line 651
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook;->styleSheet:Lcom/amazon/topaz/styles/StyleSheet;

    return-object v0
.end method

.method public getText(II)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 955
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 958
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazon/topaz/TPZBook;->pageForID(I)I

    move-result v1

    .line 959
    invoke-virtual {p0, p2}, Lcom/amazon/topaz/TPZBook;->pageForID(I)I

    move-result v2

    .line 960
    :goto_0
    if-gt v1, v2, :cond_1

    .line 962
    invoke-virtual {p0, v1}, Lcom/amazon/topaz/TPZBook;->getPage(I)Lcom/amazon/topaz/internal/book/Page;

    move-result-object v3

    .line 963
    if-eqz v3, :cond_0

    .line 965
    iget-object v4, p0, Lcom/amazon/topaz/TPZBook;->dict:Lcom/amazon/topaz/internal/binxml/Dictionary;

    invoke-virtual {v3, v4, v0, p1, p2}, Lcom/amazon/topaz/internal/book/Page;->getText(Lcom/amazon/topaz/internal/binxml/Dictionary;Ljava/lang/StringBuffer;II)V
    :try_end_0
    .catch Lcom/amazon/topaz/exception/TopazException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 960
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 975
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    .line 978
    return-object v1

    .line 971
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method glyphChunkAllocation()I
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook;->glyphChunkCache:Lcom/amazon/topaz/internal/caching/Cache;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/caching/Cache;->getSize()I

    move-result v0

    return v0
.end method

.method glyphUsage()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/topaz/TPZBook$GlyphHit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 687
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    return-object v0
.end method

.method imageDataAllocation()I
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook;->imgCache:Lcom/amazon/topaz/internal/caching/Cache;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/caching/Cache;->getSize()I

    move-result v0

    return v0
.end method

.method public isPIDEncrypted()Z
    .locals 1

    .prologue
    .line 986
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook;->chunks:Lcom/amazon/topaz/internal/binxml/IChunker;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/binxml/IChunker;->isPIDEncrypted()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic lastID()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-super {p0}, Lcom/amazon/topaz/Book;->lastID()I

    move-result v0

    return v0
.end method

.method public declared-synchronized lastPage()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/EndOfFileException;,
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/TopazException;
        }
    .end annotation

    .prologue
    .line 504
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amazon/topaz/TPZBook;->loadPageInfo()V

    .line 506
    iget v0, p0, Lcom/amazon/topaz/TPZBook;->lastPage:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 504
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method loadGlyphChunks()V
    .locals 3

    .prologue
    .line 943
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/amazon/topaz/TPZBook;->delayLoadChunkList:[Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 945
    iget-object v1, p0, Lcom/amazon/topaz/TPZBook;->delayLoadChunkList:[Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 947
    iget-object v1, p0, Lcom/amazon/topaz/TPZBook;->delayLoadChunkList:[Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;->load()V

    .line 948
    iget-object v1, p0, Lcom/amazon/topaz/TPZBook;->delayLoadChunkList:[Lcom/amazon/topaz/TPZBook$TPZGlyphChunk;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 943
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 951
    :cond_1
    return-void
.end method

.method protected loadOrigLayout()V
    .locals 6

    .prologue
    .line 761
    iget-boolean v0, p0, Lcom/amazon/topaz/TPZBook;->origLayoutLoaded:Z

    if-nez v0, :cond_1

    .line 763
    iget-object v1, p0, Lcom/amazon/topaz/TPZBook;->dict:Lcom/amazon/topaz/internal/binxml/Dictionary;

    .line 765
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook;->info:Lcom/amazon/topaz/internal/binxml/Collection;

    iget-object v2, v1, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLENAME_ORIGINAL:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v0, v2}, Lcom/amazon/topaz/internal/binxml/Collection;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Table;

    move-result-object v2

    .line 766
    invoke-virtual {v2}, Lcom/amazon/topaz/internal/binxml/Table;->iterator()Lcom/amazon/topaz/internal/binxml/Table$TableRowIterator;

    move-result-object v3

    .line 767
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 768
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 769
    iget-object v4, v1, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_PNUM:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v2, v0, v4}, Lcom/amazon/topaz/internal/binxml/Table;->getInt(ILcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v4

    .line 770
    iget-object v5, v1, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_PID:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v2, v0, v5}, Lcom/amazon/topaz/internal/binxml/Table;->getString(ILcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Ljava/lang/String;

    move-result-object v0

    .line 771
    invoke-virtual {p0, v4, v0}, Lcom/amazon/topaz/TPZBook;->putOrigPageID(ILjava/lang/String;)V

    .line 772
    invoke-virtual {p0, v0}, Lcom/amazon/topaz/TPZBook;->getOrigLayout(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 773
    monitor-enter v0

    .line 777
    :try_start_0
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 778
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 781
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/topaz/TPZBook;->origLayoutLoaded:Z

    .line 783
    :cond_1
    return-void
.end method

.method public pageForID(I)I
    .locals 12
    .parameter "idToFind"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 561
    invoke-direct {p0}, Lcom/amazon/topaz/TPZBook;->loadDetails()V

    .line 563
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook;->dict:Lcom/amazon/topaz/internal/binxml/Dictionary;

    .line 564
    .local v0, dict:Lcom/amazon/topaz/internal/binxml/Dictionary;
    iget-object v8, p0, Lcom/amazon/topaz/TPZBook;->info:Lcom/amazon/topaz/internal/binxml/Collection;

    iget-object v9, v0, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLENAME_STARTID:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v8, v9}, Lcom/amazon/topaz/internal/binxml/Collection;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Table;

    move-result-object v3

    .line 570
    .local v3, ids:Lcom/amazon/topaz/internal/binxml/Table;
    const/4 v7, -0x1

    .line 572
    .local v7, ret:I
    const/4 v1, 0x1

    .line 573
    .local v1, firstPage:I
    invoke-virtual {p0, v11}, Lcom/amazon/topaz/TPZBook;->firstID(I)I

    move-result v8

    if-ge p1, v8, :cond_0

    move v8, v1

    .line 603
    :goto_0
    return v8

    .line 578
    :cond_0
    invoke-virtual {v3}, Lcom/amazon/topaz/internal/binxml/Table;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 580
    invoke-virtual {v3}, Lcom/amazon/topaz/internal/binxml/Table;->size()I

    move-result v4

    .line 581
    .local v4, nr:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_4

    .line 582
    iget-object v8, v0, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_ID:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v3, v2, v8}, Lcom/amazon/topaz/internal/binxml/Table;->getInt(ILcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v8

    if-gt v8, p1, :cond_1

    .line 583
    iget-object v8, v0, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_PAGE:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v3, v2, v8}, Lcom/amazon/topaz/internal/binxml/Table;->getInt(ILcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v7

    .line 581
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 589
    .end local v2           #i:I
    .end local v4           #nr:I
    :cond_2
    const/4 v8, 0x2

    new-array v8, v8, [Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_ID:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    aput-object v10, v8, v9

    iget-object v9, v0, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_PAGE:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    aput-object v9, v8, v11

    invoke-virtual {p0}, Lcom/amazon/topaz/TPZBook;->lastPage()I

    move-result v9

    invoke-virtual {v3, v8, v9}, Lcom/amazon/topaz/internal/binxml/Table;->initAsEmpty([Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;I)V

    .line 590
    const/4 v2, 0x1

    .restart local v2       #i:I
    :goto_2
    invoke-virtual {p0}, Lcom/amazon/topaz/TPZBook;->lastPage()I

    move-result v8

    if-gt v2, v8, :cond_4

    .line 591
    invoke-virtual {p0, v2}, Lcom/amazon/topaz/TPZBook;->getPage(I)Lcom/amazon/topaz/internal/book/Page;

    move-result-object v5

    .line 592
    .local v5, p:Lcom/amazon/topaz/internal/book/Page;
    invoke-virtual {v5}, Lcom/amazon/topaz/internal/book/Page;->firstID()I

    move-result v6

    .line 593
    .local v6, pstart:I
    if-gt v6, p1, :cond_3

    .line 594
    move v7, v2

    .line 598
    :cond_3
    iget-object v8, v0, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_ID:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v3, v2, v8, v6}, Lcom/amazon/topaz/internal/binxml/Table;->setValue(ILcom/amazon/topaz/internal/binxml/Dictionary$StringID;I)V

    .line 599
    iget-object v8, v0, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_PAGE:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v3, v2, v8, v2}, Lcom/amazon/topaz/internal/binxml/Table;->setValue(ILcom/amazon/topaz/internal/binxml/Dictionary$StringID;I)V

    .line 590
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v5           #p:Lcom/amazon/topaz/internal/book/Page;
    .end local v6           #pstart:I
    :cond_4
    move v8, v7

    .line 603
    goto :goto_0
.end method

.method public setPID([B)Z
    .locals 1
    .parameter "pid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 487
    iget-object v0, p0, Lcom/amazon/topaz/TPZBook;->chunks:Lcom/amazon/topaz/internal/binxml/IChunker;

    invoke-virtual {v0, p1}, Lcom/amazon/topaz/internal/binxml/IChunker;->setPID([B)Z

    move-result v0

    return v0
.end method
