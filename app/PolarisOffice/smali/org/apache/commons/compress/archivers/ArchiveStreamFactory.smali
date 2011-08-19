.class public Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;
.super Ljava/lang/Object;
.source "ArchiveStreamFactory.java"


# static fields
.field public static final AR:Ljava/lang/String; = "ar"

.field public static final CPIO:Ljava/lang/String; = "cpio"

.field public static final JAR:Ljava/lang/String; = "jar"

.field public static final TAR:Ljava/lang/String; = "tar"

.field public static final ZIP:Ljava/lang/String; = "zip"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createArchiveInputStream(Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .locals 6
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .prologue
    .line 189
    if-nez p1, :cond_0

    .line 190
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Stream must not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 193
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v4

    if-nez v4, :cond_1

    .line 194
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Mark is not supported."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 197
    :cond_1
    const/16 v4, 0xc

    new-array v1, v4, [B

    .line 198
    .local v1, signature:[B
    array-length v4, v1

    invoke-virtual {p1, v4}, Ljava/io/InputStream;->mark(I)V

    .line 200
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 201
    .local v2, signatureLength:I
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 202
    invoke-static {v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->matches([BI)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 203
    new-instance v4, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;

    invoke-direct {v4, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    .line 217
    :goto_0
    return-object v4

    .line 204
    :cond_2
    invoke-static {v1, v2}, Lorg/apache/commons/compress/archivers/jar/JarArchiveInputStream;->matches([BI)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 205
    new-instance v4, Lorg/apache/commons/compress/archivers/jar/JarArchiveInputStream;

    invoke-direct {v4, p1}, Lorg/apache/commons/compress/archivers/jar/JarArchiveInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    .end local v2           #signatureLength:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 220
    .local v0, e:Ljava/io/IOException;
    new-instance v4, Lorg/apache/commons/compress/archivers/ArchiveException;

    const-string v5, "Could not use reset and mark operations."

    invoke-direct {v4, v5, v0}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 206
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #signatureLength:I
    :cond_3
    :try_start_1
    invoke-static {v1, v2}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->matches([BI)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 207
    new-instance v4, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;

    invoke-direct {v4, p1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 208
    :cond_4
    invoke-static {v1, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->matches([BI)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 209
    new-instance v4, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;

    invoke-direct {v4, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 212
    :cond_5
    const/16 v4, 0x200

    new-array v3, v4, [B

    .line 213
    .local v3, tarheader:[B
    array-length v4, v3

    invoke-virtual {p1, v4}, Ljava/io/InputStream;->mark(I)V

    .line 214
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 215
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 216
    invoke-static {v3, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->matches([BI)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 217
    new-instance v4, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;

    invoke-direct {v4, p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 223
    :cond_6
    new-instance v4, Lorg/apache/commons/compress/archivers/ArchiveException;

    const-string v5, "No Archiver found for the stream signature"

    invoke-direct {v4, v5}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public createArchiveInputStream(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .locals 3
    .parameter "archiverName"
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .prologue
    .line 113
    if-nez p1, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Archivername must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    if-nez p2, :cond_1

    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "InputStream must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_1
    const-string v0, "ar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    new-instance v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    .line 134
    :goto_0
    return-object v0

    .line 124
    :cond_2
    const-string v0, "zip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 125
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 127
    :cond_3
    const-string v0, "tar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 128
    new-instance v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 130
    :cond_4
    const-string v0, "jar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 131
    new-instance v0, Lorg/apache/commons/compress/archivers/jar/JarArchiveInputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/archivers/jar/JarArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 133
    :cond_5
    const-string v0, "cpio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 134
    new-instance v0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 137
    :cond_6
    new-instance v0, Lorg/apache/commons/compress/archivers/ArchiveException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Archiver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createArchiveOutputStream(Ljava/lang/String;Ljava/io/OutputStream;)Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
    .locals 3
    .parameter "archiverName"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .prologue
    .line 152
    if-nez p1, :cond_0

    .line 153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Archivername must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_0
    if-nez p2, :cond_1

    .line 156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "OutputStream must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_1
    const-string v0, "ar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    new-instance v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 172
    :goto_0
    return-object v0

    .line 162
    :cond_2
    const-string v0, "zip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 165
    :cond_3
    const-string v0, "tar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 166
    new-instance v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 168
    :cond_4
    const-string v0, "jar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 169
    new-instance v0, Lorg/apache/commons/compress/archivers/jar/JarArchiveOutputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/archivers/jar/JarArchiveOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 171
    :cond_5
    const-string v0, "cpio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 172
    new-instance v0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 174
    :cond_6
    new-instance v0, Lorg/apache/commons/compress/archivers/ArchiveException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Archiver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
