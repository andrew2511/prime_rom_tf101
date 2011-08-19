.class public Lcom/asus/test/DDParserTest;
.super Ljava/lang/Object;
.source "DDParserTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 13
    .parameter "args"

    .prologue
    .line 22
    const-string v4, "/home/hugh/Desktop/desc"

    .line 25
    .local v4, fname:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    .local v2, fdd:Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 28
    .local v3, fis:Ljava/io/FileInputStream;
    new-instance v7, Lcom/asus/dmlib/fumo/DDParser;

    invoke-direct {v7}, Lcom/asus/dmlib/fumo/DDParser;-><init>()V

    .line 29
    .local v7, parser:Lcom/asus/dmlib/fumo/DDParser;
    invoke-virtual {v7, v3}, Lcom/asus/dmlib/fumo/DDParser;->parse(Ljava/io/InputStream;)Lcom/asus/dmlib/vdm/DownloadDescriptor;

    move-result-object v0

    .line 30
    .local v0, dd:Lcom/asus/dmlib/vdm/DownloadDescriptor;
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v0, Lcom/asus/dmlib/vdm/DownloadDescriptor;->size:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 31
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    iget-object v9, v0, Lcom/asus/dmlib/vdm/DownloadDescriptor;->field:[Ljava/lang/String;

    array-length v9, v9

    if-ge v5, v9, :cond_0

    .line 32
    invoke-static {}, Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;->values()[Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;

    move-result-object v9

    aget-object v9, v9, v5

    invoke-virtual {v9}, Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;->name()Ljava/lang/String;

    move-result-object v6

    .line 33
    .local v6, name:Ljava/lang/String;
    iget-object v9, v0, Lcom/asus/dmlib/vdm/DownloadDescriptor;->field:[Ljava/lang/String;

    aget-object v8, v9, v5

    .line 34
    .local v8, value:Ljava/lang/String;
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 31
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 37
    .end local v0           #dd:Lcom/asus/dmlib/vdm/DownloadDescriptor;
    .end local v2           #fdd:Ljava/io/File;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v5           #i:I
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #parser:Lcom/asus/dmlib/fumo/DDParser;
    .end local v8           #value:Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 38
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 43
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_0
    :goto_1
    return-void

    .line 39
    :catch_1
    move-exception v9

    move-object v1, v9

    .line 40
    .local v1, e:Ljava/io/IOException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
