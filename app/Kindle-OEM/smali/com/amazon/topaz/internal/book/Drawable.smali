.class public abstract Lcom/amazon/topaz/internal/book/Drawable;
.super Ljava/lang/Object;
.source "Drawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/topaz/internal/book/Drawable$Builder;,
        Lcom/amazon/topaz/internal/book/Drawable$DrawableId;
    }
.end annotation


# static fields
.field public static final NO_OCR_TEXT:I = -0x1


# instance fields
.field private final ID_:I

.field private final altTextID_:I

.field private final baseline_:I

.field private final bounds_:Lcom/amazon/system/drawing/Rectangle;

.field private final pageNum_:I


# direct methods
.method protected constructor <init>(IILcom/amazon/system/drawing/Rectangle;II)V
    .locals 1
    .parameter "pageNum"
    .parameter "id"
    .parameter "bounds"
    .parameter "baseline"
    .parameter "altTextID"

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput p2, p0, Lcom/amazon/topaz/internal/book/Drawable;->ID_:I

    .line 176
    iput p1, p0, Lcom/amazon/topaz/internal/book/Drawable;->pageNum_:I

    .line 177
    new-instance v0, Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v0, p3}, Lcom/amazon/system/drawing/Rectangle;-><init>(Lcom/amazon/system/drawing/Rectangle;)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/book/Drawable;->bounds_:Lcom/amazon/system/drawing/Rectangle;

    .line 178
    iput p4, p0, Lcom/amazon/topaz/internal/book/Drawable;->baseline_:I

    .line 179
    iput p5, p0, Lcom/amazon/topaz/internal/book/Drawable;->altTextID_:I

    .line 180
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/topaz/internal/book/Drawable;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/amazon/topaz/internal/book/Drawable;->ID_:I

    return v0
.end method

.method static synthetic access$100(Lcom/amazon/topaz/internal/book/Drawable;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/amazon/topaz/internal/book/Drawable;->pageNum_:I

    return v0
.end method

.method static synthetic access$200(Lcom/amazon/topaz/internal/book/Drawable;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/amazon/topaz/internal/book/Drawable;->baseline_:I

    return v0
.end method

.method static synthetic access$300(Lcom/amazon/topaz/internal/book/Drawable;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/amazon/topaz/internal/book/Drawable;->altTextID_:I

    return v0
.end method


# virtual methods
.method public draw(Lcom/amazon/topaz/internal/drawing/Canvas;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Drawable;->bounds_:Lcom/amazon/system/drawing/Rectangle;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/topaz/internal/book/Drawable;->draw(Lcom/amazon/topaz/internal/drawing/Canvas;Lcom/amazon/system/drawing/Rectangle;)V

    .line 220
    return-void
.end method

.method public abstract draw(Lcom/amazon/topaz/internal/drawing/Canvas;Lcom/amazon/system/drawing/Rectangle;)V
.end method

.method public getAltText(Lcom/amazon/topaz/internal/binxml/Dictionary;)Ljava/lang/String;
    .locals 1
    .parameter "dict"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    iget v0, p0, Lcom/amazon/topaz/internal/book/Drawable;->altTextID_:I

    if-ltz v0, :cond_0

    .line 249
    iget v0, p0, Lcom/amazon/topaz/internal/book/Drawable;->altTextID_:I

    invoke-virtual {p1, v0}, Lcom/amazon/topaz/internal/binxml/Dictionary;->get(I)Ljava/lang/String;

    move-result-object v0

    .line 253
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->EMPTY:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getAltTextID()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/amazon/topaz/internal/book/Drawable;->altTextID_:I

    return v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/amazon/topaz/internal/book/Drawable;->baseline_:I

    return v0
.end method

.method public getBounds()Lcom/amazon/system/drawing/Rectangle;
    .locals 2

    .prologue
    .line 209
    new-instance v0, Lcom/amazon/system/drawing/Rectangle;

    iget-object v1, p0, Lcom/amazon/topaz/internal/book/Drawable;->bounds_:Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v0, v1}, Lcom/amazon/system/drawing/Rectangle;-><init>(Lcom/amazon/system/drawing/Rectangle;)V

    return-object v0
.end method

.method public final getID()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/amazon/topaz/internal/book/Drawable;->ID_:I

    return v0
.end method

.method public final getPageNum()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/amazon/topaz/internal/book/Drawable;->pageNum_:I

    return v0
.end method
