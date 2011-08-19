.class public Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;
.super Ljava/lang/Object;
.source "ConcurrentReaderHashMap.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/dom4j/tree/ConcurrentReaderHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HashIterator"
.end annotation


# instance fields
.field protected currentKey:Ljava/lang/Object;

.field protected currentValue:Ljava/lang/Object;

.field protected entry:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

.field protected index:I

.field protected lastReturned:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

.field protected final tab:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

.field final this$0:Lorg/dom4j/tree/ConcurrentReaderHashMap;


# direct methods
.method protected constructor <init>(Lorg/dom4j/tree/ConcurrentReaderHashMap;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->this$0:Lorg/dom4j/tree/ConcurrentReaderHashMap;

    .line 1123
    iput-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->entry:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 1129
    iput-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->lastReturned:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 1132
    invoke-virtual {p1}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->getTableForReading()[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->tab:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 1133
    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->tab:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->index:I

    .line 1134
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .prologue
    .line 1137
    invoke-virtual {p0}, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1154
    :cond_0
    iget-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->entry:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    if-eqz v1, :cond_2

    .line 1155
    iget-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->entry:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    iget-object v0, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    .line 1156
    .local v0, v:Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 1157
    iget-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->entry:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    iget-object v1, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->key:Ljava/lang/Object;

    iput-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    .line 1158
    iput-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->currentValue:Ljava/lang/Object;

    move v1, v4

    .line 1169
    .end local v0           #v:Ljava/lang/Object;
    :goto_0
    return v1

    .line 1161
    .restart local v0       #v:Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->entry:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    iget-object v1, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    iput-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->entry:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 1164
    .end local v0           #v:Ljava/lang/Object;
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->entry:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    if-nez v1, :cond_3

    iget v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->index:I

    if-gez v1, :cond_4

    .line 1167
    :cond_3
    iget-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->entry:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    if-nez v1, :cond_0

    .line 1168
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->currentValue:Ljava/lang/Object;

    iput-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    .line 1169
    const/4 v1, 0x0

    goto :goto_0

    .line 1165
    :cond_4
    iget-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->tab:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    iget v2, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->index:I

    sub-int v3, v2, v4

    iput v3, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->index:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->entry:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    goto :goto_1
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1179
    iget-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1180
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1182
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->returnValueOfNext()Ljava/lang/Object;

    move-result-object v0

    .line 1183
    .local v0, result:Ljava/lang/Object;
    iget-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->entry:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    iput-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->lastReturned:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 1184
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->currentValue:Ljava/lang/Object;

    iput-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    .line 1185
    iget-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->entry:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    iget-object v1, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    iput-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->entry:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 1186
    return-object v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1141
    invoke-virtual {p0}, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 1190
    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->lastReturned:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    if-nez v0, :cond_0

    .line 1191
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1192
    :cond_0
    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->this$0:Lorg/dom4j/tree/ConcurrentReaderHashMap;

    iget-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->lastReturned:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    iget-object v1, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->lastReturned:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 1194
    return-void
.end method

.method protected returnValueOfNext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1175
    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->entry:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    return-object v0
.end method
