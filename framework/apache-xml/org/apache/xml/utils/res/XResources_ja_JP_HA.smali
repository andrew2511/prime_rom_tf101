.class public Lorg/apache/xml/utils/res/XResources_ja_JP_HA;
.super Lorg/apache/xml/utils/res/XResourceBundle;
.source "XResources_ja_JP_HA.java"


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

    const/4 v8, 0x7

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 41
    const/16 v0, 0xe

    new-array v0, v0, [[Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "ui_language"

    aput-object v2, v1, v6

    const-string v2, "ja"

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "help_language"

    aput-object v2, v1, v6

    const-string v2, "ja"

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "language"

    aput-object v2, v1, v6

    const-string v2, "ja"

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    const/4 v1, 0x3

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "alphabet"

    aput-object v3, v2, v6

    new-instance v3, Lorg/apache/xml/utils/res/CharArrayWrapper;

    const/16 v4, 0x30

    new-array v4, v4, [C

    fill-array-data v4, :array_102

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "tradAlphabet"

    aput-object v3, v2, v6

    new-instance v3, Lorg/apache/xml/utils/res/CharArrayWrapper;

    const/16 v4, 0x1a

    new-array v4, v4, [C

    fill-array-data v4, :array_136

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "orientation"

    aput-object v3, v2, v6

    const-string v3, "LeftToRight"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "numbering"

    aput-object v3, v2, v6

    const-string v3, "multiplicative-additive"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "multiplierOrder"

    aput-object v2, v1, v6

    const-string v2, "follows"

    aput-object v2, v1, v7

    aput-object v1, v0, v8

    const/16 v1, 0x8

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "numberGroups"

    aput-object v3, v2, v6

    new-instance v3, Lorg/apache/xml/utils/res/IntArrayWrapper;

    new-array v4, v7, [I

    aput v7, v4, v6

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/res/IntArrayWrapper;-><init>([I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "multiplier"

    aput-object v2, v1, v6

    new-instance v2, Lorg/apache/xml/utils/res/LongArrayWrapper;

    new-array v3, v8, [J

    fill-array-data v3, :array_154

    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/LongArrayWrapper;-><init>([J)V

    aput-object v2, v1, v7

    aput-object v1, v0, v9

    const/16 v1, 0xa

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "multiplierChar"

    aput-object v3, v2, v6

    new-instance v3, Lorg/apache/xml/utils/res/CharArrayWrapper;

    new-array v4, v8, [C

    fill-array-data v4, :array_174

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "zero"

    aput-object v3, v2, v6

    new-instance v3, Lorg/apache/xml/utils/res/CharArrayWrapper;

    new-array v4, v6, [C

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "digits"

    aput-object v3, v2, v6

    new-instance v3, Lorg/apache/xml/utils/res/CharArrayWrapper;

    new-array v4, v9, [C

    fill-array-data v4, :array_180

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "tables"

    aput-object v3, v2, v6

    new-instance v3, Lorg/apache/xml/utils/res/StringArrayWrapper;

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "digits"

    aput-object v5, v4, v6

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/res/StringArrayWrapper;-><init>([Ljava/lang/String;)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    return-object v0

    :array_102
    .array-data 0x2
        0x42t 0x30t
        0x44t 0x30t
        0x46t 0x30t
        0x48t 0x30t
        0x4at 0x30t
        0x4bt 0x30t
        0x4dt 0x30t
        0x4ft 0x30t
        0x51t 0x30t
        0x53t 0x30t
        0x55t 0x30t
        0x57t 0x30t
        0x59t 0x30t
        0x5bt 0x30t
        0x5dt 0x30t
        0x5ft 0x30t
        0x61t 0x30t
        0x64t 0x30t
        0x66t 0x30t
        0x68t 0x30t
        0x6at 0x30t
        0x6bt 0x30t
        0x6ct 0x30t
        0x6dt 0x30t
        0x6et 0x30t
        0x6ft 0x30t
        0x72t 0x30t
        0x75t 0x30t
        0x78t 0x30t
        0x7bt 0x30t
        0x7et 0x30t
        0x7ft 0x30t
        0x80t 0x30t
        0x81t 0x30t
        0x82t 0x30t
        0x84t 0x30t
        0x86t 0x30t
        0x88t 0x30t
        0x89t 0x30t
        0x8at 0x30t
        0x8bt 0x30t
        0x8ct 0x30t
        0x8dt 0x30t
        0x8ft 0x30t
        0x90t 0x30t
        0x91t 0x30t
        0x92t 0x30t
        0x93t 0x30t
    .end array-data

    :array_136
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

    :array_154
    .array-data 0x8
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0x7ft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0x7ft
        0x0t 0xe1t 0xf5t 0x5t 0x0t 0x0t 0x0t 0x0t
        0x10t 0x27t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_174
    .array-data 0x2
        0xact 0x4et
        0x46t 0x51t
        0x4t 0x51t
        0x7t 0x4et
        0x43t 0x53t
        0x7et 0x76t
        0x41t 0x53t
    .end array-data

    nop

    :array_180
    .array-data 0x2
        0x0t 0x4et
        0x8ct 0x4et
        0x9t 0x4et
        0xdbt 0x56t
        0x94t 0x4et
        0x6dt 0x51t
        0x3t 0x4et
        0x6bt 0x51t
        0x5dt 0x4et
    .end array-data
.end method
