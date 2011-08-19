.class public abstract Ljava/nio/charset/Charset;
.super Ljava/lang/Object;
.source "Charset.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/charset/Charset;",
        ">;"
    }
.end annotation


# static fields
.field private static final CACHED_CHARSETS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;


# instance fields
.field private final aliasesSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final canonicalName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/nio/charset/Charset;->CACHED_CHARSETS:Ljava/util/HashMap;

    .line 160
    invoke-static {}, Ljava/nio/charset/Charset;->getDefaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Ljava/nio/charset/Charset;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8
    .parameter "canonicalName"
    .parameter "aliases"

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    invoke-static {p1}, Ljava/nio/charset/Charset;->checkCharsetName(Ljava/lang/String;)V

    .line 182
    iput-object p1, p0, Ljava/nio/charset/Charset;->canonicalName:Ljava/lang/String;

    .line 184
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Ljava/nio/charset/Charset;->aliasesSet:Ljava/util/HashSet;

    .line 185
    if-eqz p2, :cond_23

    .line 186
    move-object v1, p2

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_14
    if-ge v2, v3, :cond_23

    aget-object v0, v1, v2

    .line 187
    .local v0, alias:Ljava/lang/String;
    invoke-static {v0}, Ljava/nio/charset/Charset;->checkCharsetName(Ljava/lang/String;)V

    .line 188
    iget-object v4, p0, Ljava/nio/charset/Charset;->aliasesSet:Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 191
    .end local v0           #alias:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_23
    return-void
.end method

.method public static availableCharsets()Ljava/util/SortedMap;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    new-instance v4, Ljava/util/TreeMap;

    sget-object v9, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v4, v9}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 220
    .local v4, charsets:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Ljava/nio/charset/Charset;>;"
    invoke-static {}, Llibcore/icu/NativeConverter;->getAvailableCharsetNames()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v8, v0

    .local v8, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_d
    if-ge v6, v8, :cond_1f

    aget-object v2, v0, v6

    .line 221
    .local v2, charsetName:Ljava/lang/String;
    invoke-static {v2}, Llibcore/icu/NativeConverter;->charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 222
    .local v1, charset:Ljava/nio/charset/Charset;
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 226
    .end local v1           #charset:Ljava/nio/charset/Charset;
    .end local v2           #charsetName:Ljava/lang/String;
    :cond_1f
    const-class v9, Ljava/nio/charset/spi/CharsetProvider;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_2a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_58

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/charset/spi/CharsetProvider;

    .line 227
    .local v3, charsetProvider:Ljava/nio/charset/spi/CharsetProvider;
    invoke-virtual {v3}, Ljava/nio/charset/spi/CharsetProvider;->charsets()Ljava/util/Iterator;

    move-result-object v7

    .line 228
    .local v7, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/nio/charset/Charset;>;"
    :cond_3a
    :goto_3a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2a

    .line 229
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/charset/Charset;

    .line 231
    .local v5, cs:Ljava/nio/charset/Charset;
    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3a

    .line 232
    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a

    .line 237
    .end local v3           #charsetProvider:Ljava/nio/charset/spi/CharsetProvider;
    .end local v5           #cs:Ljava/nio/charset/Charset;
    .end local v7           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/nio/charset/Charset;>;"
    :cond_58
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v9

    return-object v9
.end method

