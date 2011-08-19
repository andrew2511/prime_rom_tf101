.class public final Ltwitter4j/FilterQuery;
.super Ljava/lang/Object;
.source "FilterQuery.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5fb19dc48ce2331L


# instance fields
.field private count:I

.field private follow:[I

.field private includeEntities:Z

.field private locations:[[D

.field private track:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v1, 0x0

    iput v1, p0, Ltwitter4j/FilterQuery;->count:I

    .line 52
    iput-object v0, p0, Ltwitter4j/FilterQuery;->follow:[I

    .line 53
    iput-object v0, p0, Ltwitter4j/FilterQuery;->track:[Ljava/lang/String;

    .line 54
    check-cast v0, [[D

    iput-object v0, p0, Ltwitter4j/FilterQuery;->locations:[[D

    .line 55
    return-void
.end method

.method public constructor <init>(I[I)V
    .locals 0
    .parameter "count"
    .parameter "follow"

    .prologue
    .line 71
    invoke-direct {p0}, Ltwitter4j/FilterQuery;-><init>()V

    .line 72
    iput p1, p0, Ltwitter4j/FilterQuery;->count:I

    .line 73
    iput-object p2, p0, Ltwitter4j/FilterQuery;->follow:[I

    .line 74
    return-void
.end method

.method public constructor <init>(I[I[Ljava/lang/String;)V
    .locals 0
    .parameter "count"
    .parameter "follow"
    .parameter "track"

    .prologue
    .line 82
    invoke-direct {p0}, Ltwitter4j/FilterQuery;-><init>()V

    .line 83
    iput p1, p0, Ltwitter4j/FilterQuery;->count:I

    .line 84
    iput-object p2, p0, Ltwitter4j/FilterQuery;->follow:[I

    .line 85
    iput-object p3, p0, Ltwitter4j/FilterQuery;->track:[Ljava/lang/String;

    .line 86
    return-void
.end method

.method public constructor <init>(I[I[Ljava/lang/String;[[D)V
    .locals 0
    .parameter "count"
    .parameter "follow"
    .parameter "track"
    .parameter "locations"

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput p1, p0, Ltwitter4j/FilterQuery;->count:I

    .line 97
    iput-object p2, p0, Ltwitter4j/FilterQuery;->follow:[I

    .line 98
    iput-object p3, p0, Ltwitter4j/FilterQuery;->track:[Ljava/lang/String;

    .line 99
    iput-object p4, p0, Ltwitter4j/FilterQuery;->locations:[[D

    .line 100
    return-void
.end method

.method public constructor <init>([I)V
    .locals 1
    .parameter "follow"

    .prologue
    .line 61
    invoke-direct {p0}, Ltwitter4j/FilterQuery;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Ltwitter4j/FilterQuery;->count:I

    .line 63
    iput-object p1, p0, Ltwitter4j/FilterQuery;->follow:[I

    .line 64
    return-void
.end method

.method private toLocationsString([[D)Ljava/lang/String;
    .locals 4
    .parameter "keywords"

    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x14

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 176
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, c:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    :cond_0
    aget-object v2, p1, v1

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 181
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    aget-object v2, p1, v1

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method asHttpParameterArray()[Ltwitter4j/internal/http/HttpParameter;
    .locals 5

    .prologue
    .line 151
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v1, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltwitter4j/internal/http/HttpParameter;>;"
    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "count"

    iget v4, p0, Ltwitter4j/FilterQuery;->count:I

    invoke-direct {v2, v3, v4}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v2, p0, Ltwitter4j/FilterQuery;->follow:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltwitter4j/FilterQuery;->follow:[I

    array-length v2, v2

    if-lez v2, :cond_0

    .line 155
    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "follow"

    iget-object v4, p0, Ltwitter4j/FilterQuery;->follow:[I

    invoke-static {v4}, Ltwitter4j/internal/util/StringUtil;->join([I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_0
    iget-object v2, p0, Ltwitter4j/FilterQuery;->track:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltwitter4j/FilterQuery;->track:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 159
    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "track"

    iget-object v4, p0, Ltwitter4j/FilterQuery;->track:[Ljava/lang/String;

    invoke-static {v4}, Ltwitter4j/internal/util/StringUtil;->join([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_1
    iget-object v2, p0, Ltwitter4j/FilterQuery;->locations:[[D

    if-eqz v2, :cond_2

    iget-object v2, p0, Ltwitter4j/FilterQuery;->locations:[[D

    array-length v2, v2

    if-lez v2, :cond_2

    .line 163
    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "locations"

    iget-object v4, p0, Ltwitter4j/FilterQuery;->locations:[[D

    invoke-direct {p0, v4}, Ltwitter4j/FilterQuery;->toLocationsString([[D)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_2
    iget-boolean v2, p0, Ltwitter4j/FilterQuery;->includeEntities:Z

    if-eqz v2, :cond_3

    .line 167
    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "include_entities"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Ltwitter4j/internal/http/HttpParameter;

    .line 171
    .local v0, paramArray:[Ltwitter4j/internal/http/HttpParameter;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ltwitter4j/internal/http/HttpParameter;

    return-object p0
.end method

.method public count(I)Ltwitter4j/FilterQuery;
    .locals 0
    .parameter "count"

    .prologue
    .line 108
    iput p1, p0, Ltwitter4j/FilterQuery;->count:I

    .line 109
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 189
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 198
    :goto_0
    return v2

    .line 190
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_1
    move v2, v4

    goto :goto_0

    .line 192
    :cond_2
    move-object v0, p1

    check-cast v0, Ltwitter4j/FilterQuery;

    move-object v1, v0

    .line 194
    .local v1, that:Ltwitter4j/FilterQuery;
    iget v2, p0, Ltwitter4j/FilterQuery;->count:I

    iget v3, v1, Ltwitter4j/FilterQuery;->count:I

    if-eq v2, v3, :cond_3

    move v2, v4

    goto :goto_0

    .line 195
    :cond_3
    iget-object v2, p0, Ltwitter4j/FilterQuery;->follow:[I

    iget-object v3, v1, Ltwitter4j/FilterQuery;->follow:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v4

    goto :goto_0

    .line 196
    :cond_4
    iget-object v2, p0, Ltwitter4j/FilterQuery;->track:[Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/FilterQuery;->track:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v4

    goto :goto_0

    :cond_5
    move v2, v5

    .line 198
    goto :goto_0
.end method

.method public follow([I)Ltwitter4j/FilterQuery;
    .locals 0
    .parameter "follow"

    .prologue
    .line 117
    iput-object p1, p0, Ltwitter4j/FilterQuery;->follow:[I

    .line 118
    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 203
    iget v0, p0, Ltwitter4j/FilterQuery;->count:I

    .line 204
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/FilterQuery;->follow:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltwitter4j/FilterQuery;->follow:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    :goto_0
    add-int v0, v1, v2

    .line 205
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/FilterQuery;->track:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltwitter4j/FilterQuery;->track:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    :goto_1
    add-int v0, v1, v2

    .line 206
    return v0

    :cond_0
    move v2, v3

    .line 204
    goto :goto_0

    :cond_1
    move v2, v3

    .line 205
    goto :goto_1
.end method

.method public locations([[D)Ltwitter4j/FilterQuery;
    .locals 0
    .parameter "locations"

    .prologue
    .line 135
    iput-object p1, p0, Ltwitter4j/FilterQuery;->locations:[[D

    .line 136
    return-object p0
.end method

.method public setIncludeEntities(Z)Ltwitter4j/FilterQuery;
    .locals 0
    .parameter "include"

    .prologue
    .line 146
    iput-boolean p1, p0, Ltwitter4j/FilterQuery;->includeEntities:Z

    .line 147
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 211
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "FilterQuery{count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/FilterQuery;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", follow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/FilterQuery;->follow:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", track="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/FilterQuery;->track:[Ljava/lang/String;

    if-nez v1, :cond_0

    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", locations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/FilterQuery;->locations:[[D

    if-nez v1, :cond_1

    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Ltwitter4j/FilterQuery;->track:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ltwitter4j/FilterQuery;->locations:[[D

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_1
.end method

.method public track([Ljava/lang/String;)Ltwitter4j/FilterQuery;
    .locals 0
    .parameter "track"

    .prologue
    .line 126
    iput-object p1, p0, Ltwitter4j/FilterQuery;->track:[Ljava/lang/String;

    .line 127
    return-object p0
.end method
