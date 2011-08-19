.class Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;
.super Ljava/lang/Object;
.source "ChunkedIntArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/ChunkedIntArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChunksVector"
.end annotation


# instance fields
.field final BLOCKSIZE:I

.field m_map:[[I

.field m_mapSize:I

.field pos:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/ChunkedIntArray;


# direct methods
.method constructor <init>(Lorg/apache/xml/dtm/ref/ChunkedIntArray;)V
    .registers 4
    .parameter

    .prologue
    const/16 v1, 0x40

    .line 276
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->this$0:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput v1, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->BLOCKSIZE:I

    .line 271
    new-array v0, v1, [[I

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->m_map:[[I

    .line 272
    iput v1, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->m_mapSize:I

    .line 273
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->pos:I

    .line 277
    return-void
.end method


# virtual methods
.method addElement([I)V
    .registers 7
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    .line 286
    iget v2, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->pos:I

    iget v3, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->m_mapSize:I

    if-lt v2, v3, :cond_21

    .line 288
    iget v1, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->m_mapSize:I

    .line 289
    .local v1, orgMapSize:I
    :goto_9
    iget v2, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->pos:I

    iget v3, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->m_mapSize:I

    if-lt v2, v3, :cond_16

    .line 290
    iget v2, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->m_mapSize:I

    add-int/lit8 v2, v2, 0x40

    iput v2, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->m_mapSize:I

    goto :goto_9

    .line 291
    :cond_16
    iget v2, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->m_mapSize:I

    new-array v0, v2, [[I

    .line 292
    .local v0, newMap:[[I
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->m_map:[[I

    invoke-static {v2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->m_map:[[I

    .line 297
    .end local v0           #newMap:[[I
    .end local v1           #orgMapSize:I
    :cond_21
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->m_map:[[I

    iget v3, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->pos:I

    aput-object p1, v2, v3

    .line 298
    iget v2, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->pos:I

    .line 299
    return-void
.end method

.method final elementAt(I)[I
    .registers 3
    .parameter "pos"

    .prologue
    .line 303
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->m_map:[[I

    aget-object v0, v0, p1

    return-object v0
.end method

.method final size()I
    .registers 2

    .prologue
    .line 281
    iget v0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->pos:I

    return v0
.end method
