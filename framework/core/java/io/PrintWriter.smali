.class public Ljava/io/PrintWriter;
.super Ljava/io/Writer;
.source "PrintWriter.java"


# instance fields
.field private autoflush:Z

.field private ioError:Z

.field private final lineSeparator:Ljava/lang/String;

.field protected out:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 5
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 135
    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 6
    .parameter "file"
    .parameter "csn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 161
    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 163
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 4
    .parameter "out"

    .prologue
    .line 64
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .registers 4
    .parameter "out"
    .parameter "autoflush"

    .prologue
    .line 82
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .registers 3
    .parameter "wr"

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Z)V
    .registers 5
    .parameter "wr"
    .parameter "autoflush"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 50
    new-instance v0, Lorg/apache/harmony/luni/util/PriviAction;

    const-string v1, "line.separator"

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljava/io/PrintWriter;->lineSeparator:Ljava/lang/String;

    .line 115
    iput-boolean p2, p0, Ljava/io/PrintWriter;->autoflush:Z

    .line 116
    iput-object p1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 182
    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 184
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "fileName"
    .parameter "csn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 210
    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 212
    return-void
.end method

.method private final doWrite([CII)V
    .registers 7
    .parameter "buf"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 687
    iget-object v1, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 688
    :try_start_3
    iget-object v2, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_14

    if-eqz v2, :cond_17

    .line 690
    :try_start_7
    iget-object v2, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/Writer;->write([CII)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_14
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_e

    .line 697
    :goto_c
    :try_start_c
    monitor-exit v1

    .line 698
    return-void

    .line 691
    :catch_e
    move-exception v2

    move-object v0, v2

    .line 692
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/io/PrintWriter;->setError()V

    goto :goto_c

    .line 697
    .end local v0           #e:Ljava/io/IOException;
    :catchall_14
    move-exception v2

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v2

    .line 695
    :cond_17
    :try_start_17
    invoke-virtual {p0}, Ljava/io/PrintWriter;->setError()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_14

    goto :goto_c
.end method


# virtual methods
.method public append(C)Ljava/io/PrintWriter;
    .registers 2
    .parameter "c"

    .prologue
    .line 739
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->write(I)V

    .line 740
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    .registers 4
    .parameter "csq"

    .prologue
    .line 755
    if-nez p1, :cond_4

    .line 756
    const-string p1, "null"

    .line 758
    :cond_4
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;

    .line 759
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;
    .registers 7
    .parameter "csq"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 785
    if-nez p1, :cond_4

    .line 786
    const-string p1, "null"

    .line 788
    :cond_4
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 789
    .local v0, output:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    .line 790
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/io/Writer;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
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
    .line 33
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
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
    .line 33
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

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
    .line 33
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

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
    .line 33
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public checkError()Z
    .registers 3

    .prologue
    .line 223
    iget-object v0, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    .line 224
    .local v0, delegate:Ljava/io/Writer;
    if-nez v0, :cond_7

    .line 225
    iget-boolean v1, p0, Ljava/io/PrintWriter;->ioError:Z

    .line 229
    :goto_6
    return v1

    .line 228
    :cond_7
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 229
    iget-boolean v1, p0, Ljava/io/PrintWriter;->ioError:Z

    if-nez v1, :cond_14

    invoke-virtual {v0}, Ljava/io/Writer;->checkError()Z

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
    .registers 3

    .prologue
    .line 237
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Ljava/io/PrintWriter;->ioError:Z

    .line 239
    monitor-exit v0

    .line 240
    return-void

    .line 239
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public close()V
    .registers 4

    .prologue
    .line 248
    iget-object v1, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 249
    :try_start_3
    iget-object v2, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_17

    if-eqz v2, :cond_f

    .line 251
    :try_start_7
    iget-object v2, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_17
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_11

    .line 255
    :goto_c
    const/4 v2, 0x0

    :try_start_d
    iput-object v2, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    .line 257
    :cond_f
    monitor-exit v1

    .line 258
    return-void

    .line 252
    :catch_11
    move-exception v2

    move-object v0, v2

    .line 253
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/io/PrintWriter;->setError()V

    goto :goto_c

    .line 257
    .end local v0           #e:Ljava/io/IOException;
    :catchall_17
    move-exception v2

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_17

    throw v2
.end method

.method public flush()V
    .registers 4

    .prologue
    .line 267
    iget-object v1, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 268
    :try_start_3
    iget-object v2, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_14

    if-eqz v2, :cond_17

    .line 270
    :try_start_7
    iget-object v2, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_14
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_e

    .line 277
    :goto_c
    :try_start_c
    monitor-exit v1

    .line 278
    return-void

    .line 271
    :catch_e
    move-exception v2

    move-object v0, v2

    .line 272
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/io/PrintWriter;->setError()V

    goto :goto_c

    .line 277
    .end local v0           #e:Ljava/io/IOException;
    :catchall_14
    move-exception v2

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v2

    .line 275
    :cond_17
    :try_start_17
    invoke-virtual {p0}, Ljava/io/PrintWriter;->setError()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_14

    goto :goto_c
.end method

.method public varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    .registers 4
    .parameter "format"
    .parameter "args"

    .prologue
    .line 299
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public varargs format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    .registers 6
    .parameter "l"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 323
    if-nez p2, :cond_a

    .line 324
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "format == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_a
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p0, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    invoke-virtual {v0, p2, p3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 327
    iget-boolean v0, p0, Ljava/io/PrintWriter;->autoflush:Z

    if-eqz v0, :cond_19

    .line 328
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 330
    :cond_19
    return-object p0
.end method

.method public print(C)V
    .registers 3
    .parameter "ch"

    .prologue
    .line 398
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 399
    return-void
.end method

.method public print(D)V
    .registers 4
    .parameter "dnum"

    .prologue
    .line 409
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method public print(F)V
    .registers 3
    .parameter "fnum"

    .prologue
    .line 420
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 421
    return-void
.end method

.method public print(I)V
    .registers 3
    .parameter "inum"

    .prologue
    .line 431
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method public print(J)V
    .registers 4
    .parameter "lnum"

    .prologue
    .line 442
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 443
    return-void
.end method

.method public print(Ljava/lang/Object;)V
    .registers 3
    .parameter "obj"

    .prologue
    .line 453
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method public print(Ljava/lang/String;)V
    .registers 3
    .parameter "str"

    .prologue
    .line 468
    if-eqz p1, :cond_7

    move-object v0, p1

    :goto_3
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 469
    return-void

    .line 468
    :cond_7
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public print(Z)V
    .registers 3
    .parameter "bool"

    .prologue
    .line 479
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 480
    return-void
.end method

.method public print([C)V
    .registers 5
    .parameter "charArray"

    .prologue
    .line 386
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-direct {v0, p1, v1, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method public varargs printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    .registers 4
    .parameter "format"
    .parameter "args"

    .prologue
    .line 351
    invoke-virtual {p0, p1, p2}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public varargs printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    .registers 5
    .parameter "l"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 374
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public println()V
    .registers 3

    .prologue
    .line 488
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 489
    :try_start_3
    iget-object v1, p0, Ljava/io/PrintWriter;->lineSeparator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 490
    iget-boolean v1, p0, Ljava/io/PrintWriter;->autoflush:Z

    if-eqz v1, :cond_f

    .line 491
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 493
    :cond_f
    monitor-exit v0

    .line 494
    return-void

    .line 493
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public println(C)V
    .registers 3
    .parameter "ch"

    .prologue
    .line 519
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 520
    return-void
.end method

.method public println(D)V
    .registers 4
    .parameter "dnum"

    .prologue
    .line 532
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 533
    return-void
.end method

.method public println(F)V
    .registers 3
    .parameter "fnum"

    .prologue
    .line 545
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 546
    return-void
.end method

.method public println(I)V
    .registers 3
    .parameter "inum"

    .prologue
    .line 558
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 559
    return-void
.end method

.method public println(J)V
    .registers 4
    .parameter "lnum"

    .prologue
    .line 571
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 572
    return-void
.end method

.method public println(Ljava/lang/Object;)V
    .registers 3
    .parameter "obj"

    .prologue
    .line 584
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 585
    return-void
.end method

.method public println(Ljava/lang/String;)V
    .registers 4
    .parameter "str"

    .prologue
    .line 601
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 602
    :try_start_3
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 603
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 604
    monitor-exit v0

    .line 605
    return-void

    .line 604
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public println(Z)V
    .registers 3
    .parameter "bool"

    .prologue
    .line 617
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 618
    return-void
.end method

.method public println([C)V
    .registers 5
    .parameter "charArray"

    .prologue
    .line 506
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-direct {v0, p1, v1, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 507
    return-void
.end method

.method protected setError()V
    .registers 3

    .prologue
    .line 624
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 625
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Ljava/io/PrintWriter;->ioError:Z

    .line 626
    monitor-exit v0

    .line 627
    return-void

    .line 626
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public write(I)V
    .registers 6
    .parameter "oneChar"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 680
    new-array v0, v3, [C

    int-to-char v1, p1

    aput-char v1, v0, v2

    invoke-direct {p0, v0, v2, v3}, Ljava/io/PrintWriter;->doWrite([CII)V

    .line 681
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .registers 3
    .parameter "str"

    .prologue
    .line 708
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write([C)V

    .line 709
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .registers 5
    .parameter "str"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 727
    add-int v0, p2, p3

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write([C)V

    .line 728
    return-void
.end method

.method public write([C)V
    .registers 4
    .parameter "buf"

    .prologue
    .line 640
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/PrintWriter;->write([CII)V

    .line 641
    return-void
.end method

.method public write([CII)V
    .registers 4
    .parameter "buf"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 665
    invoke-direct {p0, p1, p2, p3}, Ljava/io/PrintWriter;->doWrite([CII)V

    .line 666
    return-void
.end method
