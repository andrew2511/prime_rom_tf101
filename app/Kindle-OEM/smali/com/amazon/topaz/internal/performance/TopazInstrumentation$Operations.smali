.class public final Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;
.super Ljava/lang/Object;
.source "TopazInstrumentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/internal/performance/TopazInstrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Operations"
.end annotation


# static fields
.field private static final BASIC_INSTRUMENT:Lcom/amazon/foundation/internal/performance/Instrument;

.field private static final IO_INSTRUMENT:Lcom/amazon/foundation/internal/performance/Instrument;


# instance fields
.field public final APPEND:Lcom/amazon/foundation/internal/performance/OperationMeasurer;

.field public final APPEND_FAILED:Lcom/amazon/foundation/internal/performance/OperationMeasurer;

.field public final BLOCK_DRAW:Lcom/amazon/foundation/internal/performance/OperationMeasurer;

.field public final DESERIALIZE_COLLECTION:Lcom/amazon/foundation/internal/performance/OperationMeasurer;

.field public final FIND_PARAGRAPH_START:Lcom/amazon/foundation/internal/performance/OperationMeasurer;

.field public final GET_PAGE:Lcom/amazon/foundation/internal/performance/OperationMeasurer;

.field public final INIT_CANVAS:Lcom/amazon/foundation/internal/performance/OperationMeasurer;

.field public final LAYOUT:Lcom/amazon/foundation/internal/performance/OperationMeasurer;

.field public final LAYOUT_PARSE_PAGE:Lcom/amazon/foundation/internal/performance/OperationMeasurer;

.field public final LAYOUT_SKIP:Lcom/amazon/foundation/internal/performance/OperationMeasurer;

.field public final LOAD_DICT:Lcom/amazon/foundation/internal/performance/OperationMeasurer;

.field public final LOAD_GLYPH_CHUNK:Lcom/amazon/foundation/internal/performance/OperationMeasurer;

.field public final PRERENDER:Lcom/amazon/foundation/internal/performance/OperationMeasurer;

.field public final READ_CHUNK:Lcom/amazon/foundation/internal/performance/OperationMeasurer;

.field public final READ_CHUNK_DECOMPRESS:Lcom/amazon/foundation/internal/performance/OperationMeasurer;

.field public final READ_CHUNK_DECRYPT:Lcom/amazon/foundation/internal/performance/OperationMeasurer;

.field public final READ_CHUNK_DISK_READ:Lcom/amazon/foundation/internal/performance/OperationMeasurer;

.field public final RENDER:Lcom/amazon/foundation/internal/performance/OperationMeasurer;

.field public final ROLLING_CANVAS_DRAW:Lcom/amazon/foundation/internal/performance/OperationMeasurer;

.field public final VIEW_LAYOUT_BACKWARD:Lcom/amazon/foundation/internal/performance/OperationMeasurer;

