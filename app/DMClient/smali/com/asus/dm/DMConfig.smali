.class public Lcom/asus/dm/DMConfig;
.super Ljava/lang/Object;
.source "DMConfig.java"


# static fields
.field static final TAG:Ljava/lang/String; = "DMConfig"

.field private static mAllowCIDMSession:Z

.field private static mAllowFotaPolling:Z

.field private static mAllowShowMoreInfoOnError:Z

.field private static mFumoHandlerName:Ljava/lang/String;

.field private static mFumoRootUri:Ljava/lang/String;

.field private static mProgressClassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 14
    const-string v0, "DefaultFumoHandler"

    sput-object v0, Lcom/asus/dm/DMConfig;->mFumoHandlerName:Ljava/lang/String;

    .line 15
    const-string v0, "./FwUpdate/Flash"

    sput-object v0, Lcom/asus/dm/DMConfig;->mFumoRootUri:Ljava/lang/String;

    .line 16
    sput-boolean v1, Lcom/asus/dm/DMConfig;->mAllowCIDMSession:Z

    .line 17
    const-string v0, "DefaultNotify"

    sput-object v0, Lcom/asus/dm/DMConfig;->mProgressClassName:Ljava/lang/String;

    .line 18
    sput-boolean v1, Lcom/asus/dm/DMConfig;->mAllowShowMoreInfoOnError:Z

    .line 19
    sput-boolean v1, Lcom/asus/dm/DMConfig;->mAllowFotaPolling:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFumoHandlerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/asus/dm/DMConfig;->mFumoHandlerName:Ljava/lang/String;

    return-object v0
.end method

.method public static getFumoRootUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/asus/dm/DMConfig;->mFumoRootUri:Ljava/lang/String;

    return-object v0
.end method

.method public static getProgressClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/asus/dm/DMConfig;->mProgressClassName:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 22
    const-string v0, "DMConfig"

    const-string v1, "DMConfig.init()"

    invoke-static {v0, v1}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {p0}, Lcom/asus/dm/DMConfig;->loadDMSettings(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public static isAllowCIDMSession()Z
    .locals 1

    .prologue
    .line 119
    sget-boolean v0, Lcom/asus/dm/DMConfig;->mAllowCIDMSession:Z

    return v0
.end method

.method public static isAllowFotaPolling()Z
    .locals 1

    .prologue
    .line 131
    sget-boolean v0, Lcom/asus/dm/DMConfig;->mAllowFotaPolling:Z

    return v0
.end method

.method public static isAllowShowMoreInfoOnError()Z
    .locals 1

    .prologue
    .line 127
    sget-boolean v0, Lcom/asus/dm/DMConfig;->mAllowShowMoreInfoOnError:Z

    return v0
.end method

.method private static loadDMSettings(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f04

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 33
    .local v2, parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string v6, "dm_config"

    invoke-static {v2, v6}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 36
    :cond_0
    :goto_0
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 37
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 38
    .local v3, tag:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 96
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 107
    .end local v3           #tag:Ljava/lang/String;
    :goto_1
    return-void

    .line 41
    .restart local v3       #tag:Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    :try_start_1
    invoke-interface {v2, v6}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, name:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 43
    .local v5, value:Ljava/lang/String;
    const/4 v4, 0x0

    .line 44
    .local v4, text:Ljava/lang/String;
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    .line 45
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v4

    .line 48
    :cond_2
    const-string v6, "name"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 49
    const-string v6, "bool"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 52
    const-string v6, "allowClientInitateDMSession"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 53
    const-string v6, "true"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v10

    :goto_2
    sput-boolean v6, Lcom/asus/dm/DMConfig;->mAllowCIDMSession:Z

    .line 54
    const-string v6, "DMConfig"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mAllowCIDMSession="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/asus/dm/DMConfig;->mAllowCIDMSession:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 89
    .end local v1           #name:Ljava/lang/String;
    .end local v3           #tag:Ljava/lang/String;
    .end local v4           #text:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 90
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1       #name:Ljava/lang/String;
    .restart local v3       #tag:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    .restart local v5       #value:Ljava/lang/String;
    :cond_3
    move v6, v9

    .line 53
    goto :goto_2

    .line 55
    :cond_4
    :try_start_3
    const-string v6, "allowShowMoreInfoOnError"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 56
    const-string v6, "true"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v10

    :goto_3
    sput-boolean v6, Lcom/asus/dm/DMConfig;->mAllowShowMoreInfoOnError:Z

    .line 57
    const-string v6, "DMConfig"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "allowShowMoreInfoOnError="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/asus/dm/DMConfig;->mAllowShowMoreInfoOnError:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 91
    .end local v1           #name:Ljava/lang/String;
    .end local v3           #tag:Ljava/lang/String;
    .end local v4           #text:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 92
    .local v0, e:Ljava/lang/NumberFormatException;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 96
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1

    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v1       #name:Ljava/lang/String;
    .restart local v3       #tag:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    .restart local v5       #value:Ljava/lang/String;
    :cond_5
    move v6, v9

    .line 56
    goto :goto_3

    .line 58
    :cond_6
    :try_start_5
    const-string v6, "allowFotaPolling"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 59
    const-string v6, "true"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    move v6, v10

    :goto_4
    sput-boolean v6, Lcom/asus/dm/DMConfig;->mAllowFotaPolling:Z

    .line 60
    const-string v6, "DMConfig"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "allowFotaPolling="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/asus/dm/DMConfig;->mAllowFotaPolling:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 93
    .end local v1           #name:Ljava/lang/String;
    .end local v3           #tag:Ljava/lang/String;
    .end local v4           #text:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :catch_2
    move-exception v6

    move-object v0, v6

    .line 94
    .local v0, e:Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 96
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1

    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #name:Ljava/lang/String;
    .restart local v3       #tag:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    .restart local v5       #value:Ljava/lang/String;
    :cond_7
    move v6, v9

    .line 59
    goto :goto_4

    .line 63
    :cond_8
    :try_start_7
    const-string v6, "int"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 74
    const-string v6, "string"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 76
    const-string v6, "fumoHandler"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 77
    sput-object v4, Lcom/asus/dm/DMConfig;->mFumoHandlerName:Ljava/lang/String;

    .line 78
    const-string v6, "DMConfig"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mFumoHandlerName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/asus/dm/DMConfig;->mFumoHandlerName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 96
    .end local v1           #name:Ljava/lang/String;
    .end local v3           #tag:Ljava/lang/String;
    .end local v4           #text:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :catchall_0
    move-exception v6

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    throw v6

    .line 79
    .restart local v1       #name:Ljava/lang/String;
    .restart local v3       #tag:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    .restart local v5       #value:Ljava/lang/String;
    :cond_9
    :try_start_8
    const-string v6, "fumoRootUri"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 80
    sput-object v4, Lcom/asus/dm/DMConfig;->mFumoRootUri:Ljava/lang/String;

    .line 81
    const-string v6, "DMConfig"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mFumoRootUri="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/asus/dm/DMConfig;->mFumoRootUri:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 82
    :cond_a
    const-string v6, "progressClassName"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 83
    sput-object v4, Lcom/asus/dm/DMConfig;->mProgressClassName:Ljava/lang/String;

    .line 84
    const-string v6, "DMConfig"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mProgressClassName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/asus/dm/DMConfig;->mProgressClassName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0
.end method
