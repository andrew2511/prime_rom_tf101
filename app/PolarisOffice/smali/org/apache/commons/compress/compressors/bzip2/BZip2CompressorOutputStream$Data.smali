.class final Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
.super Ljava/lang/Object;
.source "BZip2CompressorOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Data"
.end annotation


# instance fields
.field final block:[B

.field final fmap:[I

.field final ftab:[I

.field final generateMTFValues_yy:[B

.field final heap:[I

.field final inUse:[Z

.field final mainSort_bigDone:[Z

.field final mainSort_copy:[I

.field final mainSort_runningOrder:[I

.field final mtfFreq:[I

.field final parent:[I

.field final quadrant:[C

.field final selector:[B

.field final selectorMtf:[B

.field final sendMTFValues2_pos:[B

.field final sendMTFValues_code:[[I

.field final sendMTFValues_cost:[S

.field final sendMTFValues_fave:[I

.field final sendMTFValues_len:[[B

.field final sendMTFValues_rfreq:[[I

.field final sentMTFValues4_inUse16:[Z

.field final sfmap:[C

.field final stack_dd:[I

.field final stack_hh:[I

.field final stack_ll:[I

.field final unseqToSeq:[B

.field final weight:[I


# direct methods
.method constructor <init>(I)V
    .locals 8
    .parameter "blockSize100k"

    .prologue
    const/16 v7, 0x204

    const/16 v6, 0x3e8

    const/16 v5, 0x102

    const/16 v4, 0x100

    const/4 v3, 0x6

    .line 1870
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1821
    new-array v1, v4, [Z

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->inUse:[Z

    .line 1822
    new-array v1, v4, [B

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->unseqToSeq:[B

    .line 1823
    new-array v1, v5, [I

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->mtfFreq:[I

    .line 1824
    const/16 v1, 0x4652

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->selector:[B

    .line 1825
    const/16 v1, 0x4652

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->selectorMtf:[B

    .line 1827
    new-array v1, v4, [B

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->generateMTFValues_yy:[B

    .line 1828
    filled-new-array {v3, v5}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_len:[[B

    .line 1830
    filled-new-array {v3, v5}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_rfreq:[[I

    .line 1832
    new-array v1, v3, [I

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_fave:[I

    .line 1833
    new-array v1, v3, [S

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_cost:[S

    .line 1834
    filled-new-array {v3, v5}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_code:[[I

    .line 1836
    new-array v1, v3, [B

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues2_pos:[B

    .line 1837
    const/16 v1, 0x10

    new-array v1, v1, [Z

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sentMTFValues4_inUse16:[Z

    .line 1839
    new-array v1, v6, [I

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->stack_ll:[I

    .line 1840
    new-array v1, v6, [I

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->stack_hh:[I

    .line 1841
    new-array v1, v6, [I

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->stack_dd:[I

    .line 1843
    new-array v1, v4, [I

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->mainSort_runningOrder:[I

    .line 1844
    new-array v1, v4, [I

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->mainSort_copy:[I

    .line 1845
    new-array v1, v4, [Z

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->mainSort_bigDone:[Z

    .line 1847
    const/16 v1, 0x104

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->heap:[I

    .line 1848
    new-array v1, v7, [I

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->weight:[I

    .line 1849
    new-array v1, v7, [I

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->parent:[I

    .line 1851
    const v1, 0x10001

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->ftab:[I

    .line 1872
    const v1, 0x186a0

    mul-int v0, p1, v1

    .line 1873
    .local v0, n:I
    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v1, v1, 0x14

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    .line 1874
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    .line 1875
    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sfmap:[C

    .line 1876
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sfmap:[C

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->quadrant:[C

    .line 1877
    return-void
.end method
