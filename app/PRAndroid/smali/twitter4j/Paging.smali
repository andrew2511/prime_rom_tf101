.class public final Ltwitter4j/Paging;
.super Ljava/lang/Object;
.source "Paging.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final COUNT:Ljava/lang/String; = "count"

.field private static NULL_PARAMETER_ARRAY:[Ltwitter4j/internal/http/HttpParameter; = null

.field private static NULL_PARAMETER_LIST:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltwitter4j/internal/http/HttpParameter;",
            ">;"
        }
    .end annotation
.end field

.field static final PER_PAGE:Ljava/lang/String; = "per_page"

.field static S:[C = null

.field static SMCP:[C = null

.field private static final serialVersionUID:J = -0x2d99b5ebea26203eL


# instance fields
.field private count:I

.field private maxId:J

.field private page:I

.field private sinceId:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/16 v1, 0x73

    aput-char v1, v0, v2

    sput-object v0, Ltwitter4j/Paging;->S:[C

    .line 53
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Ltwitter4j/Paging;->SMCP:[C

    .line 64
    new-array v0, v2, [Ltwitter4j/internal/http/HttpParameter;

    sput-object v0, Ltwitter4j/Paging;->NULL_PARAMETER_ARRAY:[Ltwitter4j/internal/http/HttpParameter;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Ltwitter4j/Paging;->NULL_PARAMETER_LIST:Ljava/util/List;

    return-void

    .line 53
    :array_0
    .array-data 0x2
        0x73t 0x0t
        0x6dt 0x0t
        0x63t 0x0t
        0x70t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, -0x1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v0, p0, Ltwitter4j/Paging;->page:I

    .line 45
    iput v0, p0, Ltwitter4j/Paging;->count:I

    .line 46
    iput-wide v1, p0, Ltwitter4j/Paging;->sinceId:J

    .line 47
    iput-wide v1, p0, Ltwitter4j/Paging;->maxId:J

    .line 140
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter "page"

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, -0x1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v0, p0, Ltwitter4j/Paging;->page:I

    .line 45
    iput v0, p0, Ltwitter4j/Paging;->count:I

    .line 46
    iput-wide v1, p0, Ltwitter4j/Paging;->sinceId:J

    .line 47
    iput-wide v1, p0, Ltwitter4j/Paging;->maxId:J

    .line 143
    invoke-virtual {p0, p1}, Ltwitter4j/Paging;->setPage(I)V

    .line 144
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "page"
    .parameter "count"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Ltwitter4j/Paging;-><init>(I)V

    .line 152
    invoke-virtual {p0, p2}, Ltwitter4j/Paging;->setCount(I)V

    .line 153
    return-void
.end method

.method public constructor <init>(IIJ)V
    .locals 0
    .parameter "page"
    .parameter "count"
    .parameter "sinceId"

    .prologue
    .line 161
    invoke-direct {p0, p1, p2}, Ltwitter4j/Paging;-><init>(II)V

    .line 162
    invoke-virtual {p0, p3, p4}, Ltwitter4j/Paging;->setSinceId(J)V

    .line 163
    return-void
.end method

.method public constructor <init>(IIJJ)V
    .locals 0
    .parameter "page"
    .parameter "count"
    .parameter "sinceId"
    .parameter "maxId"

    .prologue
    .line 166
    invoke-direct {p0, p1, p2, p3, p4}, Ltwitter4j/Paging;-><init>(IIJ)V

    .line 167
    invoke-virtual {p0, p5, p6}, Ltwitter4j/Paging;->setMaxId(J)V

    .line 168
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0
    .parameter "page"
    .parameter "sinceId"

    .prologue
    .line 156
    invoke-direct {p0, p1}, Ltwitter4j/Paging;-><init>(I)V

    .line 157
    invoke-virtual {p0, p2, p3}, Ltwitter4j/Paging;->setSinceId(J)V

    .line 158
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .parameter "sinceId"

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, -0x1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v0, p0, Ltwitter4j/Paging;->page:I

    .line 45
    iput v0, p0, Ltwitter4j/Paging;->count:I

    .line 46
    iput-wide v1, p0, Ltwitter4j/Paging;->sinceId:J

    .line 47
    iput-wide v1, p0, Ltwitter4j/Paging;->maxId:J

    .line 147
    invoke-virtual {p0, p1, p2}, Ltwitter4j/Paging;->setSinceId(J)V

    .line 148
    return-void
.end method

.method private addPostParameter([CCLjava/util/List;Ljava/lang/String;J)V
    .locals 8
    .parameter "supportedParams"
    .parameter "paramKey"
    .parameter
    .parameter "paramName"
    .parameter "paramValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CC",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/internal/http/HttpParameter;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .local p3, pagingParams:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    const-wide/16 v6, -0x1

    .line 123
    const/4 v3, 0x0

    .line 124
    .local v3, supported:Z
    move-object v0, p1

    .local v0, arr$:[C
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-char v4, v0, v1

    .line 125
    .local v4, supportedParam:C
    if-ne v4, p2, :cond_1

    .line 126
    const/4 v3, 0x1

    .line 130
    .end local v4           #supportedParam:C
    :cond_0
    if-nez v3, :cond_2

    cmp-long v5, v6, p5

    if-eqz v5, :cond_2

    .line 131
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Paging parameter ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "] is not supported with this operation."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 124
    .restart local v4       #supportedParam:C
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    .end local v4           #supportedParam:C
    :cond_2
    cmp-long v5, v6, p5

    if-eqz v5, :cond_3

    .line 135
    new-instance v5, Ltwitter4j/internal/http/HttpParameter;

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p4, v6}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_3
    return-void
.end method


# virtual methods
.method asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;
    .locals 3

    .prologue
    .line 66
    sget-object v1, Ltwitter4j/Paging;->SMCP:[C

    const-string v2, "count"

    invoke-virtual {p0, v1, v2}, Ltwitter4j/Paging;->asPostParameterList([CLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 67
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 68
    sget-object v1, Ltwitter4j/Paging;->NULL_PARAMETER_ARRAY:[Ltwitter4j/internal/http/HttpParameter;

    .line 70
    .end local p0
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ltwitter4j/internal/http/HttpParameter;

    move-object v1, p0

    goto :goto_0
.end method

.method asPostParameterArray([CLjava/lang/String;)[Ltwitter4j/internal/http/HttpParameter;
    .locals 7
    .parameter "supportedParams"
    .parameter "perPageParamName"

    .prologue
    .line 109
    new-instance v3, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 110
    .local v3, pagingParams:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    const/16 v2, 0x73

    const-string v4, "since_id"

    invoke-virtual {p0}, Ltwitter4j/Paging;->getSinceId()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ltwitter4j/Paging;->addPostParameter([CCLjava/util/List;Ljava/lang/String;J)V

    .line 111
    const/16 v2, 0x6d

    const-string v4, "max_id"

    invoke-virtual {p0}, Ltwitter4j/Paging;->getMaxId()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ltwitter4j/Paging;->addPostParameter([CCLjava/util/List;Ljava/lang/String;J)V

    .line 112
    const/16 v2, 0x63

    invoke-virtual {p0}, Ltwitter4j/Paging;->getCount()I

    move-result v0

    int-to-long v5, v0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/Paging;->addPostParameter([CCLjava/util/List;Ljava/lang/String;J)V

    .line 113
    const/16 v2, 0x70

    const-string v4, "page"

    invoke-virtual {p0}, Ltwitter4j/Paging;->getPage()I

    move-result v0

    int-to-long v5, v0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ltwitter4j/Paging;->addPostParameter([CCLjava/util/List;Ljava/lang/String;J)V

    .line 114
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 115
    sget-object v0, Ltwitter4j/Paging;->NULL_PARAMETER_ARRAY:[Ltwitter4j/internal/http/HttpParameter;

    .line 117
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ltwitter4j/internal/http/HttpParameter;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ltwitter4j/internal/http/HttpParameter;

    move-object v0, p0

    goto :goto_0
.end method

.method asPostParameterList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/internal/http/HttpParameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    sget-object v0, Ltwitter4j/Paging;->SMCP:[C

    const-string v1, "count"

    invoke-virtual {p0, v0, v1}, Ltwitter4j/Paging;->asPostParameterList([CLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method asPostParameterList([C)Ljava/util/List;
    .locals 1
    .parameter "supportedParams"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C)",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/internal/http/HttpParameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    const-string v0, "count"

    invoke-virtual {p0, p1, v0}, Ltwitter4j/Paging;->asPostParameterList([CLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method asPostParameterList([CLjava/lang/String;)Ljava/util/List;
    .locals 7
    .parameter "supportedParams"
    .parameter "perPageParamName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/internal/http/HttpParameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v3, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    .local v3, pagingParams:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    const/16 v2, 0x73

    const-string v4, "since_id"

    invoke-virtual {p0}, Ltwitter4j/Paging;->getSinceId()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ltwitter4j/Paging;->addPostParameter([CCLjava/util/List;Ljava/lang/String;J)V

    .line 90
    const/16 v2, 0x6d

    const-string v4, "max_id"

    invoke-virtual {p0}, Ltwitter4j/Paging;->getMaxId()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ltwitter4j/Paging;->addPostParameter([CCLjava/util/List;Ljava/lang/String;J)V

    .line 91
    const/16 v2, 0x63

    invoke-virtual {p0}, Ltwitter4j/Paging;->getCount()I

    move-result v0

    int-to-long v5, v0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/Paging;->addPostParameter([CCLjava/util/List;Ljava/lang/String;J)V

    .line 92
    const/16 v2, 0x70

    const-string v4, "page"

    invoke-virtual {p0}, Ltwitter4j/Paging;->getPage()I

    move-result v0

    int-to-long v5, v0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ltwitter4j/Paging;->addPostParameter([CCLjava/util/List;Ljava/lang/String;J)V

    .line 93
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 94
    sget-object v0, Ltwitter4j/Paging;->NULL_PARAMETER_LIST:Ljava/util/List;

    .line 96
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v3

    goto :goto_0
.end method

.method public count(I)Ltwitter4j/Paging;
    .locals 0
    .parameter "count"

    .prologue
    .line 193
    invoke-virtual {p0, p1}, Ltwitter4j/Paging;->setCount(I)V

    .line 194
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter "o"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 231
    if-ne p0, p1, :cond_0

    move v2, v7

    .line 241
    :goto_0
    return v2

    .line 232
    :cond_0
    instance-of v2, p1, Ltwitter4j/Paging;

    if-nez v2, :cond_1

    move v2, v6

    goto :goto_0

    .line 234
    :cond_1
    move-object v0, p1

    check-cast v0, Ltwitter4j/Paging;

    move-object v1, v0

    .line 236
    .local v1, paging:Ltwitter4j/Paging;
    iget v2, p0, Ltwitter4j/Paging;->count:I

    iget v3, v1, Ltwitter4j/Paging;->count:I

    if-eq v2, v3, :cond_2

    move v2, v6

    goto :goto_0

    .line 237
    :cond_2
    iget-wide v2, p0, Ltwitter4j/Paging;->maxId:J

    iget-wide v4, v1, Ltwitter4j/Paging;->maxId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    move v2, v6

    goto :goto_0

    .line 238
    :cond_3
    iget v2, p0, Ltwitter4j/Paging;->page:I

    iget v3, v1, Ltwitter4j/Paging;->page:I

    if-eq v2, v3, :cond_4

    move v2, v6

    goto :goto_0

    .line 239
    :cond_4
    iget-wide v2, p0, Ltwitter4j/Paging;->sinceId:J

    iget-wide v4, v1, Ltwitter4j/Paging;->sinceId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    move v2, v6

    goto :goto_0

    :cond_5
    move v2, v7

    .line 241
    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Ltwitter4j/Paging;->count:I

    return v0
.end method

.method public getMaxId()J
    .locals 2

    .prologue
    .line 214
    iget-wide v0, p0, Ltwitter4j/Paging;->maxId:J

    return-wide v0
.end method

.method public getPage()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Ltwitter4j/Paging;->page:I

    return v0
.end method

.method public getSinceId()J
    .locals 2

    .prologue
    .line 198
    iget-wide v0, p0, Ltwitter4j/Paging;->sinceId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 246
    iget v0, p0, Ltwitter4j/Paging;->page:I

    .line 247
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/Paging;->count:I

    add-int v0, v1, v2

    .line 248
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Ltwitter4j/Paging;->sinceId:J

    iget-wide v4, p0, Ltwitter4j/Paging;->sinceId:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 249
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Ltwitter4j/Paging;->maxId:J

    iget-wide v4, p0, Ltwitter4j/Paging;->maxId:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 250
    return v0
.end method

.method public maxId(J)Ltwitter4j/Paging;
    .locals 0
    .parameter "maxId"

    .prologue
    .line 225
    invoke-virtual {p0, p1, p2}, Ltwitter4j/Paging;->setMaxId(J)V

    .line 226
    return-object p0
.end method

.method public setCount(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 186
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "count should be positive integer. passed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    iput p1, p0, Ltwitter4j/Paging;->count:I

    .line 190
    return-void
.end method

.method public setMaxId(J)V
    .locals 3
    .parameter "maxId"

    .prologue
    .line 218
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 219
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "max_id should be positive integer. passed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    iput-wide p1, p0, Ltwitter4j/Paging;->maxId:J

    .line 222
    return-void
.end method

.method public setPage(I)V
    .locals 3
    .parameter "page"

    .prologue
    .line 175
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 176
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "page should be positive integer. passed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    iput p1, p0, Ltwitter4j/Paging;->page:I

    .line 179
    return-void
.end method

.method public setSinceId(J)V
    .locals 3
    .parameter "sinceId"

    .prologue
    .line 202
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 203
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "since_id should be positive integer. passed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    iput-wide p1, p0, Ltwitter4j/Paging;->sinceId:J

    .line 206
    return-void
.end method

.method public sinceId(J)Ltwitter4j/Paging;
    .locals 0
    .parameter "sinceId"

    .prologue
    .line 209
    invoke-virtual {p0, p1, p2}, Ltwitter4j/Paging;->setSinceId(J)V

    .line 210
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 255
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Paging{page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/Paging;->page:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/Paging;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", sinceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/Paging;->sinceId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", maxId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/Paging;->maxId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
