.class Lcom/amazon/topaz/internal/drawing/RasterCanvas$MetaTarget;
.super Ljava/lang/Object;
.source "RasterCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/internal/drawing/RasterCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MetaTarget"
.end annotation


# instance fields
.field public color:Lcom/amazon/system/drawing/Color;

.field public rect:Lcom/amazon/system/drawing/Rectangle;


# direct methods
.method public constructor <init>(Lcom/amazon/system/drawing/Color;Lcom/amazon/system/drawing/Rectangle;)V
    .locals 0
    .parameter "c"
    .parameter "r"

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput-object p1, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas$MetaTarget;->color:Lcom/amazon/system/drawing/Color;

    .line 237
    iput-object p2, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas$MetaTarget;->rect:Lcom/amazon/system/drawing/Rectangle;

    .line 238
    return-void
.end method
