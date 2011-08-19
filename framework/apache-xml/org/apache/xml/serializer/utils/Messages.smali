.class public final Lorg/apache/xml/serializer/utils/Messages;
.super Ljava/lang/Object;
.source "Messages.java"


# instance fields
.field private final m_locale:Ljava/util/Locale;

.field private m_resourceBundle:Ljava/util/ListResourceBundle;

.field private m_resourceBundleName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "resourceBundle"

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/utils/Messages;->m_locale:Ljava/util/Locale;

    .line 124
    iput-object p1, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundleName:Ljava/lang/String;

    .line 125
    return-void
.end method

.method private final createMsg(Ljava/util/ListResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 15
    .parameter "fResourceBundle"
    .parameter "msgKey"
    .parameter "args"

    .prologue
    .line 205
    const/4 v1, 0x0

    .line 206
    .local v1, fmsg:Ljava/lang/String;
    const/4 v6, 0x0

    .line 207
    .local v6, throwex:Z
    const/4 v4, 0x0

    .line 209
    .local v4, msg:Ljava/lang/String;
    if-eqz p2, :cond_25

    .line 210
    invoke-virtual {p1, p2}, Ljava/util/ListResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 214
    :goto_9
    if-nez v4, :cond_50

    .line 216
    const/4 v6, 0x1

    .line 223
    :try_start_c
    const-string v7, "BAD_MSGKEY"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundleName:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1c} :catch_28

    move-result-object v4

    .line 286
    :goto_1d
    if-eqz v6, :cond_be

    .line 288
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 212
    :cond_25
    const-string p2, ""

    goto :goto_9

    .line 228
    :catch_28
    move-exception v7

    move-object v0, v7

    .line 233
    .local v0, e:Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The message key \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' is not in the message class \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundleName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 238
    goto :goto_1d

    .line 240
    .end local v0           #e:Ljava/lang/Exception;
    :cond_50
    if-eqz p3, :cond_bb

    .line 247
    :try_start_52
    array-length v5, p3

    .line 249
    .local v5, n:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_54
    if-ge v3, v5, :cond_61

    .line 251
    aget-object v7, p3, v3

    if-nez v7, :cond_5e

    .line 252
    const-string v7, ""

    aput-object v7, p3, v3

    .line 249
    :cond_5e
    add-int/lit8 v3, v3, 0x1

    goto :goto_54

    .line 255
    :cond_61
    invoke-static {v4, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_64} :catch_66

    move-result-object v1

    goto :goto_1d

    .line 258
    .end local v3           #i:I
    .end local v5           #n:I
    :catch_66
    move-exception v7

    move-object v0, v7

    .line 260
    .restart local v0       #e:Ljava/lang/Exception;
    const/4 v6, 0x1

    .line 264
    :try_start_69
    const-string v7, "BAD_MSGFORMAT"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundleName:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 268
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_90} :catch_92

    move-result-object v1

    goto :goto_1d

    .line 270
    :catch_92
    move-exception v7

    move-object v2, v7

    .line 274
    .local v2, formatfailed:Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The format of message \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' in message class \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundleName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' failed."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1d

    .line 284
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #formatfailed:Ljava/lang/Exception;
    :cond_bb
    move-object v1, v4

    goto/16 :goto_1d

    .line 291
    :cond_be
    return-object v1
.end method

.method private getLocale()Ljava/util/Locale;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/Messages;->m_locale:Ljava/util/Locale;

    return-object v0
.end method

.method private getResourceBundle()Ljava/util/ListResourceBundle;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundle:Ljava/util/ListResourceBundle;

    return-object v0
.end method

.method private static getResourceSuffix(Ljava/util/Locale;)Ljava/lang/String;
    .registers 5
    .parameter "locale"

    .prologue
    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, suffix:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, country:Ljava/lang/String;
    const-string v2, "TW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 364
    :cond_3a
    return-object v1
.end method

.method private loadResourceBundle(Ljava/lang/String;)Ljava/util/ListResourceBundle;
    .registers 12
    .parameter "resourceBundle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .prologue
    .line 307
    iput-object p1, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundleName:Ljava/lang/String;

    .line 308
    invoke-direct {p0}, Lorg/apache/xml/serializer/utils/Messages;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 315
    .local v3, locale:Ljava/util/Locale;
    :try_start_6
    iget-object v6, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundleName:Ljava/lang/String;

    invoke-static {v6, v3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v5

    .line 317
    .local v5, rb:Ljava/util/ResourceBundle;
    move-object v0, v5

    check-cast v0, Ljava/util/ListResourceBundle;

    move-object v4, v0
    :try_end_10
    .catch Ljava/util/MissingResourceException; {:try_start_6 .. :try_end_10} :catch_13

    .line 342
    .end local v5           #rb:Ljava/util/ResourceBundle;
    .local v4, lrb:Ljava/util/ListResourceBundle;
    :goto_10
    iput-object v4, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundle:Ljava/util/ListResourceBundle;

    .line 343
    return-object v4

    .line 319
    .end local v4           #lrb:Ljava/util/ListResourceBundle;
    :catch_13
    move-exception v6

    move-object v1, v6

    .line 326
    .local v1, e:Ljava/util/MissingResourceException;
    :try_start_15
    iget-object v6, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundleName:Ljava/lang/String;

    new-instance v7, Ljava/util/Locale;

    const-string v8, "en"

    const-string v9, "US"

    invoke-direct {v7, v8, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v7}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v4

    check-cast v4, Ljava/util/ListResourceBundle;
    :try_end_26
    .catch Ljava/util/MissingResourceException; {:try_start_15 .. :try_end_26} :catch_27

    .restart local v4       #lrb:Ljava/util/ListResourceBundle;
    goto :goto_10

    .line 331
    .end local v4           #lrb:Ljava/util/ListResourceBundle;
    :catch_27
    move-exception v6

    move-object v2, v6

    .line 336
    .local v2, e2:Ljava/util/MissingResourceException;
    new-instance v6, Ljava/util/MissingResourceException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not load any resource bundles."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundleName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundleName:Ljava/lang/String;

    const-string v9, ""

    invoke-direct {v6, v7, v8, v9}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v6
.end method


# virtual methods
.method public final createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .parameter "msgKey"
    .parameter "args"

    .prologue
    .line 174
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundle:Ljava/util/ListResourceBundle;

    if-nez v0, :cond_c

    .line 175
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundleName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/xml/serializer/utils/Messages;->loadResourceBundle(Ljava/lang/String;)Ljava/util/ListResourceBundle;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundle:Ljava/util/ListResourceBundle;

    .line 177
    :cond_c
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundle:Ljava/util/ListResourceBundle;

    if-eqz v0, :cond_17

    .line 179
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundle:Ljava/util/ListResourceBundle;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/xml/serializer/utils/Messages;->createMsg(Ljava/util/ListResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 182
    :goto_16
    return-object v0

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not load the resource bundles: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method
