.class public Landroid/util/EventLog;
.super Ljava/lang/Object;
.source "EventLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/EventLog$Event;
    }
.end annotation


# static fields
.field private static final COMMENT_PATTERN:Ljava/lang/String; = "^\\s*(#.*)?$"

.field private static final TAG:Ljava/lang/String; = "EventLog"

.field private static final TAGS_FILE:Ljava/lang/String; = "/system/etc/event-log-tags"

.field private static final TAG_PATTERN:Ljava/lang/String; = "^\\s*(\\d+)\\s+(\\w+)\\s*(\\(.*\\))?\\s*$"

.field private static sTagCodes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sTagNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 52
    sput-object v0, Landroid/util/EventLog;->sTagCodes:Ljava/util/HashMap;

    .line 53
    sput-object v0, Landroid/util/EventLog;->sTagNames:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTagCode(Ljava/lang/String;)I
    .registers 3
    .parameter "name"

    .prologue
    .line 211
    invoke-static {}, Landroid/util/EventLog;->readTagsFile()V

    .line 212
    sget-object v1, Landroid/util/EventLog;->sTagCodes:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 213
    .local v0, code:Ljava/lang/Integer;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_11
    return v1

    :cond_12
    const/4 v1, -0x1

    goto :goto_11
.end method

.method public static getTagName(I)Ljava/lang/String;
    .registers 3
    .parameter "tag"

    .prologue
    .line 201
    invoke-static {}, Landroid/util/EventLog;->readTagsFile()V

    .line 202
    sget-object v0, Landroid/util/EventLog;->sTagNames:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static native readEvents([ILjava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/Collection",
            "<",
            "Landroid/util/EventLog$Event;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static declared-synchronized readTagsFile()V
    .registers 13

    .prologue
    .line 220
    const-class v9, Landroid/util/EventLog;

    monitor-enter v9

    :try_start_3
    sget-object v10, Landroid/util/EventLog;->sTagCodes:Ljava/util/HashMap;

    if-eqz v10, :cond_d

    sget-object v10, Landroid/util/EventLog;->sTagNames:Ljava/util/HashMap;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_bf

    if-eqz v10, :cond_d

    .line 256
    :cond_b
    :goto_b
    monitor-exit v9

    return-void

    .line 222
    :cond_d
    :try_start_d
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    sput-object v10, Landroid/util/EventLog;->sTagCodes:Ljava/util/HashMap;

    .line 223
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    sput-object v10, Landroid/util/EventLog;->sTagNames:Ljava/util/HashMap;

    .line 225
    const-string v10, "^\\s*(#.*)?$"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 226
    .local v0, comment:Ljava/util/regex/Pattern;
    const-string v10, "^\\s*(\\d+)\\s+(\\w+)\\s*(\\(.*\\))?\\s*$"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_bf

    move-result-object v8

    .line 227
    .local v8, tag:Ljava/util/regex/Pattern;
    const/4 v6, 0x0

    .line 231
    .local v6, reader:Ljava/io/BufferedReader;
    :try_start_28
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    const-string v11, "/system/etc/event-log-tags"

    invoke-direct {v10, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x100

    invoke-direct {v7, v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_36
    .catchall {:try_start_28 .. :try_end_36} :catchall_d0
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_36} :catch_d2

    .line 232
    .end local v6           #reader:Ljava/io/BufferedReader;
    .local v7, reader:Ljava/io/BufferedReader;
    :cond_36
    :goto_36
    :try_start_36
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, line:Ljava/lang/String;
    if-eqz v2, :cond_c2

    .line 233
    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-nez v10, :cond_36

    .line 235
    invoke-virtual {v8, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 236
    .local v3, m:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-nez v10, :cond_7b

    .line 237
    const-string v10, "EventLog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad entry in /system/etc/event-log-tags: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_36 .. :try_end_68} :catchall_b7
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_68} :catch_69

    goto :goto_36

    .line 250
    .end local v2           #line:Ljava/lang/String;
    .end local v3           #m:Ljava/util/regex/Matcher;
    :catch_69
    move-exception v10

    move-object v1, v10

    move-object v6, v7

    .line 251
    .end local v7           #reader:Ljava/io/BufferedReader;
    .local v1, e:Ljava/io/IOException;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :goto_6c
    :try_start_6c
    const-string v10, "EventLog"

    const-string v11, "Error reading /system/etc/event-log-tags"

    invoke-static {v10, v11, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_73
    .catchall {:try_start_6c .. :try_end_73} :catchall_d0

    .line 254
    if-eqz v6, :cond_b

    :try_start_75
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_bf
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_79

    goto :goto_b

    :catch_79
    move-exception v10

    goto :goto_b

    .line 242
    .end local v1           #e:Ljava/io/IOException;
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v2       #line:Ljava/lang/String;
    .restart local v3       #m:Ljava/util/regex/Matcher;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :cond_7b
    const/4 v10, 0x1

    :try_start_7c
    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 243
    .local v5, num:I
    const/4 v10, 0x2

    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 244
    .local v4, name:Ljava/lang/String;
    sget-object v10, Landroid/util/EventLog;->sTagCodes:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v10, Landroid/util/EventLog;->sTagNames:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9b
    .catchall {:try_start_7c .. :try_end_9b} :catchall_b7
    .catch Ljava/lang/NumberFormatException; {:try_start_7c .. :try_end_9b} :catch_9c
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_9b} :catch_69

    goto :goto_36

    .line 246
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #num:I
    :catch_9c
    move-exception v10

    move-object v1, v10

    .line 247
    .local v1, e:Ljava/lang/NumberFormatException;
    :try_start_9e
    const-string v10, "EventLog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error in /system/etc/event-log-tags: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b6
    .catchall {:try_start_9e .. :try_end_b6} :catchall_b7
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_b6} :catch_69

    goto :goto_36

    .line 254
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v2           #line:Ljava/lang/String;
    .end local v3           #m:Ljava/util/regex/Matcher;
    :catchall_b7
    move-exception v10

    move-object v6, v7

    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :goto_b9
    if-eqz v6, :cond_be

    :try_start_bb
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_be
    .catchall {:try_start_bb .. :try_end_be} :catchall_bf
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_be} :catch_ce

    :cond_be
    :goto_be
    :try_start_be
    throw v10
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_bf

    .line 220
    .end local v0           #comment:Ljava/util/regex/Pattern;
    .end local v6           #reader:Ljava/io/BufferedReader;
    .end local v8           #tag:Ljava/util/regex/Pattern;
    :catchall_bf
    move-exception v10

    monitor-exit v9

    throw v10

    .line 254
    .restart local v0       #comment:Ljava/util/regex/Pattern;
    .restart local v2       #line:Ljava/lang/String;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    .restart local v8       #tag:Ljava/util/regex/Pattern;
    :cond_c2
    if-eqz v7, :cond_c7

    :try_start_c4
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_c7
    .catchall {:try_start_c4 .. :try_end_c7} :catchall_bf
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_c7} :catch_ca

    :cond_c7
    move-object v6, v7

    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    goto/16 :goto_b

    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :catch_ca
    move-exception v10

    move-object v6, v7

    .line 255
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    goto/16 :goto_b

    .line 254
    .end local v2           #line:Ljava/lang/String;
    :catch_ce
    move-exception v11

    goto :goto_be

    :catchall_d0
    move-exception v10

    goto :goto_b9

    .line 250
    :catch_d2
    move-exception v10

    move-object v1, v10

    goto :goto_6c
.end method

.method public static native writeEvent(II)I
.end method

.method public static native writeEvent(IJ)I
.end method

.method public static native writeEvent(ILjava/lang/String;)I
.end method

.method public static varargs native writeEvent(I[Ljava/lang/Object;)I
.end method
