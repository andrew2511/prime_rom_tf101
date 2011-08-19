.class public final Lcom/amazon/topaz/internal/book/LineBreak;
.super Lcom/amazon/topaz/internal/book/Drawable;
.source "LineBreak.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/topaz/internal/book/LineBreak$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 6
    .parameter "pageNum"
    .parameter "id"

    .prologue
    .line 40
    new-instance v3, Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v3}, Lcom/amazon/system/drawing/Rectangle;-><init>()V

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/topaz/internal/book/Drawable;-><init>(IILcom/amazon/system/drawing/Rectangle;II)V

    .line 41
    return-void
.end method


# virtual methods
.method public draw(Lcom/amazon/topaz/internal/drawing/Canvas;Lcom/amazon/system/drawing/Rectangle;)V
    .locals 0
    .parameter "c"
    .parameter "r"

    .prologue
    .line 46
    return-void
.end method