.field public final VIEW_LAYOUT_FORWARD:Lcom/amazon/foundation/internal/performance/OperationMeasurer;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 91
    new-instance v0, Lcom/amazon/foundation/internal/performance/Instrument;

    invoke-static {}, Lcom/amazon/topaz/internal/performance/TopazInstrumentation;->access$100()Lcom/amazon/foundation/internal/performance/SystemSpecificCounterProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/foundation/internal/performance/SystemSpecificCounterProvider;->getTimingCounters()[Lcom/amazon/foundation/internal/performance/Counter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/foundation/internal/performance/Instrument;-><init>([Lcom/amazon/foundation/internal/performance/Counter;)V

    sput-object v0, Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;->BASIC_INSTRUMENT:Lcom/amazon/foundation/internal/performance/Instrument;

    .line 94
    new-instance v0, Lcom/amazon/foundation/internal/performance/Instrument;

    const/4 v1, 0x2

    new-array v1, v1, [[Lcom/amazon/foundation/internal/performance/Counter;

    invoke-static {}, Lcom/amazon/topaz/internal/performance/TopazInstrumentation;->access$100()Lcom/amazon/foundation/internal/performance/SystemSpecificCounterProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/foundation/internal/performance/SystemSpecificCounterProvider;->getTimingCounters()[Lcom/amazon/foundation/internal/performance/Counter;

    move-result-object v2

    aput-object v2, v1, v4

    new-array v2, v5, [Lcom/amazon/foundation/internal/performance/Counter;

    sget-object v3, Lcom/amazon/kcp/performance/KCPPerfCounters;->DISK_READ_BYTES:Lcom/amazon/foundation/internal/performance/Counter;

    aput-object v3, v2, v4

    aput-object v2, v1, v5

    invoke-direct {v0, v1}, Lcom/amazon/foundation/internal/performance/Instrument;-><init>([[Lcom/amazon/foundation/internal/performance/Counter;)V

    sput-object v0, Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;->IO_INSTRUMENT:Lcom/amazon/foundation/internal/performance/Instrument;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;

    const-string v1, "getChunkData"

    invoke-static {}, Lcom/amazon/foundation/internal/performance/StringMeasurementTagFormatter;->getInstance()Lcom/amazon/foundation/internal/performance/StringMeasurementTagFormatter;

    move-result-object v2

    sget-object v3, Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;->BASIC_INSTRUMENT:Lcom/amazon/foundation/internal/performance/Instrument;

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;-><init>(Ljava/lang/String;Lcom/amazon/foundation/internal/performance/MeasurementTagFormatter;Lcom/amazon/foundation/internal/performance/Instrument;)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;->READ_CHUNK:Lcom/amazon/foundation/internal/performance/OperationMeasurer;

    .line 106
    new-instance v0, Lcom/amazon/foundation/internal/performance/NullOperationMeasurer;

    const-string v1, "disk read"

    invoke-static {}, Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;->getInstance()Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;

    move-result-object v2

    sget-object v3, Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;->IO_INSTRUMENT:Lcom/amazon/foundation/internal/performance/Instrument;

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/foundation/internal/performance/NullOperationMeasurer;-><init>(Ljava/lang/String;Lcom/amazon/foundation/internal/performance/MeasurementTagFormatter;Lcom/amazon/foundation/internal/performance/Instrument;)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;->READ_CHUNK_DISK_READ:Lcom/amazon/foundation/internal/performance/OperationMeasurer;

    .line 109
    new-instance v0, Lcom/amazon/foundation/internal/performance/NullOperationMeasurer;

    const-string v1, "decrypt"

    invoke-static {}, Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;->getInstance()Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;

    move-result-object v2

    sget-object v3, Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;->BASIC_INSTRUMENT:Lcom/amazon/foundation/internal/performance/Instrument;

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/foundation/internal/performance/NullOperationMeasurer;-><init>(Ljava/lang/String;Lcom/amazon/foundation/internal/performance/MeasurementTagFormatter;Lcom/amazon/foundation/internal/performance/Instrument;)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;->READ_CHUNK_DECRYPT:Lcom/amazon/foundation/internal/performance/OperationMeasurer;

    .line 112
    new-instance v0, Lcom/amazon/foundation/internal/performance/NullOperationMeasurer;

    const-string v1, "decompress"

    invoke-static {}, Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;->getInstance()Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;

    move-result-object v2

    sget-object v3, Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;->BASIC_INSTRUMENT:Lcom/amazon/foundation/internal/performance/Instrument;

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/foundation/internal/performance/NullOperationMeasurer;-><init>(Ljava/lang/String;Lcom/amazon/foundation/internal/performance/MeasurementTagFormatter;Lcom/amazon/foundation/internal/performance/Instrument;)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;->READ_CHUNK_DECOMPRESS:Lcom/amazon/foundation/internal/performance/OperationMeasurer;

    .line 115
    new-instance v0, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;

    const-string v1, "parsePage"

    invoke-static {}, Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;->getInstance()Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;

    move-result-object v2

    sget-object v3, Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;->BASIC_INSTRUMENT:Lcom/amazon/foundation/internal/performance/Instrument;

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;-><init>(Ljava/lang/String;Lcom/amazon/foundation/internal/performance/MeasurementTagFormatter;Lcom/amazon/foundation/internal/performance/Instrument;)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;->LAYOUT_PARSE_PAGE:Lcom/amazon/foundation/internal/performance/OperationMeasurer;

    .line 118
    new-instance v0, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;

    const-string v1, "loadGlyphChunk"

    invoke-static {}, Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;->getInstance()Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;

    move-result-object v2

    sget-object v3, Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;->BASIC_INSTRUMENT:Lcom/amazon/foundation/internal/performance/Instrument;

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;-><init>(Ljava/lang/String;Lcom/amazon/foundation/internal/performance/MeasurementTagFormatter;Lcom/amazon/foundation/internal/performance/Instrument;)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;->LOAD_GLYPH_CHUNK:Lcom/amazon/foundation/internal/performance/OperationMeasurer;

    .line 121
    new-instance v0, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;

    const-string v1, "getPage"

    invoke-static {}, Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;->getInstance()Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;

    move-result-object v2

    sget-object v3, Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;->BASIC_INSTRUMENT:Lcom/amazon/foundation/internal/performance/Instrument;

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;-><init>(Ljava/lang/String;Lcom/amazon/foundation/internal/performance/MeasurementTagFormatter;Lcom/amazon/foundation/internal/performance/Instrument;)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;->GET_PAGE:Lcom/amazon/foundation/internal/performance/OperationMeasurer;

    .line 124
    new-instance v0, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;

    const-string v1, "findParagraphStart"

    invoke-static {}, Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;->getInstance()Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;

    move-result-object v2

    sget-object v3, Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;->BASIC_INSTRUMENT:Lcom/amazon/foundation/internal/performance/Instrument;

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;-><init>(Ljava/lang/String;Lcom/amazon/foundation/internal/performance/MeasurementTagFormatter;Lcom/amazon/foundation/internal/performance/Instrument;)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;->FIND_PARAGRAPH_START:Lcom/amazon/foundation/internal/performance/OperationMeasurer;

    .line 126
    new-instance v0, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;

    const-string v1, "layoutForward"

    invoke-static {}, Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;->getInstance()Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;

    move-result-object v2

    sget-object v3, Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;->BASIC_INSTRUMENT:Lcom/amazon/foundation/internal/performance/Instrument;

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;-><init>(Ljava/lang/String;Lcom/amazon/foundation/internal/performance/MeasurementTagFormatter;Lcom/amazon/foundation/internal/performance/Instrument;)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;->VIEW_LAYOUT_FORWARD:Lcom/amazon/foundation/internal/performance/OperationMeasurer;

    .line 128
    new-instance v0, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;

    const-string v1, "layoutBackward"

    invoke-static {}, Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;->getInstance()Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;

    move-result-object v2

    sget-object v3, Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;->BASIC_INSTRUMENT:Lcom/amazon/foundation/internal/performance/Instrument;

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;-><init>(Ljava/lang/String;Lcom/amazon/foundation/internal/performance/MeasurementTagFormatter;Lcom/amazon/foundation/internal/performance/Instrument;)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;->VIEW_LAYOUT_BACKWARD:Lcom/amazon/foundation/internal/performance/OperationMeasurer;

    .line 130
    new-instance v0, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;

    const-string v1, "initCanvas"

    invoke-static {}, Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;->getInstance()Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;

    move-result-object v2

    sget-object v3, Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;->BASIC_INSTRUMENT:Lcom/amazon/foundation/internal/performance/Instrument;

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;-><init>(Ljava/lang/String;Lcom/amazon/foundation/internal/performance/MeasurementTagFormatter;Lcom/amazon/foundation/internal/performance/Instrument;)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;->INIT_CANVAS:Lcom/amazon/foundation/internal/performance/OperationMeasurer;

    .line 132
    new-instance v0, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;

    const-string v1, "blockDraw"

    invoke-static {}, Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;->getInstance()Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;

    move-result-object v2

    sget-object v3, Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;->BASIC_INSTRUMENT:Lcom/amazon/foundation/internal/performance/Instrument;

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;-><init>(Ljava/lang/String;Lcom/amazon/foundation/internal/performance/MeasurementTagFormatter;Lcom/amazon/foundation/internal/performance/Instrument;)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;->BLOCK_DRAW:Lcom/amazon/foundation/internal/performance/OperationMeasurer;

    .line 134
    new-instance v0, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;

    const-string v1, "rollingCanvasDraw"

    invoke-static {}, Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;->getInstance()Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;

    move-result-object v2

    sget-object v3, Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;->BASIC_INSTRUMENT:Lcom/amazon/foundation/internal/performance/Instrument;

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;-><init>(Ljava/lang/String;Lcom/amazon/foundation/internal/performance/MeasurementTagFormatter;Lcom/amazon/foundation/internal/performance/Instrument;)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;->ROLLING_CANVAS_DRAW:Lcom/amazon/foundation/internal/performance/OperationMeasurer;

    .line 137
    new-instance v0, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;

    const-string v1, "layout"

    invoke-static {}, Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;->getInstance()Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;

    move-result-object v2

    sget-object v3, Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;->BASIC_INSTRUMENT:Lcom/amazon/foundation/internal/performance/Instrument;

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;-><init>(Ljava/lang/String;Lcom/amazon/foundation/internal/performance/MeasurementTagFormatter;Lcom/amazon/foundation/internal/performance/Instrument;)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;->LAYOUT:Lcom/amazon/foundation/internal/performance/OperationMeasurer;

    .line 140
    new-instance v0, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;

    const-string v1, "layoutSkipToLocation"

    invoke-static {}, Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;->getInstance()Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;

    move-result-object v2

    sget-object v3, Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;->BASIC_INSTRUMENT:Lcom/amazon/foundation/internal/performance/Instrument;

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;-><init>(Ljava/lang/String;Lcom/amazon/foundation/internal/performance/MeasurementTagFormatter;Lcom/amazon/foundation/internal/performance/Instrument;)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;->LAYOUT_SKIP:Lcom/amazon/foundation/internal/performance/OperationMeasurer;

    .line 143
    new-instance v0, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;

    const-string v1, "append"

    invoke-static {}, Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;->getInstance()Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;

    move-result-object v2

    sget-object v3, Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;->BASIC_INSTRUMENT:Lcom/amazon/foundation/internal/performance/Instrument;

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;-><init>(Ljava/lang/String;Lcom/amazon/foundation/internal/performance/MeasurementTagFormatter;Lcom/amazon/foundation/internal/performance/Instrument;)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;->APPEND:Lcom/amazon/foundation/internal/performance/OperationMeasurer;

    .line 146
    new-instance v0, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;

    const-string v1, "appendFailed"

    invoke-static {}, Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;->getInstance()Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;

    move-result-object v2

    sget-object v3, Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;->BASIC_INSTRUMENT:Lcom/amazon/foundation/internal/performance/Instrument;

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;-><init>(Ljava/lang/String;Lcom/amazon/foundation/internal/performance/MeasurementTagFormatter;Lcom/amazon/foundation/internal/performance/Instrument;)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;->APPEND_FAILED:Lcom/amazon/foundation/internal/performance/OperationMeasurer;

    .line 149
    new-instance v0, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;

    const-string v1, "render"

    invoke-static {}, Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;->getInstance()Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;

    move-result-object v2

    sget-object v3, Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;->BASIC_INSTRUMENT:Lcom/amazon/foundation/internal/performance/Instrument;

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;-><init>(Ljava/lang/String;Lcom/amazon/foundation/internal/performance/MeasurementTagFormatter;Lcom/amazon/foundation/internal/performance/Instrument;)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;->RENDER:Lcom/amazon/foundation/internal/performance/OperationMeasurer;

    .line 152
    new-instance v0, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;

    const-string v1, "preRender"

    invoke-static {}, Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;->getInstance()Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;

    move-result-object v2

    sget-object v3, Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;->BASIC_INSTRUMENT:Lcom/amazon/foundation/internal/performance/Instrument;

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;-><init>(Ljava/lang/String;Lcom/amazon/foundation/internal/performance/MeasurementTagFormatter;Lcom/amazon/foundation/internal/performance/Instrument;)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;->PRERENDER:Lcom/amazon/foundation/internal/performance/OperationMeasurer;

    .line 155
    new-instance v0, Lcom/amazon/foundation/internal/performance/NullOperationMeasurer;

    const-string v1, "deserializeCollection"

    invoke-static {}, Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;->getInstance()Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;

    move-result-object v2

    sget-object v3, Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;->BASIC_INSTRUMENT:Lcom/amazon/foundation/internal/performance/Instrument;

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/foundation/internal/performance/NullOperationMeasurer;-><init>(Ljava/lang/String;Lcom/amazon/foundation/internal/performance/MeasurementTagFormatter;Lcom/amazon/foundation/internal/performance/Instrument;)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;->DESERIALIZE_COLLECTION:Lcom/amazon/foundation/internal/performance/OperationMeasurer;

    .line 158
    new-instance v0, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;

    const-string v1, "loadDict"

    invoke-static {}, Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;->getInstance()Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;

    move-result-object v2

    sget-object v3, Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;->BASIC_INSTRUMENT:Lcom/amazon/foundation/internal/performance/Instrument;

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;-><init>(Ljava/lang/String;Lcom/amazon/foundation/internal/performance/MeasurementTagFormatter;Lcom/amazon/foundation/internal/performance/Instrument;)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;->LOAD_DICT:Lcom/amazon/foundation/internal/performance/OperationMeasurer;

    .line 88
    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/topaz/internal/performance/TopazInstrumentation$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;-><init>()V

    return-void
.end method
