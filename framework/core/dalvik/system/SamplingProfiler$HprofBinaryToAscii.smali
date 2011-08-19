.class public final Ldalvik/system/SamplingProfiler$HprofBinaryToAscii;
.super Ljava/lang/Object;
.source "SamplingProfiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/SamplingProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HprofBinaryToAscii"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert([Ljava/lang/String;)Z
    .registers 12
    .parameter "args"

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 1299
    array-length v7, p0

    if-eq v7, v8, :cond_c

    .line 1300
    const-string v7, "binary hprof file argument expected"

    invoke-static {v7}, Ldalvik/system/SamplingProfiler$HprofBinaryToAscii;->usage(Ljava/lang/String;)V

    move v7, v10

    .line 1331
    :goto_b
    return v7

    .line 1303
    :cond_c
    new-instance v1, Ljava/io/File;

    aget-object v7, p0, v10

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1304
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_37

    .line 1305
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " does not exist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ldalvik/system/SamplingProfiler$HprofBinaryToAscii;->usage(Ljava/lang/String;)V

    move v7, v10

    .line 1306
    goto :goto_b

    .line 1310
    :cond_37
    const/4 v3, 0x0

    .line 1312
    .local v3, inputStream:Ljava/io/InputStream;
    :try_start_38
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_42
    .catchall {:try_start_38 .. :try_end_42} :catchall_8f
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_42} :catch_61

    .line 1313
    .end local v3           #inputStream:Ljava/io/InputStream;
    .local v4, inputStream:Ljava/io/InputStream;
    :try_start_42
    new-instance v5, Ldalvik/system/SamplingProfiler$BinaryHprofReader;

    invoke-direct {v5, v4}, Ldalvik/system/SamplingProfiler$BinaryHprofReader;-><init>(Ljava/io/InputStream;)V

    .line 1314
    .local v5, reader:Ldalvik/system/SamplingProfiler$BinaryHprofReader;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->setStrict(Z)V

    .line 1315
    invoke-virtual {v5}, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->read()V

    .line 1316
    invoke-virtual {v5}, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->getHprofData()Ldalvik/system/SamplingProfiler$HprofData;
    :try_end_51
    .catchall {:try_start_42 .. :try_end_51} :catchall_b5
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_51} :catch_b8

    move-result-object v2

    .line 1322
    .local v2, hprofData:Ldalvik/system/SamplingProfiler$HprofData;
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1325
    :try_start_55
    new-instance v6, Ldalvik/system/SamplingProfiler$AsciiHprofWriter;

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v6, v2, v7}, Ldalvik/system/SamplingProfiler$AsciiHprofWriter;-><init>(Ldalvik/system/SamplingProfiler$HprofData;Ljava/io/OutputStream;)V

    .line 1326
    .local v6, writer:Ldalvik/system/SamplingProfiler$HprofWriter;
    invoke-interface {v6}, Ldalvik/system/SamplingProfiler$HprofWriter;->write()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5f} :catch_94

    move v7, v8

    .line 1331
    goto :goto_b

    .line 1317
    .end local v2           #hprofData:Ldalvik/system/SamplingProfiler$HprofData;
    .end local v4           #inputStream:Ljava/io/InputStream;
    .end local v5           #reader:Ldalvik/system/SamplingProfiler$BinaryHprofReader;
    .end local v6           #writer:Ldalvik/system/SamplingProfiler$HprofWriter;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    :catch_61
    move-exception v7

    move-object v0, v7

    .line 1318
    .local v0, e:Ljava/io/IOException;
    :goto_63
    :try_start_63
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Problem reading binary hprof data from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_89
    .catchall {:try_start_63 .. :try_end_89} :catchall_8f

    .line 1322
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    move v7, v10

    goto/16 :goto_b

    .end local v0           #e:Ljava/io/IOException;
    :catchall_8f
    move-exception v7

    :goto_90
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v7

    .line 1327
    .end local v3           #inputStream:Ljava/io/InputStream;
    .restart local v2       #hprofData:Ldalvik/system/SamplingProfiler$HprofData;
    .restart local v4       #inputStream:Ljava/io/InputStream;
    .restart local v5       #reader:Ldalvik/system/SamplingProfiler$BinaryHprofReader;
    :catch_94
    move-exception v7

    move-object v0, v7

    .line 1328
    .restart local v0       #e:Ljava/io/IOException;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Problem writing ASCII hprof data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v7, v10

    .line 1329
    goto/16 :goto_b

    .line 1322
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #hprofData:Ldalvik/system/SamplingProfiler$HprofData;
    .end local v5           #reader:Ldalvik/system/SamplingProfiler$BinaryHprofReader;
    :catchall_b5
    move-exception v7

    move-object v3, v4

    .end local v4           #inputStream:Ljava/io/InputStream;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    goto :goto_90

    .line 1317
    .end local v3           #inputStream:Ljava/io/InputStream;
    .restart local v4       #inputStream:Ljava/io/InputStream;
    :catch_b8
    move-exception v7

    move-object v0, v7

    move-object v3, v4

    .end local v4           #inputStream:Ljava/io/InputStream;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    goto :goto_63
.end method

.method public static main([Ljava/lang/String;)V
    .registers 2
    .parameter "args"

    .prologue
    .line 1294
    invoke-static {p0}, Ldalvik/system/SamplingProfiler$HprofBinaryToAscii;->convert([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 1295
    return-void

    .line 1294
    :cond_b
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private static usage(Ljava/lang/String;)V
    .registers 3
    .parameter "error"

    .prologue
    .line 1335
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ERROR: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1336
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1337
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 1338
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "usage: HprofBinaryToAscii <binary-hprof-file>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1339
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 1340
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Reads a binary hprof file and print it in ASCII format"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1341
    return-void
.end method
