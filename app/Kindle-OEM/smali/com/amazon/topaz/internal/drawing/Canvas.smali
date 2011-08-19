.class public abstract Lcom/amazon/topaz/internal/drawing/Canvas;
.super Ljava/lang/Object;
.source "Canvas.java"


# static fields
.field private static DEFAULT_BACKGROUND_COLOR:Lcom/amazon/system/drawing/Color;

.field private static DEFAULT_FOREGROUND_COLOR:Lcom/amazon/system/drawing/Color;


# instance fields
.field protected backgroundColor:Lcom/amazon/system/drawing/Color;

.field protected color:Lcom/amazon/system/drawing/Color;

.field private coordShift_:I

.field private zoomFactor_:Lcom/amazon/topaz/internal/layout/ZoomFactor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/amazon/system/drawing/Color;->BLACK:Lcom/amazon/system/drawing/Color;

    sput-object v0, Lcom/amazon/topaz/internal/drawing/Canvas;->DEFAULT_FOREGROUND_COLOR:Lcom/amazon/system/drawing/Color;

    .line 154
    sget-object v0, Lcom/amazon/system/drawing/Color;->WHITE:Lcom/amazon/system/drawing/Color;

    sput-object v0, Lcom/amazon/topaz/internal/drawing/Canvas;->DEFAULT_BACKGROUND_COLOR:Lcom/amazon/system/drawing/Color;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    sget-object v0, Lcom/amazon/topaz/internal/drawing/Canvas;->DEFAULT_FOREGROUND_COLOR:Lcom/amazon/system/drawing/Color;

    iput-object v0, p0, Lcom/amazon/topaz/internal/drawing/Canvas;->color:Lcom/amazon/system/drawing/Color;

    .line 159
    sget-object v0, Lcom/amazon/topaz/internal/drawing/Canvas;->DEFAULT_BACKGROUND_COLOR:Lcom/amazon/system/drawing/Color;

    iput-object v0, p0, Lcom/amazon/topaz/internal/drawing/Canvas;->backgroundColor:Lcom/amazon/system/drawing/Color;

    .line 26
    new-instance v0, Lcom/amazon/topaz/internal/layout/ZoomFactor;

    const/16 v1, 0x64

    const/16 v2, 0x960

    invoke-direct {v0, v1, v2}, Lcom/amazon/topaz/internal/layout/ZoomFactor;-><init>(II)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/drawing/Canvas;->zoomFactor_:Lcom/amazon/topaz/internal/layout/ZoomFactor;

    .line 27
    return-void
.end method


# virtual methods
.method public bookToScreen(I)I
    .locals 1
    .parameter "src"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/Canvas;->zoomFactor_:Lcom/amazon/topaz/internal/layout/ZoomFactor;

    invoke-virtual {v0, p1}, Lcom/amazon/topaz/internal/layout/ZoomFactor;->bookToScreen(I)I

    move-result v0

    return v0
.end method

