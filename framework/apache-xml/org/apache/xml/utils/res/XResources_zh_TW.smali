.class public Lorg/apache/xml/utils/res/XResources_zh_TW;
.super Lorg/apache/xml/utils/res/XResourceBundle;
.source "XResources_zh_TW.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/apache/xml/utils/res/XResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public getContents()[[Ljava/lang/Object;
    .registers 11

    .prologue
    const/16 v9, 0x9

    const/4 v8, 0x5

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 41
    const/16 v0, 0xe

    new-array v0, v0, [[Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "ui_language"

    aput-object v2, v1, v7

    const-string v2, "zh"

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "help_language"

    aput-object v2, v1, v7

    const-string v2, "zh"

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "language"

    aput-object v2, v1, v7

    const-string v2, "zh"

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    const/4 v1, 0x3

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "alphabet"

    aput-object v3, v2, v7

    new-instance v3, Lorg/apache/xml/utils/res/CharArrayWrapper;

    const/16 v4, 0x1a

    new-array v4, v4, [C

    fill-array-data v4, :array_108

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "tradAlphabet"

    aput-object v3, v2, v7

    new-instance v3, Lorg/apache/xml/utils/res/CharArrayWrapper;

    const/16 v4, 0x1a

    new-array v4, v4, [C

    fill-array-data v4, :array_126

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "orientation"

    aput-object v2, v1, v7

    const-string v2, "LeftToRight"

    aput-object v2, v1, v6

    aput-object v1, v0, v8

    const/4 v1, 0x6

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "numbering"

    aput-object v3, v2, v7

    const-string v3, "multiplicative-additive"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "multiplierOrder"

    aput-object v3, v2, v7

    const-string v3, "follows"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "numberGroups"

    aput-object v3, v2, v7

    new-instance v3, Lorg/apache/xml/utils/res/IntArrayWrapper;

    new-array v4, v6, [I

    aput v6, v4, v7

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/res/IntArrayWrapper;-><init>([I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "zero"

    aput-object v2, v1, v7

    new-instance v2, Lorg/apache/xml/utils/res/CharArrayWrapper;

    new-array v3, v6, [C

    const v4, 0x96f6

    aput-char v4, v3, v7

    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    aput-object v2, v1, v6

    aput-object v1, v0, v9

    const/16 v1, 0xa

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "multiplier"

    aput-object v3, v2, v7

    new-instance v3, Lorg/apache/xml/utils/res/LongArrayWrapper;

    new-array v4, v8, [J

    fill-array-data v4, :array_144

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/res/LongArrayWrapper;-><init>([J)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "multiplierChar"

    aput-object v3, v2, v7

    new-instance v3, Lorg/apache/xml/utils/res/CharArrayWrapper;

    new-array v4, v8, [C

    fill-array-data v4, :array_15c

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "digits"

    aput-object v3, v2, v7

    new-instance v3, Lorg/apache/xml/utils/res/CharArrayWrapper;

    new-array v4, v9, [C

    fill-array-data v4, :array_166

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "tables"

    aput-object v3, v2, v7

    new-instance v3, Lorg/apache/xml/utils/res/StringArrayWrapper;

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "digits"

    aput-object v5, v4, v7

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/res/StringArrayWrapper;-><init>([Ljava/lang/String;)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    return-object v0

    nop

    :array_108
    .array-data 0x2
        0x21t 0xfft
        0x22t 0xfft
        0x23t 0xfft
        0x24t 0xfft
        0x25t 0xfft
        0x26t 0xfft
        0x27t 0xfft
        0x28t 0xfft
        0x29t 0xfft
        0x2at 0xfft
        0x2bt 0xfft
        0x2ct 0xfft
        0x2dt 0xfft
        0x2et 0xfft
        0x2ft 0xfft
        0x30t 0xfft
        0x31t 0xfft
        0x32t 0xfft
        0x33t 0xfft
        0x34t 0xfft
        0x35t 0xfft
        0x36t 0xfft
        0x37t 0xfft
        0x38t 0xfft
        0x39t 0xfft
        0x3at 0xfft
    .end array-data

    :array_126
    .array-data 0x2
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
    .end array-data

    :array_144
    .array-data 0x8
        0x0t 0xe1t 0xf5t 0x5t 0x0t 0x0t 0x0t 0x0t
        0x10t 0x27t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_15c
    .array-data 0x2
        0x4t 0x51t
        0x2ct 0x84t
        0xdft 0x4et
        0x70t 0x4ft
        0xfet 0x62t
    .end array-data

    nop

    :array_166
    .array-data 0x2
        0xf9t 0x58t
        0xb3t 0x8ct
        0xc3t 0x53t
        0x86t 0x80t
        0xdt 0x4ft
        0x78t 0x96t
        0xd2t 0x67t
        0x4ct 0x63t
        0x96t 0x73t
    .end array-data
.end method
