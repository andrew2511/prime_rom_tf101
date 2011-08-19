.class public Lorg/apache/xml/utils/ObjectVector;
.super Ljava/lang/Object;
.source "ObjectVector.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected m_blocksize:I

.field protected m_firstFree:I

.field protected m_map:[Ljava/lang/Object;

.field protected m_mapSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    .line 55
    const/16 v0, 0x20

    iput v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_blocksize:I

    .line 56
    iget v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_blocksize:I

    iput v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    .line 57
    iget v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_blocksize:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "blocksize"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    .line 68
    iput p1, p0, Lorg/apache/xml/utils/ObjectVector;->m_blocksize:I

    .line 69
    iput p1, p0, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    .line 70
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .parameter "blocksize"
    .parameter "increaseSize"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    .line 81
    iput p2, p0, Lorg/apache/xml/utils/ObjectVector;->m_blocksize:I

    .line 82
    iput p1, p0, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    .line 83
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    .line 84
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/utils/ObjectVector;)V
    .registers 6
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v3, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    .line 93
    iget v0, p1, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    .line 94
    iget v0, p1, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    iput v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    .line 95
    iget v0, p1, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    iput v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    .line 96
    iget v0, p1, Lorg/apache/xml/utils/ObjectVector;->m_blocksize:I

    iput v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_blocksize:I

    .line 97
    iget-object v0, p1, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    return-void
.end method


