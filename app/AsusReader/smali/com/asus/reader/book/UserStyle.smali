.class public Lcom/asus/reader/book/UserStyle;
.super Ljava/lang/Object;
.source "UserStyle.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeToDayModeUserStyleCSS()V
    .locals 5

    .prologue
    .line 31
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/data/data/com.asus.reader/userStyle.css"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 32
    .local v1, f1:Ljava/io/OutputStream;
    const-string v2, "body{ background-color: #fff4e8;}"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "body{ background-color: #fff4e8;}"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 33
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .end local v1           #f1:Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 35
    .local v0, e:Ljava/io/IOException;
    const-string v2, "UserStyle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Write to DayMode userStyle.css failed. Reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static changeToNightModeUserStyleCSS()V
    .locals 5

    .prologue
    .line 41
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/data/data/com.asus.reader/userStyle.css"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 42
    .local v1, f1:Ljava/io/OutputStream;
    const-string v2, "body{ color: #ffffff; background-color: #1f1f1f;}\n.chapterHeader{ border:1px solid #ffffff; background-color:#1f1f1f;}\n.chapterHeader .translation{ background-color:#1f1f1f;}\n.chapterHeader .count{ background-color:#1f1f1f;}"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "body{ color: #ffffff; background-color: #1f1f1f;}\n.chapterHeader{ border:1px solid #ffffff; background-color:#1f1f1f;}\n.chapterHeader .translation{ background-color:#1f1f1f;}\n.chapterHeader .count{ background-color:#1f1f1f;}"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 43
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v1           #f1:Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 45
    .local v0, e:Ljava/io/IOException;
    const-string v2, "UserStyle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Write to NightMode userStyle.css failed. Reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static init()V
    .locals 0

    .prologue
    .line 26
    invoke-static {}, Lcom/asus/reader/book/UserStyle;->changeToDayModeUserStyleCSS()V

    .line 27
    return-void
.end method
