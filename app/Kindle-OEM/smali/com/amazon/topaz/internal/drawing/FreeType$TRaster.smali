.class public final Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;
.super Ljava/lang/Object;
.source "FreeType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/internal/drawing/FreeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TRaster"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/topaz/internal/drawing/FreeType$TRaster$Params;
    }
.end annotation


# static fields
.field public static final ErrRaster_Invalid_Mode:I = -0x2

.field public static final ErrRaster_Invalid_Outline:I = -0x11

.field public static final ErrRaster_MemoryOverflow:I = -0x4

.field private static final FT_MAX_GRAY_SPANS:I = 0x20

.field static final QSORT_THRESHOLD:I = 0x9


# instance fields
.field private area:I

.field private band_size:I

.field private bands_max:[I

.field private bands_min:[I

.field private bez_stack_x:[I

.field private bez_stack_y:[I

.field private cacheTranslateX:I

.field private cacheTranslateY:I

.field private cells_area:[I

.field private cells_cover:[I

.field private cells_x:[I

.field private cells_y:[I

.field private clip_box:Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;

.field private conic_level:I

.field private cover:I

.field private cubic_level:I

.field private final edgeCache:Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;

.field private ex:I

.field private ey:I

.field private gray_spans_cover:[I

.field private gray_spans_len:[I

.field private gray_spans_x:[I

.field private invalid:Z

.field private last_ey:I

.field private lev_stack:[I

.field private max_ex:I

.field private max_ey:I

.field private min_ex:I

.field private min_ey:I

.field private num_cells:I

.field private num_gray_spans:I

.field private outline:Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;

.field private params:Lcom/amazon/topaz/internal/drawing/FreeType$TRaster$Params;

.field private qsort_stack:[I

.field private record:Z

.field private render_span:Lcom/amazon/topaz/internal/drawing/FreeType$IRenderSpans;

.field private span_y:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Lcom/amazon/topaz/internal/caching/Cache;)V
    .locals 5
    .parameter "glyphEdgeCache"

    .prologue
    const/16 v4, 0x61

    const/16 v3, 0x28

    const/16 v2, 0x800

    const/16 v1, 0x20

    .line 963
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 964
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->bez_stack_x:[I

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->bez_stack_y:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->lev_stack:[I

    .line 965
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->gray_spans_x:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->gray_spans_len:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->gray_spans_cover:[I

    .line 966
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cells_x:[I

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cells_y:[I

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cells_area:[I

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cells_cover:[I

    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cells_x:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->band_size:I

    .line 968
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->bands_min:[I

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->bands_max:[I

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->qsort_stack:[I

    .line 970
    new-instance v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster$Params;

    invoke-direct {v0}, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster$Params;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->params:Lcom/amazon/topaz/internal/drawing/FreeType$TRaster$Params;

    .line 971
    new-instance v0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;

    invoke-direct {v0}, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->outline:Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;

    .line 972
    new-instance v0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1}, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;-><init>(Lcom/amazon/topaz/internal/caching/Cache;S)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->edgeCache:Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;

    .line 973
    return-void
.end method

.method private gray_compute_cbox()V
    .locals 2

    .prologue
    .line 1048
    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->outline:Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->computeBoundingBox()Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;

    move-result-object v0

    .line 1050
    .local v0, boundingBox:Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;
    iget v1, v0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->xMin:I

    iput v1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->min_ex:I

    .line 1051
    iget v1, v0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->yMin:I

    iput v1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->min_ey:I

    .line 1052
    iget v1, v0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->xMax:I

    iput v1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->max_ex:I

    .line 1053
    iget v1, v0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->yMax:I

    iput v1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->max_ey:I

    .line 1054
    return-void
.end method

.method private gray_convert_glyph_inner()I
    .locals 1

    .prologue
    .line 2090
    :try_start_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->outline:Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;

    invoke-virtual {v0, p0}, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->Decompose(Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;)I

    move-result v0

    .line 2095
    invoke-direct {p0}, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->gray_record_cell()V
    :try_end_0
    .catch Lcom/amazon/topaz/internal/drawing/FreeType$RenderPoolOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2102
    :goto_0
    return v0

    .line 2099
    :catch_0
    move-exception v0

    const/4 v0, -0x4

    goto :goto_0
.end method

.method private gray_hline(IIII)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1902
    iget-object v6, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->gray_spans_x:[I

    iget-object v7, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->gray_spans_len:[I

    iget-object v8, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->gray_spans_cover:[I

    .line 1912
    shr-int/lit8 v0, p3, 0x9

    .line 1914
    if-gez v0, :cond_0

    .line 1915
    neg-int v0, v0

    .line 1917
    :cond_0
    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->outline:Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;

    invoke-static {v1}, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->access$100(Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 1919
    and-int/lit16 v0, v0, 0x1ff

    .line 1921
    const/16 v1, 0x100

    if-le v0, v1, :cond_2

    .line 1922
    const/16 v1, 0x200

    sub-int v0, v1, v0

    move v9, v0

    .line 1933
    :goto_0
    iget v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->min_ey:I

    add-int v10, p2, v0

    .line 1934
    iget v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->min_ex:I

    add-int v11, p1, v0

    .line 1936
    if-eqz v9, :cond_1

    .line 1939
    iget v2, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->num_gray_spans:I

    .line 1940
    const/4 v0, 0x1

    sub-int v0, v2, v0

    .line 1941
    if-lez v2, :cond_4

    .line 1943
    iget v1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->span_y:I

    if-ne v1, v10, :cond_4

    aget v1, v6, v0

    aget v3, v7, v0

    add-int/2addr v1, v3

    if-ne v1, v11, :cond_4

    aget v1, v8, v0

    if-ne v1, v9, :cond_4

    .line 1947
    aget v1, v7, v0

    add-int v1, v1, p4

    aput v1, v7, v0

    .line 1991
    :cond_1
    :goto_1
    return-void

    .line 1923
    :cond_2
    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 1924
    const/16 v0, 0xff

    move v9, v0

    goto :goto_0

    .line 1929
    :cond_3
    const/16 v1, 0x100

    if-lt v0, v1, :cond_8

    .line 1930
    const/16 v0, 0xff

    move v9, v0

    goto :goto_0

    .line 1952
    :cond_4
    iget v1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->span_y:I

    if-ne v1, v10, :cond_5

    const/16 v1, 0x20

    if-lt v2, v1, :cond_7

    .line 1954
    :cond_5
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->render_span:Lcom/amazon/topaz/internal/drawing/FreeType$IRenderSpans;

    if-eqz v0, :cond_6

    if-lez v2, :cond_6

    .line 1955
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->render_span:Lcom/amazon/topaz/internal/drawing/FreeType$IRenderSpans;

    iget v1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->span_y:I

    iget-object v3, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->gray_spans_x:[I

    iget-object v4, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->gray_spans_len:[I

    iget-object v5, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->gray_spans_cover:[I

    invoke-interface/range {v0 .. v5}, Lcom/amazon/topaz/internal/drawing/FreeType$IRenderSpans;->gray_spans(II[I[I[I)V

    .line 1958
    :cond_6
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->num_gray_spans:I

    .line 1975
    iput v10, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->span_y:I

    .line 1977
    const/4 v0, 0x0

    .line 1986
    :goto_2
    aput v11, v6, v0

    .line 1987
    aput p4, v7, v0

    .line 1988
    aput v9, v8, v0

    .line 1989
    iget v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->num_gray_spans:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->num_gray_spans:I

    goto :goto_1

    .line 1982
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    move v9, v0

    goto :goto_0
.end method

.method private gray_record_cell()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/internal/drawing/FreeType$RenderPoolOverflowException;
        }
    .end annotation

    .prologue
    .line 1063
    iget-object v3, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cells_x:[I

    .local v3, cells_x:[I
    iget-object v4, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cells_y:[I

    .local v4, cells_y:[I
    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cells_area:[I

    .local v1, cells_area:[I
    iget-object v2, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cells_cover:[I

    .line 1066
    .local v2, cells_cover:[I
    iget-boolean v5, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->invalid:Z

    if-nez v5, :cond_2

    iget v5, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->area:I

    if-nez v5, :cond_0

    iget v5, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cover:I

    if-eqz v5, :cond_2

    .line 1068
    :cond_0
    iget v5, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->num_cells:I

    iget-object v6, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cells_x:[I

    array-length v6, v6

    if-lt v5, v6, :cond_1

    .line 1070
    new-instance v5, Lcom/amazon/topaz/internal/drawing/FreeType$RenderPoolOverflowException;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/amazon/topaz/internal/drawing/FreeType$RenderPoolOverflowException;-><init>(Lcom/amazon/topaz/internal/drawing/FreeType$1;)V

    throw v5

    .line 1073
    :cond_1
    iget v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->num_cells:I

    add-int/lit8 v5, v0, 0x1

    iput v5, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->num_cells:I

    .line 1074
    .local v0, cellIndex:I
    iget v5, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->ex:I

    iget v6, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->min_ex:I

    sub-int/2addr v5, v6

    aput v5, v3, v0

    .line 1075
    iget v5, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->ey:I

    iget v6, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->min_ey:I

    sub-int/2addr v5, v6

    aput v5, v4, v0

    .line 1076
    iget v5, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->area:I

    aput v5, v1, v0

    .line 1077
    iget v5, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cover:I

    aput v5, v2, v0

    .line 1079
    .end local v0           #cellIndex:I
    :cond_2
    return-void
.end method

.method private gray_render_line(II)V
    .locals 41
    .parameter "to_x"
    .parameter "to_y"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/internal/drawing/FreeType$RenderPoolOverflowException;
        }
    .end annotation

    .prologue
    .line 1273
    const/16 v37, 0x0

    .line 1274
    .local v37, orderly:Z
    const/16 v31, 0x0

    .line 1280
    .local v31, ey2:I
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->last_ey:I

    move v3, v0

    shr-int/lit8 v4, v3, 0x8

    .line 1281
    .local v4, ey1:I
    shr-int/lit8 v31, p2, 0x8

    .line 1282
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->y:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->last_ey:I

    move v5, v0

    sub-int v6, v3, v5

    .line 1283
    .local v6, fy1:I
    shl-int/lit8 v3, v31, 0x8

    sub-int v8, p2, v3

    .line 1285
    .local v8, fy2:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->x:I

    move v3, v0

    sub-int v28, p1, v3

    .line 1286
    .local v28, dx:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->y:I

    move v3, v0

    sub-int v29, p2, v3

    .line 1296
    .local v29, dy:I
    move/from16 v35, v4

    .line 1297
    .local v35, min:I
    move/from16 v34, v31

    .line 1298
    .local v34, max:I
    move v0, v4

    move/from16 v1, v31

    if-le v0, v1, :cond_0

    .line 1300
    move/from16 v35, v31

    .line 1301
    move/from16 v34, v4

    .line 1303
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->max_ey:I

    move v3, v0

    move/from16 v0, v35

    move v1, v3

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->min_ey:I

    move v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, v34

    move v1, v3

    if-ge v0, v1, :cond_3

    .line 1305
    :cond_1
    const/16 v37, 0x1

    .line 1426
    if-eqz v37, :cond_2

    .line 1428
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->x:I

    .line 1429
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->y:I

    .line 1430
    shl-int/lit8 v3, v31, 0x8

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->last_ey:I

    .line 1431
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->record:Z

    move v3, v0

    if-eqz v3, :cond_2

    .line 1433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->edgeCache:Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cacheTranslateX:I

    move v5, v0

    sub-int v5, p1, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cacheTranslateY:I

    move v6, v0

    .end local v6           #fy1:I
    sub-int v6, p2, v6

    invoke-virtual {v3, v5, v6}, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->recordPoint(II)V

    .line 1438
    :cond_2
    :goto_0
    return-void

    .line 1311
    .restart local v6       #fy1:I
    :cond_3
    move v0, v4

    move/from16 v1, v31

    if-ne v0, v1, :cond_4

    .line 1313
    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->x:I

    move v5, v0

    move-object/from16 v3, p0

    move/from16 v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->gray_render_scanline(IIIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1314
    const/16 v37, 0x1

    .line 1426
    if-eqz v37, :cond_2

    .line 1428
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->x:I

    .line 1429
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->y:I

    .line 1430
    shl-int/lit8 v3, v31, 0x8

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->last_ey:I

    .line 1431
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->record:Z

    move v3, v0

    if-eqz v3, :cond_2

    .line 1433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->edgeCache:Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cacheTranslateX:I

    move v5, v0

    sub-int v5, p1, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cacheTranslateY:I

    move v6, v0

    .end local v6           #fy1:I
    sub-int v6, p2, v6

    invoke-virtual {v3, v5, v6}, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->recordPoint(II)V

    goto :goto_0

    .line 1319
    .restart local v6       #fy1:I
    :cond_4
    const/16 v32, 0x1

    .line 1321
    .local v32, incr:I
    if-nez v28, :cond_8

    .line 1323
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->x:I

    move v3, v0

    shr-int/lit8 v30, v3, 0x8

    .line 1324
    .local v30, ex:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->x:I

    move v3, v0

    shl-int/lit8 v5, v30, 0x8

    sub-int/2addr v3, v5

    shl-int/lit8 v40, v3, 0x1

    .line 1328
    .local v40, two_fx:I
    const/16 v14, 0x100

    .line 1329
    .local v14, first:I
    if-gez v29, :cond_5

    .line 1331
    const/4 v14, 0x0

    .line 1332
    const/16 v32, -0x1

    .line 1335
    :cond_5
    sub-int v27, v14, v6

    .line 1336
    .local v27, delta:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->area:I

    move v3, v0

    mul-int v5, v40, v27

    add-int/2addr v3, v5

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->area:I

    .line 1337
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cover:I

    move v3, v0

    add-int v3, v3, v27

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cover:I

    .line 1338
    add-int v4, v4, v32

    .line 1340
    move-object/from16 v0, p0

    move/from16 v1, v30

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->gray_set_cell(II)V

    .line 1342
    add-int v3, v14, v14

    const/16 v5, 0x100

    sub-int v27, v3, v5

    .line 1343
    mul-int v26, v40, v27

    .line 1344
    .local v26, area:I
    :goto_1
    move v0, v4

    move/from16 v1, v31

    if-eq v0, v1, :cond_7

    .line 1346
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->area:I

    move v3, v0

    add-int v3, v3, v26

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->area:I

    .line 1347
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cover:I

    move v3, v0

    add-int v3, v3, v27

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cover:I

    .line 1348
    add-int v4, v4, v32

    .line 1349
    move-object/from16 v0, p0

    move/from16 v1, v30

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->gray_set_cell(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1426
    .end local v4           #ey1:I
    .end local v6           #fy1:I
    .end local v8           #fy2:I
    .end local v14           #first:I
    .end local v26           #area:I
    .end local v27           #delta:I
    .end local v28           #dx:I
    .end local v29           #dy:I
    .end local v30           #ex:I
    .end local v32           #incr:I
    .end local v34           #max:I
    .end local v35           #min:I
    .end local v40           #two_fx:I
    :catchall_0
    move-exception v3

    if-eqz v37, :cond_6

    .line 1428
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->x:I

    .line 1429
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->y:I

    .line 1430
    shl-int/lit8 v4, v31, 0x8

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->last_ey:I

    .line 1431
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->record:Z

    move v4, v0

    if-eqz v4, :cond_6

    .line 1433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->edgeCache:Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cacheTranslateX:I

    move v5, v0

    sub-int v5, p1, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cacheTranslateY:I

    move v6, v0

    sub-int v6, p2, v6

    invoke-virtual {v4, v5, v6}, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->recordPoint(II)V

    :cond_6
    throw v3

    .line 1352
    .restart local v4       #ey1:I
    .restart local v6       #fy1:I
    .restart local v8       #fy2:I
    .restart local v14       #first:I
    .restart local v26       #area:I
    .restart local v27       #delta:I
    .restart local v28       #dx:I
    .restart local v29       #dy:I
    .restart local v30       #ex:I
    .restart local v32       #incr:I
    .restart local v34       #max:I
    .restart local v35       #min:I
    .restart local v40       #two_fx:I
    :cond_7
    const/16 v3, 0x100

    sub-int v3, v8, v3

    add-int v27, v3, v14

    .line 1353
    :try_start_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->area:I

    move v3, v0

    mul-int v5, v40, v27

    add-int/2addr v3, v5

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->area:I

    .line 1354
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cover:I

    move v3, v0

    add-int v3, v3, v27

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cover:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1355
    const/16 v37, 0x1

    .line 1426
    if-eqz v37, :cond_2

    .line 1428
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->x:I

    .line 1429
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->y:I

    .line 1430
    shl-int/lit8 v3, v31, 0x8

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->last_ey:I

    .line 1431
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->record:Z

    move v3, v0

    if-eqz v3, :cond_2

    .line 1433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->edgeCache:Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cacheTranslateX:I

    move v5, v0

    sub-int v5, p1, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cacheTranslateY:I

    move v6, v0

    .end local v6           #fy1:I
    sub-int v6, p2, v6

    invoke-virtual {v3, v5, v6}, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->recordPoint(II)V

    goto/16 :goto_0

    .line 1360
    .end local v14           #first:I
    .end local v26           #area:I
    .end local v27           #delta:I
    .end local v30           #ex:I
    .end local v40           #two_fx:I
    .restart local v6       #fy1:I
    :cond_8
    const/16 v3, 0x100

    sub-int/2addr v3, v6

    mul-int v38, v3, v28

    .line 1361
    .local v38, p:I
    const/16 v14, 0x100

    .line 1362
    .restart local v14       #first:I
    const/16 v32, 0x1

    .line 1364
    if-gez v29, :cond_9

    .line 1366
    mul-int v38, v6, v28

    .line 1367
    const/4 v14, 0x0

    .line 1368
    const/16 v32, -0x1

    .line 1369
    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    .line 1372
    :cond_9
    :try_start_4
    div-int v27, v38, v29

    .line 1373
    .restart local v27       #delta:I
    rem-int v36, v38, v29

    .line 1374
    .local v36, mod:I
    if-gez v36, :cond_a

    .line 1376
    add-int/lit8 v27, v27, -0x1

    .line 1377
    add-int v36, v36, v29

    .line 1380
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->x:I

    move v3, v0

    add-int v13, v3, v27

    .line 1381
    .local v13, x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->x:I

    move v11, v0

    move-object/from16 v9, p0

    move v10, v4

    move v12, v6

    invoke-direct/range {v9 .. v14}, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->gray_render_scanline(IIIII)V

    .line 1383
    add-int v4, v4, v32

    .line 1384
    shr-int/lit8 v3, v13, 0x8

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->gray_set_cell(II)V

    .line 1386
    move v0, v4

    move/from16 v1, v31

    if-eq v0, v1, :cond_d

    .line 1388
    move/from16 v0, v28

    mul-int/lit16 v0, v0, 0x100

    move/from16 v38, v0

    .line 1389
    div-int v33, v38, v29

    .line 1390
    .local v33, lift:I
    rem-int v39, v38, v29

    .line 1391
    .local v39, rem:I
    if-gez v39, :cond_b

    .line 1393
    add-int/lit8 v33, v33, -0x1

    .line 1394
    add-int v39, v39, v29

    .line 1396
    :cond_b
    sub-int v36, v36, v29

    .line 1398
    :goto_2
    move v0, v4

    move/from16 v1, v31

    if-eq v0, v1, :cond_d

    .line 1400
    move/from16 v27, v33

    .line 1401
    add-int v36, v36, v39

    .line 1402
    if-ltz v36, :cond_c

    .line 1404
    sub-int v36, v36, v29

    .line 1405
    add-int/lit8 v27, v27, 0x1

    .line 1408
    :cond_c
    add-int v19, v13, v27

    .line 1409
    .local v19, x2:I
    const/16 v3, 0x100

    sub-int v18, v3, v14

    move-object/from16 v15, p0

    move/from16 v16, v4

    move/from16 v17, v13

    move/from16 v20, v14

    invoke-direct/range {v15 .. v20}, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->gray_render_scanline(IIIII)V

    .line 1412
    move/from16 v13, v19

    .line 1414
    add-int v4, v4, v32

    .line 1415
    shr-int/lit8 v3, v13, 0x8

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->gray_set_cell(II)V

    goto :goto_2

    .line 1419
    .end local v19           #x2:I
    .end local v33           #lift:I
    .end local v39           #rem:I
    :cond_d
    const/16 v3, 0x100

    sub-int v23, v3, v14

    move-object/from16 v20, p0

    move/from16 v21, v4

    move/from16 v22, v13

    move/from16 v24, p1

    move/from16 v25, v8

    invoke-direct/range {v20 .. v25}, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->gray_render_scanline(IIIII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1422
    const/16 v37, 0x1

    .line 1426
    if-eqz v37, :cond_2

    .line 1428
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->x:I

    .line 1429
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->y:I

    .line 1430
    shl-int/lit8 v3, v31, 0x8

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->last_ey:I

    .line 1431
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->record:Z

    move v3, v0

    if-eqz v3, :cond_2

    .line 1433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->edgeCache:Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cacheTranslateX:I

    move v5, v0

    sub-int v5, p1, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cacheTranslateY:I

    move v6, v0

    .end local v6           #fy1:I
    sub-int v6, p2, v6

    invoke-virtual {v3, v5, v6}, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->recordPoint(II)V

    goto/16 :goto_0
.end method

.method private gray_render_scanline(IIIII)V
    .locals 17
    .parameter "ey"
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/internal/drawing/FreeType$RenderPoolOverflowException;
        }
    .end annotation

    .prologue
    .line 1175
    sub-int v4, p4, p2

    .line 1177
    .local v4, dx:I
    shr-int/lit8 v5, p2, 0x8

    .line 1178
    .local v5, ex1:I
    shr-int/lit8 v6, p4, 0x8

    .line 1179
    .local v6, ex2:I
    shl-int/lit8 v15, v5, 0x8

    sub-int v8, p2, v15

    .line 1180
    .local v8, fx1:I
    shl-int/lit8 v15, v6, 0x8

    sub-int v9, p4, v15

    .line 1183
    .local v9, fx2:I
    move/from16 v0, p3

    move/from16 v1, p5

    if-ne v0, v1, :cond_0

    .line 1185
    move-object/from16 v0, p0

    move v1, v6

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->gray_set_cell(II)V

    .line 1263
    :goto_0
    return-void

    .line 1191
    :cond_0
    if-ne v5, v6, :cond_1

    .line 1193
    sub-int v3, p5, p3

    .line 1194
    .local v3, delta:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->area:I

    move v15, v0

    add-int v16, v8, v9

    mul-int v16, v16, v3

    add-int v15, v15, v16

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->area:I

    .line 1195
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cover:I

    move v15, v0

    add-int/2addr v15, v3

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cover:I

    goto :goto_0

    .line 1202
    .end local v3           #delta:I
    :cond_1
    const/16 v15, 0x100

    sub-int/2addr v15, v8

    sub-int v16, p5, p3

    mul-int v13, v15, v16

    .line 1203
    .local v13, p:I
    const/16 v7, 0x100

    .line 1204
    .local v7, first:I
    const/4 v10, 0x1

    .line 1206
    .local v10, incr:I
    if-gez v4, :cond_2

    .line 1208
    sub-int v15, p5, p3

    mul-int v13, v8, v15

    .line 1209
    const/4 v7, 0x0

    .line 1210
    const/4 v10, -0x1

    .line 1211
    neg-int v4, v4

    .line 1214
    :cond_2
    div-int v3, v13, v4

    .line 1215
    .restart local v3       #delta:I
    rem-int v12, v13, v4

    .line 1216
    .local v12, mod:I
    if-gez v12, :cond_3

    .line 1218
    add-int/lit8 v3, v3, -0x1

    .line 1219
    add-int/2addr v12, v4

    .line 1222
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->area:I

    move v15, v0

    add-int v16, v8, v7

    mul-int v16, v16, v3

    add-int v15, v15, v16

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->area:I

    .line 1223
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cover:I

    move v15, v0

    add-int/2addr v15, v3

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cover:I

    .line 1225
    add-int/2addr v5, v10

    .line 1226
    move-object/from16 v0, p0

    move v1, v5

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->gray_set_cell(II)V

    .line 1227
    add-int p3, p3, v3

    .line 1229
    if-eq v5, v6, :cond_6

    .line 1231
    sub-int v15, p5, p3

    add-int/2addr v15, v3

    mul-int/lit16 v13, v15, 0x100

    .line 1232
    div-int v11, v13, v4

    .line 1233
    .local v11, lift:I
    rem-int v14, v13, v4

    .line 1234
    .local v14, rem:I
    if-gez v14, :cond_4

    .line 1236
    add-int/lit8 v11, v11, -0x1

    .line 1237
    add-int/2addr v14, v4

    .line 1240
    :cond_4
    sub-int/2addr v12, v4

    .line 1242
    :goto_1
    if-eq v5, v6, :cond_6

    .line 1244
    move v3, v11

    .line 1245
    add-int/2addr v12, v14

    .line 1246
    if-ltz v12, :cond_5

    .line 1248
    sub-int/2addr v12, v4

    .line 1249
    add-int/lit8 v3, v3, 0x1

    .line 1252
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->area:I

    move v15, v0

    move v0, v3

    mul-int/lit16 v0, v0, 0x100

    move/from16 v16, v0

    add-int v15, v15, v16

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->area:I

    .line 1253
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cover:I

    move v15, v0

    add-int/2addr v15, v3

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cover:I

    .line 1254
    add-int p3, p3, v3

    .line 1255
    add-int/2addr v5, v10

    .line 1256
    move-object/from16 v0, p0

    move v1, v5

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->gray_set_cell(II)V

    goto :goto_1

    .line 1260
    .end local v11           #lift:I
    .end local v14           #rem:I
    :cond_6
    sub-int v3, p5, p3

    .line 1261
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->area:I

    move v15, v0

    move v0, v9

    add-int/lit16 v0, v0, 0x100

    move/from16 v16, v0

    sub-int v16, v16, v7

    mul-int v16, v16, v3

    add-int v15, v15, v16

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->area:I

    .line 1262
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cover:I

    move v15, v0

    add-int/2addr v15, v3

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cover:I

    goto/16 :goto_0
.end method

.method private gray_set_cell(II)V
    .locals 6
    .parameter "ex"
    .parameter "ey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/internal/drawing/FreeType$RenderPoolOverflowException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1103
    const/4 v2, 0x0

    .line 1104
    .local v2, record:Z
    const/4 v0, 0x1

    .line 1106
    .local v0, clean:Z
    iget v3, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->min_ey:I

    if-lt p2, v3, :cond_0

    iget v3, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->max_ey:I

    if-ge p2, v3, :cond_0

    iget v3, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->max_ex:I

    if-lt p1, v3, :cond_7

    :cond_0
    move v1, v5

    .line 1107
    .local v1, invalid:Z
    :goto_0
    if-nez v1, :cond_3

    .line 1111
    iget v3, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->min_ex:I

    if-ge p1, v3, :cond_1

    .line 1112
    iget v3, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->min_ex:I

    sub-int p1, v3, v5

    .line 1115
    :cond_1
    iget v3, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->ex:I

    if-ne p1, v3, :cond_2

    iget v3, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->ey:I

    if-eq p2, v3, :cond_8

    .line 1116
    :cond_2
    const/4 v2, 0x1

    .line 1124
    :cond_3
    :goto_1
    iget-boolean v3, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->invalid:Z

    if-ne v3, v1, :cond_4

    if-eqz v2, :cond_5

    .line 1125
    :cond_4
    invoke-direct {p0}, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->gray_record_cell()V

    .line 1127
    :cond_5
    if-eqz v0, :cond_6

    .line 1129
    iput v4, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->area:I

    .line 1130
    iput v4, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cover:I

    .line 1133
    :cond_6
    iput-boolean v1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->invalid:Z

    .line 1134
    iput p1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->ex:I

    .line 1135
    iput p2, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->ey:I

    .line 1136
    return-void

    .end local v1           #invalid:Z
    :cond_7
    move v1, v4

    .line 1106
    goto :goto_0

    .line 1118
    .restart local v1       #invalid:Z
    :cond_8
    iget-boolean v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->invalid:Z

    goto :goto_1
.end method

.method static gray_split_cubic([I[II)V
    .locals 6
    .parameter "base_x"
    .parameter "base_y"
    .parameter "baseIndex"

    .prologue
    .line 1446
    add-int/lit8 v4, p2, 0x6

    add-int/lit8 v5, p2, 0x3

    aget v5, p0, v5

    aput v5, p0, v4

    .line 1447
    add-int/lit8 v4, p2, 0x1

    aget v2, p0, v4

    .line 1448
    .local v2, c:I
    add-int/lit8 v4, p2, 0x2

    aget v3, p0, v4

    .line 1449
    .local v3, d:I
    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, p2, 0x0

    aget v5, p0, v5

    add-int/2addr v5, v2

    div-int/lit8 v0, v5, 0x2

    .local v0, a:I
    aput v0, p0, v4

    .line 1450
    add-int/lit8 v4, p2, 0x5

    add-int/lit8 v5, p2, 0x3

    aget v5, p0, v5

    add-int/2addr v5, v3

    div-int/lit8 v1, v5, 0x2

    .local v1, b:I
    aput v1, p0, v4

    .line 1451
    add-int v4, v2, v3

    div-int/lit8 v2, v4, 0x2

    .line 1452
    add-int/lit8 v4, p2, 0x2

    add-int v5, v0, v2

    div-int/lit8 v0, v5, 0x2

    aput v0, p0, v4

    .line 1453
    add-int/lit8 v4, p2, 0x4

    add-int v5, v1, v2

    div-int/lit8 v1, v5, 0x2

    aput v1, p0, v4

    .line 1454
    add-int/lit8 v4, p2, 0x3

    add-int v5, v0, v1

    div-int/lit8 v5, v5, 0x2

    aput v5, p0, v4

    .line 1456
    add-int/lit8 v4, p2, 0x6

    add-int/lit8 v5, p2, 0x3

    aget v5, p1, v5

    aput v5, p1, v4

    .line 1457
    add-int/lit8 v4, p2, 0x1

    aget v2, p1, v4

    .line 1458
    add-int/lit8 v4, p2, 0x2

    aget v3, p1, v4

    .line 1459
    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, p2, 0x0

    aget v5, p1, v5

    add-int/2addr v5, v2

    div-int/lit8 v0, v5, 0x2

    aput v0, p1, v4

    .line 1460
    add-int/lit8 v4, p2, 0x5

    add-int/lit8 v5, p2, 0x3

    aget v5, p1, v5

    add-int/2addr v5, v3

    div-int/lit8 v1, v5, 0x2

    aput v1, p1, v4

    .line 1461
    add-int v4, v2, v3

    div-int/lit8 v2, v4, 0x2

    .line 1462
    add-int/lit8 v4, p2, 0x2

    add-int v5, v0, v2

    div-int/lit8 v0, v5, 0x2

    aput v0, p1, v4

    .line 1463
    add-int/lit8 v4, p2, 0x4

    add-int v5, v1, v2

    div-int/lit8 v1, v5, 0x2

    aput v1, p1, v4

    .line 1464
    add-int/lit8 v4, p2, 0x3

    add-int v5, v0, v1

    div-int/lit8 v5, v5, 0x2

    aput v5, p1, v4

    .line 1465
    return-void
.end method

.method private gray_start_cell(II)V
    .locals 3
    .parameter "ex"
    .parameter "ey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/internal/drawing/FreeType$RenderPoolOverflowException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1146
    iget v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->min_ex:I

    if-ge p1, v0, :cond_0

    .line 1147
    iget v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->min_ex:I

    const/4 v1, 0x1

    sub-int p1, v0, v1

    .line 1149
    :cond_0
    iput v2, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->area:I

    .line 1150
    iput v2, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cover:I

    .line 1151
    iput p1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->ex:I

    .line 1152
    iput p2, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->ey:I

    .line 1153
    shl-int/lit8 v0, p2, 0x8

    iput v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->last_ey:I

    .line 1154
    iput-boolean v2, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->invalid:Z

    .line 1156
    invoke-direct {p0, p1, p2}, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->gray_set_cell(II)V

    .line 1157
    return-void
.end method

.method private gray_sweep()V
    .locals 15

    .prologue
    const/4 v13, 0x0

    .line 2000
    iget v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->num_cells:I

    if-nez v0, :cond_1

    .line 2074
    :cond_0
    :goto_0
    return-void

    .line 2004
    :cond_1
    iget v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->num_cells:I

    .line 2007
    const/4 v1, -0x1

    iput v1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->span_y:I

    .line 2008
    iput v13, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->num_gray_spans:I

    .line 2010
    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cells_x:[I

    iget-object v2, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cells_y:[I

    iget-object v3, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cells_area:[I

    iget-object v4, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cells_cover:[I

    move v5, v13

    move v6, v13

    .line 2015
    :goto_1
    aget v7, v2, v5

    .line 2016
    aget v8, v1, v5

    .line 2018
    aget v9, v3, v5

    .line 2019
    aget v10, v4, v5

    add-int/2addr v6, v10

    move v10, v6

    move v6, v5

    .line 2024
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 2025
    if-ge v6, v0, :cond_2

    aget v11, v2, v6

    aget v12, v2, v5

    if-ne v11, v12, :cond_2

    aget v11, v1, v6

    aget v12, v1, v5

    if-eq v11, v12, :cond_5

    .line 2034
    :cond_2
    if-eqz v9, :cond_3

    if-ltz v8, :cond_3

    .line 2036
    mul-int/lit16 v11, v10, 0x200

    sub-int v9, v11, v9

    const/4 v11, 0x1

    invoke-direct {p0, v8, v7, v9, v11}, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->gray_hline(IIII)V

    .line 2037
    add-int/lit8 v8, v8, 0x1

    .line 2040
    :cond_3
    if-gez v8, :cond_4

    move v8, v13

    .line 2043
    :cond_4
    if-ge v6, v0, :cond_6

    aget v5, v2, v5

    aget v9, v2, v6

    if-ne v5, v9, :cond_6

    .line 2046
    aget v5, v1, v6

    if-le v5, v8, :cond_9

    .line 2047
    mul-int/lit16 v5, v10, 0x200

    aget v9, v1, v6

    sub-int/2addr v9, v8

    invoke-direct {p0, v8, v7, v5, v9}, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->gray_hline(IIII)V

    move v5, v10

    .line 2060
    :goto_3
    if-lt v6, v0, :cond_8

    .line 2061
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->render_span:Lcom/amazon/topaz/internal/drawing/FreeType$IRenderSpans;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->num_gray_spans:I

    if-lez v0, :cond_0

    .line 2065
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->render_span:Lcom/amazon/topaz/internal/drawing/FreeType$IRenderSpans;

    iget v1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->span_y:I

    iget v2, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->num_gray_spans:I

    iget-object v3, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->gray_spans_x:[I

    iget-object v4, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->gray_spans_len:[I

    iget-object v5, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->gray_spans_cover:[I

    invoke-interface/range {v0 .. v5}, Lcom/amazon/topaz/internal/drawing/FreeType$IRenderSpans;->gray_spans(II[I[I[I)V

    goto :goto_0

    .line 2028
    :cond_5
    aget v11, v3, v6

    add-int/2addr v9, v11

    .line 2029
    aget v11, v4, v6

    add-int/2addr v10, v11

    goto :goto_2

    .line 2053
    :cond_6
    if-eqz v10, :cond_7

    iget v5, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->max_ex:I

    iget v9, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->min_ex:I

    sub-int/2addr v5, v9

    if-ge v8, v5, :cond_7

    .line 2054
    mul-int/lit16 v5, v10, 0x200

    iget v9, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->max_ex:I

    sub-int/2addr v9, v8

    iget v10, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->min_ex:I

    sub-int/2addr v9, v10

    invoke-direct {p0, v8, v7, v5, v9}, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->gray_hline(IIII)V

    :cond_7
    move v5, v13

    .line 2057
    goto :goto_3

    :cond_8
    move v14, v6

    move v6, v5

    move v5, v14

    goto :goto_1

    :cond_9
    move v5, v10

    goto :goto_3
.end method


# virtual methods
.method public getBlankParams()Lcom/amazon/topaz/internal/drawing/FreeType$TRaster$Params;
    .locals 1

    .prologue
    .line 977
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->params:Lcom/amazon/topaz/internal/drawing/FreeType$TRaster$Params;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster$Params;->reset()V

    .line 978
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->params:Lcom/amazon/topaz/internal/drawing/FreeType$TRaster$Params;

    return-object v0
.end method

.method public getOutline()Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;
    .locals 1

    .prologue
    .line 983
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->outline:Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;

    return-object v0
.end method

.method public gray_convert_glyph()I
    .locals 23

    .prologue
    .line 2108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->bands_min:[I

    move-object v11, v0

    .local v11, bands_min:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->bands_max:[I

    move-object v10, v0

    .line 2115
    .local v10, bands_max:[I
    invoke-direct/range {p0 .. p0}, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->gray_compute_cbox()V

    .line 2118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->clip_box:Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;

    move-object v13, v0

    .line 2120
    .local v13, clip:Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->max_ex:I

    move v2, v0

    iget v3, v13, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->xMin:I

    if-le v2, v3, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->min_ex:I

    move v2, v0

    iget v3, v13, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->xMax:I

    if-ge v2, v3, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->max_ey:I

    move v2, v0

    iget v3, v13, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->yMin:I

    if-le v2, v3, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->min_ey:I

    move v2, v0

    iget v3, v13, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->yMax:I

    if-lt v2, v3, :cond_1

    .line 2122
    :cond_0
    const/4 v2, 0x0

    .line 2227
    :goto_0
    return v2

    .line 2124
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->min_ex:I

    move v2, v0

    iget v3, v13, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->xMin:I

    if-ge v2, v3, :cond_2

    iget v2, v13, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->xMin:I

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->min_ex:I

    .line 2125
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->min_ey:I

    move v2, v0

    iget v3, v13, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->yMin:I

    if-ge v2, v3, :cond_3

    iget v2, v13, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->yMin:I

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->min_ey:I

    .line 2127
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->max_ex:I

    move v2, v0

    iget v3, v13, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->xMax:I

    if-le v2, v3, :cond_4

    iget v2, v13, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->xMax:I

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->max_ex:I

    .line 2128
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->max_ey:I

    move v2, v0

    iget v3, v13, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->yMax:I

    if-le v2, v3, :cond_5

    iget v2, v13, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->yMax:I

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->max_ey:I

    .line 2133
    :cond_5
    const/16 v2, 0x20

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->conic_level:I

    .line 2134
    const/16 v2, 0x10

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cubic_level:I

    .line 2137
    const/4 v15, 0x0

    .line 2140
    .local v15, level:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->max_ex:I

    move v2, v0

    const/16 v3, 0x18

    if-gt v2, v3, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->max_ey:I

    move v2, v0

    const/16 v3, 0x18

    if-le v2, v3, :cond_7

    .line 2141
    :cond_6
    add-int/lit8 v15, v15, 0x1

    .line 2142
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->max_ex:I

    move v2, v0

    const/16 v3, 0x78

    if-gt v2, v3, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->max_ey:I

    move v2, v0

    const/16 v3, 0x78

    if-le v2, v3, :cond_9

    .line 2143
    :cond_8
    add-int/lit8 v15, v15, 0x1

    .line 2145
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->conic_level:I

    move v2, v0

    shl-int/2addr v2, v15

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->conic_level:I

    .line 2146
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cubic_level:I

    move v2, v0

    shl-int/2addr v2, v15

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cubic_level:I

    .line 2150
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->max_ey:I

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->min_ey:I

    move v3, v0

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->band_size:I

    move v3, v0

    div-int v21, v2, v3

    .line 2151
    .local v21, num_bands:I
    if-nez v21, :cond_a

    const/16 v21, 0x1

    .line 2152
    :cond_a
    const/16 v2, 0x27

    move/from16 v0, v21

    move v1, v2

    if-lt v0, v1, :cond_b

    const/16 v21, 0x27

    .line 2154
    :cond_b
    const/4 v9, 0x0

    .line 2156
    .local v9, band_shoot:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->min_ey:I

    move/from16 v19, v0

    .line 2157
    .local v19, min:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->max_ey:I

    move/from16 v17, v0

    .line 2159
    .local v17, max_y:I
    const/16 v20, 0x0

    .local v20, n:I
    :goto_1
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_13

    .line 2161
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->band_size:I

    move v2, v0

    add-int v16, v19, v2

    .line 2162
    .local v16, max:I
    const/4 v2, 0x1

    sub-int v2, v21, v2

    move/from16 v0, v20

    move v1, v2

    if-eq v0, v1, :cond_c

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_d

    .line 2163
    :cond_c
    move/from16 v16, v17

    .line 2165
    :cond_d
    const/4 v2, 0x0

    aput v19, v11, v2

    .line 2166
    const/4 v2, 0x0

    aput v16, v10, v2

    .line 2167
    const/4 v8, 0x0

    .line 2169
    .local v8, bandIndex:I
    :goto_2
    if-ltz v8, :cond_12

    .line 2175
    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->num_cells:I

    .line 2176
    const/4 v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->invalid:Z

    .line 2177
    aget v2, v11, v8

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->min_ey:I

    .line 2178
    aget v2, v10, v8

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->max_ey:I

    .line 2180
    invoke-direct/range {p0 .. p0}, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->gray_convert_glyph_inner()I

    move-result v14

    .line 2182
    .local v14, error:I
    if-nez v14, :cond_e

    .line 2184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cells_x:[I

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cells_y:[I

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cells_area:[I

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cells_cover:[I

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->num_cells:I

    move v7, v0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->gray_quick_sort([I[I[I[II)V

    .line 2192
    invoke-direct/range {p0 .. p0}, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->gray_sweep()V

    .line 2193
    add-int/lit8 v8, v8, -0x1

    .line 2194
    goto :goto_2

    .line 2196
    :cond_e
    const/4 v2, -0x4

    if-eq v14, v2, :cond_f

    .line 2197
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2200
    :cond_f
    aget v12, v11, v8

    .line 2201
    .local v12, bottom:I
    aget v22, v10, v8

    .line 2202
    .local v22, top:I
    sub-int v2, v22, v12

    shr-int/lit8 v2, v2, 0x1

    add-int v18, v12, v2

    .line 2206
    .local v18, middle:I
    move/from16 v0, v18

    move v1, v12

    if-ne v0, v1, :cond_10

    .line 2210
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2213
    :cond_10
    sub-int v2, v12, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->band_size:I

    move v3, v0

    if-lt v2, v3, :cond_11

    .line 2214
    add-int/lit8 v9, v9, 0x1

    .line 2216
    :cond_11
    add-int/lit8 v2, v8, 0x1

    aput v12, v11, v2

    .line 2217
    add-int/lit8 v2, v8, 0x1

    aput v18, v10, v2

    .line 2218
    aput v18, v11, v8

    .line 2219
    aput v22, v10, v8

    .line 2220
    add-int/lit8 v8, v8, 0x1

    .line 2221
    goto :goto_2

    .line 2159
    .end local v12           #bottom:I
    .end local v14           #error:I
    .end local v18           #middle:I
    .end local v22           #top:I
    :cond_12
    add-int/lit8 v20, v20, 0x1

    move/from16 v19, v16

    goto/16 :goto_1

    .line 2224
    .end local v8           #bandIndex:I
    .end local v16           #max:I
    :cond_13
    const/16 v2, 0x8

    if-le v9, v2, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->band_size:I

    move v2, v0

    const/16 v3, 0x10

    if-le v2, v3, :cond_14

    .line 2225
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->band_size:I

    move v2, v0

    div-int/lit8 v2, v2, 0x2

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->band_size:I

    .line 2227
    :cond_14
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method gray_quick_sort([I[I[I[II)V
    .locals 15
    .parameter "cells_x"
    .parameter "cells_y"
    .parameter "cells_area"
    .parameter "cells_cover"
    .parameter "count"

    .prologue
    .line 1595
    iget-object v8, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->qsort_stack:[I

    .line 1596
    .local v8, stack:[I
    const/4 v9, 0x0

    .line 1597
    .local v9, topIndex:I
    const/4 v1, 0x0

    .line 1598
    .local v1, baseIndex:I
    move/from16 v6, p5

    .line 1602
    .local v6, limitIndex:I
    :goto_0
    sub-int v5, v6, v1

    .line 1606
    .local v5, len:I
    const/16 v12, 0x9

    if-le v5, v12, :cond_6

    .line 1609
    div-int/lit8 v12, v5, 0x2

    add-int v7, v1, v12

    .line 1611
    .local v7, pivotIndex:I
    aget v10, p1, v1

    .line 1612
    .local v10, x:I
    aget v11, p2, v1

    .line 1613
    .local v11, y:I
    aget v0, p3, v1

    .line 1614
    .local v0, area:I
    aget v2, p4, v1

    .line 1616
    .local v2, cover:I
    aget v12, p1, v7

    aput v12, p1, v1

    .line 1617
    aget v12, p2, v7

    aput v12, p2, v1

    .line 1618
    aget v12, p4, v7

    aput v12, p4, v1

    .line 1619
    aget v12, p3, v7

    aput v12, p3, v1

    .line 1621
    aput v10, p1, v7

    .line 1622
    aput v11, p2, v7

    .line 1623
    aput v2, p4, v7

    .line 1624
    aput v0, p3, v7

    .line 1627
    add-int/lit8 v3, v1, 0x1

    .line 1628
    .local v3, iIndex:I
    const/4 v12, 0x1

    sub-int v4, v6, v12

    .line 1631
    .local v4, jIndex:I
    aget v12, p2, v4

    shl-int/lit8 v12, v12, 0x10

    aget v13, p1, v4

    add-int/2addr v12, v13

    aget v13, p2, v3

    shl-int/lit8 v13, v13, 0x10

    aget v14, p1, v3

    add-int/2addr v13, v14

    if-ge v12, v13, :cond_0

    .line 1637
    aget v10, p1, v3

    .line 1638
    aget v11, p2, v3

    .line 1639
    aget v0, p3, v3

    .line 1640
    aget v2, p4, v3

    .line 1642
    aget v12, p1, v4

    aput v12, p1, v3

    .line 1643
    aget v12, p2, v4

    aput v12, p2, v3

    .line 1644
    aget v12, p4, v4

    aput v12, p4, v3

    .line 1645
    aget v12, p3, v4

    aput v12, p3, v3

    .line 1647
    aput v10, p1, v4

    .line 1648
    aput v11, p2, v4

    .line 1649
    aput v2, p4, v4

    .line 1650
    aput v0, p3, v4

    .line 1653
    :cond_0
    aget v12, p2, v1

    shl-int/lit8 v12, v12, 0x10

    aget v13, p1, v1

    add-int/2addr v12, v13

    aget v13, p2, v3

    shl-int/lit8 v13, v13, 0x10

    aget v14, p1, v3

    add-int/2addr v13, v14

    if-ge v12, v13, :cond_1

    .line 1659
    aget v10, p1, v1

    .line 1660
    aget v11, p2, v1

    .line 1661
    aget v0, p3, v1

    .line 1662
    aget v2, p4, v1

    .line 1664
    aget v12, p1, v3

    aput v12, p1, v1

    .line 1665
    aget v12, p2, v3

    aput v12, p2, v1

    .line 1666
    aget v12, p4, v3

    aput v12, p4, v1

    .line 1667
    aget v12, p3, v3

    aput v12, p3, v1

    .line 1669
    aput v10, p1, v3

    .line 1670
    aput v11, p2, v3

    .line 1671
    aput v2, p4, v3

    .line 1672
    aput v0, p3, v3

    .line 1675
    :cond_1
    aget v12, p2, v4

    shl-int/lit8 v12, v12, 0x10

    aget v13, p1, v4

    add-int/2addr v12, v13

    aget v13, p2, v1

    shl-int/lit8 v13, v13, 0x10

    aget v14, p1, v1

    add-int/2addr v13, v14

    if-ge v12, v13, :cond_2

    .line 1681
    aget v10, p1, v1

    .line 1682
    aget v11, p2, v1

    .line 1683
    aget v0, p3, v1

    .line 1684
    aget v2, p4, v1

    .line 1686
    aget v12, p1, v4

    aput v12, p1, v1

    .line 1687
    aget v12, p2, v4

    aput v12, p2, v1

    .line 1688
    aget v12, p4, v4

    aput v12, p4, v1

    .line 1689
    aget v12, p3, v4

    aput v12, p3, v1

    .line 1691
    aput v10, p1, v4

    .line 1692
    aput v11, p2, v4

    .line 1693
    aput v2, p4, v4

    .line 1694
    aput v0, p3, v4

    .line 1701
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 1702
    aget v12, p2, v3

    shl-int/lit8 v12, v12, 0x10

    aget v13, p1, v3

    add-int/2addr v12, v13

    aget v13, p2, v1

    shl-int/lit8 v13, v13, 0x10

    aget v14, p1, v1

    add-int/2addr v13, v14

    if-lt v12, v13, :cond_2

    .line 1710
    :cond_3
    add-int/lit8 v4, v4, -0x1

    .line 1711
    aget v12, p2, v1

    shl-int/lit8 v12, v12, 0x10

    aget v13, p1, v1

    add-int/2addr v12, v13

    aget v13, p2, v4

    shl-int/lit8 v13, v13, 0x10

    aget v14, p1, v4

    add-int/2addr v13, v14

    if-lt v12, v13, :cond_3

    .line 1717
    if-le v3, v4, :cond_4

    .line 1739
    aget v10, p1, v1

    .line 1740
    aget v11, p2, v1

    .line 1741
    aget v0, p3, v1

    .line 1742
    aget v2, p4, v1

    .line 1744
    aget v12, p1, v4

    aput v12, p1, v1

    .line 1745
    aget v12, p2, v4

    aput v12, p2, v1

    .line 1746
    aget v12, p4, v4

    aput v12, p4, v1

    .line 1747
    aget v12, p3, v4

    aput v12, p3, v1

    .line 1749
    aput v10, p1, v4

    .line 1750
    aput v11, p2, v4

    .line 1751
    aput v2, p4, v4

    .line 1752
    aput v0, p3, v4

    .line 1756
    sub-int v12, v4, v1

    sub-int v13, v6, v3

    if-le v12, v13, :cond_5

    .line 1758
    aput v1, v8, v9

    .line 1759
    add-int/lit8 v12, v9, 0x1

    aput v4, v8, v12

    .line 1760
    move v1, v3

    .line 1768
    :goto_2
    add-int/lit8 v9, v9, 0x2

    goto/16 :goto_0

    .line 1721
    :cond_4
    aget v10, p1, v3

    .line 1722
    aget v11, p2, v3

    .line 1723
    aget v0, p3, v3

    .line 1724
    aget v2, p4, v3

    .line 1726
    aget v12, p1, v4

    aput v12, p1, v3

    .line 1727
    aget v12, p2, v4

    aput v12, p2, v3

    .line 1728
    aget v12, p4, v4

    aput v12, p4, v3

    .line 1729
    aget v12, p3, v4

    aput v12, p3, v3

    .line 1731
    aput v10, p1, v4

    .line 1732
    aput v11, p2, v4

    .line 1733
    aput v2, p4, v4

    .line 1734
    aput v0, p3, v4

    goto :goto_1

    .line 1764
    :cond_5
    aput v3, v8, v9

    .line 1765
    add-int/lit8 v12, v9, 0x1

    aput v6, v8, v12

    .line 1766
    move v6, v4

    goto :goto_2

    .line 1773
    .end local v0           #area:I
    .end local v2           #cover:I
    .end local v3           #iIndex:I
    .end local v4           #jIndex:I
    .end local v7           #pivotIndex:I
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_6
    move v4, v1

    .line 1774
    .restart local v4       #jIndex:I
    add-int/lit8 v3, v4, 0x1

    .line 1776
    .restart local v3       #iIndex:I
    :goto_3
    if-ge v3, v6, :cond_9

    .line 1778
    :goto_4
    add-int/lit8 v12, v4, 0x1

    aget v12, p2, v12

    shl-int/lit8 v12, v12, 0x10

    add-int/lit8 v13, v4, 0x1

    aget v13, p1, v13

    add-int/2addr v12, v13

    aget v13, p2, v4

    shl-int/lit8 v13, v13, 0x10

    aget v14, p1, v4

    add-int/2addr v13, v14

    if-ge v12, v13, :cond_7

    .line 1785
    add-int/lit8 v12, v4, 0x1

    aget v10, p1, v12

    .line 1786
    .restart local v10       #x:I
    add-int/lit8 v12, v4, 0x1

    aget v11, p2, v12

    .line 1787
    .restart local v11       #y:I
    add-int/lit8 v12, v4, 0x1

    aget v0, p3, v12

    .line 1788
    .restart local v0       #area:I
    add-int/lit8 v12, v4, 0x1

    aget v2, p4, v12

    .line 1790
    .restart local v2       #cover:I
    add-int/lit8 v12, v4, 0x1

    aget v13, p1, v4

    aput v13, p1, v12

    .line 1791
    add-int/lit8 v12, v4, 0x1

    aget v13, p2, v4

    aput v13, p2, v12

    .line 1792
    add-int/lit8 v12, v4, 0x1

    aget v13, p4, v4

    aput v13, p4, v12

    .line 1793
    add-int/lit8 v12, v4, 0x1

    aget v13, p3, v4

    aput v13, p3, v12

    .line 1795
    aput v10, p1, v4

    .line 1796
    aput v11, p2, v4

    .line 1797
    aput v2, p4, v4

    .line 1798
    aput v0, p3, v4

    .line 1800
    if-ne v4, v1, :cond_8

    .line 1776
    .end local v0           #area:I
    .end local v2           #cover:I
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_7
    move v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1782
    .restart local v0       #area:I
    .restart local v2       #cover:I
    .restart local v10       #x:I
    .restart local v11       #y:I
    :cond_8
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 1804
    .end local v0           #area:I
    .end local v2           #cover:I
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_9
    if-lez v9, :cond_a

    .line 1806
    add-int/lit8 v9, v9, -0x2

    .line 1807
    aget v1, v8, v9

    .line 1808
    add-int/lit8 v12, v9, 0x1

    aget v6, v8, v12

    goto/16 :goto_0

    .line 1814
    :cond_a
    return-void
.end method

.method gray_render_cubic(IIIIII)V
    .locals 23
    .parameter "control1x"
    .parameter "control1y"
    .parameter "control2x"
    .parameter "control2y"
    .parameter "tox"
    .parameter "toy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/internal/drawing/FreeType$RenderPoolOverflowException;
        }
    .end annotation

    .prologue
    .line 1476
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->x:I

    move/from16 v20, v0

    shr-int/lit8 v20, v20, 0x2

    add-int v20, v20, p5

    shl-int/lit8 v21, p1, 0x1

    sub-int v8, v20, v21

    .line 1477
    .local v8, dx:I
    if-gez v8, :cond_0

    .line 1478
    neg-int v8, v8

    .line 1479
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->y:I

    move/from16 v20, v0

    shr-int/lit8 v20, v20, 0x2

    add-int v20, v20, p6

    shl-int/lit8 v21, p2, 0x1

    sub-int v9, v20, v21

    .line 1480
    .local v9, dy:I
    if-gez v9, :cond_1

    .line 1481
    neg-int v9, v9

    .line 1482
    :cond_1
    if-ge v8, v9, :cond_2

    .line 1483
    move v8, v9

    .line 1484
    :cond_2
    move v6, v8

    .line 1486
    .local v6, da:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->x:I

    move/from16 v20, v0

    shr-int/lit8 v20, v20, 0x2

    add-int v20, v20, p5

    add-int v21, p1, p3

    mul-int/lit8 v21, v21, 0x3

    sub-int v8, v20, v21

    .line 1487
    if-gez v8, :cond_3

    .line 1488
    neg-int v8, v8

    .line 1489
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->y:I

    move/from16 v20, v0

    shr-int/lit8 v20, v20, 0x2

    add-int v20, v20, p6

    add-int v21, p1, p4

    mul-int/lit8 v21, v21, 0x3

    sub-int v9, v20, v21

    .line 1490
    if-gez v9, :cond_4

    .line 1491
    neg-int v9, v9

    .line 1492
    :cond_4
    if-ge v8, v9, :cond_5

    .line 1493
    move v8, v9

    .line 1494
    :cond_5
    move v7, v8

    .line 1496
    .local v7, db:I
    const/4 v10, 0x1

    .line 1497
    .local v10, level:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cubic_level:I

    move/from16 v20, v0

    div-int v6, v6, v20

    .line 1498
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->conic_level:I

    move/from16 v20, v0

    div-int v7, v7, v20

    .line 1499
    :goto_0
    if-gtz v6, :cond_6

    if-lez v7, :cond_7

    .line 1501
    :cond_6
    shr-int/lit8 v6, v6, 0x2

    .line 1502
    shr-int/lit8 v7, v7, 0x3

    .line 1503
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1506
    :cond_7
    const/16 v20, 0x1

    move v0, v10

    move/from16 v1, v20

    if-gt v0, v1, :cond_9

    .line 1511
    shl-int/lit8 v16, p5, 0x2

    .line 1512
    .local v16, to_x:I
    shl-int/lit8 v17, p6, 0x2

    .line 1513
    .local v17, to_y:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->x:I

    move/from16 v20, v0

    add-int v20, v20, v16

    add-int v21, p1, p3

    shl-int/lit8 v21, v21, 0x2

    mul-int/lit8 v21, v21, 0x3

    add-int v20, v20, v21

    div-int/lit8 v13, v20, 0x8

    .line 1515
    .local v13, mid_x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->y:I

    move/from16 v20, v0

    add-int v20, v20, v17

    add-int v21, p2, p4

    shl-int/lit8 v21, v21, 0x2

    mul-int/lit8 v21, v21, 0x3

    add-int v20, v20, v21

    div-int/lit8 v14, v20, 0x8

    .line 1518
    .local v14, mid_y:I
    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    invoke-direct {v0, v1, v2}, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->gray_render_line(II)V

    .line 1519
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->gray_render_line(II)V

    .line 1577
    .end local v13           #mid_x:I
    .end local v14           #mid_y:I
    .end local v16           #to_x:I
    .end local v17           #to_y:I
    :cond_8
    return-void

    .line 1523
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->bez_stack_x:[I

    move-object v4, v0

    .local v4, arc_x:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->bez_stack_y:[I

    move-object v5, v0

    .line 1524
    .local v5, arc_y:[I
    const/4 v3, 0x0

    .line 1525
    .local v3, arcIndex:I
    shl-int/lit8 v20, p5, 0x2

    aput v20, v4, v3

    .line 1526
    shl-int/lit8 v20, p6, 0x2

    aput v20, v5, v3

    .line 1527
    add-int/lit8 v20, v3, 0x1

    shl-int/lit8 v21, p3, 0x2

    aput v21, v4, v20

    .line 1528
    add-int/lit8 v20, v3, 0x1

    shl-int/lit8 v21, p4, 0x2

    aput v21, v5, v20

    .line 1529
    add-int/lit8 v20, v3, 0x2

    shl-int/lit8 v21, p1, 0x2

    aput v21, v4, v20

    .line 1530
    add-int/lit8 v20, v3, 0x2

    shl-int/lit8 v21, p2, 0x2

    aput v21, v5, v20

    .line 1531
    add-int/lit8 v20, v3, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->x:I

    move/from16 v21, v0

    aput v21, v4, v20

    .line 1532
    add-int/lit8 v20, v3, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->y:I

    move/from16 v21, v0

    aput v21, v5, v20

    .line 1534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->lev_stack:[I

    move-object v11, v0

    .line 1535
    .local v11, levels:[I
    const/16 v18, 0x0

    .line 1536
    .local v18, top:I
    const/16 v20, 0x0

    aput v10, v11, v20

    .line 1538
    :goto_1
    if-ltz v18, :cond_8

    .line 1540
    aget v10, v11, v18

    .line 1541
    const/16 v20, 0x1

    move v0, v10

    move/from16 v1, v20

    if-le v0, v1, :cond_10

    .line 1546
    aget v12, v5, v3

    .local v12, max:I
    move v15, v12

    .line 1547
    .local v15, min:I
    add-int/lit8 v20, v3, 0x1

    aget v19, v5, v20

    .line 1548
    .local v19, y:I
    move/from16 v0, v19

    move v1, v15

    if-ge v0, v1, :cond_a

    move/from16 v15, v19

    .line 1549
    :cond_a
    move/from16 v0, v19

    move v1, v12

    if-le v0, v1, :cond_b

    move/from16 v12, v19

    .line 1550
    :cond_b
    add-int/lit8 v20, v3, 0x2

    aget v19, v5, v20

    .line 1551
    move/from16 v0, v19

    move v1, v15

    if-ge v0, v1, :cond_c

    move/from16 v15, v19

    .line 1552
    :cond_c
    move/from16 v0, v19

    move v1, v12

    if-le v0, v1, :cond_d

    move/from16 v12, v19

    .line 1553
    :cond_d
    add-int/lit8 v20, v3, 0x3

    aget v19, v5, v20

    .line 1554
    move/from16 v0, v19

    move v1, v15

    if-ge v0, v1, :cond_e

    move/from16 v15, v19

    .line 1555
    :cond_e
    move/from16 v0, v19

    move v1, v12

    if-le v0, v1, :cond_f

    move/from16 v12, v19

    .line 1556
    :cond_f
    shr-int/lit8 v20, v15, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->max_ey:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_10

    shr-int/lit8 v20, v12, 0x8

    if-ltz v20, :cond_10

    .line 1558
    invoke-static {v4, v5, v3}, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->gray_split_cubic([I[II)V

    .line 1559
    add-int/lit8 v3, v3, 0x3

    .line 1560
    add-int/lit8 v18, v18, 0x1

    .line 1561
    const/16 v20, 0x1

    sub-int v20, v18, v20

    const/16 v21, 0x1

    sub-int v21, v10, v21

    aput v21, v11, v20

    aput v21, v11, v18

    goto :goto_1

    .line 1567
    .end local v12           #max:I
    .end local v15           #min:I
    .end local v19           #y:I
    :cond_10
    aget v16, v4, v3

    .line 1568
    .restart local v16       #to_x:I
    aget v17, v5, v3

    .line 1569
    .restart local v17       #to_y:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->x:I

    move/from16 v20, v0

    add-int v20, v20, v16

    add-int/lit8 v21, v3, 0x1

    aget v21, v4, v21

    add-int/lit8 v22, v3, 0x2

    aget v22, v4, v22

    add-int v21, v21, v22

    mul-int/lit8 v21, v21, 0x3

    add-int v20, v20, v21

    div-int/lit8 v13, v20, 0x8

    .line 1570
    .restart local v13       #mid_x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->y:I

    move/from16 v20, v0

    add-int v20, v20, v17

    add-int/lit8 v21, v3, 0x1

    aget v21, v5, v21

    add-int/lit8 v22, v3, 0x2

    aget v22, v5, v22

    add-int v21, v21, v22

    mul-int/lit8 v21, v21, 0x3

    add-int v20, v20, v21

    div-int/lit8 v14, v20, 0x8

    .line 1572
    .restart local v14       #mid_y:I
    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    invoke-direct {v0, v1, v2}, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->gray_render_line(II)V

    .line 1573
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->gray_render_line(II)V

    .line 1574
    add-int/lit8 v18, v18, -0x1

    .line 1575
    add-int/lit8 v3, v3, -0x3

    .line 1576
    goto/16 :goto_1
.end method

.method move_to(II)I
    .locals 5
    .parameter "tox"
    .parameter "toy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/internal/drawing/FreeType$RenderPoolOverflowException;
        }
    .end annotation

    .prologue
    .line 1845
    invoke-direct {p0}, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->gray_record_cell()V

    .line 1847
    iget-boolean v2, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->record:Z

    if-eqz v2, :cond_0

    .line 1849
    iget-object v2, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->edgeCache:Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->recordReset()V

    .line 1853
    :cond_0
    shl-int/lit8 v0, p1, 0x2

    .line 1854
    .local v0, x:I
    shl-int/lit8 v1, p2, 0x2

    .line 1856
    .local v1, y:I
    shr-int/lit8 v2, v0, 0x8

    shr-int/lit8 v3, v1, 0x8

    invoke-direct {p0, v2, v3}, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->gray_start_cell(II)V

    .line 1858
    iput v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->x:I

    .line 1859
    iput v1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->y:I

    .line 1861
    iget-boolean v2, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->record:Z

    if-eqz v2, :cond_1

    .line 1863
    iget-object v2, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->edgeCache:Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;

    iget v3, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cacheTranslateX:I

    sub-int v3, v0, v3

    iget v4, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cacheTranslateY:I

    sub-int v4, v1, v4

    invoke-virtual {v2, v3, v4}, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->recordPoint(II)V

    .line 1867
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public render(Lcom/amazon/topaz/internal/drawing/FreeType$TRaster$Params;)I
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x7fff

    const/4 v5, -0x2

    const/16 v2, -0x8000

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2286
    iget-object v0, p1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster$Params;->source:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;

    .line 2288
    iput-object p1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->params:Lcom/amazon/topaz/internal/drawing/FreeType$TRaster$Params;

    .line 2290
    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cells_x:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cells_y:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cells_cover:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cells_area:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cells_x:[I

    array-length v1, v1

    if-nez v1, :cond_1

    .line 2291
    :cond_0
    const/16 v0, -0xf

    .line 2360
    :goto_0
    return v0

    .line 2294
    :cond_1
    iget v1, p1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster$Params;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2

    move v0, v5

    .line 2295
    goto :goto_0

    .line 2298
    :cond_2
    iget v1, p1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster$Params;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    move v0, v5

    .line 2299
    goto :goto_0

    .line 2302
    :cond_3
    new-instance v1, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;

    invoke-direct {v1}, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;-><init>()V

    iput-object v1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->clip_box:Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;

    .line 2303
    iget v1, p1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster$Params;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    .line 2305
    iget-object v1, p1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster$Params;->clip_box:Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;

    iput-object v1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->clip_box:Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;

    .line 2315
    :goto_1
    iput-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->outline:Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;

    .line 2316
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->getTranslateX()I

    move-result v1

    shl-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cacheTranslateX:I

    .line 2317
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->getTranslateY()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cacheTranslateY:I

    .line 2318
    iput v3, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->num_cells:I

    .line 2319
    iput-boolean v4, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->invalid:Z

    .line 2321
    iget-object v0, p1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster$Params;->renderer:Lcom/amazon/topaz/internal/drawing/FreeType$IRenderSpans;

    iput-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->render_span:Lcom/amazon/topaz/internal/drawing/FreeType$IRenderSpans;

    .line 2324
    iput-boolean v3, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->record:Z

    .line 2325
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->params:Lcom/amazon/topaz/internal/drawing/FreeType$TRaster$Params;

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster$Params;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->params:Lcom/amazon/topaz/internal/drawing/FreeType$TRaster$Params;

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster$Params;->cacheID:I

    if-eqz v0, :cond_6

    .line 2326
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->edgeCache:Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;

    iget v1, p1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster$Params;->cacheID:I

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->get(I)Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache$CacheEntry;

    move-result-object v0

    .line 2328
    if-eqz v0, :cond_8

    .line 2330
    iget v1, v0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache$CacheEntry;->scale:I

    iget-object v2, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->outline:Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->getScaleX()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 2334
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->tpz_convert_glyph_from_cache(Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache$CacheEntry;)V
    :try_end_0
    .catch Lcom/amazon/topaz/internal/drawing/FreeType$RenderPoolOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 2340
    goto :goto_0

    .line 2309
    :cond_4
    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->clip_box:Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;

    iput v2, v1, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->xMin:I

    .line 2310
    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->clip_box:Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;

    iput v2, v1, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->yMin:I

    .line 2311
    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->clip_box:Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;

    iput v6, v1, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->xMax:I

    .line 2312
    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->clip_box:Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;

    iput v6, v1, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->yMax:I

    goto :goto_1

    .line 2338
    :catch_0
    move-exception v0

    move v0, v4

    goto :goto_0

    .line 2344
    :cond_5
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->edgeCache:Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;

    iget v1, p1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster$Params;->cacheID:I

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->remove(I)V

    .line 2354
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->gray_convert_glyph()I

    .line 2356
    iget-boolean v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->record:Z

    if-eqz v0, :cond_7

    .line 2358
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->edgeCache:Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;

    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->params:Lcom/amazon/topaz/internal/drawing/FreeType$TRaster$Params;

    iget v1, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster$Params;->cacheID:I

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->stopRecording(I)V

    :cond_7
    move v0, v3

    .line 2360
    goto/16 :goto_0

    .line 2349
    :cond_8
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->edgeCache:Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;

    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->params:Lcom/amazon/topaz/internal/drawing/FreeType$TRaster$Params;

    iget v1, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster$Params;->cacheID:I

    iget-object v2, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->outline:Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->getScaleX()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->startRecording(II)V

    .line 2350
    iput-boolean v4, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->record:Z

    goto :goto_2
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1034
    iput v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->num_cells:I

    .line 1035
    iput v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->area:I

    .line 1036
    iput v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cover:I

    .line 1037
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->invalid:Z

    .line 1038
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cells_x:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->band_size:I

    .line 1039
    return-void
.end method

.method tpz_convert_glyph_from_cache(Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache$CacheEntry;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/internal/drawing/FreeType$RenderPoolOverflowException;
        }
    .end annotation

    .prologue
    .line 2237
    invoke-direct {p0}, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->gray_compute_cbox()V

    .line 2242
    const/4 v0, 0x0

    .line 2244
    iget-object v1, p1, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache$CacheEntry;->points_x:[I

    aget v1, v1, v0

    iget v2, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cacheTranslateX:I

    add-int/2addr v1, v2

    .line 2245
    shr-int/lit8 v1, v1, 0x2

    .line 2246
    iget-object v2, p1, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache$CacheEntry;->points_y:[I

    aget v2, v2, v0

    iget v3, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cacheTranslateY:I

    add-int/2addr v2, v3

    .line 2247
    shr-int/lit8 v2, v2, 0x2

    .line 2248
    add-int/lit8 v0, v0, 0x1

    .line 2250
    invoke-virtual {p0, v1, v2}, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->move_to(II)I

    .line 2252
    :goto_0
    iget-object v1, p1, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache$CacheEntry;->points_x:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 2254
    iget-object v1, p1, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache$CacheEntry;->points_x:[I

    aget v1, v1, v0

    .line 2255
    iget-object v2, p1, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache$CacheEntry;->points_y:[I

    aget v2, v2, v0

    .line 2256
    add-int/lit8 v0, v0, 0x1

    .line 2258
    invoke-static {}, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->access$200()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 2259
    iget-object v1, p1, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache$CacheEntry;->points_x:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 2276
    :cond_0
    invoke-direct {p0}, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->gray_record_cell()V

    .line 2279
    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cells_x:[I

    iget-object v2, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cells_y:[I

    iget-object v3, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cells_area:[I

    iget-object v4, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cells_cover:[I

    iget v5, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->num_cells:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->gray_quick_sort([I[I[I[II)V

    .line 2280
    invoke-direct {p0}, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->gray_sweep()V

    .line 2281
    return-void

    .line 2264
    :cond_1
    iget-object v1, p1, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache$CacheEntry;->points_x:[I

    aget v1, v1, v0

    iget v2, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cacheTranslateX:I

    add-int/2addr v1, v2

    .line 2265
    shr-int/lit8 v1, v1, 0x2

    .line 2266
    iget-object v2, p1, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache$CacheEntry;->points_y:[I

    aget v2, v2, v0

    iget v3, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cacheTranslateY:I

    add-int/2addr v2, v3

    .line 2267
    shr-int/lit8 v2, v2, 0x2

    .line 2268
    invoke-virtual {p0, v1, v2}, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->move_to(II)I

    goto :goto_0

    .line 2270
    :cond_2
    iget v3, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cacheTranslateX:I

    add-int/2addr v1, v3

    iget v3, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->cacheTranslateY:I

    add-int/2addr v2, v3

    invoke-direct {p0, v1, v2}, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->gray_render_line(II)V

    goto :goto_0
.end method
