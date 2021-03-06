.class Lorg/apache/commons/compress/compressors/bzip2/CRC;
.super Ljava/lang/Object;
.source "CRC.java"


# static fields
.field private static final crc32Table:[I


# instance fields
.field private globalCrc:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/16 v0, 0x100

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/compress/compressors/bzip2/CRC;->crc32Table:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xb7t 0x1dt 0xc1t 0x4t
        0x6et 0x3bt 0x82t 0x9t
        0xd9t 0x26t 0x43t 0xdt
        0xdct 0x76t 0x4t 0x13t
        0x6bt 0x6bt 0xc5t 0x17t
        0xb2t 0x4dt 0x86t 0x1at
        0x5t 0x50t 0x47t 0x1et
        0xb8t 0xedt 0x8t 0x26t
        0xft 0xf0t 0xc9t 0x22t
        0xd6t 0xd6t 0x8at 0x2ft
        0x61t 0xcbt 0x4bt 0x2bt
        0x64t 0x9bt 0xct 0x35t
        0xd3t 0x86t 0xcdt 0x31t
        0xat 0xa0t 0x8et 0x3ct
        0xbdt 0xbdt 0x4ft 0x38t
        0x70t 0xdbt 0x11t 0x4ct
        0xc7t 0xc6t 0xd0t 0x48t
        0x1et 0xe0t 0x93t 0x45t
        0xa9t 0xfdt 0x52t 0x41t
        0xact 0xadt 0x15t 0x5ft
        0x1bt 0xb0t 0xd4t 0x5bt
        0xc2t 0x96t 0x97t 0x56t
        0x75t 0x8bt 0x56t 0x52t
        0xc8t 0x36t 0x19t 0x6at
        0x7ft 0x2bt 0xd8t 0x6et
        0xa6t 0xdt 0x9bt 0x63t
        0x11t 0x10t 0x5at 0x67t
        0x14t 0x40t 0x1dt 0x79t
        0xa3t 0x5dt 0xdct 0x7dt
        0x7at 0x7bt 0x9ft 0x70t
        0xcdt 0x66t 0x5et 0x74t
        0xe0t 0xb6t 0x23t 0x98t
        0x57t 0xabt 0xe2t 0x9ct
        0x8et 0x8dt 0xa1t 0x91t
        0x39t 0x90t 0x60t 0x95t
        0x3ct 0xc0t 0x27t 0x8bt
        0x8bt 0xddt 0xe6t 0x8ft
        0x52t 0xfbt 0xa5t 0x82t
        0xe5t 0xe6t 0x64t 0x86t
        0x58t 0x5bt 0x2bt 0xbet
        0xeft 0x46t 0xeat 0xbat
        0x36t 0x60t 0xa9t 0xb7t
        0x81t 0x7dt 0x68t 0xb3t
        0x84t 0x2dt 0x2ft 0xadt
        0x33t 0x30t 0xeet 0xa9t
        0xeat 0x16t 0xadt 0xa4t
        0x5dt 0xbt 0x6ct 0xa0t
        0x90t 0x6dt 0x32t 0xd4t
        0x27t 0x70t 0xf3t 0xd0t
        0xfet 0x56t 0xb0t 0xddt
        0x49t 0x4bt 0x71t 0xd9t
        0x4ct 0x1bt 0x36t 0xc7t
        0xfbt 0x6t 0xf7t 0xc3t
        0x22t 0x20t 0xb4t 0xcet
        0x95t 0x3dt 0x75t 0xcat
        0x28t 0x80t 0x3at 0xf2t
        0x9ft 0x9dt 0xfbt 0xf6t
        0x46t 0xbbt 0xb8t 0xfbt
        0xf1t 0xa6t 0x79t 0xfft
        0xf4t 0xf6t 0x3et 0xe1t
        0x43t 0xebt 0xfft 0xe5t
        0x9at 0xcdt 0xbct 0xe8t
        0x2dt 0xd0t 0x7dt 0xect
        0x77t 0x70t 0x86t 0x34t
        0xc0t 0x6dt 0x47t 0x30t
        0x19t 0x4bt 0x4t 0x3dt
        0xaet 0x56t 0xc5t 0x39t
        0xabt 0x6t 0x82t 0x27t
        0x1ct 0x1bt 0x43t 0x23t
        0xc5t 0x3dt 0x0t 0x2et
        0x72t 0x20t 0xc1t 0x2at
        0xcft 0x9dt 0x8et 0x12t
        0x78t 0x80t 0x4ft 0x16t
        0xa1t 0xa6t 0xct 0x1bt
        0x16t 0xbbt 0xcdt 0x1ft
        0x13t 0xebt 0x8at 0x1t
        0xa4t 0xf6t 0x4bt 0x5t
        0x7dt 0xd0t 0x8t 0x8t
        0xcat 0xcdt 0xc9t 0xct
        0x7t 0xabt 0x97t 0x78t
        0xb0t 0xb6t 0x56t 0x7ct
        0x69t 0x90t 0x15t 0x71t
        0xdet 0x8dt 0xd4t 0x75t
        0xdbt 0xddt 0x93t 0x6bt
        0x6ct 0xc0t 0x52t 0x6ft
        0xb5t 0xe6t 0x11t 0x62t
        0x2t 0xfbt 0xd0t 0x66t
        0xbft 0x46t 0x9ft 0x5et
        0x8t 0x5bt 0x5et 0x5at
        0xd1t 0x7dt 0x1dt 0x57t
        0x66t 0x60t 0xdct 0x53t
        0x63t 0x30t 0x9bt 0x4dt
        0xd4t 0x2dt 0x5at 0x49t
        0xdt 0xbt 0x19t 0x44t
        0xbat 0x16t 0xd8t 0x40t
        0x97t 0xc6t 0xa5t 0xact
        0x20t 0xdbt 0x64t 0xa8t
        0xf9t 0xfdt 0x27t 0xa5t
        0x4et 0xe0t 0xe6t 0xa1t
        0x4bt 0xb0t 0xa1t 0xbft
        0xfct 0xadt 0x60t 0xbbt
        0x25t 0x8bt 0x23t 0xb6t
        0x92t 0x96t 0xe2t 0xb2t
        0x2ft 0x2bt 0xadt 0x8at
        0x98t 0x36t 0x6ct 0x8et
        0x41t 0x10t 0x2ft 0x83t
        0xf6t 0xdt 0xeet 0x87t
        0xf3t 0x5dt 0xa9t 0x99t
        0x44t 0x40t 0x68t 0x9dt
        0x9dt 0x66t 0x2bt 0x90t
        0x2at 0x7bt 0xeat 0x94t
        0xe7t 0x1dt 0xb4t 0xe0t
        0x50t 0x0t 0x75t 0xe4t
        0x89t 0x26t 0x36t 0xe9t
        0x3et 0x3bt 0xf7t 0xedt
        0x3bt 0x6bt 0xb0t 0xf3t
        0x8ct 0x76t 0x71t 0xf7t
        0x55t 0x50t 0x32t 0xfat
        0xe2t 0x4dt 0xf3t 0xfet
        0x5ft 0xf0t 0xbct 0xc6t
        0xe8t 0xedt 0x7dt 0xc2t
        0x31t 0xcbt 0x3et 0xcft
        0x86t 0xd6t 0xfft 0xcbt
        0x83t 0x86t 0xb8t 0xd5t
        0x34t 0x9bt 0x79t 0xd1t
        0xedt 0xbdt 0x3at 0xdct
        0x5at 0xa0t 0xfbt 0xd8t
        0xeet 0xe0t 0xct 0x69t
        0x59t 0xfdt 0xcdt 0x6dt
        0x80t 0xdbt 0x8et 0x60t
        0x37t 0xc6t 0x4ft 0x64t
        0x32t 0x96t 0x8t 0x7at
        0x85t 0x8bt 0xc9t 0x7et
        0x5ct 0xadt 0x8at 0x73t
        0xebt 0xb0t 0x4bt 0x77t
        0x56t 0xdt 0x4t 0x4ft
        0xe1t 0x10t 0xc5t 0x4bt
        0x38t 0x36t 0x86t 0x46t
        0x8ft 0x2bt 0x47t 0x42t
        0x8at 0x7bt 0x0t 0x5ct
        0x3dt 0x66t 0xc1t 0x58t
        0xe4t 0x40t 0x82t 0x55t
        0x53t 0x5dt 0x43t 0x51t
        0x9et 0x3bt 0x1dt 0x25t
        0x29t 0x26t 0xdct 0x21t
        0xf0t 0x0t 0x9ft 0x2ct
        0x47t 0x1dt 0x5et 0x28t
        0x42t 0x4dt 0x19t 0x36t
        0xf5t 0x50t 0xd8t 0x32t
        0x2ct 0x76t 0x9bt 0x3ft
        0x9bt 0x6bt 0x5at 0x3bt
        0x26t 0xd6t 0x15t 0x3t
        0x91t 0xcbt 0xd4t 0x7t
        0x48t 0xedt 0x97t 0xat
        0xfft 0xf0t 0x56t 0xet
        0xfat 0xa0t 0x11t 0x10t
        0x4dt 0xbdt 0xd0t 0x14t
        0x94t 0x9bt 0x93t 0x19t
        0x23t 0x86t 0x52t 0x1dt
        0xet 0x56t 0x2ft 0xf1t
        0xb9t 0x4bt 0xeet 0xf5t
        0x60t 0x6dt 0xadt 0xf8t
        0xd7t 0x70t 0x6ct 0xfct
        0xd2t 0x20t 0x2bt 0xe2t
        0x65t 0x3dt 0xeat 0xe6t
        0xbct 0x1bt 0xa9t 0xebt
        0xbt 0x6t 0x68t 0xeft
        0xb6t 0xbbt 0x27t 0xd7t
        0x1t 0xa6t 0xe6t 0xd3t
        0xd8t 0x80t 0xa5t 0xdet
        0x6ft 0x9dt 0x64t 0xdat
        0x6at 0xcdt 0x23t 0xc4t
        0xddt 0xd0t 0xe2t 0xc0t
        0x4t 0xf6t 0xa1t 0xcdt
        0xb3t 0xebt 0x60t 0xc9t
        0x7et 0x8dt 0x3et 0xbdt
        0xc9t 0x90t 0xfft 0xb9t
        0x10t 0xb6t 0xbct 0xb4t
        0xa7t 0xabt 0x7dt 0xb0t
        0xa2t 0xfbt 0x3at 0xaet
        0x15t 0xe6t 0xfbt 0xaat
        0xcct 0xc0t 0xb8t 0xa7t
        0x7bt 0xddt 0x79t 0xa3t
        0xc6t 0x60t 0x36t 0x9bt
        0x71t 0x7dt 0xf7t 0x9ft
        0xa8t 0x5bt 0xb4t 0x92t
        0x1ft 0x46t 0x75t 0x96t
        0x1at 0x16t 0x32t 0x88t
        0xadt 0xbt 0xf3t 0x8ct
        0x74t 0x2dt 0xb0t 0x81t
        0xc3t 0x30t 0x71t 0x85t
        0x99t 0x90t 0x8at 0x5dt
        0x2et 0x8dt 0x4bt 0x59t
        0xf7t 0xabt 0x8t 0x54t
        0x40t 0xb6t 0xc9t 0x50t
        0x45t 0xe6t 0x8et 0x4et
        0xf2t 0xfbt 0x4ft 0x4at
        0x2bt 0xddt 0xct 0x47t
        0x9ct 0xc0t 0xcdt 0x43t
        0x21t 0x7dt 0x82t 0x7bt
        0x96t 0x60t 0x43t 0x7ft
        0x4ft 0x46t 0x0t 0x72t
        0xf8t 0x5bt 0xc1t 0x76t
        0xfdt 0xbt 0x86t 0x68t
        0x4at 0x16t 0x47t 0x6ct
        0x93t 0x30t 0x4t 0x61t
        0x24t 0x2dt 0xc5t 0x65t
        0xe9t 0x4bt 0x9bt 0x11t
        0x5et 0x56t 0x5at 0x15t
        0x87t 0x70t 0x19t 0x18t
        0x30t 0x6dt 0xd8t 0x1ct
        0x35t 0x3dt 0x9ft 0x2t
        0x82t 0x20t 0x5et 0x6t
        0x5bt 0x6t 0x1dt 0xbt
        0xect 0x1bt 0xdct 0xft
        0x51t 0xa6t 0x93t 0x37t
        0xe6t 0xbbt 0x52t 0x33t
        0x3ft 0x9dt 0x11t 0x3et
        0x88t 0x80t 0xd0t 0x3at
        0x8dt 0xd0t 0x97t 0x24t
        0x3at 0xcdt 0x56t 0x20t
        0xe3t 0xebt 0x15t 0x2dt
        0x54t 0xf6t 0xd4t 0x29t
        0x79t 0x26t 0xa9t 0xc5t
        0xcet 0x3bt 0x68t 0xc1t
        0x17t 0x1dt 0x2bt 0xcct
        0xa0t 0x0t 0xeat 0xc8t
        0xa5t 0x50t 0xadt 0xd6t
        0x12t 0x4dt 0x6ct 0xd2t
        0xcbt 0x6bt 0x2ft 0xdft
        0x7ct 0x76t 0xeet 0xdbt
        0xc1t 0xcbt 0xa1t 0xe3t
        0x76t 0xd6t 0x60t 0xe7t
        0xaft 0xf0t 0x23t 0xeat
        0x18t 0xedt 0xe2t 0xeet
        0x1dt 0xbdt 0xa5t 0xf0t
        0xaat 0xa0t 0x64t 0xf4t
        0x73t 0x86t 0x27t 0xf9t
        0xc4t 0x9bt 0xe6t 0xfdt
        0x9t 0xfdt 0xb8t 0x89t
        0xbet 0xe0t 0x79t 0x8dt
        0x67t 0xc6t 0x3at 0x80t
        0xd0t 0xdbt 0xfbt 0x84t
        0xd5t 0x8bt 0xbct 0x9at
        0x62t 0x96t 0x7dt 0x9et
        0xbbt 0xb0t 0x3et 0x93t
        0xct 0xadt 0xfft 0x97t
        0xb1t 0x10t 0xb0t 0xaft
        0x6t 0xdt 0x71t 0xabt
        0xdft 0x2bt 0x32t 0xa6t
        0x68t 0x36t 0xf3t 0xa2t
        0x6dt 0x66t 0xb4t 0xbct
        0xdat 0x7bt 0x75t 0xb8t
        0x3t 0x5dt 0x36t 0xb5t
        0xb4t 0x40t 0xf7t 0xb1t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->initialiseCRC()V

    .line 96
    return-void
.end method


# virtual methods
.method getFinalCRC()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/CRC;->globalCrc:I

    xor-int/lit8 v0, v0, -0x1

    return v0
.end method

.method getGlobalCRC()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/CRC;->globalCrc:I

    return v0
.end method

.method initialiseCRC()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/CRC;->globalCrc:I

    .line 100
    return-void
.end method

.method setGlobalCRC(I)V
    .locals 0
    .parameter "newCrc"

    .prologue
    .line 111
    iput p1, p0, Lorg/apache/commons/compress/compressors/bzip2/CRC;->globalCrc:I

    .line 112
    return-void
.end method

.method updateCRC(I)V
    .locals 3
    .parameter "inCh"

    .prologue
    .line 115
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/CRC;->globalCrc:I

    shr-int/lit8 v1, v1, 0x18

    xor-int v0, v1, p1

    .line 116
    .local v0, temp:I
    if-gez v0, :cond_0

    .line 117
    add-int/lit16 v0, v0, 0x100

    .line 119
    :cond_0
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/CRC;->globalCrc:I

    shl-int/lit8 v1, v1, 0x8

    sget-object v2, Lorg/apache/commons/compress/compressors/bzip2/CRC;->crc32Table:[I

    aget v2, v2, v0

    xor-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/CRC;->globalCrc:I

    .line 120
    return-void
.end method

.method updateCRC(II)V
    .locals 6
    .parameter "inCh"
    .parameter "repeat"

    .prologue
    .line 123
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/CRC;->globalCrc:I

    .local v0, globalCrcShadow:I
    move v1, p2

    .line 124
    .end local p2
    .local v1, repeat:I
    :goto_0
    add-int/lit8 p2, v1, -0x1

    .end local v1           #repeat:I
    .restart local p2
    if-lez v1, :cond_1

    .line 125
    shr-int/lit8 v3, v0, 0x18

    xor-int v2, v3, p1

    .line 126
    .local v2, temp:I
    shl-int/lit8 v3, v0, 0x8

    sget-object v4, Lorg/apache/commons/compress/compressors/bzip2/CRC;->crc32Table:[I

    if-ltz v2, :cond_0

    move v5, v2

    :goto_1
    aget v4, v4, v5

    xor-int v0, v3, v4

    move v1, p2

    .line 129
    .end local p2
    .restart local v1       #repeat:I
    goto :goto_0

    .line 126
    .end local v1           #repeat:I
    .restart local p2
    :cond_0
    add-int/lit16 v5, v2, 0x100

    goto :goto_1

    .line 130
    .end local v2           #temp:I
    :cond_1
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/CRC;->globalCrc:I

    .line 131
    return-void
.end method
