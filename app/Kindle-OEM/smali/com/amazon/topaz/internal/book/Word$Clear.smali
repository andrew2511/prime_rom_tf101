.class final Lcom/amazon/topaz/internal/book/Word$Clear;
.super Ljava/lang/Object;
.source "Word.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/internal/book/Word;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Clear"
.end annotation


# instance fields
.field public final glyphNum:I

.field public final pos:Lcom/amazon/system/drawing/Rectangle;


# direct methods
.method public constructor <init>(ILcom/amazon/system/drawing/Rectangle;)V
    .locals 0
    .parameter "gn"
    .parameter "p"

    .prologue
    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    iput p1, p0, Lcom/amazon/topaz/internal/book/Word$Clear;->glyphNum:I

    .line 609
    iput-object p2, p0, Lcom/amazon/topaz/internal/book/Word$Clear;->pos:Lcom/amazon/system/drawing/Rectangle;

    .line 610
    return-void
.end method