# virtual methods
.method public final addElement(Ljava/lang/Object;)V
    .registers 6
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 129
    iget v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    if-lt v1, v2, :cond_1f

    .line 131
    iget v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    iget v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_blocksize:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    .line 133
    iget v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    new-array v0, v1, [Ljava/lang/Object;

    .line 135
    .local v0, newMap:[Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    iput-object v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    .line 140
    .end local v0           #newMap:[Ljava/lang/Object;
    :cond_1f
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    aput-object p1, v1, v2

    .line 142
    iget v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    .line 143
    return-void
.end method

.method public final addElements(I)V
    .registers 6
    .parameter "numberOfElements"

    .prologue
    const/4 v3, 0x0

    .line 179
    iget v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    add-int/2addr v1, p1

    iget v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    if-lt v1, v2, :cond_1f

    .line 181
    iget v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    iget v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_blocksize:I

    add-int/2addr v2, p1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    .line 183
    iget v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    new-array v0, v1, [Ljava/lang/Object;

    .line 185
    .local v0, newMap:[Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    iput-object v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    .line 190
    .end local v0           #newMap:[Ljava/lang/Object;
    :cond_1f
    iget v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    .line 191
    return-void
.end method

.method public final addElements(Ljava/lang/Object;I)V
    .registers 8
    .parameter "value"
    .parameter "numberOfElements"

    .prologue
    const/4 v4, 0x0

    .line 153
    iget v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    add-int/2addr v2, p2

    iget v3, p0, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    if-lt v2, v3, :cond_1f

    .line 155
    iget v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    iget v3, p0, Lorg/apache/xml/utils/ObjectVector;->m_blocksize:I

    add-int/2addr v3, p2

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    .line 157
    iget v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    new-array v1, v2, [Ljava/lang/Object;

    .line 159
    .local v1, newMap:[Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    iget v3, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    iput-object v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    .line 164
    .end local v1           #newMap:[Ljava/lang/Object;
    :cond_1f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_20
    if-ge v0, p2, :cond_31

    .line 166
    iget-object v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    iget v3, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    aput-object p1, v2, v3

    .line 167
    iget v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 169
    :cond_31
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
    .line 429
    new-instance v0, Lorg/apache/xml/utils/ObjectVector;

    invoke-direct {v0, p0}, Lorg/apache/xml/utils/ObjectVector;-><init>(Lorg/apache/xml/utils/ObjectVector;)V

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 4
    .parameter "s"

    .prologue
    .line 329
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    if-ge v0, v1, :cond_10

    .line 331
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_d

    .line 332
    const/4 v1, 0x1

    .line 335
    :goto_c
    return v1

    .line 329
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 335
    :cond_10
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public final elementAt(I)Ljava/lang/Object;
    .registers 3
    .parameter "i"

    .prologue
    .line 316
    iget-object v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .registers 4
    .parameter "elem"

    .prologue
    .line 374
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    if-ge v0, v1, :cond_10

    .line 376
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_d

    move v1, v0

    .line 380
    :goto_c
    return v1

    .line 374
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 380
    :cond_10
    const/high16 v1, -0x8000

    goto :goto_c
.end method

.method public final indexOf(Ljava/lang/Object;I)I
    .registers 5
    .parameter "elem"
    .parameter "index"

    .prologue
    .line 352
    move v0, p2

    .local v0, i:I
    :goto_1
    iget v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    if-ge v0, v1, :cond_10

    .line 354
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_d

    move v1, v0

    .line 358
    :goto_c
    return v1

    .line 352
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 358
    :cond_10
    const/high16 v1, -0x8000

    goto :goto_c
.end method

.method public final insertElementAt(Ljava/lang/Object;I)V
    .registers 8
    .parameter "value"
    .parameter "at"

    .prologue
    const/4 v3, 0x0

    .line 206
    iget v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    if-lt v1, v2, :cond_1f

    .line 208
    iget v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    iget v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_blocksize:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    .line 210
    iget v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    new-array v0, v1, [Ljava/lang/Object;

    .line 212
    .local v0, newMap:[Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    iput-object v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    .line 217
    .end local v0           #newMap:[Ljava/lang/Object;
    :cond_1f
    iget v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-gt p2, v1, :cond_31

    .line 219
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    add-int/lit8 v3, p2, 0x1

    iget v4, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    sub-int/2addr v4, p2

    invoke-static {v1, p2, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    :cond_31
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    aput-object p1, v1, p2

    .line 224
    iget v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    .line 225
    return-void
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .registers 5
    .parameter "elem"

    .prologue
    .line 396
    iget v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_5
    if-ltz v0, :cond_12

    .line 398
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_f

    move v1, v0

    .line 402
    :goto_e
    return v1

    .line 396
    :cond_f
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 402
    :cond_12
    const/high16 v1, -0x8000

    goto :goto_e
.end method

.method public final removeAllElements()V
    .registers 4

    .prologue
    .line 233
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    if-ge v0, v1, :cond_d

    .line 235
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 238
    :cond_d
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    .line 239
    return-void
.end method

.method public final removeElement(Ljava/lang/Object;)Z
    .registers 9
    .parameter "s"

    .prologue
    const/4 v6, 0x1

    .line 255
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    if-ge v0, v1, :cond_30

    .line 257
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_2d

    .line 259
    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    if-ge v1, v2, :cond_27

    .line 260
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    sub-int v4, v0, v6

    iget v5, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    sub-int/2addr v5, v0

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    :goto_20
    iget v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    sub-int/2addr v1, v6

    iput v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    move v1, v6

    .line 270
    :goto_26
    return v1

    .line 262
    :cond_27
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    goto :goto_20

    .line 255
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 270
    :cond_30
    const/4 v1, 0x0

    goto :goto_26
.end method

.method public final removeElementAt(I)V
    .registers 6
    .parameter "i"

    .prologue
    .line 284
    iget v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    if-le p1, v0, :cond_16

    .line 285
    iget-object v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    iget v3, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    :goto_f
    iget v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    .line 290
    return-void

    .line 287
    :cond_16
    iget-object v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    goto :goto_f
.end method

.method public final setElementAt(Ljava/lang/Object;I)V
    .registers 4
    .parameter "value"
    .parameter "index"

    .prologue
    .line 304
    iget-object v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    aput-object p1, v0, p2

    .line 305
    return-void
.end method

.method public final setSize(I)V
    .registers 2
    .parameter "sz"

    .prologue
    .line 117
    iput p1, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    .line 118
    return-void
.end method

.method public final setToSize(I)V
    .registers 6
    .parameter "size"

    .prologue
    const/4 v3, 0x0

    .line 412
    new-array v0, p1, [Ljava/lang/Object;

    .line 414
    .local v0, newMap:[Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 415
    iput p1, p0, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    .line 417
    iput-object v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    .line 419
    return-void
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 107
    iget v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    return v0
.end method
