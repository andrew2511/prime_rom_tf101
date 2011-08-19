.class public Lcom/amazon/topaz/internal/performance/TopazPerfCounters;
.super Ljava/lang/Object;
.source "TopazPerfCounters.java"


# static fields
.field public static final CHUNKS_LOADED:Lcom/amazon/foundation/internal/performance/CacheCounter;

.field public static final CHUNK_BYTES_LOADED:Lcom/amazon/foundation/internal/performance/Counter;

.field public static final GLYPHS_LOADED:Lcom/amazon/foundation/internal/performance/CacheCounter;

.field public static final GLYPHS_RENDERED:Lcom/amazon/foundation/internal/performance/CacheCounter;

.field public static final GLYPH_BYTES_LOADED:Lcom/amazon/foundation/internal/performance/Counter;

.field public static final GLYPH_CHUNKS_LOADED:Lcom/amazon/foundation/internal/performance/CacheCounter;

.field public static final GLYPH_RENDER_POOL_OVERFLOWS:Lcom/amazon/foundation/internal/performance/CacheCounter;

.field public static final IMAGES_LOADED:Lcom/amazon/foundation/internal/performance/CacheCounter;

.field public static final PAGES_LOADED:Lcom/amazon/foundation/internal/performance/CacheCounter;

.field public static final TABLE_BYTES_LOADED:Lcom/amazon/foundation/internal/performance/Counter;

.field public static final TEXT_PAGES_LOADED:Lcom/amazon/foundation/internal/performance/CacheCounter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcom/amazon/foundation/internal/performance/CacheCounter;

    const-string v1, "GLYPHS RENDERED"

    invoke-direct {v0, v1}, Lcom/amazon/foundation/internal/performance/CacheCounter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/topaz/internal/performance/TopazPerfCounters;->GLYPHS_RENDERED:Lcom/amazon/foundation/internal/performance/CacheCounter;

    .line 20
    new-instance v0, Lcom/amazon/foundation/internal/performance/CacheCounter;

    const-string v1, "GLYPHS LOADED"

    invoke-direct {v0, v1}, Lcom/amazon/foundation/internal/performance/CacheCounter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/topaz/internal/performance/TopazPerfCounters;->GLYPHS_LOADED:Lcom/amazon/foundation/internal/performance/CacheCounter;

    .line 23
    new-instance v0, Lcom/amazon/foundation/internal/performance/Counter;

    const-string v1, "GLYPH BYTES LOADED"

    invoke-direct {v0, v1}, Lcom/amazon/foundation/internal/performance/Counter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/topaz/internal/performance/TopazPerfCounters;->GLYPH_BYTES_LOADED:Lcom/amazon/foundation/internal/performance/Counter;

    .line 26
    new-instance v0, Lcom/amazon/foundation/internal/performance/CacheCounter;

    const-string v1, "TEXT PAGES LOADED"

    invoke-direct {v0, v1}, Lcom/amazon/foundation/internal/performance/CacheCounter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/topaz/internal/performance/TopazPerfCounters;->IMAGES_LOADED:Lcom/amazon/foundation/internal/performance/CacheCounter;

    .line 29
    new-instance v0, Lcom/amazon/foundation/internal/performance/CacheCounter;

    const-string v1, "GLYPH CHUNKS LOADED"

    invoke-direct {v0, v1}, Lcom/amazon/foundation/internal/performance/CacheCounter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/topaz/internal/performance/TopazPerfCounters;->GLYPH_CHUNKS_LOADED:Lcom/amazon/foundation/internal/performance/CacheCounter;

    .line 32
    new-instance v0, Lcom/amazon/foundation/internal/performance/CacheCounter;

    const-string v1, "TEXT PAGES LOADED"

    invoke-direct {v0, v1}, Lcom/amazon/foundation/internal/performance/CacheCounter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/topaz/internal/performance/TopazPerfCounters;->TEXT_PAGES_LOADED:Lcom/amazon/foundation/internal/performance/CacheCounter;

    .line 35
    new-instance v0, Lcom/amazon/foundation/internal/performance/CacheCounter;

    const-string v1, "PAGES LOADED"

    invoke-direct {v0, v1}, Lcom/amazon/foundation/internal/performance/CacheCounter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/topaz/internal/performance/TopazPerfCounters;->PAGES_LOADED:Lcom/amazon/foundation/internal/performance/CacheCounter;

    .line 38
    new-instance v0, Lcom/amazon/foundation/internal/performance/CacheCounter;

    const-string v1, "CHUNKS LOADED"

    invoke-direct {v0, v1}, Lcom/amazon/foundation/internal/performance/CacheCounter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/topaz/internal/performance/TopazPerfCounters;->CHUNKS_LOADED:Lcom/amazon/foundation/internal/performance/CacheCounter;

    .line 41
    new-instance v0, Lcom/amazon/foundation/internal/performance/Counter;

    const-string v1, "CHUNK BYTES LOADED"

    invoke-direct {v0, v1}, Lcom/amazon/foundation/internal/performance/Counter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/topaz/internal/performance/TopazPerfCounters;->CHUNK_BYTES_LOADED:Lcom/amazon/foundation/internal/performance/Counter;

    .line 44
    new-instance v0, Lcom/amazon/foundation/internal/performance/Counter;

    const-string v1, "TABLE BYTES LOADED"

    invoke-direct {v0, v1}, Lcom/amazon/foundation/internal/performance/Counter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/topaz/internal/performance/TopazPerfCounters;->TABLE_BYTES_LOADED:Lcom/amazon/foundation/internal/performance/Counter;

    .line 49
    new-instance v0, Lcom/amazon/foundation/internal/performance/CacheCounter;

    const-string v1, "RENDER POOL OVERFLOWS"

    invoke-direct {v0, v1}, Lcom/amazon/foundation/internal/performance/CacheCounter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/topaz/internal/performance/TopazPerfCounters;->GLYPH_RENDER_POOL_OVERFLOWS:Lcom/amazon/foundation/internal/performance/CacheCounter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
