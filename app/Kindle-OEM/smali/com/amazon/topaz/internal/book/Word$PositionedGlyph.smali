.class public final Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;
.super Ljava/lang/Object;
.source "Word.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/internal/book/Word;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PositionedGlyph"
.end annotation


# instance fields
.field public final glyph:Lcom/amazon/topaz/internal/book/Glyph;

.field private x:I

.field private y:I


# direct methods
.method private constructor <init>(Lcom/amazon/topaz/internal/book/Glyph;II)V
    .locals 0
    .parameter "g"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    iput-object p1, p0, Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;->glyph:Lcom/amazon/topaz/internal/book/Glyph;

    .line 582
    iput p2, p0, Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;->x:I

    .line 583
    iput p3, p0, Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;->y:I

    .line 584
    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/topaz/internal/book/Glyph;IILcom/amazon/topaz/internal/book/Word$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 569
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;-><init>(Lcom/amazon/topaz/internal/book/Glyph;II)V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 569
    iget v0, p0, Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;->x:I

    return v0
.end method

.method static synthetic access$600(Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 569
    iget v0, p0, Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;->y:I

    return v0
.end method


# virtual methods
.method public getPos()Lcom/amazon/system/drawing/Rectangle;
    .locals 6

    .prologue
    .line 588
    iget-object v1, p0, Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;->glyph:Lcom/amazon/topaz/internal/book/Glyph;

    invoke-interface {v1}, Lcom/amazon/topaz/internal/book/Glyph;->getSize()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v0

    .line 589
    .local v0, glyphSize:Lcom/amazon/system/drawing/Rectangle;
    new-instance v1, Lcom/amazon/system/drawing/Rectangle;

    iget v2, p0, Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;->x:I

    iget v3, p0, Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;->y:I

    iget v4, v0, Lcom/amazon/system/drawing/Rectangle;->width:I

    iget v5, v0, Lcom/amazon/system/drawing/Rectangle;->height:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    return-object v1
.end method
