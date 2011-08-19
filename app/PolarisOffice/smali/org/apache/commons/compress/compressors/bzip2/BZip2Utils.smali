.class public abstract Lorg/apache/commons/compress/compressors/bzip2/BZip2Utils;
.super Ljava/lang/Object;
.source "BZip2Utils.java"


# static fields
.field private static final uncompressSuffix:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2Utils;->uncompressSuffix:Ljava/util/Map;

    .line 43
    sget-object v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2Utils;->uncompressSuffix:Ljava/util/Map;

    const-string v1, ".tbz2"

    const-string v2, ".tar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2Utils;->uncompressSuffix:Ljava/util/Map;

    const-string v1, ".tbz"

    const-string v2, ".tar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2Utils;->uncompressSuffix:Ljava/util/Map;

    const-string v1, ".bz2"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2Utils;->uncompressSuffix:Ljava/util/Map;

    const-string v1, ".bz"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static getCompressedFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "filename"

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".bz2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUncompressedFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "filename"

    .prologue
    .line 87
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, lower:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 90
    .local v2, n:I
    const/4 v0, 0x3

    .local v0, i:I
    :goto_0
    const/4 v4, 0x5

    if-gt v0, v4, :cond_1

    if-ge v0, v2, :cond_1

    .line 91
    sget-object v4, Lorg/apache/commons/compress/compressors/bzip2/BZip2Utils;->uncompressSuffix:Ljava/util/Map;

    sub-int v5, v2, v0

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 92
    .local v3, suffix:Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 93
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

    .line 96
    .end local v3           #suffix:Ljava/lang/Object;
    :goto_1
    return-object v4

    .line 90
    .restart local v3       #suffix:Ljava/lang/Object;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v3           #suffix:Ljava/lang/Object;
    :cond_1
    move-object v4, p0

    .line 96
    goto :goto_1
.end method

.method public static isCompressedFilename(Ljava/lang/String;)Z
    .locals 5
    .parameter "filename"

    .prologue
    .line 62
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, lower:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 65
    .local v2, n:I
    const/4 v0, 0x3

    .local v0, i:I
    :goto_0
    const/4 v3, 0x5

    if-gt v0, v3, :cond_1

    if-ge v0, v2, :cond_1

    .line 66
    sget-object v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2Utils;->uncompressSuffix:Ljava/util/Map;

    sub-int v4, v2, v0

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    const/4 v3, 0x1

    .line 70
    :goto_1
    return v3

    .line 65
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method
