.class Lcom/android/internal/telephony/test/LineReader;
.super Ljava/lang/Object;
.source "ModelInterpreter.java"


# static fields
.field static final BUFFER_SIZE:I = 0x1000


# instance fields
.field buffer:[B

.field inStream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/test/LineReader;->buffer:[B

    .line 56
    iput-object p1, p0, Lcom/android/internal/telephony/test/LineReader;->inStream:Ljava/io/InputStream;

    .line 57
    return-void
.end method


# virtual methods
.method getNextLine()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/test/LineReader;->getNextLine(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNextLine(Z)Ljava/lang/String;
    .registers 11
    .parameter "ctrlZ"

    .prologue
    const/4 v8, 0x0

    .line 81
    const/4 v1, 0x0

    .local v1, i:I
    move v2, v1

    .line 87
    .end local v1           #i:I
    .local v2, i:I
    :goto_3
    :try_start_3
    iget-object v4, p0, Lcom/android/internal/telephony/test/LineReader;->inStream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_3f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_8} :catch_44

    move-result v3

    .line 89
    .local v3, result:I
    if-gez v3, :cond_e

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    move-object v4, v8

    .line 116
    .end local v3           #result:I
    :goto_d
    return-object v4

    .line 93
    .end local v1           #i:I
    .restart local v2       #i:I
    .restart local v3       #result:I
    :cond_e
    if-eqz p1, :cond_2b

    const/16 v4, 0x1a

    if-ne v3, v4, :cond_2b

    :cond_14
    move v1, v2

    .line 113
    .end local v2           #i:I
    .end local v3           #result:I
    .restart local v1       #i:I
    :goto_15
    :try_start_15
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/test/LineReader;->buffer:[B

    const/4 v6, 0x0

    const-string v7, "US-ASCII"

    invoke-direct {v4, v5, v6, v1, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_15 .. :try_end_1f} :catch_20

    goto :goto_d

    .line 114
    :catch_20
    move-exception v4

    move-object v0, v4

    .line 115
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "ATChannel: implausable UnsupportedEncodingException"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v4, v8

    .line 116
    goto :goto_d

    .line 95
    .end local v0           #ex:Ljava/io/UnsupportedEncodingException;
    .end local v1           #i:I
    .restart local v2       #i:I
    .restart local v3       #result:I
    :cond_2b
    const/16 v4, 0xd

    if-eq v3, v4, :cond_33

    const/16 v4, 0xa

    if-ne v3, v4, :cond_36

    .line 96
    :cond_33
    if-nez v2, :cond_14

    goto :goto_3

    .line 104
    :cond_36
    :try_start_36
    iget-object v4, p0, Lcom/android/internal/telephony/test/LineReader;->buffer:[B
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_38} :catch_3f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_36 .. :try_end_38} :catch_44

    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    int-to-byte v5, v3

    :try_start_3b
    aput-byte v5, v4, v2
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3d} :catch_52
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3b .. :try_end_3d} :catch_4f

    move v2, v1

    .line 105
    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_3

    .line 106
    .end local v3           #result:I
    :catch_3f
    move-exception v4

    move-object v0, v4

    move v1, v2

    .end local v2           #i:I
    .local v0, ex:Ljava/io/IOException;
    .restart local v1       #i:I
    :goto_42
    move-object v4, v8

    .line 107
    goto :goto_d

    .line 108
    .end local v0           #ex:Ljava/io/IOException;
    .end local v1           #i:I
    .restart local v2       #i:I
    :catch_44
    move-exception v4

    move-object v0, v4

    move v1, v2

    .line 109
    .end local v2           #i:I
    .local v0, ex:Ljava/lang/IndexOutOfBoundsException;
    .restart local v1       #i:I
    :goto_47
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "ATChannel: buffer overflow"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_15

    .line 108
    .end local v0           #ex:Ljava/lang/IndexOutOfBoundsException;
    .restart local v3       #result:I
    :catch_4f
    move-exception v4

    move-object v0, v4

    goto :goto_47

    .line 106
    :catch_52
    move-exception v4

    move-object v0, v4

    goto :goto_42
.end method

.method getNextLineCtrlZ()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/test/LineReader;->getNextLine(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
