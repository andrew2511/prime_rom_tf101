.class public Lorg/apache/xml/utils/StringVector;
.super Ljava/lang/Object;
.source "StringVector.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x4552a3bdbda168c4L


# instance fields
.field protected m_blocksize:I

.field protected m_firstFree:I

.field protected m_map:[Ljava/lang/String;

.field protected m_mapSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    .line 51
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/xml/utils/StringVector;->m_blocksize:I

    .line 52
    iget v0, p0, Lorg/apache/xml/utils/StringVector;->m_blocksize:I

    iput v0, p0, Lorg/apache/xml/utils/StringVector;->m_mapSize:I

    .line 53
    iget v0, p0, Lorg/apache/xml/utils/StringVector;->m_blocksize:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "blocksize"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    .line 64
    iput p1, p0, Lorg/apache/xml/utils/StringVector;->m_blocksize:I

    .line 65
    iput p1, p0, Lorg/apache/xml/utils/StringVector;->m_mapSize:I

    .line 66
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    .line 67
    return-void
.end method


# virtual methods
.method public final addElement(Ljava/lang/String;)V
    .registers 6
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 97
    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_mapSize:I

    if-lt v1, v2, :cond_1f

    .line 99
    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_mapSize:I

    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_blocksize:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xml/utils/StringVector;->m_mapSize:I

    .line 101
    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_mapSize:I

    new-array v0, v1, [Ljava/lang/String;

    .line 103
    .local v0, newMap:[Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iput-object v0, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    .line 108
    .end local v0           #newMap:[Ljava/lang/String;
    :cond_1f
    iget-object v1, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    aput-object p1, v1, v2

    .line 110
    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    .line 111
    return-void
.end method

.method public final contains(Ljava/lang/String;)Z
    .registers 5
    .parameter "s"

    .prologue
    const/4 v2, 0x0

    .line 135
    if-nez p1, :cond_5

    move v1, v2

    .line 144
    :goto_4
    return v1

    .line 138
    :cond_5
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    if-ge v0, v1, :cond_19

    .line 140
    iget-object v1, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 141
    const/4 v1, 0x1

    goto :goto_4

    .line 138
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_19
    move v1, v2

    .line 144
    goto :goto_4
.end method

.method public final containsIgnoreCase(Ljava/lang/String;)Z
    .registers 5
    .parameter "s"

    .prologue
    const/4 v2, 0x0

    .line 157
    if-nez p1, :cond_5

    move v1, v2

    .line 166
    :goto_4
    return v1

    .line 160
    :cond_5
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    if-ge v0, v1, :cond_19

    .line 162
    iget-object v1, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 163
    const/4 v1, 0x1

    goto :goto_4

    .line 160
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_19
    move v1, v2

    .line 166
    goto :goto_4
.end method

.method public final elementAt(I)Ljava/lang/String;
    .registers 3
    .parameter "i"

    .prologue
    .line 122
    iget-object v0, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 76
    iget v0, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    return v0
.end method

.method public final peek()Ljava/lang/String;
    .registers 4

    .prologue
    .line 221
    iget v0, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    if-gtz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    goto :goto_5
.end method

.method public final pop()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 202
    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    if-gtz v1, :cond_7

    move-object v1, v3

    .line 211
    :goto_6
    return-object v1

    .line 205
    :cond_7
    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    .line 207
    iget-object v1, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    aget-object v0, v1, v2

    .line 209
    .local v0, s:Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    aput-object v3, v1, v2

    move-object v1, v0

    .line 211
    goto :goto_6
.end method

.method public final push(Ljava/lang/String;)V
    .registers 6
    .parameter "s"

    .prologue
    const/4 v3, 0x0

    .line 177
    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_mapSize:I

    if-lt v1, v2, :cond_1f

    .line 179
    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_mapSize:I

    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_blocksize:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xml/utils/StringVector;->m_mapSize:I

    .line 181
    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_mapSize:I

    new-array v0, v1, [Ljava/lang/String;

    .line 183
    .local v0, newMap:[Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    iput-object v0, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    .line 188
    .end local v0           #newMap:[Ljava/lang/String;
    :cond_1f
    iget-object v1, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    aput-object p1, v1, v2

    .line 190
    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    .line 191
    return-void
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 86
    iget v0, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    return v0
.end method