.method public bookToScreen(Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;
    .locals 1
    .parameter "src"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/Canvas;->zoomFactor_:Lcom/amazon/topaz/internal/layout/ZoomFactor;

    invoke-virtual {v0, p1}, Lcom/amazon/topaz/internal/layout/ZoomFactor;->bookToScreen(Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public abstract clearRect(Lcom/amazon/system/drawing/Rectangle;)V
.end method

.method public abstract draw(Lcom/amazon/system/drawing/Color;Lcom/amazon/system/drawing/Rectangle;)V
.end method

.method public abstract draw(Lcom/amazon/topaz/internal/book/IImage;Lcom/amazon/system/drawing/Rectangle;)V
.end method

.method public abstract drawMeta(Lcom/amazon/topaz/internal/book/Word;Lcom/amazon/system/drawing/Rectangle;)V
.end method

.method public abstract drawMeta(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/system/drawing/Rectangle;)V
.end method

.method protected drawZoom(Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;
    .locals 5
    .parameter "src"

    .prologue
    const/4 v4, 0x1

    .line 127
    new-instance v1, Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v1, p1}, Lcom/amazon/system/drawing/Rectangle;-><init>(Lcom/amazon/system/drawing/Rectangle;)V

    .line 128
    .local v1, pos:Lcom/amazon/system/drawing/Rectangle;
    iget-object v2, p0, Lcom/amazon/topaz/internal/drawing/Canvas;->zoomFactor_:Lcom/amazon/topaz/internal/layout/ZoomFactor;

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/layout/ZoomFactor;->getScreenDPI()I

    move-result v2

    invoke-static {v1, v2}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->multiply(Lcom/amazon/system/drawing/Rectangle;I)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v1

    .line 129
    iget v2, p0, Lcom/amazon/topaz/internal/drawing/Canvas;->coordShift_:I

    invoke-static {v1, v2}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->shiftLeft(Lcom/amazon/system/drawing/Rectangle;I)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v1

    .line 131
    iget-object v2, p0, Lcom/amazon/topaz/internal/drawing/Canvas;->zoomFactor_:Lcom/amazon/topaz/internal/layout/ZoomFactor;

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/layout/ZoomFactor;->getBookDPI()I

    move-result v0

    .line 134
    .local v0, bookDPI:I
    iget v2, v1, Lcom/amazon/system/drawing/Rectangle;->x:I

    if-gez v2, :cond_0

    .line 136
    iget v2, v1, Lcom/amazon/system/drawing/Rectangle;->x:I

    sub-int v3, v0, v4

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/amazon/system/drawing/Rectangle;->x:I

    .line 138
    :cond_0
    iget v2, v1, Lcom/amazon/system/drawing/Rectangle;->y:I

    if-gez v2, :cond_1

    .line 140
    iget v2, v1, Lcom/amazon/system/drawing/Rectangle;->y:I

    sub-int v3, v0, v4

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/amazon/system/drawing/Rectangle;->y:I

    .line 142
    :cond_1
    invoke-static {v1, v0}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->divide(Lcom/amazon/system/drawing/Rectangle;I)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v1

    .line 144
    return-object v1
.end method

.method public getBackgroundColor()Lcom/amazon/system/drawing/Color;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/Canvas;->backgroundColor:Lcom/amazon/system/drawing/Color;

    return-object v0
.end method

.method public getBookHeight()I
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/Canvas;->zoomFactor_:Lcom/amazon/topaz/internal/layout/ZoomFactor;

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/drawing/Canvas;->getScreenHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/layout/ZoomFactor;->screenToBook(I)I

    move-result v0

    return v0
.end method

.method public getBookWidth()I
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/Canvas;->zoomFactor_:Lcom/amazon/topaz/internal/layout/ZoomFactor;

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/drawing/Canvas;->getScreenWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/layout/ZoomFactor;->screenToBook(I)I

    move-result v0

    return v0
.end method

.method public getColor()Lcom/amazon/system/drawing/Color;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/Canvas;->color:Lcom/amazon/system/drawing/Color;

    return-object v0
.end method

.method protected getCoordShift()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/amazon/topaz/internal/drawing/Canvas;->coordShift_:I

    return v0
.end method

.method public abstract getScreenHeight()I
.end method

.method public abstract getScreenWidth()I
.end method

.method public getZoomFactor()Lcom/amazon/topaz/internal/layout/ZoomFactor;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/Canvas;->zoomFactor_:Lcom/amazon/topaz/internal/layout/ZoomFactor;

    return-object v0
.end method

.method public abstract invert(Lcom/amazon/system/drawing/Color;Lcom/amazon/system/drawing/Rectangle;)V
.end method

.method public screenToBook(I)I
    .locals 1
    .parameter "size"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/Canvas;->zoomFactor_:Lcom/amazon/topaz/internal/layout/ZoomFactor;

    invoke-virtual {v0, p1}, Lcom/amazon/topaz/internal/layout/ZoomFactor;->screenToBook(I)I

    move-result v0

    return v0
.end method

.method public screenToBook(Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;
    .locals 1
    .parameter "src"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/Canvas;->zoomFactor_:Lcom/amazon/topaz/internal/layout/ZoomFactor;

    invoke-virtual {v0, p1}, Lcom/amazon/topaz/internal/layout/ZoomFactor;->screenToBook(Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public setBackgroundColor(Lcom/amazon/system/drawing/Color;)V
    .locals 0
    .parameter "backgroundColor"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/amazon/topaz/internal/drawing/Canvas;->backgroundColor:Lcom/amazon/system/drawing/Color;

    .line 58
    return-void
.end method

.method public setColor(Lcom/amazon/system/drawing/Color;)V
    .locals 0
    .parameter "color"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/amazon/topaz/internal/drawing/Canvas;->color:Lcom/amazon/system/drawing/Color;

    .line 66
    return-void
.end method

.method protected setSubpixel(I)V
    .locals 0
    .parameter "nBits"

    .prologue
    .line 122
    iput p1, p0, Lcom/amazon/topaz/internal/drawing/Canvas;->coordShift_:I

    .line 123
    return-void
.end method

.method public setZoomFactor(Lcom/amazon/topaz/internal/layout/ZoomFactor;)V
    .locals 0
    .parameter "zoomFactor"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/amazon/topaz/internal/drawing/Canvas;->zoomFactor_:Lcom/amazon/topaz/internal/layout/ZoomFactor;

    .line 71
    return-void
.end method

.method public abstract shade(Lcom/amazon/system/drawing/Color;Lcom/amazon/system/drawing/Rectangle;)V
.end method
