.class public Lcom/google/android/talk/videochat/JingleInfoManager;
.super Ljava/lang/Object;
.source "JingleInfoManager.java"


# static fields
.field private static sLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/talk/videochat/JingleInfoManager;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getJingleInfoStanza(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 34
    sget-object v0, Lcom/google/android/talk/videochat/JingleInfoManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 35
    :try_start_0
    const-string v1, "com.google.android.talk.JINGLE_INFO"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "com.google.android.talk.jingle_info_stanza"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 37
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static makeParser(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 5
    .parameter "stanza"

    .prologue
    .line 102
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 103
    .local v0, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 104
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 105
    .local v1, parser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v1

    .line 109
    .end local v0           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v1           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :goto_0
    return-object v3

    .line 107
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 108
    .local v2, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "talk"

    const-string v4, "Couldn\'t parse stanza"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static parseStanza(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 12
    .parameter "context"
    .parameter "sessionStanza"

    .prologue
    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 65
    :try_start_0
    invoke-static {p1}, Lcom/google/android/talk/videochat/JingleInfoManager;->makeParser(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 66
    .local v6, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 70
    .local v1, eventType:I
    :goto_0
    if-eq v1, v9, :cond_1

    .line 71
    const/4 v8, 0x2

    if-ne v1, v8, :cond_0

    .line 72
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, elementName:Ljava/lang/String;
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v5, ns:Ljava/lang/String;
    const-string v8, "query"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "google:jingleinfo"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 76
    invoke-static {p0, p1}, Lcom/google/android/talk/videochat/JingleInfoManager;->setJingleInfoStanza(Landroid/content/Context;Ljava/lang/String;)V

    move v8, v9

    .line 97
    .end local v0           #elementName:Ljava/lang/String;
    .end local v1           #eventType:I
    .end local v5           #ns:Ljava/lang/String;
    .end local v6           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :goto_1
    return v8

    .line 80
    .restart local v1       #eventType:I
    .restart local v6       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v1

    goto :goto_0

    .line 83
    .end local v1           #eventType:I
    .end local v6           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v8

    move-object v7, v8

    .line 84
    .local v7, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v8, "talk"

    const-string v9, "Couldn\'t parse stanza"

    invoke-static {v8, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v8, v11

    .line 85
    goto :goto_1

    .line 86
    .end local v7           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v8

    move-object v4, v8

    .line 87
    .local v4, npe:Ljava/lang/NullPointerException;
    const-string v8, "talk"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t parse the stanza "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v8, v11

    .line 88
    goto :goto_1

    .line 89
    .end local v4           #npe:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v8

    move-object v3, v8

    .line 90
    .local v3, nfe:Ljava/lang/NumberFormatException;
    const-string v8, "talk"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t parse the sessionId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v8, v11

    .line 91
    goto :goto_1

    .line 92
    .end local v3           #nfe:Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v8

    move-object v2, v8

    .line 93
    .local v2, ioe:Ljava/io/IOException;
    const-string v8, "talk"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t parse the stanza "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v8, v11

    .line 94
    goto :goto_1

    .end local v2           #ioe:Ljava/io/IOException;
    .restart local v1       #eventType:I
    .restart local v6       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    move v8, v11

    .line 97
    goto :goto_1
.end method

.method public static queryJingleInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "username"

    .prologue
    .line 30
    invoke-static {p0, p1}, Lcom/google/android/talk/videochat/SessionStanzaSender;->queryJingleInfo(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static setJingleInfoStanza(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "jingleInfoStanza"

    .prologue
    .line 41
    sget-object v1, Lcom/google/android/talk/videochat/JingleInfoManager;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 42
    :try_start_0
    const-string v2, "talk"

    const-string v3, "[JingleInfoManager] setJingleInfoStanza"

    invoke-static {v2, v3}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v2, "com.google.android.talk.JINGLE_INFO"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 45
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "com.google.android.talk.jingle_info_stanza"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 46
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 47
    monitor-exit v1

    .line 48
    return-void

    .line 47
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
