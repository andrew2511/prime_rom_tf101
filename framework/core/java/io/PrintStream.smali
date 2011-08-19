.class public Ljava/io/PrintStream;
.super Ljava/io/FilterOutputStream;
.source "PrintStream.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/io/Closeable;


# instance fields
.field private autoflush:Z

.field private encoding:Ljava/lang/String;

.field private ioError:Z

.field private final lineSeparator:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 4
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 144
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 51
    new-instance v0, Lorg/apache/harmony/luni/util/PriviAction;

    const-string v1, "line.separator"

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljava/io/PrintStream;->lineSeparator:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 5
    .parameter "file"
    .parameter "csn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 168
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 51
    new-instance v0, Lorg/apache/harmony/luni/util/PriviAction;

    const-string v1, "line.separator"

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljava/io/PrintStream;->lineSeparator:Ljava/lang/String;

    .line 169
    if-nez p2, :cond_1f

    .line 170
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 172
    :cond_1f
    invoke-static {p2}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 173
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_2b
    iput-object p2, p0, Ljava/io/PrintStream;->encoding:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 4
    .parameter "out"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 51
    new-instance v0, Lorg/apache/harmony/luni/util/PriviAction;

    const-string v1, "line.separator"

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljava/io/PrintStream;->lineSeparator:Ljava/lang/String;

    .line 68
    if-nez p1, :cond_1a

    .line 69
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 71
    :cond_1a
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .registers 5
    .parameter "out"
    .parameter "autoflush"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 51
    new-instance v0, Lorg/apache/harmony/luni/util/PriviAction;

    const-string v1, "line.separator"

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljava/io/PrintStream;->lineSeparator:Ljava/lang/String;

    .line 89
    if-nez p1, :cond_1a

    .line 90
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 92
    :cond_1a
    iput-boolean p2, p0, Ljava/io/PrintStream;->autoflush:Z

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;ZLjava/lang/String;)V
    .registers 7
    .parameter "out"
    .parameter "autoflush"
    .parameter "enc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 51
    new-instance v1, Lorg/apache/harmony/luni/util/PriviAction;

    const-string v2, "line.separator"

    invoke-direct {v1, v2}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Ljava/io/PrintStream;->lineSeparator:Ljava/lang/String;

    .line 116
    if-eqz p1, :cond_16

    if-nez p3, :cond_1c

    .line 117
    :cond_16
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 119
    :cond_1c
    iput-boolean p2, p0, Ljava/io/PrintStream;->autoflush:Z

    .line 121
    :try_start_1e
    invoke-static {p3}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 122
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p3}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2a
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_1e .. :try_end_2a} :catch_2a

    .line 124
    :catch_2a
    move-exception v1

    move-object v0, v1

    .line 125
    .local v0, e:Ljava/nio/charset/IllegalCharsetNameException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p3}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    .end local v0           #e:Ljava/nio/charset/IllegalCharsetNameException;
    :cond_32
    iput-object p3, p0, Ljava/io/PrintStream;->encoding:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 193
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/File;)V

    .line 194
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "fileName"
    .parameter "csn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 218
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Ljava/io/PrintStream;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method private newline()V
    .registers 2

    .prologue
    .line 379
    iget-object v0, p0, Ljava/io/PrintStream;->lineSeparator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 380
    return-void
.end method


# virtual methods
.method public append(C)Ljava/io/PrintStream;
    .registers 2
    .parameter "c"

    .prologue
    .line 719
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(C)V

    .line 720
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;
    .registers 3
    .parameter "csq"

    .prologue
    .line 734
    if-nez p1, :cond_8

    .line 735
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 739
    :goto_7
    return-object p0

    .line 737
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/PrintStream;
    .registers 5
    .parameter "csq"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 764
    if-nez p1, :cond_4

    .line 765
    const-string p1, "null"

    .line 767
    :cond_4
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 768
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->append(C)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public checkError()Z
    .registers 3

    .prologue
    .line 230
    iget-object v0, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    .line 231
    .local v0, delegate:Ljava/io/OutputStream;
    if-nez v0, :cond_7

    .line 232
    iget-boolean v1, p0, Ljava/io/PrintStream;->ioError:Z

    .line 236
    :goto_6
    return v1

    .line 235
    :cond_7
    invoke-virtual {p0}, Ljava/io/PrintStream;->flush()V

    .line 236
    iget-boolean v1, p0, Ljava/io/PrintStream;->ioError:Z

    if-nez v1, :cond_14

    invoke-virtual {v0}, Ljava/io/OutputStream;->checkError()Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_14
    const/4 v1, 0x1

    goto :goto_6

    :cond_16
    const/4 v1, 0x0

    goto :goto_6
