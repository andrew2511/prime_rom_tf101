.class public Lcom/asus/reader/bookconverter/Txt2Epub;
.super Ljava/lang/Object;
.source "Txt2Epub.java"


# static fields
.field private static charsetLaguageCodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static localeCharsetMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/asus/reader/bookconverter/Txt2Epub$1;

    invoke-direct {v0}, Lcom/asus/reader/bookconverter/Txt2Epub$1;-><init>()V

    sput-object v0, Lcom/asus/reader/bookconverter/Txt2Epub;->localeCharsetMap:Ljava/util/HashMap;

    .line 84
    new-instance v0, Lcom/asus/reader/bookconverter/Txt2Epub$2;

    invoke-direct {v0}, Lcom/asus/reader/bookconverter/Txt2Epub$2;-><init>()V

    sput-object v0, Lcom/asus/reader/bookconverter/Txt2Epub;->charsetLaguageCodeMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)I
    .locals 10
    .parameter "srcTxtPath"
    .parameter "destFilePath"
    .parameter "sysLocale"

    .prologue
    .line 157
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 158
    .local v4, sysLanguage:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, sysCountry:Ljava/lang/String;
    const-string v5, "en-US"

    .line 161
    .local v5, xmlLang:Ljava/lang/String;
    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 162
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 165
    :cond_0
    const/4 v0, 0x0

    .line 166
    .local v0, ansiCharset:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 167
    const-string v6, "zh"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 168
    sget-object v6, Lcom/asus/reader/bookconverter/Txt2Epub;->localeCharsetMap:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #ansiCharset:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 173
    .restart local v0       #ansiCharset:Ljava/lang/String;
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 174
    const-string v0, "ISO-8859-1"

    .line 177
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4

    .line 179
    const/4 v6, 0x1

    .line 192
    :goto_1
    return v6

    .line 170
    .end local v1           #f:Ljava/io/File;
    :cond_3
    sget-object v6, Lcom/asus/reader/bookconverter/Txt2Epub;->localeCharsetMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #ansiCharset:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #ansiCharset:Ljava/lang/String;
    goto :goto_0

    .line 182
    .restart local v1       #f:Ljava/io/File;
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/32 v8, 0x100000

    cmp-long v6, v6, v8

    if-lez v6, :cond_5

    .line 183
    const/4 v6, 0x3

    goto :goto_1

    .line 187
    :cond_5
    invoke-static {p0, v0, p1, v5}, Lcom/asus/reader/bookconverter/Txt2Epub;->convertTxtString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 188
    .local v2, isZipSuccess:Z
    if-nez v2, :cond_6

    .line 189
    const-string v6, "Txt2Epub"

    const-string v7, "zip to epub error!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v6, 0x2

    goto :goto_1

    .line 192
    :cond_6
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public static convertTxtString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "srcTxtPath"
    .parameter "defaultCharset"
    .parameter "destFilePath"
    .parameter "xmlLang"

    .prologue
    .line 198
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 199
    .local v0, dest:Ljava/io/FileOutputStream;
    new-instance v4, Ljava/util/zip/ZipOutputStream;

    new-instance p2, Ljava/io/BufferedOutputStream;

    .end local p2
    invoke-direct {p2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, p2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 201
    .local v4, out:Ljava/util/zip/ZipOutputStream;
    new-instance p2, Ljava/util/zip/ZipEntry;

    const-string v0, "mimetype"

    .end local v0           #dest:Ljava/io/FileOutputStream;
    invoke-direct {p2, v0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 202
    .local p2, entry1:Ljava/util/zip/ZipEntry;
    invoke-virtual {v4, p2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 203
    const-string p2, "application/epub+zip"

    .end local p2           #entry1:Ljava/util/zip/ZipEntry;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "application/epub+zip"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v4, p2, v0, v1}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 205
    invoke-static {p3}, Lcom/asus/reader/bookconverter/Txt2Epub;->getCoverHtmlContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 206
    .local p2, coverHtmlContent:Ljava/lang/String;
    new-instance v0, Ljava/util/zip/ZipEntry;

    const-string v1, "OPS/cover.html"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 207
    .local v0, entry2:Ljava/util/zip/ZipEntry;
    invoke-virtual {v4, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 208
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .end local v0           #entry2:Ljava/util/zip/ZipEntry;
    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    .end local p2           #coverHtmlContent:Ljava/lang/String;
    array-length p2, p2

    invoke-virtual {v4, v0, v1, p2}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 210
    new-instance p2, Ljava/util/zip/ZipEntry;

    const-string v0, "OPS/txt.html"

    invoke-direct {p2, v0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 211
    .local p2, entry3:Ljava/util/zip/ZipEntry;
    invoke-virtual {v4, p2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 214
    new-instance p2, Ljava/io/File;

    .end local p2           #entry3:Ljava/util/zip/ZipEntry;
    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    .local p2, file:Ljava/io/File;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 217
    .local v1, fis:Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 219
    .local v3, in:Ljava/io/BufferedInputStream;
    const/16 p2, 0x1000

    new-array p2, p2, [B

    .line 220
    .local p2, buf_0:[B
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 221
    .local v2, fiss:Ljava/io/FileInputStream;
    new-instance p0, Lorg/mozilla/universalchardet/UniversalDetector;

    .end local p0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/mozilla/universalchardet/UniversalDetector;-><init>(Lorg/mozilla/universalchardet/CharsetListener;)V

    .line 223
    .local p0, detector:Lorg/mozilla/universalchardet/UniversalDetector;
    :goto_0
    invoke-virtual {v2, p2}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    .local v0, nread:I
    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/UniversalDetector;->isDone()Z

    move-result v5

    if-nez v5, :cond_0

    .line 224
    const/4 v5, 0x0

    invoke-virtual {p0, p2, v5, v0}, Lorg/mozilla/universalchardet/UniversalDetector;->handleData([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 279
    .end local v0           #nread:I
    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v2           #fiss:Ljava/io/FileInputStream;
    .end local v3           #in:Ljava/io/BufferedInputStream;
    .end local v4           #out:Ljava/util/zip/ZipOutputStream;
    .end local p0           #detector:Lorg/mozilla/universalchardet/UniversalDetector;
    .end local p1
    .end local p2           #buf_0:[B
    :catch_0
    move-exception p0

    .line 280
    .local p0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 281
    const/4 p0, 0x0

    .line 287
    .end local p0           #e:Ljava/io/FileNotFoundException;
    :goto_1
    return p0

    .line 226
    .restart local v0       #nread:I
    .restart local v1       #fis:Ljava/io/FileInputStream;
    .restart local v2       #fiss:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/BufferedInputStream;
    .restart local v4       #out:Ljava/util/zip/ZipOutputStream;
    .local p0, detector:Lorg/mozilla/universalchardet/UniversalDetector;
    .restart local p1
    .restart local p2       #buf_0:[B
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/UniversalDetector;->dataEnd()V

    .line 227
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/UniversalDetector;->getDetectedCharset()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, encoding:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/UniversalDetector;->reset()V

    .line 230
    if-eqz v0, :cond_3

    .line 232
    new-instance p1, Ljava/io/BufferedReader;

    .end local p1
    new-instance p0, Ljava/io/InputStreamReader;

    .end local p0           #detector:Lorg/mozilla/universalchardet/UniversalDetector;
    invoke-direct {p0, v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p1, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 233
    .local p1, reader:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v5, "utf"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 234
    invoke-static {p2, v0}, Lcom/asus/reader/bookconverter/Txt2Epub;->getUnicodeLanguageCode([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 235
    .local p0, languageCode:Ljava/lang/String;
    move-object p3, p0

    move-object p2, p1

    .line 246
    .end local p0           #languageCode:Ljava/lang/String;
    .end local p1           #reader:Ljava/io/BufferedReader;
    .local p2, reader:Ljava/io/BufferedReader;
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, Lcom/asus/reader/bookconverter/Txt2Epub;->getHtmlHeadContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "<p>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 247
    .local p0, txtHead:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .end local v0           #encoding:Ljava/lang/String;
    move-result-object p0

    .end local p0           #txtHead:Ljava/lang/String;
    array-length p0, p0

    invoke-virtual {v4, p1, v0, p0}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 249
    const/16 p0, 0x400

    new-array p0, p0, [C

    .line 251
    .local p0, buf:[C
    const-string p1, ""

    .line 252
    .local p1, tStr:Ljava/lang/String;
    :goto_3
    invoke-virtual {p2, p0}, Ljava/io/BufferedReader;->read([C)I

    move-result p1

    .local p1, n:I
    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    .line 253
    new-instance p1, Ljava/lang/String;

    .end local p1           #n:I
    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    invoke-static {p1}, Lcom/asus/reader/bookconverter/Txt2Epub;->getTxtHtmlContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 254
    .local p1, tStr:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v4, v0, v5, v6}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    .line 282
    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v2           #fiss:Ljava/io/FileInputStream;
    .end local v3           #in:Ljava/io/BufferedInputStream;
    .end local v4           #out:Ljava/util/zip/ZipOutputStream;
    .end local p0           #buf:[C
    .end local p1           #tStr:Ljava/lang/String;
    .end local p2           #reader:Ljava/io/BufferedReader;
    :catch_1
    move-exception p0

    .line 283
    .local p0, e:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 284
    const/4 p0, 0x0

    goto :goto_1

    .line 237
    .end local p0           #e:Ljava/io/IOException;
    .restart local v0       #encoding:Ljava/lang/String;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    .restart local v2       #fiss:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/BufferedInputStream;
    .restart local v4       #out:Ljava/util/zip/ZipOutputStream;
    .local p1, reader:Ljava/io/BufferedReader;
    .local p2, buf_0:[B
    :cond_1
    :try_start_2
    sget-object p0, Lcom/asus/reader/bookconverter/Txt2Epub;->charsetLaguageCodeMap:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 239
    .local p0, languageCode:Ljava/lang/String;
    if-eqz p0, :cond_2

    .line 240
    move-object p3, p0

    :cond_2
    move-object p2, p1

    .line 241
    .end local p1           #reader:Ljava/io/BufferedReader;
    .local p2, reader:Ljava/io/BufferedReader;
    goto :goto_2

    .line 243
    .local p0, detector:Lorg/mozilla/universalchardet/UniversalDetector;
    .local p1, defaultCharset:Ljava/lang/String;
    .local p2, buf_0:[B
    :cond_3
    new-instance p0, Ljava/io/BufferedReader;

    .end local p0           #detector:Lorg/mozilla/universalchardet/UniversalDetector;
    new-instance p2, Ljava/io/InputStreamReader;

    .end local p2           #buf_0:[B
    invoke-direct {p2, v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .local p0, reader:Ljava/io/BufferedReader;
    move-object p2, p0

    .end local p0           #reader:Ljava/io/BufferedReader;
    .local p2, reader:Ljava/io/BufferedReader;
    goto :goto_2

    .line 257
    .end local v0           #encoding:Ljava/lang/String;
    .local p0, buf:[C
    .local p1, n:I
    :cond_4
    const-string p0, "</p></body></html>"

    .line 258
    .local p0, txtFoot:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .end local p1           #n:I
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .end local p0           #txtFoot:Ljava/lang/String;
    array-length p0, p0

    invoke-virtual {v4, p1, v0, p0}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 260
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 261
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 262
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 263
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V

    .line 266
    new-instance p0, Ljava/util/zip/ZipEntry;

    const-string p1, "OPS/epb.ncx"

    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 267
    .local p0, entry4:Ljava/util/zip/ZipEntry;
    invoke-virtual {v4, p0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 268
    const-string p0, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><!DOCTYPE ncx PUBLIC \"-//NISO//DTD ncx 2005-1//EN\" \"http://www.daisy.org/z3986/2005/ncx-2005-1.dtd\"><ncx xmlns=\"http://www.daisy.org/z3986/2005/ncx/\" version=\"2005-1\"><head><meta name=\"dtb:uid\" content=\"17B0941B-6C30-1014-A9C3-DB6449A76BF6\"/><meta name=\"epub-creator\" content=\"ASUS\"/><meta name=\"dtb:depth\" content=\"1\"/><meta name=\"dtb:totalPageCount\" content=\"0\"/><meta name=\"dtb:maxPageNumber\" content=\"0\"/></head><docTitle><text>ASUS TXT</text></docTitle><docAuthor><text>ASUS Converter</text></docAuthor><navMap><navPoint id=\"cover\" playOrder=\"0\"><navLabel><text>cover</text></navLabel><content src=\"cover.html\"/></navPoint><navPoint id=\"txt\" playOrder=\"1\"><navLabel><text>content</text></navLabel><content src=\"txt.html\"/></navPoint></navMap></ncx>"

    .end local p0           #entry4:Ljava/util/zip/ZipEntry;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 p1, 0x0

    const-string p2, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><!DOCTYPE ncx PUBLIC \"-//NISO//DTD ncx 2005-1//EN\" \"http://www.daisy.org/z3986/2005/ncx-2005-1.dtd\"><ncx xmlns=\"http://www.daisy.org/z3986/2005/ncx/\" version=\"2005-1\"><head><meta name=\"dtb:uid\" content=\"17B0941B-6C30-1014-A9C3-DB6449A76BF6\"/><meta name=\"epub-creator\" content=\"ASUS\"/><meta name=\"dtb:depth\" content=\"1\"/><meta name=\"dtb:totalPageCount\" content=\"0\"/><meta name=\"dtb:maxPageNumber\" content=\"0\"/></head><docTitle><text>ASUS TXT</text></docTitle><docAuthor><text>ASUS Converter</text></docAuthor><navMap><navPoint id=\"cover\" playOrder=\"0\"><navLabel><text>cover</text></navLabel><content src=\"cover.html\"/></navPoint><navPoint id=\"txt\" playOrder=\"1\"><navLabel><text>content</text></navLabel><content src=\"txt.html\"/></navPoint></navMap></ncx>"

    .end local p2           #reader:Ljava/io/BufferedReader;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    array-length p2, p2

    invoke-virtual {v4, p0, p1, p2}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 270
    new-instance p0, Ljava/util/zip/ZipEntry;

    const-string p1, "OPS/epb.opf"

    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 271
    .local p0, entry5:Ljava/util/zip/ZipEntry;
    invoke-virtual {v4, p0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 272
    const-string p0, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><package xmlns=\"http://www.idpf.org/2007/opf\" unique-identifier=\"EPB-UUID\" version=\"2.0\"><metadata xmlns:opf=\"http://www.idpf.org/2007/opf\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\"><dc:title>ASUS_TITLE</dc:title><dc:creator opf:role=\"aut\" opf:file-as=\"Tolstoy, Leo\">ASUS_CREATOR</dc:creator><dc:publisher>ASUS_CONVERTOR</dc:publisher><dc:date opf:event=\"epub-publication\">2011-01-01</dc:date><dc:subject>ASUS_SUBJECT</dc:subject><dc:source>ASUS_SOURCE</dc:source><dc:rights>ASUS_RIGHTS</dc:rights><dc:identifier id=\"EPB-UUID\">urn:uuid:19B0941B-7C30-1014-A9C3-DB6449A76BF6</dc:identifier><dc:language>ASUS_LANGUAGE</dc:language></metadata><manifest><item id=\"cover\" href=\"cover.html\" media-type=\"application/xhtml+xml\"/><item id=\"txt\" href=\"txt.html\" media-type=\"application/xhtml+xml\"/><item id=\"ncx\" href=\"epb.ncx\" media-type=\"application/x-dtbncx+xml\"/></manifest><spine toc=\"ncx\"><itemref idref=\"cover\" linear=\"yes\"/><itemref idref=\"txt\" linear=\"yes\"/></spine></package>"

    .end local p0           #entry5:Ljava/util/zip/ZipEntry;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 p1, 0x0

    const-string p2, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><package xmlns=\"http://www.idpf.org/2007/opf\" unique-identifier=\"EPB-UUID\" version=\"2.0\"><metadata xmlns:opf=\"http://www.idpf.org/2007/opf\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\"><dc:title>ASUS_TITLE</dc:title><dc:creator opf:role=\"aut\" opf:file-as=\"Tolstoy, Leo\">ASUS_CREATOR</dc:creator><dc:publisher>ASUS_CONVERTOR</dc:publisher><dc:date opf:event=\"epub-publication\">2011-01-01</dc:date><dc:subject>ASUS_SUBJECT</dc:subject><dc:source>ASUS_SOURCE</dc:source><dc:rights>ASUS_RIGHTS</dc:rights><dc:identifier id=\"EPB-UUID\">urn:uuid:19B0941B-7C30-1014-A9C3-DB6449A76BF6</dc:identifier><dc:language>ASUS_LANGUAGE</dc:language></metadata><manifest><item id=\"cover\" href=\"cover.html\" media-type=\"application/xhtml+xml\"/><item id=\"txt\" href=\"txt.html\" media-type=\"application/xhtml+xml\"/><item id=\"ncx\" href=\"epb.ncx\" media-type=\"application/x-dtbncx+xml\"/></manifest><spine toc=\"ncx\"><itemref idref=\"cover\" linear=\"yes\"/><itemref idref=\"txt\" linear=\"yes\"/></spine></package>"

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    array-length p2, p2

    invoke-virtual {v4, p0, p1, p2}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 274
    new-instance p0, Ljava/util/zip/ZipEntry;

    const-string p1, "META-INF/container.xml"

    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 275
    .local p0, entry6:Ljava/util/zip/ZipEntry;
    invoke-virtual {v4, p0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 276
    const-string p0, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><container xmlns=\"urn:oasis:names:tc:opendocument:xmlns:container\" version=\"1.0\"><rootfiles><rootfile full-path=\"OPS/epb.opf\" media-type=\"application/oebps-package+xml\"/></rootfiles></container>"

    .end local p0           #entry6:Ljava/util/zip/ZipEntry;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 p1, 0x0

    const-string p2, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><container xmlns=\"urn:oasis:names:tc:opendocument:xmlns:container\" version=\"1.0\"><rootfiles><rootfile full-path=\"OPS/epb.opf\" media-type=\"application/oebps-package+xml\"/></rootfiles></container>"

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    array-length p2, p2

    invoke-virtual {v4, p0, p1, p2}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 277
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 278
    const/4 p0, 0x1

    goto/16 :goto_1

    .line 285
    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v2           #fiss:Ljava/io/FileInputStream;
    .end local v3           #in:Ljava/io/BufferedInputStream;
    .end local v4           #out:Ljava/util/zip/ZipOutputStream;
    :catch_2
    move-exception p0

    .line 286
    .local p0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 287
    const/4 p0, 0x0

    goto/16 :goto_1
.end method

.method public static final getCoverHtmlContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "xmlLang"

    .prologue
    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<html xmlns=\"http://www.w3.org/1999/xhtml\"  xml:lang=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" >"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<head>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<title>ASUS TXT Test</title>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<meta http-equiv=\"Content-Type\" content=\"application/xhtml+xml; charset=utf-8\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<meta name=\"EPB-UUID\" content=\"17B0941B-6C30-1014-A9C3-DB6449A76BF6\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</head>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<body>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<h1> ASUS TXT TITLE </h1>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</body>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getHtmlHeadContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "xmlLang"

    .prologue
    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<html xmlns=\"http://www.w3.org/1999/xhtml\"  xml:lang=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" >"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<head>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<title>ASUS TXT Test</title>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<meta http-equiv=\"Content-Type\" content=\"application/xhtml+xml; charset=utf-8\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<meta name=\"EPB-UUID\" content=\"17B0941B-6C30-1014-A9C3-DB6449A76BF6\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</head>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<body>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTxtHtmlContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "txtContent"

    .prologue
    .line 293
    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 294
    const-string v0, "<"

    const-string v1, "&lt;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 295
    const-string v0, ">"

    const-string v1, "&gt;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 296
    const-string v0, "\""

    const-string v1, "&quot;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 298
    const-string v0, "\r\n"

    const-string v1, "</p><p>"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 299
    const-string v0, "\r"

    const-string v1, "</p><p>"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 300
    const-string v0, "\n"

    const-string v1, "</p><p>"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 301
    const-string v0, "\u000c"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 303
    const-string v0, "\t"

    const-string v1, "      "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 304
    return-object p0
.end method

.method private static getUnicodeLanguageCode([BLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "referenceData"
    .parameter "encoding"

    .prologue
    .line 127
    const-string v2, "en"

    .line 129
    .local v2, languageCode:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 130
    .local v4, referenceStr:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 131
    .local v3, referenceChars:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, v3

    if-ge v1, v6, :cond_0

    .line 132
    aget-char v6, v3, v1

    invoke-static {v6}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v5

    .line 133
    .local v5, ub:Ljava/lang/Character$UnicodeBlock;
    if-eqz v5, :cond_4

    .line 134
    sget-object v6, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v5, v6}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 135
    const-string v2, "ko"

    .line 153
    .end local v1           #i:I
    .end local v3           #referenceChars:[C
    .end local v4           #referenceStr:Ljava/lang/String;
    .end local v5           #ub:Ljava/lang/Character$UnicodeBlock;
    :cond_0
    :goto_1
    return-object v2

    .line 137
    .restart local v1       #i:I
    .restart local v3       #referenceChars:[C
    .restart local v4       #referenceStr:Ljava/lang/String;
    .restart local v5       #ub:Ljava/lang/Character$UnicodeBlock;
    :cond_1
    sget-object v6, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v5, v6}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 138
    const-string v2, "ja"

    .line 139
    goto :goto_1

    .line 140
    :cond_2
    sget-object v6, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v5, v6}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 141
    const-string v2, "ja"

    .line 142
    goto :goto_1

    .line 143
    :cond_3
    sget-object v6, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v5, v6}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 144
    const-string v2, "zh"
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    goto :goto_1

    .line 131
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    .end local v1           #i:I
    .end local v3           #referenceChars:[C
    .end local v4           #referenceStr:Ljava/lang/String;
    .end local v5           #ub:Ljava/lang/Character$UnicodeBlock;
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 150
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method
