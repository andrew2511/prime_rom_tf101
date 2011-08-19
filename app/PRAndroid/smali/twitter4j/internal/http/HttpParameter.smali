.class public final Ltwitter4j/internal/http/HttpParameter;
.super Ljava/lang/Object;
.source "HttpParameter.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# static fields
.field private static final GIF:Ljava/lang/String; = "image/gif"

.field private static final JPEG:Ljava/lang/String; = "image/jpeg"

.field private static final OCTET:Ljava/lang/String; = "application/octet-stream"

.field private static final PNG:Ljava/lang/String; = "image/png"

.field private static final serialVersionUID:J = -0x78d96ac49142488cL


# instance fields
.field private file:Ljava/io/File;

.field private fileBody:Ljava/io/InputStream;

.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;D)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    .line 43
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;

    .line 72
    iput-object p1, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    .line 73
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    .line 43
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;

    .line 62
    iput-object p1, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    .line 63
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    .line 43
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;

    .line 67
    iput-object p1, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    .line 68
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 1
    .parameter "name"
    .parameter "file"

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    .line 43
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;

    .line 51
    iput-object p1, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    .line 43
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;

    .line 47
    iput-object p1, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1
    .parameter "name"
    .parameter "fileName"
    .parameter "fileBody"

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    .line 43
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;

    .line 56
    iput-object p1, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    .line 58
    iput-object p3, p0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    .line 43
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;

    .line 77
    iput-object p1, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    .line 78
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    .line 79
    return-void
.end method

