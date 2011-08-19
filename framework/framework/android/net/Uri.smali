.class public abstract Landroid/net/Uri;
.super Ljava/lang/Object;
.source "Uri.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/Uri$PathPart;,
        Landroid/net/Uri$Part;,
        Landroid/net/Uri$AbstractPart;,
        Landroid/net/Uri$Builder;,
        Landroid/net/Uri$HierarchicalUri;,
        Landroid/net/Uri$AbstractHierarchicalUri;,
        Landroid/net/Uri$PathSegmentsBuilder;,
        Landroid/net/Uri$PathSegments;,
        Landroid/net/Uri$OpaqueUri;,
        Landroid/net/Uri$StringUri;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"

.field public static final EMPTY:Landroid/net/Uri; = null

.field private static final HEX_DIGITS:[C = null

.field private static final LOG:Ljava/lang/String; = null

.field private static final NOT_CACHED:Ljava/lang/String; = null

.field private static final NOT_CALCULATED:I = -0x2

.field private static final NOT_FOUND:I = -0x1

.field private static final NOT_HIERARCHICAL:Ljava/lang/String; = "This isn\'t a hierarchical URI."

.field private static final NULL_TYPE_ID:I

.field private static final REPLACEMENT:[B


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 107
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/Uri;->LOG:Ljava/lang/String;

    .line 119
    new-instance v0, Ljava/lang/String;

    const-string v2, "NOT CACHED"

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/net/Uri;->NOT_CACHED:Ljava/lang/String;

    .line 124
    new-instance v0, Landroid/net/Uri$HierarchicalUri;

    sget-object v2, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    sget-object v3, Landroid/net/Uri$PathPart;->EMPTY:Landroid/net/Uri$PathPart;

    sget-object v4, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    sget-object v5, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Landroid/net/Uri$HierarchicalUri;-><init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$PathPart;Landroid/net/Uri$Part;Landroid/net/Uri$Part;Landroid/net/Uri$1;)V

    sput-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 1680
    new-instance v0, Landroid/net/Uri$1;

    invoke-direct {v0}, Landroid/net/Uri$1;-><init>()V

    sput-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1714
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Landroid/net/Uri;->HEX_DIGITS:[C

    .line 1839
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_3a

    sput-object v0, Landroid/net/Uri;->REPLACEMENT:[B

    return-void

    :array_3a
    .array-data 0x1
        0xfft
        0xfdt
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/net/Uri;-><init>()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Landroid/net/Uri;->NOT_CACHED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Landroid/net/Uri;->LOG:Ljava/lang/String;

    return-object v0
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "s"

    .prologue
    const/16 v11, 0x25

    const/4 v10, -0x1

    .line 1858
    if-nez p0, :cond_7

    .line 1859
    const/4 v8, 0x0

    .line 1948
    :goto_6
    return-object v8

    .line 1863
    :cond_7
    const/4 v3, 0x0

    .line 1864
    .local v3, decoded:Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 1866
    .local v7, out:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 1871
    .local v6, oldLength:I
    const/4 v2, 0x0

    .line 1872
    .local v2, current:I
    :goto_e
    if-ge v2, v6, :cond_8f

    .line 1876
    invoke-virtual {p0, v11, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 1878
    .local v5, nextEscape:I
    if-ne v5, v10, :cond_22

    .line 1879
    if-nez v3, :cond_1a

    move-object v8, p0

    .line 1881
    goto :goto_6

    .line 1884
    :cond_1a
    invoke-virtual {v3, p0, v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1885
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    .line 1890
    :cond_22
    if-nez v3, :cond_5a

    .line 1895
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #decoded:Ljava/lang/StringBuilder;
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1896
    .restart local v3       #decoded:Ljava/lang/StringBuilder;
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    .end local v7           #out:Ljava/io/ByteArrayOutputStream;
    const/4 v8, 0x4

    invoke-direct {v7, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1903
    .restart local v7       #out:Ljava/io/ByteArrayOutputStream;
    :goto_2f
    if-le v5, v2, :cond_35

    .line 1904
    invoke-virtual {v3, p0, v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1906
    move v2, v5

    .line 1918
    :cond_35
    add-int/lit8 v8, v2, 0x2

    if-lt v8, v6, :cond_5e

    .line 1920
    :try_start_39
    sget-object v8, Landroid/net/Uri;->REPLACEMENT:[B

    invoke-virtual {v7, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1935
    :goto_3e
    add-int/lit8 v2, v2, 0x3

    .line 1936
    if-ge v2, v6, :cond_48

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v11, :cond_35

    .line 1939
    :cond_48
    const-string v8, "UTF-8"

    invoke-virtual {v7, v8}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_51
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_39 .. :try_end_51} :catch_52
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_51} :catch_80

    goto :goto_e

    .line 1940
    :catch_52
    move-exception v8

    move-object v4, v8

    .line 1941
    .local v4, e:Ljava/io/UnsupportedEncodingException;
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    .line 1899
    .end local v4           #e:Ljava/io/UnsupportedEncodingException;
    :cond_5a
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_2f

    .line 1922
    :cond_5e
    add-int/lit8 v8, v2, 0x1

    :try_start_60
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 1923
    .local v0, a:I
    add-int/lit8 v8, v2, 0x2

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 1925
    .local v1, b:I
    if-eq v0, v10, :cond_7a

    if-ne v1, v10, :cond_88

    .line 1927
    :cond_7a
    sget-object v8, Landroid/net/Uri;->REPLACEMENT:[B

    invoke-virtual {v7, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_7f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_60 .. :try_end_7f} :catch_52
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_7f} :catch_80

    goto :goto_3e

    .line 1942
    .end local v0           #a:I
    .end local v1           #b:I
    :catch_80
    move-exception v8

    move-object v4, v8

    .line 1943
    .local v4, e:Ljava/io/IOException;
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    .line 1930
    .end local v4           #e:Ljava/io/IOException;
    .restart local v0       #a:I
    .restart local v1       #b:I
    :cond_88
    shl-int/lit8 v8, v0, 0x4

    add-int/2addr v8, v1

    :try_start_8b
    invoke-virtual {v7, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_8e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8b .. :try_end_8e} :catch_52
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_80

    goto :goto_3e

    .line 1948
    .end local v0           #a:I
    .end local v1           #b:I
    .end local v5           #nextEscape:I
    :cond_8f
    if-nez v3, :cond_94

    move-object v8, p0

    goto/16 :goto_6

    :cond_94
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_6
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "s"

    .prologue
    .line 1727
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .parameter "s"
    .parameter "allow"

    .prologue
    .line 1744
    if-nez p0, :cond_4

    .line 1745
    const/4 v10, 0x0

    .line 1819
    :goto_3
    return-object v10

    .line 1749
    :cond_4
    const/4 v4, 0x0

    .line 1751
    .local v4, encoded:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    .line 1756
    .local v8, oldLength:I
    const/4 v2, 0x0

    .line 1757
    .local v2, current:I
    :goto_a
    if-ge v2, v8, :cond_80

    .line 1761
    move v7, v2

    .line 1763
    .local v7, nextToEncode:I
    :goto_d
    if-ge v7, v8, :cond_1c

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10, p1}, Landroid/net/Uri;->isAllowed(CLjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 1764
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 1768
    :cond_1c
    if-ne v7, v8, :cond_2a

    .line 1769
    if-nez v2, :cond_22

    move-object v10, p0

    .line 1771
    goto :goto_3

    .line 1774
    :cond_22
    invoke-virtual {v4, p0, v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1775
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    .line 1779
    :cond_2a
    if-nez v4, :cond_31

    .line 1780
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #encoded:Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1783
    .restart local v4       #encoded:Ljava/lang/StringBuilder;
    :cond_31
    if-le v7, v2, :cond_36

    .line 1785
    invoke-virtual {v4, p0, v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1793
    :cond_36
    move v2, v7

    .line 1794
    add-int/lit8 v6, v2, 0x1

    .line 1796
    .local v6, nextAllowed:I
    :goto_39
    if-ge v6, v8, :cond_48

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10, p1}, Landroid/net/Uri;->isAllowed(CLjava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_48

    .line 1797
    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    .line 1802
    :cond_48
    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1804
    .local v9, toEncode:Ljava/lang/String;
    :try_start_4c
    const-string v10, "UTF-8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1805
    .local v0, bytes:[B
    array-length v1, v0

    .line 1806
    .local v1, bytesLength:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_54
    if-ge v5, v1, :cond_7e

    .line 1807
    const/16 v10, 0x25

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1808
    sget-object v10, Landroid/net/Uri;->HEX_DIGITS:[C

    aget-byte v11, v0, v5

    and-int/lit16 v11, v11, 0xf0

    shr-int/lit8 v11, v11, 0x4

    aget-char v10, v10, v11

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1809
    sget-object v10, Landroid/net/Uri;->HEX_DIGITS:[C

    aget-byte v11, v0, v5

    and-int/lit8 v11, v11, 0xf

    aget-char v10, v10, v11

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_73
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4c .. :try_end_73} :catch_76

    .line 1806
    add-int/lit8 v5, v5, 0x1

    goto :goto_54

    .line 1811
    .end local v0           #bytes:[B
    .end local v1           #bytesLength:I
    .end local v5           #i:I
    :catch_76
    move-exception v10

    move-object v3, v10

    .line 1812
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v10

    .line 1815
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v0       #bytes:[B
    .restart local v1       #bytesLength:I
    .restart local v5       #i:I
    :cond_7e
    move v2, v6

    .line 1816
    goto :goto_a

    .line 1819
    .end local v0           #bytes:[B
    .end local v1           #bytesLength:I
    .end local v5           #i:I
    .end local v6           #nextAllowed:I
    .end local v7           #nextToEncode:I
    .end local v9           #toEncode:Ljava/lang/String;
    :cond_80
    if-nez v4, :cond_84

    move-object v10, p0

    goto :goto_3

    :cond_84
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_3
.end method

.method public static fromFile(Ljava/io/File;)Landroid/net/Uri;
    .registers 8
    .parameter "file"

    .prologue
    .line 398
    if-nez p0, :cond_a

    .line 399
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "file"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :cond_a
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri$PathPart;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object v3

    .line 403
    .local v3, path:Landroid/net/Uri$PathPart;
    new-instance v0, Landroid/net/Uri$HierarchicalUri;

    const-string v1, "file"

    sget-object v2, Landroid/net/Uri$Part;->EMPTY:Landroid/net/Uri$Part;

    sget-object v4, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    sget-object v5, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/net/Uri$HierarchicalUri;-><init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$PathPart;Landroid/net/Uri$Part;Landroid/net/Uri$Part;Landroid/net/Uri$1;)V

    return-object v0
.end method

.method public static fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 7
    .parameter "scheme"
    .parameter "ssp"
    .parameter "fragment"

    .prologue
    .line 765
    if-nez p0, :cond_b

    .line 766
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "scheme"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 768
    :cond_b
    if-nez p1, :cond_16

    .line 769
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "ssp"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 772
    :cond_16
    new-instance v0, Landroid/net/Uri$OpaqueUri;

    invoke-static {p1}, Landroid/net/Uri$Part;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v1

    invoke-static {p2}, Landroid/net/Uri$Part;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/net/Uri$OpaqueUri;-><init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$Part;Landroid/net/Uri$1;)V

    return-object v0
.end method

.method private static isAllowed(CLjava/lang/String;)Z
    .registers 4
    .parameter "c"
    .parameter "allow"

    .prologue
    const/4 v1, -0x1

    .line 1831
    const/16 v0, 0x41

    if-lt p0, v0, :cond_9

    const/16 v0, 0x5a

    if-le p0, v0, :cond_29

    :cond_9
    const/16 v0, 0x61

    if-lt p0, v0, :cond_11

    const/16 v0, 0x7a

    if-le p0, v0, :cond_29

    :cond_11
    const/16 v0, 0x30

    if-lt p0, v0, :cond_19

    const/16 v0, 0x39

    if-le p0, v0, :cond_29

    :cond_19
    const-string v0, "_-!.~\'()*"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_29

    if-eqz p1, :cond_2b

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_2b

    :cond_29
    const/4 v0, 0x1

    :goto_2a
    return v0

    :cond_2b
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method public static parse(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .parameter "uriString"

    .prologue
    .line 384
    new-instance v0, Landroid/net/Uri$StringUri;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/Uri$StringUri;-><init>(Ljava/lang/String;Landroid/net/Uri$1;)V

    return-object v0
.end method

.method public static withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .registers 4
    .parameter "baseUri"
    .parameter "pathSegment"

    .prologue
    .line 2307
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2308
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2309
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V
    .registers 3
    .parameter "out"
    .parameter "uri"

    .prologue
    const/4 v0, 0x0

    .line 1707
    if-nez p1, :cond_7

    .line 1708
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1712
    :goto_6
    return-void

    .line 1710
    :cond_7
    invoke-virtual {p1, p0, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6
.end method


# virtual methods
.method public abstract buildUpon()Landroid/net/Uri$Builder;
.end method

.method public compareTo(Landroid/net/Uri;)I
    .registers 4
    .parameter "other"

    .prologue
    .line 346
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 47
    check-cast p1, Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    .line 324
    instance-of v2, p1, Landroid/net/Uri;

    if-nez v2, :cond_6

    .line 325
    const/4 v2, 0x0

    .line 330
    :goto_5
    return v2

    .line 328
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/Uri;

    move-object v1, v0

    .line 330
    .local v1, other:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_5
.end method

.method public abstract getAuthority()Ljava/lang/String;
.end method

.method public getBooleanQueryParameter(Ljava/lang/String;Z)Z
    .registers 5
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 1666
    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1667
    .local v0, flag:Ljava/lang/String;
    if-nez v0, :cond_8

    move v1, p2

    .line 1671
    :goto_7
    return v1

    .line 1670
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1671
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_7

    :cond_1e
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public abstract getEncodedAuthority()Ljava/lang/String;
.end method

.method public abstract getEncodedFragment()Ljava/lang/String;
.end method

.method public abstract getEncodedPath()Ljava/lang/String;
.end method

.method public abstract getEncodedQuery()Ljava/lang/String;
.end method

.method public abstract getEncodedSchemeSpecificPart()Ljava/lang/String;
.end method

.method public abstract getEncodedUserInfo()Ljava/lang/String;
.end method

.method public abstract getFragment()Ljava/lang/String;
.end method

.method public abstract getHost()Ljava/lang/String;
.end method

.method public abstract getLastPathSegment()Ljava/lang/String;
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract getPathSegments()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPort()I
.end method

.method public abstract getQuery()Ljava/lang/String;
.end method

.method public getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "key"

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 1613
    invoke-virtual {p0}, Landroid/net/Uri;->isOpaque()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1614
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    const-string v8, "This isn\'t a hierarchical URI."

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1616
    :cond_10
    if-nez p1, :cond_1a

    .line 1617
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "key"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1620
    :cond_1a
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v4

    .line 1621
    .local v4, query:Ljava/lang/String;
    if-nez v4, :cond_22

    move-object v7, v10

    .line 1653
    :goto_21
    return-object v7

    .line 1625
    :cond_22
    invoke-static {p1, v10}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1626
    .local v0, encodedKey:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 1627
    .local v2, length:I
    const/4 v6, 0x0

    .line 1629
    .local v6, start:I
    :goto_2b
    const/16 v7, 0x26

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 1630
    .local v3, nextAmpersand:I
    if-eq v3, v9, :cond_57

    move v1, v3

    .line 1632
    .local v1, end:I
    :goto_34
    const/16 v7, 0x3d

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 1633
    .local v5, separator:I
    if-gt v5, v1, :cond_3e

    if-ne v5, v9, :cond_3f

    .line 1634
    :cond_3e
    move v5, v1

    .line 1637
    :cond_3f
    sub-int v7, v5, v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v7, v8, :cond_64

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v6, v0, v7, v8}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v7

    if-eqz v7, :cond_64

    .line 1639
    if-ne v5, v1, :cond_59

    .line 1640
    const-string v7, ""

    goto :goto_21

    .end local v1           #end:I
    .end local v5           #separator:I
    :cond_57
    move v1, v2

    .line 1630
    goto :goto_34

    .line 1642
    .restart local v1       #end:I
    .restart local v5       #separator:I
    :cond_59
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v4, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_21

    .line 1647
    :cond_64
    if-eq v3, v9, :cond_69

    .line 1648
    add-int/lit8 v6, v3, 0x1

    .line 1652
    goto :goto_2b

    :cond_69
    move-object v7, v10

    .line 1653
    goto :goto_21
.end method

.method public getQueryParameterNames()Ljava/util/Set;
    .registers 10
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
    const/4 v8, -0x1

    .line 1513
    invoke-virtual {p0}, Landroid/net/Uri;->isOpaque()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1514
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    const-string v8, "This isn\'t a hierarchical URI."

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1517
    :cond_f
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v4

    .line 1518
    .local v4, query:Ljava/lang/String;
    if-nez v4, :cond_1a

    .line 1519
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v7

    .line 1540
    :goto_19
    return-object v7

    .line 1522
    :cond_1a
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1523
    .local v2, names:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 1525
    .local v6, start:I
    :cond_20
    const/16 v7, 0x26

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 1526
    .local v3, next:I
    if-ne v3, v8, :cond_50

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    move v0, v7

    .line 1528
    .local v0, end:I
    :goto_2d
    const/16 v7, 0x3d

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 1529
    .local v5, separator:I
    if-gt v5, v0, :cond_37

    if-ne v5, v8, :cond_38

    .line 1530
    :cond_37
    move v5, v0

    .line 1533
    :cond_38
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1534
    .local v1, name:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1537
    add-int/lit8 v6, v0, 0x1

    .line 1538
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v6, v7, :cond_20

    .line 1540
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v7

    goto :goto_19

    .end local v0           #end:I
    .end local v1           #name:Ljava/lang/String;
    .end local v5           #separator:I
    :cond_50
    move v0, v3

    .line 1526
    goto :goto_2d
.end method

.method public getQueryParameters(Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    .line 1553
    invoke-virtual {p0}, Landroid/net/Uri;->isOpaque()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1554
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    const-string v9, "This isn\'t a hierarchical URI."

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1556
    :cond_f
    if-nez p1, :cond_19

    .line 1557
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "key"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1560
    :cond_19
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v4

    .line 1561
    .local v4, query:Ljava/lang/String;
    if-nez v4, :cond_24

    .line 1562
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 1601
    :goto_23
    return-object v8

    .line 1567
    :cond_24
    :try_start_24
    const-string v8, "UTF-8"

    invoke-static {p1, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_29
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_24 .. :try_end_29} :catch_63

    move-result-object v1

    .line 1572
    .local v1, encodedKey:Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1574
    .local v7, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 1576
    .local v6, start:I
    :goto_30
    const/16 v8, 0x26

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 1577
    .local v3, nextAmpersand:I
    if-eq v3, v10, :cond_6b

    move v2, v3

    .line 1579
    .local v2, end:I
    :goto_39
    const/16 v8, 0x3d

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 1580
    .local v5, separator:I
    if-gt v5, v2, :cond_43

    if-ne v5, v10, :cond_44

    .line 1581
    :cond_43
    move v5, v2

    .line 1584
    :cond_44
    sub-int v8, v5, v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v8, v9, :cond_5e

    const/4 v8, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v4, v6, v1, v8, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_5e

    .line 1586
    if-ne v5, v2, :cond_71

    .line 1587
    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1594
    :cond_5e
    :goto_5e
    if-eq v3, v10, :cond_7f

    .line 1595
    add-int/lit8 v6, v3, 0x1

    .line 1599
    goto :goto_30

    .line 1568
    .end local v1           #encodedKey:Ljava/lang/String;
    .end local v2           #end:I
    .end local v3           #nextAmpersand:I
    .end local v5           #separator:I
    .end local v6           #start:I
    .end local v7           #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_63
    move-exception v8

    move-object v0, v8

    .line 1569
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    .line 1577
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #encodedKey:Ljava/lang/String;
    .restart local v3       #nextAmpersand:I
    .restart local v6       #start:I
    .restart local v7       #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6b
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    move v2, v8

    goto :goto_39

    .line 1589
    .restart local v2       #end:I
    .restart local v5       #separator:I
    :cond_71
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v4, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 1601
    :cond_7f
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    goto :goto_23
.end method

.method public abstract getScheme()Ljava/lang/String;
.end method

.method public abstract getSchemeSpecificPart()Ljava/lang/String;
.end method

.method public abstract getUserInfo()Ljava/lang/String;
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 338
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAbsolute()Z
    .registers 2

    .prologue
    .line 162
    invoke-virtual {p0}, Landroid/net/Uri;->isRelative()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public abstract isHierarchical()Z
.end method

.method public isOpaque()Z
    .registers 2

    .prologue
    .line 144
    invoke-virtual {p0}, Landroid/net/Uri;->isHierarchical()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public abstract isRelative()Z
.end method

.method public abstract toString()Ljava/lang/String;
.end method
