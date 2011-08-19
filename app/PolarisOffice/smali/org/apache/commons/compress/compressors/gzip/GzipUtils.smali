.class public Lorg/apache/commons/compress/compressors/gzip/GzipUtils;
.super Ljava/lang/Object;
.source "GzipUtils.java"


# static fields
.field private static final compressSuffix:Ljava/util/Map;

.field private static final uncompressSuffix:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/compress/compressors/gzip/GzipUtils;->compressSuffix:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/compress/compressors/gzip/GzipUtils;->uncompressSuffix:Ljava/util/Map;

    .line 48
    sget-object v0, Lorg/apache/commons/compress/compressors/gzip/GzipUtils;->compressSuffix:Ljava/util/Map;

    const-string v1, ".tar"

    const-string v2, ".tgz"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lorg/apache/commons/compress/compressors/gzip/GzipUtils;->compressSuffix:Ljava/util/Map;

    const-string v1, ".svg"

    const-string v2, ".svgz"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lorg/apache/commons/compress/compressors/gzip/GzipUtils;->compressSuffix:Ljava/util/Map;

    const-string v1, ".cpio"

    const-string v2, ".cpgz"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lorg/apache/commons/compress/compressors/gzip/GzipUtils;->compressSuffix:Ljava/util/Map;

    const-string v1, ".wmf"

    const-string v2, ".wmz"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lorg/apache/commons/compress/compressors/gzip/GzipUtils;->compressSuffix:Ljava/util/Map;

    const-string v1, ".emf"

    const-string v2, ".emz"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lorg/apache/commons/compress/compressors/gzip/GzipUtils;->uncompressSuffix:Ljava/util/Map;

    const-string v1, ".tgz"

    const-string v2, ".tar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lorg/apache/commons/compress/compressors/gzip/GzipUtils;->uncompressSuffix:Ljava/util/Map;

    const-string v1, ".taz"

    const-string v2, ".tar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lorg/apache/commons/compress/compressors/gzip/GzipUtils;->uncompressSuffix:Ljava/util/Map;

    const-string v1, ".svgz"

    const-string v2, ".svg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lorg/apache/commons/compress/compressors/gzip/GzipUtils;->uncompressSuffix:Ljava/util/Map;

    const-string v1, ".cpgz"

    const-string v2, ".cpio"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lorg/apache/commons/compress/compressors/gzip/GzipUtils;->uncompressSuffix:Ljava/util/Map;

    const-string v1, ".wmz"

    const-string v2, ".wmf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lorg/apache/commons/compress/compressors/gzip/GzipUtils;->uncompressSuffix:Ljava/util/Map;

    const-string v1, ".emz"

    const-string v2, ".emf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lorg/apache/commons/compress/compressors/gzip/GzipUtils;->uncompressSuffix:Ljava/util/Map;

    const-string v1, ".gz"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lorg/apache/commons/compress/compressors/gzip/GzipUtils;->uncompressSuffix:Ljava/util/Map;

    const-string v1, ".z"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lorg/apache/commons/compress/compressors/gzip/GzipUtils;->uncompressSuffix:Ljava/util/Map;

    const-string v1, "-gz"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lorg/apache/commons/compress/compressors/gzip/GzipUtils;->uncompressSuffix:Ljava/util/Map;

    const-string v1, "-z"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lorg/apache/commons/compress/compressors/gzip/GzipUtils;->uncompressSuffix:Ljava/util/Map;

    const-string v1, "_z"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method public static getCompressedFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "filename"

    .prologue
    .line 129
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, lower:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 132
    .local v2, n:I
    const/4 v0, 0x4

    .local v0, i:I
    :goto_0
    const/4 v4, 0x5

    if-gt v0, v4, :cond_1

    if-ge v0, v2, :cond_1

    .line 133
    sget-object v4, Lorg/apache/commons/compress/compressors/gzip/GzipUtils;->compressSuffix:Ljava/util/Map;

    sub-int v5, v2, v0

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 134
    .local v3, suffix:Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 135
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v5, 0x0

    sub-int v6, v2, v0

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 139
    .end local v3           #suffix:Ljava/lang/Object;
    :goto_1
    return-object v4

    .line 132
    .restart local v3       #suffix:Ljava/lang/Object;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    .end local v3           #suffix:Ljava/lang/Object;
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ".gz"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public static getUncompressedFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "filename"

    .prologue
    .line 105
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, lower:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 108
    .local v2, n:I
    const/4 v0, 0x2

    .local v0, i:I
    :goto_0
    const/4 v4, 0x5

    if-gt v0, v4, :cond_1

    if-ge v0, v2, :cond_1

    .line 109
    sget-object v4, Lorg/apache/commons/compress/compressors/gzip/GzipUtils;->uncompressSuffix:Ljava/util/Map;

    sub-int v5, v2, v0

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 110
    .local v3, suffix:Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 111
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v5, 0x0

    sub-int v6, v2, v0

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 114
    .end local v3           #suffix:Ljava/lang/Object;
    :goto_1
    return-object v4

    .line 108
    .restart local v3       #suffix:Ljava/lang/Object;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v3           #suffix:Ljava/lang/Object;
    :cond_1
    move-object v4, p0

    .line 114
    goto :goto_1
.end method

.method public static isCompressedFilename(Ljava/lang/String;)Z
    .locals 5
    .parameter "filename"

    .prologue
    .line 80
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, lower:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 83
    .local v2, n:I
    const/4 v0, 0x2

    .local v0, i:I
    :goto_0
    const/4 v3, 0x5

    if-gt v0, v3, :cond_1

    if-ge v0, v2, :cond_1

    .line 84
    sget-object v3, Lorg/apache/commons/compress/compressors/gzip/GzipUtils;->uncompressSuffix:Ljava/util/Map;

    sub-int v4, v2, v0

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    const/4 v3, 0x1

    .line 88
    :goto_1
    return v3

    .line 83
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method