.method private static cacheCharset(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .registers 8
    .parameter "charsetName"
    .parameter "cs"

    .prologue
    .line 241
    sget-object v4, Ljava/nio/charset/Charset;->CACHED_CHARSETS:Ljava/util/HashMap;

    monitor-enter v4

    .line 243
    :try_start_3
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, canonicalName:Ljava/lang/String;
    sget-object v5, Ljava/nio/charset/Charset;->CACHED_CHARSETS:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/charset/Charset;

    .line 245
    .local v1, canonicalCharset:Ljava/nio/charset/Charset;
    if-nez v1, :cond_12

    .line 246
    move-object v1, p1

    .line 250
    :cond_12
    sget-object v5, Ljava/nio/charset/Charset;->CACHED_CHARSETS:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v5, Ljava/nio/charset/Charset;->CACHED_CHARSETS:Ljava/util/HashMap;

    invoke-virtual {v5, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object v5, p1, Ljava/nio/charset/Charset;->aliasesSet:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 260
    .local v0, alias:Ljava/lang/String;
    sget-object v5, Ljava/nio/charset/Charset;->CACHED_CHARSETS:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    .line 264
    .end local v0           #alias:Ljava/lang/String;
    .end local v1           #canonicalCharset:Ljava/nio/charset/Charset;
    .end local v2           #canonicalName:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_34
    move-exception v5

    monitor-exit v4
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v5

    .line 263
    .restart local v1       #canonicalCharset:Ljava/nio/charset/Charset;
    .restart local v2       #canonicalName:Ljava/lang/String;
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_37
    :try_start_37
    monitor-exit v4
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_34

    return-object v1
.end method

.method private static checkCharsetName(Ljava/lang/String;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 194
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 195
    new-instance v2, Ljava/nio/charset/IllegalCharsetNameException;

    invoke-direct {v2, p0}, Ljava/nio/charset/IllegalCharsetNameException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 197
    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 198
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    if-ge v0, v1, :cond_26

    .line 199
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/nio/charset/Charset;->isValidCharsetNameCharacter(C)Z

    move-result v2

    if-nez v2, :cond_23

    .line 200
    new-instance v2, Ljava/nio/charset/IllegalCharsetNameException;

    invoke-direct {v2, p0}, Ljava/nio/charset/IllegalCharsetNameException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 198
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 203
    :cond_26
    return-void
.end method

.method public static defaultCharset()Ljava/nio/charset/Charset;
    .registers 1

    .prologue
    .line 564
    sget-object v0, Ljava/nio/charset/Charset;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public static forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 6
    .parameter "charsetName"

    .prologue
    .line 279
    sget-object v3, Ljava/nio/charset/Charset;->CACHED_CHARSETS:Ljava/util/HashMap;

    monitor-enter v3

    .line 280
    :try_start_3
    sget-object v4, Ljava/nio/charset/Charset;->CACHED_CHARSETS:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/charset/Charset;

    .line 281
    .local v1, cs:Ljava/nio/charset/Charset;
    if-eqz v1, :cond_10

    .line 282
    monitor-exit v3

    move-object v3, v1

    .line 300
    :goto_f
    return-object v3

    .line 284
    :cond_10
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_19

    .line 287
    if-nez p0, :cond_1c

    .line 288
    new-instance v3, Ljava/nio/charset/IllegalCharsetNameException;

    invoke-direct {v3, p0}, Ljava/nio/charset/IllegalCharsetNameException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 284
    .end local v1           #cs:Ljava/nio/charset/Charset;
    :catchall_19
    move-exception v4

    :try_start_1a
    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v4

    .line 290
    .restart local v1       #cs:Ljava/nio/charset/Charset;
    :cond_1c
    invoke-static {p0}, Ljava/nio/charset/Charset;->checkCharsetName(Ljava/lang/String;)V

    .line 291
    invoke-static {p0}, Llibcore/icu/NativeConverter;->charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 292
    if-eqz v1, :cond_2a

    .line 293
    invoke-static {p0, v1}, Ljava/nio/charset/Charset;->cacheCharset(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v3

    goto :goto_f

    .line 297
    :cond_2a
    const-class v3, Ljava/nio/charset/spi/CharsetProvider;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/spi/CharsetProvider;

    .line 298
    .local v0, charsetProvider:Ljava/nio/charset/spi/CharsetProvider;
    invoke-virtual {v0, p0}, Ljava/nio/charset/spi/CharsetProvider;->charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 299
    if-eqz v1, :cond_35

    .line 300
    invoke-static {p0, v1}, Ljava/nio/charset/Charset;->cacheCharset(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v3

    goto :goto_f

    .line 304
    .end local v0           #charsetProvider:Ljava/nio/charset/spi/CharsetProvider;
    :cond_4c
    new-instance v3, Ljava/nio/charset/UnsupportedCharsetException;

    invoke-direct {v3, p0}, Ljava/nio/charset/UnsupportedCharsetException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static forNameUEE(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 4
    .parameter "charsetName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 315
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v2

    return-object v2

    .line 316
    :catch_5
    move-exception v0

    .line 317
    .local v0, cause:Ljava/lang/Exception;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .line 318
    .local v1, ex:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1, v0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 319
    throw v1
.end method

.method private static getDefaultCharset()Ljava/nio/charset/Charset;
    .registers 3

    .prologue
    .line 568
    new-instance v2, Ljava/nio/charset/Charset$1;

    invoke-direct {v2}, Ljava/nio/charset/Charset$1;-><init>()V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 574
    .local v1, encoding:Ljava/lang/String;
    :try_start_b
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_e
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_b .. :try_end_e} :catch_10

    move-result-object v2

    .line 576
    :goto_f
    return-object v2

    .line 575
    :catch_10
    move-exception v0

    .line 576
    .local v0, e:Ljava/nio/charset/UnsupportedCharsetException;
    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    goto :goto_f
.end method

.method public static isSupported(Ljava/lang/String;)Z
    .registers 4
    .parameter "charsetName"

    .prologue
    .line 334
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_3
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_3} :catch_6

    move-result-object v0

    .line 335
    .local v0, cs:Ljava/nio/charset/Charset;
    const/4 v2, 0x1

    .line 337
    .end local v0           #cs:Ljava/nio/charset/Charset;
    :goto_5
    return v2

    .line 336
    :catch_6
    move-exception v1

    .line 337
    .local v1, ex:Ljava/nio/charset/UnsupportedCharsetException;
    const/4 v2, 0x0

    goto :goto_5
.end method

.method private static isValidCharsetNameCharacter(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 206
    const/16 v0, 0x41

    if-lt p0, v0, :cond_8

    const/16 v0, 0x5a

    if-le p0, v0, :cond_28

    :cond_8
    const/16 v0, 0x61

    if-lt p0, v0, :cond_10

    const/16 v0, 0x7a

    if-le p0, v0, :cond_28

    :cond_10
    const/16 v0, 0x30

    if-lt p0, v0, :cond_18

    const/16 v0, 0x39

    if-le p0, v0, :cond_28

    :cond_18
    const/16 v0, 0x2d

    if-eq p0, v0, :cond_28

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_28

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_28

    const/16 v0, 0x5f

    if-ne p0, v0, :cond_2a

    :cond_28
    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method


# virtual methods
.method public final aliases()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 389
    iget-object v0, p0, Ljava/nio/charset/Charset;->aliasesSet:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public canEncode()Z
    .registers 2

    .prologue
    .line 435
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 157
    check-cast p1, Ljava/nio/charset/Charset;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/nio/charset/Charset;->compareTo(Ljava/nio/charset/Charset;)I

    move-result v0

    return v0
.end method

.method public final compareTo(Ljava/nio/charset/Charset;)I
    .registers 4
    .parameter "charset"

    .prologue
    .line 512
    iget-object v0, p0, Ljava/nio/charset/Charset;->canonicalName:Ljava/lang/String;

    iget-object v1, p1, Ljava/nio/charset/Charset;->canonicalName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public abstract contains(Ljava/nio/charset/Charset;)Z
.end method

.method public final decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
    .registers 5
    .parameter "buffer"

    .prologue
    .line 488
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
    :try_end_13
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v1

    return-object v1

    .line 491
    :catch_15
    move-exception v1

    move-object v0, v1

    .line 492
    .local v0, ex:Ljava/nio/charset/CharacterCodingException;
    new-instance v1, Ljava/lang/Error;

    invoke-virtual {v0}, Ljava/nio/charset/CharacterCodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public displayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 401
    iget-object v0, p0, Ljava/nio/charset/Charset;->canonicalName:Ljava/lang/String;

    return-object v0
.end method

.method public displayName(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3
    .parameter "l"

    .prologue
    .line 415
    iget-object v0, p0, Ljava/nio/charset/Charset;->canonicalName:Ljava/lang/String;

    return-object v0
.end method

.method public final encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 3
    .parameter "s"

    .prologue
    .line 472
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;
    .registers 5
    .parameter "buffer"

    .prologue
    .line 452
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;
    :try_end_13
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v1

    return-object v1

    .line 456
    :catch_15
    move-exception v1

    move-object v0, v1

    .line 457
    .local v0, ex:Ljava/nio/charset/CharacterCodingException;
    new-instance v1, Ljava/lang/Error;

    invoke-virtual {v0}, Ljava/nio/charset/CharacterCodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "obj"

    .prologue
    .line 531
    instance-of v2, p1, Ljava/nio/charset/Charset;

    if-eqz v2, :cond_11

    .line 532
    move-object v0, p1

    check-cast v0, Ljava/nio/charset/Charset;

    move-object v1, v0

    .line 533
    .local v1, that:Ljava/nio/charset/Charset;
    iget-object v2, p0, Ljava/nio/charset/Charset;->canonicalName:Ljava/lang/String;

    iget-object v3, v1, Ljava/nio/charset/Charset;->canonicalName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 535
    .end local v1           #that:Ljava/nio/charset/Charset;
    :goto_10
    return v2

    :cond_11
    const/4 v2, 0x0

    goto :goto_10
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 545
    iget-object v0, p0, Ljava/nio/charset/Charset;->canonicalName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isRegistered()Z
    .registers 3

    .prologue
    .line 426
    iget-object v0, p0, Ljava/nio/charset/Charset;->canonicalName:Ljava/lang/String;

    const-string v1, "x-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Ljava/nio/charset/Charset;->canonicalName:Ljava/lang/String;

    const-string v1, "X-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public final name()Ljava/lang/String;
    .registers 2

    .prologue
    .line 380
    iget-object v0, p0, Ljava/nio/charset/Charset;->canonicalName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract newDecoder()Ljava/nio/charset/CharsetDecoder;
.end method

.method public abstract newEncoder()Ljava/nio/charset/CharsetEncoder;
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/nio/charset/Charset;->canonicalName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
