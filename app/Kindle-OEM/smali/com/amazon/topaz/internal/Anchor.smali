.class public final Lcom/amazon/topaz/internal/Anchor;
.super Ljava/lang/Object;
.source "Anchor.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final ZERO:Lcom/amazon/topaz/internal/Anchor;


# instance fields
.field public final id:I

.field public final page:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    new-instance v0, Lcom/amazon/topaz/internal/Anchor;

    invoke-direct {v0, v1, v1}, Lcom/amazon/topaz/internal/Anchor;-><init>(II)V

    sput-object v0, Lcom/amazon/topaz/internal/Anchor;->ZERO:Lcom/amazon/topaz/internal/Anchor;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "page"
    .parameter "id"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/amazon/topaz/internal/Anchor;->page:I

    .line 36
    iput p2, p0, Lcom/amazon/topaz/internal/Anchor;->id:I

    .line 37
    return-void
.end method


# virtual methods
.method public compareTo(II)I
    .locals 4
    .parameter "page"
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 84
    iget v0, p0, Lcom/amazon/topaz/internal/Anchor;->id:I

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 86
    iget v0, p0, Lcom/amazon/topaz/internal/Anchor;->id:I

    if-ge v0, p2, :cond_0

    move v0, v1

    .line 111
    :goto_0
    return v0

    .line 90
    :cond_0
    iget v0, p0, Lcom/amazon/topaz/internal/Anchor;->id:I

    if-le v0, p2, :cond_1

    move v0, v3

    .line 92
    goto :goto_0

    :cond_1
    move v0, v2

    .line 96
    goto :goto_0

    .line 101
    :cond_2
    iget v0, p0, Lcom/amazon/topaz/internal/Anchor;->page:I

    if-ge v0, p1, :cond_3

    move v0, v1

    .line 103
    goto :goto_0

    .line 105
    :cond_3
    iget v0, p0, Lcom/amazon/topaz/internal/Anchor;->page:I

    if-le v0, p1, :cond_4

    move v0, v3

    .line 107
    goto :goto_0

    :cond_4
    move v0, v2

    .line 111
    goto :goto_0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 4
    .parameter "a"

    .prologue
    .line 118
    if-nez p1, :cond_0

    .line 120
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 123
    :cond_0
    instance-of v2, p1, Lcom/amazon/topaz/internal/Anchor;

    if-nez v2, :cond_1

    .line 125
    new-instance v2, Ljava/lang/ClassCastException;

    invoke-direct {v2}, Ljava/lang/ClassCastException;-><init>()V

    throw v2

    .line 128
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/amazon/topaz/internal/Anchor;

    move-object v1, v0

    .line 129
    .local v1, other:Lcom/amazon/topaz/internal/Anchor;
    iget v2, v1, Lcom/amazon/topaz/internal/Anchor;->page:I

    iget v3, v1, Lcom/amazon/topaz/internal/Anchor;->id:I

    invoke-virtual {p0, v2, v3}, Lcom/amazon/topaz/internal/Anchor;->compareTo(II)I

    move-result v2

    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 59
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 79
    :goto_0
    return v2

    .line 63
    :cond_0
    if-nez p1, :cond_1

    move v2, v4

    .line 65
    goto :goto_0

    .line 67
    :cond_1
    instance-of v2, p1, Lcom/amazon/topaz/internal/Anchor;

    if-nez v2, :cond_2

    move v2, v4

    .line 69
    goto :goto_0

    .line 71
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/amazon/topaz/internal/Anchor;

    move-object v1, v0

    .line 74
    .local v1, other:Lcom/amazon/topaz/internal/Anchor;
    iget v2, p0, Lcom/amazon/topaz/internal/Anchor;->id:I

    if-eqz v2, :cond_4

    iget v2, v1, Lcom/amazon/topaz/internal/Anchor;->id:I

    if-eqz v2, :cond_4

    .line 75
    iget v2, p0, Lcom/amazon/topaz/internal/Anchor;->id:I

    iget v3, v1, Lcom/amazon/topaz/internal/Anchor;->id:I

    if-ne v2, v3, :cond_3

    move v2, v5

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_0

    .line 79
    :cond_4
    iget v2, p0, Lcom/amazon/topaz/internal/Anchor;->page:I

    iget v3, v1, Lcom/amazon/topaz/internal/Anchor;->page:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/amazon/topaz/internal/Anchor;->id:I

    iget v3, v1, Lcom/amazon/topaz/internal/Anchor;->id:I

    if-ne v2, v3, :cond_5

    move v2, v5

    goto :goto_0

    :cond_5
    move v2, v4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 44
    const/4 v0, 0x1

    .line 46
    mul-int/lit8 v0, v0, 0x1f

    iget v0, p0, Lcom/amazon/topaz/internal/Anchor;->id:I

    add-int/lit8 v0, v0, 0x1f

    .line 47
    iget v1, p0, Lcom/amazon/topaz/internal/Anchor;->id:I

    if-nez v1, :cond_0

    .line 49
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/amazon/topaz/internal/Anchor;->page:I

    add-int/2addr v0, v1

    .line 51
    :cond_0
    return v0
.end method
