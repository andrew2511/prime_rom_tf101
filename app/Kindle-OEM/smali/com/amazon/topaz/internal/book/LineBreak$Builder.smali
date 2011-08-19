.class public final Lcom/amazon/topaz/internal/book/LineBreak$Builder;
.super Lcom/amazon/topaz/internal/book/Drawable$Builder;
.source "LineBreak.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/internal/book/LineBreak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazon/topaz/internal/book/Drawable$DrawableId;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/amazon/topaz/internal/book/Drawable$Builder;-><init>(Lcom/amazon/topaz/internal/book/Drawable$DrawableId;)V

    .line 25
    return-void
.end method


# virtual methods
.method public build()Lcom/amazon/topaz/internal/book/Drawable;
    .locals 3

    .prologue
    .line 29
    new-instance v0, Lcom/amazon/topaz/internal/book/LineBreak;

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/book/LineBreak$Builder;->getPageNum()I

    move-result v1

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/book/LineBreak$Builder;->getID()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/topaz/internal/book/LineBreak;-><init>(II)V

    return-object v0
.end method
