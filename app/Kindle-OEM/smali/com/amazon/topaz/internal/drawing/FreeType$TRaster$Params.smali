.class public final Lcom/amazon/topaz/internal/drawing/FreeType$TRaster$Params;
.super Ljava/lang/Object;
.source "FreeType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Params"
.end annotation


# static fields
.field public static final FT_RASTER_FLAG_AA:I = 0x1

.field public static final FT_RASTER_FLAG_CLIP:I = 0x4

.field public static final FT_RASTER_FLAG_DEFAULT:I = 0x0

.field public static final FT_RASTER_FLAG_DIRECT:I = 0x2

.field public static final FT_RASTER_USE_CACHE:I = 0x8


# instance fields
.field public cacheID:I

.field public clip_box:Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;

.field public flags:I

.field public renderer:Lcom/amazon/topaz/internal/drawing/FreeType$IRenderSpans;

.field public source:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 875
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 879
    iput-object v1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster$Params;->source:Ljava/lang/Object;

    .line 880
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster$Params;->flags:I

    .line 881
    iput-object v1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster$Params;->renderer:Lcom/amazon/topaz/internal/drawing/FreeType$IRenderSpans;

    .line 882
    iput-object v1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster$Params;->clip_box:Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;

    .line 883
    return-void
.end method
