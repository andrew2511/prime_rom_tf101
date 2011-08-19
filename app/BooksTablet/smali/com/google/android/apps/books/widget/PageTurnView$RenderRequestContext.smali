.class Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;
.super Ljava/lang/Object;
.source "PageTurnView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/widget/PageTurnView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RenderRequestContext"
.end annotation


# instance fields
.field final basePosition:Lcom/google/android/apps/books/common/Position;

.field final rendererSequenceNumber:I

.field final targetSlot:I


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/common/Position;II)V
    .locals 0
    .parameter "position"
    .parameter "seq"
    .parameter "slot"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;->basePosition:Lcom/google/android/apps/books/common/Position;

    .line 62
    iput p2, p0, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;->rendererSequenceNumber:I

    .line 63
    iput p3, p0, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;->targetSlot:I

    .line 64
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;->basePosition:Lcom/google/android/apps/books/common/Position;

    invoke-virtual {v3}, Lcom/google/android/apps/books/common/Position;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;->rendererSequenceNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, seed:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, baseHash:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", targetSlot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;->targetSlot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
