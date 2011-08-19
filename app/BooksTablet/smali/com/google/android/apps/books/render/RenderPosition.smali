.class public Lcom/google/android/apps/books/render/RenderPosition;
.super Ljava/lang/Object;
.source "RenderPosition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/render/RenderPosition$SpecialIndex;
    }
.end annotation


# static fields
.field public static final INVALID_INDEX:I = -0x1

.field public static final INVALID_POSITION:Lcom/google/android/apps/books/common/Position;


# instance fields
.field public final chapterIndex:I

.field public final highlight:Ljava/lang/String;

.field public final pageIndex:I

.field public final pageOffset:I

.field public final position:Lcom/google/android/apps/books/common/Position;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/apps/books/render/RenderPosition;->INVALID_POSITION:Lcom/google/android/apps/books/common/Position;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6
    .parameter "targetSlot"

    .prologue
    const/4 v2, -0x1

    .line 69
    sget-object v1, Lcom/google/android/apps/books/render/RenderPosition;->INVALID_POSITION:Lcom/google/android/apps/books/common/Position;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/books/render/RenderPosition;-><init>(Lcom/google/android/apps/books/common/Position;IIILjava/lang/String;)V

    .line 70
    return-void
.end method

.method public constructor <init>(II)V
    .locals 6
    .parameter "chapterIndex"
    .parameter "pageIndex"

    .prologue
    .line 52
    sget-object v1, Lcom/google/android/apps/books/render/RenderPosition;->INVALID_POSITION:Lcom/google/android/apps/books/common/Position;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/books/render/RenderPosition;-><init>(Lcom/google/android/apps/books/common/Position;IIILjava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/books/common/Position;)V
    .locals 6
    .parameter "position"

    .prologue
    const/4 v2, -0x1

    .line 44
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/books/render/RenderPosition;-><init>(Lcom/google/android/apps/books/common/Position;IIILjava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/books/common/Position;II)V
    .locals 6
    .parameter "position"
    .parameter "chapterIndex"
    .parameter "pageIndex"

    .prologue
    .line 61
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/books/render/RenderPosition;-><init>(Lcom/google/android/apps/books/common/Position;IIILjava/lang/String;)V

    .line 62
    return-void
.end method

.method private constructor <init>(Lcom/google/android/apps/books/common/Position;IIILjava/lang/String;)V
    .locals 0
    .parameter "position"
    .parameter "chapterIndex"
    .parameter "pageIndex"
    .parameter "pageOffset"
    .parameter "highlight"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/android/apps/books/render/RenderPosition;->position:Lcom/google/android/apps/books/common/Position;

    .line 37
    iput p2, p0, Lcom/google/android/apps/books/render/RenderPosition;->chapterIndex:I

    .line 38
    iput p3, p0, Lcom/google/android/apps/books/render/RenderPosition;->pageIndex:I

    .line 39
    iput p4, p0, Lcom/google/android/apps/books/render/RenderPosition;->pageOffset:I

    .line 40
    iput-object p5, p0, Lcom/google/android/apps/books/render/RenderPosition;->highlight:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/books/common/Position;IILjava/lang/String;)V
    .locals 6
    .parameter "position"
    .parameter "chapterIndex"
    .parameter "pageIndex"
    .parameter "highlight"

    .prologue
    .line 65
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/books/render/RenderPosition;-><init>(Lcom/google/android/apps/books/common/Position;IIILjava/lang/String;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/books/common/Position;Ljava/lang/String;)V
    .locals 6
    .parameter "position"
    .parameter "highlight"

    .prologue
    const/4 v2, -0x1

    .line 48
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/books/render/RenderPosition;-><init>(Lcom/google/android/apps/books/common/Position;IIILjava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/books/render/RenderPosition;I)V
    .locals 6
    .parameter "anchor"
    .parameter "pageOffset"

    .prologue
    .line 56
    iget-object v1, p1, Lcom/google/android/apps/books/render/RenderPosition;->position:Lcom/google/android/apps/books/common/Position;

    iget v2, p1, Lcom/google/android/apps/books/render/RenderPosition;->chapterIndex:I

    iget v3, p1, Lcom/google/android/apps/books/render/RenderPosition;->pageIndex:I

    iget v0, p1, Lcom/google/android/apps/books/render/RenderPosition;->pageOffset:I

    add-int v4, v0, p2

    iget-object v5, p1, Lcom/google/android/apps/books/render/RenderPosition;->highlight:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/books/render/RenderPosition;-><init>(Lcom/google/android/apps/books/common/Position;IIILjava/lang/String;)V

    .line 58
    return-void
.end method


# virtual methods
.method public hasValidIndices()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 81
    iget v0, p0, Lcom/google/android/apps/books/render/RenderPosition;->chapterIndex:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/apps/books/render/RenderPosition;->pageIndex:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValidPosition()Z
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/apps/books/render/RenderPosition;->position:Lcom/google/android/apps/books/common/Position;

    sget-object v1, Lcom/google/android/apps/books/render/RenderPosition;->INVALID_POSITION:Lcom/google/android/apps/books/common/Position;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public offsetBy(I)Lcom/google/android/apps/books/render/RenderPosition;
    .locals 1
    .parameter "pageOffset"

    .prologue
    .line 73
    new-instance v0, Lcom/google/android/apps/books/render/RenderPosition;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/books/render/RenderPosition;-><init>(Lcom/google/android/apps/books/render/RenderPosition;I)V

    return-object v0
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const-string v4, ", "

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/google/android/apps/books/render/RenderPosition;->hasValidPosition()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/google/android/apps/books/render/RenderPosition;->position:Lcom/google/android/apps/books/common/Position;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/books/render/RenderPosition;->hasValidIndices()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    const-string v2, "c="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/apps/books/render/RenderPosition;->chapterIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v2, "p="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/apps/books/render/RenderPosition;->pageIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :cond_1
    iget v2, p0, Lcom/google/android/apps/books/render/RenderPosition;->pageOffset:I

    if-eqz v2, :cond_2

    .line 108
    const-string v2, "o="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/apps/books/render/RenderPosition;->pageOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 112
    .local v1, length:I
    if-le v1, v5, :cond_3

    .line 113
    sub-int v2, v1, v5

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 115
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "[position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/render/RenderPosition;->position:Lcom/google/android/apps/books/common/Position;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, ", chapterIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/books/render/RenderPosition;->chapterIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    const-string v1, ", pageIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/books/render/RenderPosition;->pageIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    const-string v1, ", pageOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/books/render/RenderPosition;->pageOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    iget-object v1, p0, Lcom/google/android/apps/books/render/RenderPosition;->highlight:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 92
    const-string v1, ", highlight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/render/RenderPosition;->highlight:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :cond_0
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
