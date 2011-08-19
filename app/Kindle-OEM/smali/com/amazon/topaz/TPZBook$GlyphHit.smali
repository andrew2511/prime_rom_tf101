.class Lcom/amazon/topaz/TPZBook$GlyphHit;
.super Ljava/lang/Object;
.source "TPZBook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/TPZBook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GlyphHit"
.end annotation


# instance fields
.field public miss:I

.field public request:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 677
    iput v0, p0, Lcom/amazon/topaz/TPZBook$GlyphHit;->request:I

    .line 678
    iput v0, p0, Lcom/amazon/topaz/TPZBook$GlyphHit;->miss:I

    .line 679
    return-void
.end method
