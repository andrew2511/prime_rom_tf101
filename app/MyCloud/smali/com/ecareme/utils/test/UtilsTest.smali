.class public Lcom/ecareme/utils/test/UtilsTest;
.super Ljunit/framework/TestCase;
.source "UtilsTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method


# virtual methods
.method public testByteUtils_readBytes()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    const/16 v3, 0xfa0

    invoke-static {v3}, Lcom/ecareme/utils/ByteUtils;->generateBytes(I)[B

    move-result-object v1

    .line 23
    .local v1, bytes:[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 24
    .local v0, bais:Ljava/io/ByteArrayInputStream;
    invoke-static {v0}, Lcom/ecareme/utils/ByteUtils;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 25
    .local v2, ret:[B
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    invoke-static {v3}, Lcom/ecareme/utils/test/UtilsTest;->assertTrue(Z)V

    .line 26
    return-void
.end method

.method public testByteUtils_saveBytes()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    const/16 v2, 0xfa0

    invoke-static {v2}, Lcom/ecareme/utils/ByteUtils;->generateBytes(I)[B

    move-result-object v1

    .line 31
    .local v1, bytes:[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 32
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    invoke-static {v1, v0}, Lcom/ecareme/utils/ByteUtils;->saveBytes([BLjava/io/OutputStream;)V

    .line 33
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    invoke-static {v2}, Lcom/ecareme/utils/test/UtilsTest;->assertTrue(Z)V

    .line 34
    return-void
.end method

.method public testStringUtil_toBoolean()V
    .locals 2

    .prologue
    .line 38
    const-string v0, "here is true"

    const-string v1, "2"

    invoke-static {v1}, Lcom/ecareme/utils/StringUtils;->toBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/ecareme/utils/test/UtilsTest;->assertTrue(Ljava/lang/String;Z)V

    .line 39
    const-string v0, "here is false"

    const-string v1, "0"

    invoke-static {v1}, Lcom/ecareme/utils/StringUtils;->toBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/ecareme/utils/test/UtilsTest;->assertFalse(Ljava/lang/String;Z)V

    .line 40
    const-string v0, "here is true"

    const-string v1, "On"

    invoke-static {v1}, Lcom/ecareme/utils/StringUtils;->toBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/ecareme/utils/test/UtilsTest;->assertTrue(Ljava/lang/String;Z)V

    .line 41
    const-string v0, "here is false"

    const-string v1, "oFf"

    invoke-static {v1}, Lcom/ecareme/utils/StringUtils;->toBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/ecareme/utils/test/UtilsTest;->assertFalse(Ljava/lang/String;Z)V

    .line 42
    const-string v0, "here is true"

    const-string v1, "yes"

    invoke-static {v1}, Lcom/ecareme/utils/StringUtils;->toBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/ecareme/utils/test/UtilsTest;->assertTrue(Ljava/lang/String;Z)V

    .line 43
    const-string v0, "here is false"

    const-string v1, "nO"

    invoke-static {v1}, Lcom/ecareme/utils/StringUtils;->toBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/ecareme/utils/test/UtilsTest;->assertFalse(Ljava/lang/String;Z)V

    .line 44
    const-string v0, "here is true"

    const-string v1, "TrUe"

    invoke-static {v1}, Lcom/ecareme/utils/StringUtils;->toBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/ecareme/utils/test/UtilsTest;->assertTrue(Ljava/lang/String;Z)V

    .line 45
    const-string v0, "here is false"

    const-string v1, "falSE"

    invoke-static {v1}, Lcom/ecareme/utils/StringUtils;->toBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/ecareme/utils/test/UtilsTest;->assertFalse(Ljava/lang/String;Z)V

    .line 46
    return-void
.end method
