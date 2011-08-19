.class public final Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;
.super Ljava/lang/Object;
.source "HttpHeaders.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final HEADER_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final alternatingKeysAndValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private statusLine:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    new-instance v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders$1;

    invoke-direct {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders$1;-><init>()V

    sput-object v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->HEADER_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->alternatingKeysAndValues:Ljava/util/List;

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;)V
    .registers 4
    .parameter "copyFrom"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->alternatingKeysAndValues:Ljava/util/List;

    .line 55
    iget-object v0, p1, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->statusLine:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->statusLine:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->alternatingKeysAndValues:Ljava/util/List;

    iget-object v1, p1, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->alternatingKeysAndValues:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 57
    return-void
.end method

.method public static fromMultimap(Ljava/util/Map;)Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v3, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    invoke-direct {v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;-><init>()V

    .line 200
    .local v3, result:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .local v1, i$:Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 201
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 202
    .local v2, key:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 203
    .local v4, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_2b

    .line 204
    invoke-virtual {v3, v2, v4}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->addAll(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_d

    .line 205
    :cond_2b
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    .line 206
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v3, p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->setStatusLine(Ljava/lang/String;)V

    goto :goto_d

    .line 209
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_41
    return-object v3
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "key"
    .parameter "value"

    .prologue
    .line 71
    if-nez p1, :cond_a

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_a
    if-nez p2, :cond_2d

    .line 80
    invoke-static {}, Ljava/util/logging/Logger;->getAnonymousLogger()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring HTTP header field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because its value is null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 86
    :goto_2c
    return-void

    .line 84
    :cond_2d
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->alternatingKeysAndValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->alternatingKeysAndValues:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c
.end method

.method public addAll(Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p2, headers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    .local v0, header:Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 101
    .end local v0           #header:Ljava/lang/String;
    :cond_14
    return-void
.end method

.method public addIfAbsent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    .line 105
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_9
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "key"

    .prologue
    .line 151
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->alternatingKeysAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_9
    if-ltz v0, :cond_28

    .line 152
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->alternatingKeysAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 153
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->alternatingKeysAndValues:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v1, p0

    .line 156
    :goto_24
    return-object v1

    .line 151
    .restart local p0
    :cond_25
    add-int/lit8 v0, v0, -0x2

    goto :goto_9

    .line 156
    :cond_28
    const/4 v1, 0x0

    goto :goto_24
.end method

.method public getKey(I)Ljava/lang/String;
    .registers 4
    .parameter "index"

    .prologue
    .line 129
    mul-int/lit8 v0, p1, 0x2

    .line 130
    .local v0, keyIndex:I
    if-ltz v0, :cond_c

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->alternatingKeysAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_e

    .line 131
    :cond_c
    const/4 v1, 0x0

    .line 133
    .end local p0
    :goto_d
    return-object v1

    .restart local p0
    :cond_e
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->alternatingKeysAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v1, p0

    goto :goto_d
.end method

.method public getStatusLine()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->statusLine:Ljava/lang/String;

    return-object v0
.end method

.method public getValue(I)Ljava/lang/String;
    .registers 4
    .parameter "index"

    .prologue
    .line 140
    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v0, v1, 0x1

    .line 141
    .local v0, valueIndex:I
    if-ltz v0, :cond_e

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->alternatingKeysAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_10

    .line 142
    :cond_e
    const/4 v1, 0x0

    .line 144
    .end local p0
    :goto_f
    return-object v1

    .restart local p0
    :cond_10
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->alternatingKeysAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v1, p0

    goto :goto_f
.end method

.method public length()I
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->alternatingKeysAndValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public removeAll(Ljava/lang/String;)V
    .registers 4
    .parameter "key"

    .prologue
    .line 89
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->alternatingKeysAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 90
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->alternatingKeysAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 91
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->alternatingKeysAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 92
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->alternatingKeysAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 89
    :cond_21
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 95
    :cond_24
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->removeAll(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public setStatusLine(Ljava/lang/String;)V
    .registers 2
    .parameter "statusLine"

    .prologue
    .line 60
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->statusLine:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public toHeaderString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 161
    .local v1, result:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->statusLine:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const/4 v0, 0x0

    .local v0, i:I
    :goto_13
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->alternatingKeysAndValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_43

    .line 163
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->alternatingKeysAndValues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->alternatingKeysAndValues:Ljava/util/List;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    add-int/lit8 v0, v0, 0x2

    goto :goto_13

    .line 166
    :cond_43
    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toMultimap()Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 175
    new-instance v4, Ljava/util/TreeMap;

    sget-object v6, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->HEADER_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v4, v6}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 176
    .local v4, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->alternatingKeysAndValues:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_3f

    .line 177
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->alternatingKeysAndValues:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 178
    .local v2, key:Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->alternatingKeysAndValues:Ljava/util/List;

    add-int/lit8 v7, v1, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 180
    .local v5, value:Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v0, allValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 182
    .local v3, otherValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_32

    .line 183
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 185
    :cond_32
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v4, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    add-int/lit8 v1, v1, 0x2

    goto :goto_8

    .line 188
    .end local v0           #allValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #otherValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #value:Ljava/lang/String;
    :cond_3f
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->statusLine:Ljava/lang/String;

    if-eqz v6, :cond_51

    .line 189
    const/4 v6, 0x0

    iget-object v7, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->statusLine:Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :cond_51
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    return-object v6
.end method
