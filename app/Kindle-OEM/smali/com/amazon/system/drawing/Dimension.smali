.class public Lcom/amazon/system/drawing/Dimension;
.super Ljava/lang/Object;
.source "Dimension.java"


# static fields
.field public static final UNLIMITED:Lcom/amazon/system/drawing/Dimension;


# instance fields
.field public height:I

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const v1, 0x7fffffff

    .line 20
    new-instance v0, Lcom/amazon/system/drawing/Dimension;

    invoke-direct {v0, v1, v1}, Lcom/amazon/system/drawing/Dimension;-><init>(II)V

    sput-object v0, Lcom/amazon/system/drawing/Dimension;->UNLIMITED:Lcom/amazon/system/drawing/Dimension;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v0, p0, Lcom/amazon/system/drawing/Dimension;->width:I

    .line 40
    iput v0, p0, Lcom/amazon/system/drawing/Dimension;->height:I

    .line 41
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lcom/amazon/system/drawing/Dimension;->width:I

    .line 51
    iput p2, p0, Lcom/amazon/system/drawing/Dimension;->height:I

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/amazon/system/drawing/Dimension;)V
    .locals 1
    .parameter "dim"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iget v0, p1, Lcom/amazon/system/drawing/Dimension;->width:I

    iput v0, p0, Lcom/amazon/system/drawing/Dimension;->width:I

    .line 64
    iget v0, p1, Lcom/amazon/system/drawing/Dimension;->height:I

    iput v0, p0, Lcom/amazon/system/drawing/Dimension;->height:I

    .line 66
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 85
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 107
    :goto_0
    return v2

    .line 89
    :cond_0
    if-nez p1, :cond_1

    move v2, v4

    .line 91
    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    move v2, v4

    .line 95
    goto :goto_0

    .line 97
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/amazon/system/drawing/Dimension;

    move-object v1, v0

    .line 98
    .local v1, other:Lcom/amazon/system/drawing/Dimension;
    iget v2, p0, Lcom/amazon/system/drawing/Dimension;->height:I

    iget v3, v1, Lcom/amazon/system/drawing/Dimension;->height:I

    if-eq v2, v3, :cond_3

    move v2, v4

    .line 100
    goto :goto_0

    .line 102
    :cond_3
    iget v2, p0, Lcom/amazon/system/drawing/Dimension;->width:I

    iget v3, v1, Lcom/amazon/system/drawing/Dimension;->width:I

    if-eq v2, v3, :cond_4

    move v2, v4

    .line 104
    goto :goto_0

    :cond_4
    move v2, v5

    .line 107
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 73
    const/4 v0, 0x1

    .line 75
    mul-int/lit8 v0, v0, 0x1f

    iget v0, p0, Lcom/amazon/system/drawing/Dimension;->height:I

    add-int/lit8 v0, v0, 0x1f

    .line 76
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/amazon/system/drawing/Dimension;->width:I

    add-int/2addr v0, v1

    .line 77
    return v0
.end method
