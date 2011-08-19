.class public Lorg/apache/xpath/compiler/OpMapVector;
.super Ljava/lang/Object;
.source "OpMapVector.java"


# instance fields
.field protected m_blocksize:I

.field protected m_lengthPos:I

.field protected m_map:[I

.field protected m_mapSize:I


# direct methods
.method public constructor <init>(III)V
    .registers 5
    .parameter "blocksize"
    .parameter "increaseSize"
    .parameter "lengthPos"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_lengthPos:I

    .line 53
    iput p2, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_blocksize:I

    .line 54
    iput p1, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_mapSize:I

    .line 55
    iput p3, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_lengthPos:I

    .line 56
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_map:[I

    .line 57
    return-void
.end method


# virtual methods
.method public final elementAt(I)I
    .registers 3
    .parameter "i"

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_map:[I

    aget v0, v0, p1

    return v0
.end method

.method public final setElementAt(II)V
    .registers 8
    .parameter "value"
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 83
    iget v2, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_mapSize:I

    if-lt p2, v2, :cond_19

    .line 85
    iget v1, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_mapSize:I

    .line 87
    .local v1, oldSize:I
    iget v2, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_mapSize:I

    iget v3, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_blocksize:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_mapSize:I

    .line 89
    iget v2, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_mapSize:I

    new-array v0, v2, [I

    .line 91
    .local v0, newMap:[I
    iget-object v2, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_map:[I

    invoke-static {v2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    iput-object v0, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_map:[I

    .line 96
    .end local v0           #newMap:[I
    .end local v1           #oldSize:I
    :cond_19
    iget-object v2, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_map:[I

    aput p1, v2, p2

    .line 97
    return-void
.end method

.method public final setToSize(I)V
    .registers 7
    .parameter "size"

    .prologue
    const/4 v4, 0x0

    .line 107
    new-array v0, p1, [I

    .line 109
    .local v0, newMap:[I
    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_map:[I

    iget-object v2, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_map:[I

    iget v3, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_lengthPos:I

    aget v2, v2, v3

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    iput p1, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_mapSize:I

    .line 112
    iput-object v0, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_map:[I

    .line 114
    return-void
.end method
