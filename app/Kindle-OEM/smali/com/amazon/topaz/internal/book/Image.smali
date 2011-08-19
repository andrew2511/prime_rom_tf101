.class public final Lcom/amazon/topaz/internal/book/Image;
.super Lcom/amazon/topaz/internal/book/Drawable;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/topaz/internal/book/Image$ImageLoader;
    }
.end annotation


# instance fields
.field private destRect:Lcom/amazon/system/drawing/Rectangle;

.field private final imageId:I

.field private img:Lcom/amazon/topaz/internal/book/IImage;

.field private loader:Lcom/amazon/topaz/internal/book/Image$ImageLoader;


# direct methods
.method public constructor <init>(IILcom/amazon/system/drawing/Rectangle;Lcom/amazon/topaz/internal/book/Image$ImageLoader;)V
    .locals 6
    .parameter "pageNum"
    .parameter "id"
    .parameter "rect"
    .parameter "loader"

    .prologue
    .line 47
    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/topaz/internal/book/Image;-><init>(IILcom/amazon/system/drawing/Rectangle;Lcom/amazon/topaz/internal/book/Image$ImageLoader;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(IILcom/amazon/system/drawing/Rectangle;Lcom/amazon/topaz/internal/book/Image$ImageLoader;I)V
    .locals 6
    .parameter "pageNum"
    .parameter "id"
    .parameter "rect"
    .parameter "loader"
    .parameter "imageId"

    .prologue
    .line 61
    iget v4, p3, Lcom/amazon/system/drawing/Rectangle;->height:I

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazon/topaz/internal/book/Drawable;-><init>(IILcom/amazon/system/drawing/Rectangle;II)V

    .line 62
    new-instance v0, Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v0}, Lcom/amazon/system/drawing/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/internal/book/Image;->destRect:Lcom/amazon/system/drawing/Rectangle;

    .line 63
    iput-object p4, p0, Lcom/amazon/topaz/internal/book/Image;->loader:Lcom/amazon/topaz/internal/book/Image$ImageLoader;

    .line 64
    iput p5, p0, Lcom/amazon/topaz/internal/book/Image;->imageId:I

    .line 65
    return-void
.end method

.method private loadImage()V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Image;->loader:Lcom/amazon/topaz/internal/book/Image$ImageLoader;

    if-eqz v0, :cond_0

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Image;->loader:Lcom/amazon/topaz/internal/book/Image$ImageLoader;

    invoke-interface {v0}, Lcom/amazon/topaz/internal/book/Image$ImageLoader;->load()Lcom/amazon/topaz/internal/book/IImage;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/topaz/internal/book/Image;->img:Lcom/amazon/topaz/internal/book/IImage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/amazon/topaz/exception/TopazException; {:try_start_0 .. :try_end_0} :catch_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Image load failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 136
    :catch_1
    move-exception v0

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Image load failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/topaz/exception/TopazException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private unloadImage()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/topaz/internal/book/Image;->img:Lcom/amazon/topaz/internal/book/IImage;

    .line 150
    return-void
.end method


# virtual methods
.method public draw(Lcom/amazon/topaz/internal/drawing/Canvas;)V
    .locals 3
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-direct {p0}, Lcom/amazon/topaz/internal/book/Image;->loadImage()V

    .line 72
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Image;->img:Lcom/amazon/topaz/internal/book/IImage;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Image;->img:Lcom/amazon/topaz/internal/book/IImage;

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/book/Image;->getBounds()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/topaz/internal/drawing/Canvas;->draw(Lcom/amazon/topaz/internal/book/IImage;Lcom/amazon/system/drawing/Rectangle;)V

    .line 75
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Image;->img:Lcom/amazon/topaz/internal/book/IImage;

    invoke-interface {v0}, Lcom/amazon/topaz/internal/book/IImage;->getDestinationRect()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/topaz/internal/book/Image;->destRect:Lcom/amazon/system/drawing/Rectangle;

    .line 76
    invoke-direct {p0}, Lcom/amazon/topaz/internal/book/Image;->unloadImage()V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    new-instance v0, Lcom/amazon/system/drawing/Color;

    const/16 v1, 0x7f

    invoke-direct {v0, v1, v2, v2}, Lcom/amazon/system/drawing/Color;-><init>(III)V

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/book/Image;->getBounds()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/topaz/internal/drawing/Canvas;->draw(Lcom/amazon/system/drawing/Color;Lcom/amazon/system/drawing/Rectangle;)V

    goto :goto_0
.end method

.method public draw(Lcom/amazon/topaz/internal/drawing/Canvas;Lcom/amazon/system/drawing/Rectangle;)V
    .locals 3
    .parameter "c"
    .parameter "tgt"

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Lcom/amazon/topaz/internal/book/Image;->loadImage()V

    .line 89
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Image;->img:Lcom/amazon/topaz/internal/book/IImage;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Image;->img:Lcom/amazon/topaz/internal/book/IImage;

    invoke-virtual {p1, v0, p2}, Lcom/amazon/topaz/internal/drawing/Canvas;->draw(Lcom/amazon/topaz/internal/book/IImage;Lcom/amazon/system/drawing/Rectangle;)V

    .line 92
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Image;->img:Lcom/amazon/topaz/internal/book/IImage;

    invoke-interface {v0}, Lcom/amazon/topaz/internal/book/IImage;->getDestinationRect()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/topaz/internal/book/Image;->destRect:Lcom/amazon/system/drawing/Rectangle;

    .line 93
    invoke-direct {p0}, Lcom/amazon/topaz/internal/book/Image;->unloadImage()V

    .line 100
    :goto_0
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->CANVAS_TYPE_IMAGE:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Lcom/amazon/topaz/internal/drawing/Canvas;->drawMeta(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/system/drawing/Rectangle;)V

    .line 101
    return-void

    .line 97
    :cond_0
    new-instance v0, Lcom/amazon/system/drawing/Color;

    const/16 v1, 0x7f

    invoke-direct {v0, v1, v2, v2}, Lcom/amazon/system/drawing/Color;-><init>(III)V

    invoke-virtual {p1, v0, p2}, Lcom/amazon/topaz/internal/drawing/Canvas;->draw(Lcom/amazon/system/drawing/Color;Lcom/amazon/system/drawing/Rectangle;)V

    goto :goto_0
.end method

.method public getDestinationRect()Lcom/amazon/system/drawing/Rectangle;
    .locals 2

    .prologue
    .line 113
    new-instance v0, Lcom/amazon/system/drawing/Rectangle;

    iget-object v1, p0, Lcom/amazon/topaz/internal/book/Image;->destRect:Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v0, v1}, Lcom/amazon/system/drawing/Rectangle;-><init>(Lcom/amazon/system/drawing/Rectangle;)V

    return-object v0
.end method

.method public getImageId()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/amazon/topaz/internal/book/Image;->imageId:I

    return v0
.end method