.end method

.method protected clearError()V
    .registers 2

    .prologue
    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/PrintStream;->ioError:Z

    .line 245
    return-void
.end method

.method public declared-synchronized close()V
    .registers 3

    .prologue
    .line 254
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/PrintStream;->flush()V

    .line 255
    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_18

    if-eqz v1, :cond_10

    .line 257
    :try_start_8
    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 258
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_18
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_10} :catch_12

    .line 263
    :cond_10
    :goto_10
    monitor-exit p0

    return-void

    .line 259
    :catch_12
    move-exception v1

    move-object v0, v1

    .line 260
    .local v0, e:Ljava/io/IOException;
    :try_start_14
    invoke-virtual {p0}, Ljava/io/PrintStream;->setError()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    goto :goto_10

    .line 254
    .end local v0           #e:Ljava/io/IOException;
    :catchall_18
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized flush()V
    .registers 2

    .prologue
    .line 272
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_11

    if-eqz v0, :cond_d

    .line 274
    :try_start_5
    iget-object v0, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_11
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_c

    .line 281
    :goto_a
    monitor-exit p0

    return-void

    .line 276
    :catch_c
    move-exception v0

    .line 280
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Ljava/io/PrintStream;->setError()V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_11

    goto :goto_a

    .line 272
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .registers 4
    .parameter "format"
    .parameter "args"

    .prologue
    .line 301
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Ljava/io/PrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public varargs format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .registers 6
    .parameter "l"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 324
    if-nez p2, :cond_a

    .line 325
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "format == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_a
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p0, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    invoke-virtual {v0, p2, p3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 328
    return-object p0
.end method

.method public print(C)V
    .registers 3
    .parameter "ch"

    .prologue
    .line 403
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method public print(D)V
    .registers 4
    .parameter "dnum"

    .prologue
    .line 415
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 416
    return-void
.end method

.method public print(F)V
    .registers 3
    .parameter "fnum"

    .prologue
    .line 427
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 428
    return-void
.end method

.method public print(I)V
    .registers 3
    .parameter "inum"

    .prologue
    .line 439
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method public print(J)V
    .registers 4
    .parameter "lnum"

    .prologue
    .line 451
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 452
    return-void
.end method

.method public print(Ljava/lang/Object;)V
    .registers 3
    .parameter "obj"

    .prologue
    .line 463
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method public declared-synchronized print(Ljava/lang/String;)V
    .registers 4
    .parameter "str"

    .prologue
    .line 479
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    if-nez v1, :cond_a

    .line 480
    invoke-virtual {p0}, Ljava/io/PrintStream;->setError()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_12

    .line 497
    :goto_8
    monitor-exit p0

    return-void

    .line 483
    :cond_a
    if-nez p1, :cond_15

    .line 484
    :try_start_c
    const-string v1, "null"

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    goto :goto_8

    .line 479
    :catchall_12
    move-exception v1

    monitor-exit p0

    throw v1

    .line 489
    :cond_15
    :try_start_15
    iget-object v1, p0, Ljava/io/PrintStream;->encoding:Ljava/lang/String;

    if-nez v1, :cond_27

    .line 490
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->write([B)V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_12
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_20} :catch_21

    goto :goto_8

    .line 494
    :catch_21
    move-exception v1

    move-object v0, v1

    .line 495
    .local v0, e:Ljava/io/IOException;
    :try_start_23
    invoke-virtual {p0}, Ljava/io/PrintStream;->setError()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_12

    goto :goto_8

    .line 492
    .end local v0           #e:Ljava/io/IOException;
    :cond_27
    :try_start_27
    iget-object v1, p0, Ljava/io/PrintStream;->encoding:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->write([B)V
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_12
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_30} :catch_21

    goto :goto_8
.end method

.method public print(Z)V
    .registers 3
    .parameter "bool"

    .prologue
    .line 508
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 509
    return-void
.end method

.method public print([C)V
    .registers 5
    .parameter "charArray"

    .prologue
    .line 391
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-direct {v0, p1, v1, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method public varargs printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .registers 4
    .parameter "format"
    .parameter "args"

    .prologue
    .line 349
    invoke-virtual {p0, p1, p2}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public varargs printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .registers 5
    .parameter "l"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 372
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/PrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public println()V
    .registers 1

    .prologue
    .line 516
    invoke-direct {p0}, Ljava/io/PrintStream;->newline()V

    .line 517
    return-void
.end method

.method public println(C)V
    .registers 3
    .parameter "ch"

    .prologue
    .line 541
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 542
    return-void
.end method

.method public println(D)V
    .registers 4
    .parameter "dnum"

    .prologue
    .line 553
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 554
    return-void
.end method

.method public println(F)V
    .registers 3
    .parameter "fnum"

    .prologue
    .line 565
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 566
    return-void
.end method

.method public println(I)V
    .registers 3
    .parameter "inum"

    .prologue
    .line 577
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 578
    return-void
.end method

.method public println(J)V
    .registers 4
    .parameter "lnum"

    .prologue
    .line 589
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 590
    return-void
.end method

.method public println(Ljava/lang/Object;)V
    .registers 3
    .parameter "obj"

    .prologue
    .line 601
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 602
    return-void
.end method

.method public declared-synchronized println(Ljava/lang/String;)V
    .registers 3
    .parameter "str"

    .prologue
    .line 618
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 619
    invoke-direct {p0}, Ljava/io/PrintStream;->newline()V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 620
    monitor-exit p0

    return-void

    .line 618
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public println(Z)V
    .registers 3
    .parameter "bool"

    .prologue
    .line 631
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 632
    return-void
.end method

.method public println([C)V
    .registers 5
    .parameter "charArray"

    .prologue
    .line 529
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-direct {v0, p1, v1, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 530
    return-void
.end method

.method protected setError()V
    .registers 2

    .prologue
    .line 638
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/PrintStream;->ioError:Z

    .line 639
    return-void
.end method

.method public declared-synchronized write(I)V
    .registers 6
    .parameter "oneByte"

    .prologue
    .line 693
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    if-nez v3, :cond_a

    .line 694
    invoke-virtual {p0}, Ljava/io/PrintStream;->setError()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_2b

    .line 708
    :cond_8
    :goto_8
    monitor-exit p0

    return-void

    .line 698
    :cond_a
    :try_start_a
    iget-object v3, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write(I)V

    .line 699
    and-int/lit16 v0, p1, 0xff

    .line 701
    .local v0, b:I
    const/16 v3, 0xa

    if-eq v0, v3, :cond_19

    const/16 v3, 0x15

    if-ne v0, v3, :cond_2e

    :cond_19
    const/4 v3, 0x1

    move v2, v3

    .line 702
    .local v2, isNewline:Z
    :goto_1b
    iget-boolean v3, p0, Ljava/io/PrintStream;->autoflush:Z

    if-eqz v3, :cond_8

    if-eqz v2, :cond_8

    .line 703
    invoke-virtual {p0}, Ljava/io/PrintStream;->flush()V
    :try_end_24
    .catchall {:try_start_a .. :try_end_24} :catchall_2b
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_24} :catch_25

    goto :goto_8

    .line 705
    .end local v0           #b:I
    .end local v2           #isNewline:Z
    :catch_25
    move-exception v3

    move-object v1, v3

    .line 706
    .local v1, e:Ljava/io/IOException;
    :try_start_27
    invoke-virtual {p0}, Ljava/io/PrintStream;->setError()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2b

    goto :goto_8

    .line 693
    .end local v1           #e:Ljava/io/IOException;
    :catchall_2b
    move-exception v3

    monitor-exit p0

    throw v3

    .line 701
    .restart local v0       #b:I
    :cond_2e
    const/4 v3, 0x0

    move v2, v3

    goto :goto_1b
.end method

.method public write([BII)V
    .registers 6
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 662
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 663
    monitor-enter p0

    .line 664
    :try_start_5
    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    if-nez v1, :cond_e

    .line 665
    invoke-virtual {p0}, Ljava/io/PrintStream;->setError()V

    .line 666
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_1c

    .line 677
    :goto_d
    return-void

    .line 669
    :cond_e
    :try_start_e
    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 670
    iget-boolean v1, p0, Ljava/io/PrintStream;->autoflush:Z

    if-eqz v1, :cond_1a

    .line 671
    invoke-virtual {p0}, Ljava/io/PrintStream;->flush()V
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_1c
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1a} :catch_1f

    .line 676
    :cond_1a
    :goto_1a
    :try_start_1a
    monitor-exit p0

    goto :goto_d

    :catchall_1c
    move-exception v1

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_1c

    throw v1

    .line 673
    :catch_1f
    move-exception v1

    move-object v0, v1

    .line 674
    .local v0, e:Ljava/io/IOException;
    :try_start_21
    invoke-virtual {p0}, Ljava/io/PrintStream;->setError()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_1c

    goto :goto_1a
.end method
