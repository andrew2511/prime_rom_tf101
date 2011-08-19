.class public final Lorg/apache/xml/utils/BoolStack;
.super Ljava/lang/Object;
.source "BoolStack.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private m_allocatedSize:I

.field private m_index:I

.field private m_values:[Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/xml/utils/BoolStack;-><init>(I)V

    .line 47
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "size"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lorg/apache/xml/utils/BoolStack;->m_allocatedSize:I

    .line 58
    new-array v0, p1, [Z

    iput-object v0, p0, Lorg/apache/xml/utils/BoolStack;->m_values:[Z

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    .line 60
    return-void
.end method

.method private grow()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 187
    iget v1, p0, Lorg/apache/xml/utils/BoolStack;->m_allocatedSize:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/apache/xml/utils/BoolStack;->m_allocatedSize:I

    .line 189
    iget v1, p0, Lorg/apache/xml/utils/BoolStack;->m_allocatedSize:I

    new-array v0, v1, [Z

    .line 191
    .local v0, newVector:[Z
    iget-object v1, p0, Lorg/apache/xml/utils/BoolStack;->m_values:[Z

    iget v2, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    iput-object v0, p0, Lorg/apache/xml/utils/BoolStack;->m_values:[Z

    .line 194
    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 2

    .prologue
    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    .line 79
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 199
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 3

    .prologue
    .line 177
    iget v0, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final peek()Z
    .registers 3

    .prologue
    .line 144
    iget-object v0, p0, Lorg/apache/xml/utils/BoolStack;->m_values:[Z

    iget v1, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    aget-boolean v0, v0, v1

    return v0
.end method

.method public final peekOrFalse()Z
    .registers 3

    .prologue
    .line 155
    iget v0, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_c

    iget-object v0, p0, Lorg/apache/xml/utils/BoolStack;->m_values:[Z

    iget v1, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    aget-boolean v0, v0, v1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final peekOrTrue()Z
    .registers 3

    .prologue
    .line 166
    iget v0, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_c

    iget-object v0, p0, Lorg/apache/xml/utils/BoolStack;->m_values:[Z

    iget v1, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    aget-boolean v0, v0, v1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public final pop()Z
    .registers 4

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/xml/utils/BoolStack;->m_values:[Z

    iget v1, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    const/4 v2, 0x1

    sub-int v2, v1, v2

    iput v2, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    aget-boolean v0, v0, v1

    return v0
.end method

.method public final popAndTop()Z
    .registers 3

    .prologue
    .line 119
    iget v0, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    .line 121
    iget v0, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    if-ltz v0, :cond_11

    iget-object v0, p0, Lorg/apache/xml/utils/BoolStack;->m_values:[Z

    iget v1, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    aget-boolean v0, v0, v1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public final push(Z)Z
    .registers 5
    .parameter "val"

    .prologue
    .line 91
    iget v0, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    iget v1, p0, Lorg/apache/xml/utils/BoolStack;->m_allocatedSize:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_b

    .line 92
    invoke-direct {p0}, Lorg/apache/xml/utils/BoolStack;->grow()V

    .line 94
    :cond_b
    iget-object v0, p0, Lorg/apache/xml/utils/BoolStack;->m_values:[Z

    iget v1, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    aput-boolean p1, v0, v1

    return p1
.end method

.method public final setTop(Z)V
    .registers 4
    .parameter "b"

    .prologue
    .line 132
    iget-object v0, p0, Lorg/apache/xml/utils/BoolStack;->m_values:[Z

    iget v1, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    aput-boolean p1, v0, v1

    .line 133
    return-void
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 69
    iget v0, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
