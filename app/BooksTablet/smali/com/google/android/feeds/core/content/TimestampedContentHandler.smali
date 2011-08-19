.class public final Lcom/google/android/feeds/core/content/TimestampedContentHandler;
.super Ljava/net/ContentHandler;
.source "TimestampedContentHandler.java"


# static fields
.field private static final MAX_AGE_PREFIX:Ljava/lang/String; = "max-age="

.field private static final TAG:Ljava/lang/String; = "TimestampedContentHandler"


# instance fields
.field private final mContentHandler:Ljava/net/ContentHandler;

.field private final mFile:Ljava/io/File;

.field private final mOutput:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/net/ContentHandler;Ljava/lang/Object;Ljava/io/File;)V
    .locals 1
    .parameter "handler"
    .parameter "output"
    .parameter "file"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/net/ContentHandler;-><init>()V

    .line 75
    if-nez p1, :cond_0

    .line 76
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 78
    :cond_0
    if-nez p3, :cond_1

    .line 79
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 81
    :cond_1
    iput-object p1, p0, Lcom/google/android/feeds/core/content/TimestampedContentHandler;->mContentHandler:Ljava/net/ContentHandler;

    .line 82
    iput-object p2, p0, Lcom/google/android/feeds/core/content/TimestampedContentHandler;->mOutput:Ljava/lang/Object;

    .line 83
    iput-object p3, p0, Lcom/google/android/feeds/core/content/TimestampedContentHandler;->mFile:Ljava/io/File;

    .line 84
    return-void
.end method

.method private isStale(Ljava/net/URLConnection;)Z
    .locals 14
    .parameter "connection"

    .prologue
    .line 88
    iget-object v5, p0, Lcom/google/android/feeds/core/content/TimestampedContentHandler;->mFile:Ljava/io/File;

    .line 89
    .local v5, file:Ljava/io/File;
    const-string v10, "cache-control"

    invoke-virtual {p1, v10}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 90
    .local v9, value:Ljava/lang/String;
    if-eqz v9, :cond_3

    const-string v10, "max-age="

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 92
    :try_start_0
    const-string v10, "max-age="

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v8

    .line 93
    .local v8, start:I
    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 94
    .local v6, maxAge:J
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-nez v10, :cond_0

    .line 95
    const/4 v10, 0x1

    .line 116
    .end local v6           #maxAge:J
    .end local v8           #start:I
    :goto_0
    return v10

    .line 97
    .restart local v6       #maxAge:J
    .restart local v8       #start:I
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    .line 100
    const/4 v10, 0x1

    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 105
    const/4 v10, 0x1

    goto :goto_0

    .line 107
    :cond_2
    invoke-static {}, Lcom/google/android/feeds/core/content/TimestampedContentHandler;->now()J

    move-result-wide v10

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    sub-long v0, v10, v12

    .line 108
    .local v0, ageInMillis:J
    const-wide/16 v10, 0x3e8

    div-long v2, v0, v10
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .local v2, ageInSeconds:J
    cmp-long v10, v2, v6

    if-lez v10, :cond_3

    .line 110
    const/4 v10, 0x1

    goto :goto_0

    .line 112
    .end local v0           #ageInMillis:J
    .end local v2           #ageInSeconds:J
    .end local v6           #maxAge:J
    .end local v8           #start:I
    :catch_0
    move-exception v10

    move-object v4, v10

    .line 113
    .local v4, e:Ljava/lang/NumberFormatException;
    const-string v10, "TimestampedContentHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to parse Cache-Control: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .end local v4           #e:Ljava/lang/NumberFormatException;
    :cond_3
    const/4 v10, 0x0

    goto :goto_0
.end method

.method private static now()J
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private updateTimestamp(J)V
    .locals 7
    .parameter "time"

    .prologue
    const-string v6, "TimestampedContentHandler"

    .line 120
    iget-object v1, p0, Lcom/google/android/feeds/core/content/TimestampedContentHandler;->mFile:Ljava/io/File;

    .line 121
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 122
    .local v2, parent:Ljava/io/File;
    if-eqz v2, :cond_2

    .line 123
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_1

    .line 124
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, path:Ljava/lang/String;
    const-string v4, "TimestampedContentHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create parent directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .end local v3           #path:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    .line 129
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 130
    .restart local v3       #path:Ljava/lang/String;
    const-string v4, "TimestampedContentHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parent is not a directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 134
    .end local v3           #path:Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 135
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 136
    .restart local v3       #path:Ljava/lang/String;
    const-string v4, "TimestampedContentHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Destination file is a directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 141
    .end local v3           #path:Ljava/lang/String;
    :cond_3
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    invoke-virtual {v1, p1, p2}, Ljava/io/File;->setLastModified(J)Z

    move-result v4

    if-nez v4, :cond_0

    .line 150
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 151
    .restart local v3       #path:Ljava/lang/String;
    const-string v4, "TimestampedContentHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to set timestamp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    .line 155
    const-string v4, "TimestampedContentHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to delete file : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 142
    .end local v3           #path:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 144
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 145
    .restart local v3       #path:Ljava/lang/String;
    const-string v4, "TimestampedContentHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public getContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    .locals 4
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/google/android/feeds/core/content/TimestampedContentHandler;->isStale(Ljava/net/URLConnection;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 166
    invoke-static {}, Lcom/google/android/feeds/core/content/TimestampedContentHandler;->now()J

    move-result-wide v1

    .line 168
    .local v1, time:J
    iget-object v3, p0, Lcom/google/android/feeds/core/content/TimestampedContentHandler;->mContentHandler:Ljava/net/ContentHandler;

    invoke-virtual {v3, p1}, Ljava/net/ContentHandler;->getContent(Ljava/net/URLConnection;)Ljava/lang/Object;

    move-result-object v0

    .line 171
    .local v0, content:Ljava/lang/Object;
    invoke-direct {p0, v1, v2}, Lcom/google/android/feeds/core/content/TimestampedContentHandler;->updateTimestamp(J)V

    move-object v3, v0

    .line 175
    .end local v0           #content:Ljava/lang/Object;
    .end local v1           #time:J
    :goto_0
    return-object v3

    :cond_0
    iget-object v3, p0, Lcom/google/android/feeds/core/content/TimestampedContentHandler;->mOutput:Ljava/lang/Object;

    goto :goto_0
.end method