.method static containsFile(Ljava/util/List;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/internal/http/HttpParameter;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, params:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    const/4 v0, 0x0

    .line 181
    .local v0, containsFile:Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltwitter4j/internal/http/HttpParameter;

    .line 182
    .local v2, param:Ltwitter4j/internal/http/HttpParameter;
    invoke-virtual {v2}, Ltwitter4j/internal/http/HttpParameter;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 183
    const/4 v0, 0x1

    .line 187
    .end local v2           #param:Ltwitter4j/internal/http/HttpParameter;
    :cond_1
    return v0
.end method

.method public static containsFile([Ltwitter4j/internal/http/HttpParameter;)Z
    .locals 6
    .parameter "params"

    .prologue
    .line 167
    const/4 v1, 0x0

    .line 168
    .local v1, containsFile:Z
    if-nez p0, :cond_0

    .line 169
    const/4 v5, 0x0

    .line 177
    :goto_0
    return v5

    .line 171
    :cond_0
    move-object v0, p0

    .local v0, arr$:[Ltwitter4j/internal/http/HttpParameter;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 172
    .local v4, param:Ltwitter4j/internal/http/HttpParameter;
    invoke-virtual {v4}, Ltwitter4j/internal/http/HttpParameter;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 173
    const/4 v1, 0x1

    .end local v4           #param:Ltwitter4j/internal/http/HttpParameter;
    :cond_1
    move v5, v1

    .line 177
    goto :goto_0

    .line 171
    .restart local v4       #param:Ltwitter4j/internal/http/HttpParameter;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "value"

    .prologue
    .line 262
    const/4 v1, 0x0

    .line 264
    .local v1, encoded:Ljava/lang/String;
    :try_start_0
    const-string v4, "UTF-8"

    invoke-static {p0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 267
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 269
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 270
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 271
    .local v2, focus:C
    const/16 v4, 0x2a

    if-ne v2, v4, :cond_0

    .line 272
    const-string v4, "%2A"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 269
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 273
    :cond_0
    const/16 v4, 0x2b

    if-ne v2, v4, :cond_1

    .line 274
    const-string v4, "%20"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 275
    :cond_1
    const/16 v4, 0x25

    if-ne v2, v4, :cond_2

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x37

    if-ne v4, v5, :cond_2

    add-int/lit8 v4, v3, 0x2

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x45

    if-ne v4, v5, :cond_2

    .line 277
    const/16 v4, 0x7e

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 278
    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    .line 280
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 283
    .end local v2           #focus:C
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 265
    .end local v0           #buf:Ljava/lang/StringBuffer;
    .end local v3           #i:I
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static encodeParameters([Ltwitter4j/internal/http/HttpParameter;)Ljava/lang/String;
    .locals 5
    .parameter "httpParams"

    .prologue
    .line 237
    if-nez p0, :cond_0

    .line 238
    const-string v2, ""

    .line 251
    :goto_0
    return-object v2

    .line 240
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 241
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 242
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ltwitter4j/internal/http/HttpParameter;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 243
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "parameter ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-object v4, p0, v1

    iget-object v4, v4, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "]should be text"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 245
    :cond_1
    if-eqz v1, :cond_2

    .line 246
    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    :cond_2
    aget-object v2, p0, v1

    iget-object v2, v2, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    invoke-static {v2}, Ltwitter4j/internal/http/HttpParameter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    aget-object v3, p0, v1

    iget-object v3, v3, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    invoke-static {v3}, Ltwitter4j/internal/http/HttpParameter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 251
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getParameterArray(Ljava/lang/String;I)[Ltwitter4j/internal/http/HttpParameter;
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 194
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ltwitter4j/internal/http/HttpParameter;->getParameterArray(Ljava/lang/String;Ljava/lang/String;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v0

    return-object v0
.end method

.method public static getParameterArray(Ljava/lang/String;ILjava/lang/String;I)[Ltwitter4j/internal/http/HttpParameter;
    .locals 2
    .parameter "name1"
    .parameter "value1"
    .parameter "name2"
    .parameter "value2"

    .prologue
    .line 204
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, p2, v1}, Ltwitter4j/internal/http/HttpParameter;->getParameterArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v0

    return-object v0
.end method

.method public static getParameterArray(Ljava/lang/String;Ljava/lang/String;)[Ltwitter4j/internal/http/HttpParameter;
    .locals 3
    .parameter "name"
    .parameter "value"

    .prologue
    .line 191
    const/4 v0, 0x1

    new-array v0, v0, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v1, 0x0

    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {v2, p0, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getParameterArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ltwitter4j/internal/http/HttpParameter;
    .locals 3
    .parameter "name1"
    .parameter "value1"
    .parameter "name2"
    .parameter "value2"

    .prologue
    .line 199
    const/4 v0, 0x2

    new-array v0, v0, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v1, 0x0

    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {v2, p0, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {v2, p2, p3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 5
    .parameter "o"

    .prologue
    .line 228
    move-object v0, p1

    check-cast v0, Ltwitter4j/internal/http/HttpParameter;

    move-object v2, v0

    .line 229
    .local v2, that:Ltwitter4j/internal/http/HttpParameter;
    iget-object v3, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    iget-object v4, v2, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    .line 230
    .local v1, compared:I
    if-nez v1, :cond_0

    .line 231
    iget-object v3, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    iget-object v4, v2, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    .line 233
    :cond_0
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 150
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 163
    :goto_0
    return v2

    .line 151
    :cond_0
    instance-of v2, p1, Ltwitter4j/internal/http/HttpParameter;

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_0

    .line 153
    :cond_1
    move-object v0, p1

    check-cast v0, Ltwitter4j/internal/http/HttpParameter;

    move-object v1, v0

    .line 155
    .local v1, that:Ltwitter4j/internal/http/HttpParameter;
    iget-object v2, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    iget-object v3, v1, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2
    move v2, v4

    .line 156
    goto :goto_0

    .line 155
    :cond_3
    iget-object v2, v1, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    if-nez v2, :cond_2

    .line 157
    :cond_4
    iget-object v2, p0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;

    if-eqz v2, :cond_6

    iget-object v2, p0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;

    iget-object v3, v1, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    move v2, v4

    .line 158
    goto :goto_0

    .line 157
    :cond_6
    iget-object v2, v1, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;

    if-nez v2, :cond_5

    .line 159
    :cond_7
    iget-object v2, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v2, v4

    goto :goto_0

    .line 160
    :cond_8
    iget-object v2, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_9
    move v2, v4

    .line 161
    goto :goto_0

    .line 160
    :cond_a
    iget-object v2, v1, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    if-nez v2, :cond_9

    :cond_b
    move v2, v5

    .line 163
    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 5

    .prologue
    .line 114
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpParameter;->isFile()Z

    move-result v3

    if-nez v3, :cond_0

    .line 115
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "not a file"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 118
    :cond_0
    iget-object v3, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, extensions:Ljava/lang/String;
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 120
    .local v2, index:I
    const/4 v3, -0x1

    if-ne v3, v2, :cond_1

    .line 122
    const-string v0, "application/octet-stream"

    .line 145
    .local v0, contentType:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 124
    .end local v0           #contentType:Ljava/lang/String;
    :cond_1
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    .line 126
    const-string v3, "gif"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 127
    const-string v0, "image/gif"

    .restart local v0       #contentType:Ljava/lang/String;
    goto :goto_0

    .line 128
    .end local v0           #contentType:Ljava/lang/String;
    :cond_2
    const-string v3, "png"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 129
    const-string v0, "image/png"

    .restart local v0       #contentType:Ljava/lang/String;
    goto :goto_0

    .line 130
    .end local v0           #contentType:Ljava/lang/String;
    :cond_3
    const-string v3, "jpg"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 131
    const-string v0, "image/jpeg"

    .restart local v0       #contentType:Ljava/lang/String;
    goto :goto_0

    .line 133
    .end local v0           #contentType:Ljava/lang/String;
    :cond_4
    const-string v0, "application/octet-stream"

    .restart local v0       #contentType:Ljava/lang/String;
    goto :goto_0

    .line 135
    .end local v0           #contentType:Ljava/lang/String;
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_7

    .line 136
    const-string v3, "jpeg"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 137
    const-string v0, "image/jpeg"

    .restart local v0       #contentType:Ljava/lang/String;
    goto :goto_0

    .line 139
    .end local v0           #contentType:Ljava/lang/String;
    :cond_6
    const-string v0, "application/octet-stream"

    .restart local v0       #contentType:Ljava/lang/String;
    goto :goto_0

    .line 142
    .end local v0           #contentType:Ljava/lang/String;
    :cond_7
    const-string v0, "application/octet-stream"

    .restart local v0       #contentType:Ljava/lang/String;
    goto :goto_0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    return-object v0
.end method

.method public getFileBody()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hasFileBody()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 209
    iget-object v1, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 210
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int v0, v1, v2

    .line 211
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v1, v2

    .line 212
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v1, v2

    .line 213
    return v0

    :cond_0
    move v2, v3

    .line 210
    goto :goto_0

    :cond_1
    move v2, v3

    .line 211
    goto :goto_1

    :cond_2
    move v2, v3

    .line 212
    goto :goto_2
.end method

.method public isFile()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 218
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "PostParameter{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", value=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", fileBody="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
