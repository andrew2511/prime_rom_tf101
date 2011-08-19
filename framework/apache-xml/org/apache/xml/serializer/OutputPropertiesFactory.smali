.class public final Lorg/apache/xml/serializer/OutputPropertiesFactory;
.super Ljava/lang/Object;
.source "OutputPropertiesFactory.java"


# static fields
.field private static final ACCESS_CONTROLLER_CLASS:Ljava/lang/Class; = null

.field private static final PROP_DIR:Ljava/lang/String; = null

.field private static final PROP_FILE_HTML:Ljava/lang/String; = "output_html.properties"

.field private static final PROP_FILE_TEXT:Ljava/lang/String; = "output_text.properties"

.field private static final PROP_FILE_UNKNOWN:Ljava/lang/String; = "output_unknown.properties"

.field private static final PROP_FILE_XML:Ljava/lang/String; = "output_xml.properties"

.field public static final S_BUILTIN_EXTENSIONS_UNIVERSAL:Ljava/lang/String; = "{http://xml.apache.org/xalan}"

.field private static final S_BUILTIN_EXTENSIONS_URL:Ljava/lang/String; = "http://xml.apache.org/xalan"

.field public static final S_BUILTIN_OLD_EXTENSIONS_UNIVERSAL:Ljava/lang/String; = "{http://xml.apache.org/xslt}"

#the value of this static final field might be set in the static constructor
.field public static final S_BUILTIN_OLD_EXTENSIONS_UNIVERSAL_LEN:I = 0x0

.field private static final S_BUILTIN_OLD_EXTENSIONS_URL:Ljava/lang/String; = "http://xml.apache.org/xslt"

.field public static final S_KEY_CONTENT_HANDLER:Ljava/lang/String; = "{http://xml.apache.org/xalan}content-handler"

.field public static final S_KEY_ENTITIES:Ljava/lang/String; = "{http://xml.apache.org/xalan}entities"

.field public static final S_KEY_INDENT_AMOUNT:Ljava/lang/String; = "{http://xml.apache.org/xalan}indent-amount"

.field public static final S_KEY_LINE_SEPARATOR:Ljava/lang/String; = "{http://xml.apache.org/xalan}line-separator"

.field public static final S_OMIT_META_TAG:Ljava/lang/String; = "{http://xml.apache.org/xalan}omit-meta-tag"

.field public static final S_USE_URL_ESCAPING:Ljava/lang/String; = "{http://xml.apache.org/xalan}use-url-escaping"

.field private static final S_XALAN_PREFIX:Ljava/lang/String; = "org.apache.xslt."

#the value of this static final field might be set in the static constructor
.field private static final S_XALAN_PREFIX_LEN:I = 0x0

.field private static final S_XSLT_PREFIX:Ljava/lang/String; = "xslt.output."

.field private static final S_XSLT_PREFIX_LEN:I

.field private static m_html_properties:Ljava/util/Properties;

.field private static m_synch_object:Ljava/lang/Integer;

.field private static m_text_properties:Ljava/util/Properties;

.field private static m_unknown_properties:Ljava/util/Properties;

.field private static m_xml_properties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 173
    const-string v0, "{http://xml.apache.org/xslt}"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->S_BUILTIN_OLD_EXTENSIONS_UNIVERSAL_LEN:I

    .line 181
    const-string v0, "xslt.output."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->S_XSLT_PREFIX_LEN:I

    .line 183
    const-string v0, "org.apache.xslt."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->S_XALAN_PREFIX_LEN:I

    .line 186
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_synch_object:Ljava/lang/Integer;

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/xml/serializer/SerializerBase;->PKG_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->PROP_DIR:Ljava/lang/String;

    .line 204
    sput-object v2, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;

    .line 207
    sput-object v2, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_html_properties:Ljava/util/Properties;

    .line 210
    sput-object v2, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_text_properties:Ljava/util/Properties;

    .line 213
    sput-object v2, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_unknown_properties:Ljava/util/Properties;

    .line 216
    invoke-static {}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->findAccessControllerClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->ACCESS_CONTROLLER_CLASS:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findAccessControllerClass()Ljava/lang/Class;
    .registers 1

    .prologue
    .line 228
    :try_start_0
    const-string v0, "java.security.AccessController"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 236
    :goto_6
    return-object v0

    .line 230
    :catch_7
    move-exception v0

    .line 236
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private static fixupPropertyString(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 6
    .parameter "s"
    .parameter "doClipping"

    .prologue
    .line 497
    if-eqz p1, :cond_10

    const-string v2, "xslt.output."

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 499
    sget v2, Lorg/apache/xml/serializer/OutputPropertiesFactory;->S_XSLT_PREFIX_LEN:I

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 501
    :cond_10
    const-string v2, "org.apache.xslt."

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 503
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{http://xml.apache.org/xalan}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lorg/apache/xml/serializer/OutputPropertiesFactory;->S_XALAN_PREFIX_LEN:I

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 507
    :cond_31
    const-string v2, "\\u003a"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .local v0, index:I
    if-lez v0, :cond_5b

    .line 509
    add-int/lit8 v2, v0, 0x6

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 510
    .local v1, temp:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 513
    .end local v1           #temp:Ljava/lang/String;
    :cond_5b
    return-object p0
.end method

.method public static final getDefaultMethodProperties(Ljava/lang/String;)Ljava/util/Properties;
    .registers 10
    .parameter "method"

    .prologue
    .line 254
    const/4 v1, 0x0

    .line 255
    .local v1, fileName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 260
    .local v0, defaultProperties:Ljava/util/Properties;
    :try_start_2
    sget-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_synch_object:Ljava/lang/Integer;

    monitor-enter v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_26

    .line 262
    :try_start_5
    sget-object v5, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;

    if-nez v5, :cond_12

    .line 264
    const-string v1, "output_xml.properties"

    .line 265
    const/4 v5, 0x0

    invoke-static {v1, v5}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->loadPropertiesFile(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v5

    sput-object v5, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;

    .line 267
    :cond_12
    monitor-exit v4
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_23

    .line 269
    :try_start_13
    const-string v4, "xml"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 271
    sget-object v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1d} :catch_26

    .line 330
    :goto_1d
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4, v0}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    return-object v4

    .line 267
    :catchall_23
    move-exception v5

    :try_start_24
    monitor-exit v4
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    :try_start_25
    throw v5
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_26} :catch_26

    .line 320
    :catch_26
    move-exception v4

    move-object v2, v4

    .line 322
    .local v2, ioe:Ljava/io/IOException;
    new-instance v4, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;

    sget-object v5, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v6, "ER_COULD_NOT_LOAD_METHOD_PROPERTY"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v8, 0x1

    aput-object p0, v7, v8

    invoke-virtual {v5, v6, v7}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 273
    .end local v2           #ioe:Ljava/io/IOException;
    :cond_3f
    :try_start_3f
    const-string v4, "html"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 275
    sget-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_html_properties:Ljava/util/Properties;

    if-nez v4, :cond_55

    .line 277
    const-string v1, "output_html.properties"

    .line 278
    sget-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;

    invoke-static {v1, v4}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->loadPropertiesFile(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v4

    sput-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_html_properties:Ljava/util/Properties;

    .line 282
    :cond_55
    sget-object v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_html_properties:Ljava/util/Properties;

    goto :goto_1d

    .line 284
    :cond_58
    const-string v4, "text"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_87

    .line 286
    sget-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_text_properties:Ljava/util/Properties;

    if-nez v4, :cond_84

    .line 288
    const-string v1, "output_text.properties"

    .line 289
    sget-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;

    invoke-static {v1, v4}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->loadPropertiesFile(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v4

    sput-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_text_properties:Ljava/util/Properties;

    .line 291
    sget-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_text_properties:Ljava/util/Properties;

    const-string v5, "encoding"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_84

    .line 294
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/apache/xml/serializer/Encodings;->getMimeEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 295
    .local v3, mimeEncoding:Ljava/lang/String;
    sget-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_text_properties:Ljava/util/Properties;

    const-string v5, "encoding"

    invoke-virtual {v4, v5, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .end local v3           #mimeEncoding:Ljava/lang/String;
    :cond_84
    sget-object v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_text_properties:Ljava/util/Properties;

    goto :goto_1d

    .line 303
    :cond_87
    const-string v4, ""

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a1

    .line 305
    sget-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_unknown_properties:Ljava/util/Properties;

    if-nez v4, :cond_9d

    .line 307
    const-string v1, "output_unknown.properties"

    .line 308
    sget-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;

    invoke-static {v1, v4}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->loadPropertiesFile(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v4

    sput-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_unknown_properties:Ljava/util/Properties;

    .line 312
    :cond_9d
    sget-object v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_unknown_properties:Ljava/util/Properties;

    goto/16 :goto_1d

    .line 317
    :cond_a1
    sget-object v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_a3} :catch_26

    goto/16 :goto_1d
.end method

.method private static loadPropertiesFile(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;
    .registers 11
    .parameter "resourceName"
    .parameter "defaults"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 355
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4, p1}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    .line 357
    .local v4, props:Ljava/util/Properties;
    const/4 v2, 0x0

    .line 358
    .local v2, is:Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 362
    .local v1, bis:Ljava/io/BufferedInputStream;
    :try_start_7
    sget-object v3, Lorg/apache/xml/serializer/OutputPropertiesFactory;->ACCESS_CONTROLLER_CLASS:Ljava/lang/Class;

    if-eqz v3, :cond_6b

    .line 364
    new-instance v3, Lorg/apache/xml/serializer/OutputPropertiesFactory$1;

    invoke-direct {v3, p0}, Lorg/apache/xml/serializer/OutputPropertiesFactory$1;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/io/InputStream;

    move-object v2, v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_a2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_18} :catch_73
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_18} :catch_9e

    move-object v3, v2

    .line 380
    .end local v2           #is:Ljava/io/InputStream;
    .local v3, is:Ljava/io/InputStream;
    :goto_19
    :try_start_19
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_7a
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1e} :catch_d7
    .catch Ljava/lang/SecurityException; {:try_start_19 .. :try_end_1e} :catch_cc

    .line 381
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .local v2, bis:Ljava/io/BufferedInputStream;
    :try_start_1e
    invoke-virtual {v4, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_c7
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_d9
    .catch Ljava/lang/SecurityException; {:try_start_1e .. :try_end_21} :catch_d1

    .line 418
    if-eqz v2, :cond_26

    .line 420
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 422
    :cond_26
    if-eqz v3, :cond_2b

    .line 424
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 442
    :cond_2b
    invoke-virtual {v4}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/Properties;

    invoke-virtual {p0}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object p1

    .line 443
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .end local v3           #is:Ljava/io/InputStream;
    .local p1, keys:Ljava/util/Enumeration;
    :cond_35
    :goto_35
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p0

    if-eqz p0, :cond_c6

    .line 445
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 449
    .local p0, key:Ljava/lang/String;
    const/4 v1, 0x0

    .line 452
    .local v1, value:Ljava/lang/String;
    :try_start_42
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_45
    .catch Ljava/lang/SecurityException; {:try_start_42 .. :try_end_45} :catch_c2

    move-result-object v1

    .line 458
    :goto_46
    if-nez v1, :cond_de

    .line 459
    invoke-virtual {v4, p0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #value:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1       #value:Ljava/lang/String;
    move-object v3, v1

    .line 461
    .end local v1           #value:Ljava/lang/String;
    .local v3, value:Ljava/lang/String;
    :goto_4f
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->fixupPropertyString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 462
    .local v1, newKey:Ljava/lang/String;
    const/4 v2, 0x0

    .line 465
    .local v2, newValue:Ljava/lang/String;
    :try_start_55
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_58
    .catch Ljava/lang/SecurityException; {:try_start_55 .. :try_end_58} :catch_c4

    move-result-object v2

    .line 471
    :goto_59
    if-nez v2, :cond_bc

    .line 472
    const/4 v2, 0x0

    invoke-static {v3, v2}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->fixupPropertyString(Ljava/lang/String;Z)Ljava/lang/String;

    .end local v2           #newValue:Ljava/lang/String;
    move-result-object v2

    .line 476
    .restart local v2       #newValue:Ljava/lang/String;
    :goto_60
    if-ne p0, v1, :cond_64

    if-eq v3, v2, :cond_35

    .line 478
    :cond_64
    invoke-virtual {v4, p0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    invoke-virtual {v4, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35

    .line 376
    .end local v3           #value:Ljava/lang/String;
    .local v1, bis:Ljava/io/BufferedInputStream;
    .local v2, is:Ljava/io/InputStream;
    .local p0, resourceName:Ljava/lang/String;
    .local p1, defaults:Ljava/util/Properties;
    :cond_6b
    :try_start_6b
    const-class v3, Lorg/apache/xml/serializer/OutputPropertiesFactory;

    invoke-virtual {v3, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_70
    .catchall {:try_start_6b .. :try_end_70} :catchall_a2
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_70} :catch_73
    .catch Ljava/lang/SecurityException; {:try_start_6b .. :try_end_70} :catch_9e

    move-result-object v2

    move-object v3, v2

    .end local v2           #is:Ljava/io/InputStream;
    .local v3, is:Ljava/io/InputStream;
    goto :goto_19

    .line 383
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    :catch_73
    move-exception v3

    move-object v8, v3

    move-object v3, v2

    .end local v2           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    move-object v2, v8

    .line 385
    .local v2, ioe:Ljava/io/IOException;
    :goto_77
    if-nez p1, :cond_8a

    .line 387
    :try_start_79
    throw v2
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_7a

    .line 418
    .end local v2           #ioe:Ljava/io/IOException;
    .end local v4           #props:Ljava/util/Properties;
    .end local p0           #resourceName:Ljava/lang/String;
    .end local p1           #defaults:Ljava/util/Properties;
    :catchall_7a
    move-exception p0

    move-object p1, v3

    .end local v3           #is:Ljava/io/InputStream;
    .local p1, is:Ljava/io/InputStream;
    move-object v8, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .local v8, bis:Ljava/io/BufferedInputStream;
    move-object v1, p0

    move-object p0, v8

    .end local v8           #bis:Ljava/io/BufferedInputStream;
    .local p0, bis:Ljava/io/BufferedInputStream;
    :goto_7f
    if-eqz p0, :cond_84

    .line 420
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->close()V

    .line 422
    :cond_84
    if-eqz p1, :cond_89

    .line 424
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_89
    throw v1

    .line 391
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #ioe:Ljava/io/IOException;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #props:Ljava/util/Properties;
    .local p0, resourceName:Ljava/lang/String;
    .local p1, defaults:Ljava/util/Properties;
    :cond_8a
    :try_start_8a
    new-instance p1, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;

    .end local p1           #defaults:Ljava/util/Properties;
    sget-object v4, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    .end local v4           #props:Ljava/util/Properties;
    const-string v5, "ER_COULD_NOT_LOAD_RESOURCE"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v4, v5, v6}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .end local p0           #resourceName:Ljava/lang/String;
    invoke-direct {p1, p0, v2}, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
    :try_end_9e
    .catchall {:try_start_8a .. :try_end_9e} :catchall_7a

    .line 399
    .end local v3           #is:Ljava/io/InputStream;
    .local v2, is:Ljava/io/InputStream;
    .restart local v4       #props:Ljava/util/Properties;
    .restart local p0       #resourceName:Ljava/lang/String;
    .restart local p1       #defaults:Ljava/util/Properties;
    :catch_9e
    move-exception v3

    .line 402
    .local v3, se:Ljava/lang/SecurityException;
    :goto_9f
    if-nez p1, :cond_a8

    .line 404
    :try_start_a1
    throw v3

    .line 418
    .end local v3           #se:Ljava/lang/SecurityException;
    .end local v4           #props:Ljava/util/Properties;
    .end local p0           #resourceName:Ljava/lang/String;
    .end local p1           #defaults:Ljava/util/Properties;
    :catchall_a2
    move-exception p0

    move-object p1, v2

    .end local v2           #is:Ljava/io/InputStream;
    .local p1, is:Ljava/io/InputStream;
    move-object v8, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v8       #bis:Ljava/io/BufferedInputStream;
    move-object v1, p0

    move-object p0, v8

    .end local v8           #bis:Ljava/io/BufferedInputStream;
    .local p0, bis:Ljava/io/BufferedInputStream;
    goto :goto_7f

    .line 408
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #se:Ljava/lang/SecurityException;
    .restart local v4       #props:Ljava/util/Properties;
    .local p0, resourceName:Ljava/lang/String;
    .local p1, defaults:Ljava/util/Properties;
    :cond_a8
    new-instance p1, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;

    .end local p1           #defaults:Ljava/util/Properties;
    sget-object v4, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    .end local v4           #props:Ljava/util/Properties;
    const-string v5, "ER_COULD_NOT_LOAD_RESOURCE"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v4, v5, v6}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .end local p0           #resourceName:Ljava/lang/String;
    invoke-direct {p1, p0, v3}, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
    :try_end_bc
    .catchall {:try_start_a1 .. :try_end_bc} :catchall_a2

    .line 474
    .local v1, newKey:Ljava/lang/String;
    .local v2, newValue:Ljava/lang/String;
    .local v3, value:Ljava/lang/String;
    .restart local v4       #props:Ljava/util/Properties;
    .local p0, key:Ljava/lang/String;
    .local p1, keys:Ljava/util/Enumeration;
    :cond_bc
    const/4 v5, 0x0

    invoke-static {v2, v5}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->fixupPropertyString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_60

    .line 454
    .end local v2           #newValue:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/String;
    .local v1, value:Ljava/lang/String;
    :catch_c2
    move-exception v2

    goto :goto_46

    .line 467
    .local v1, newKey:Ljava/lang/String;
    .restart local v2       #newValue:Ljava/lang/String;
    .restart local v3       #value:Ljava/lang/String;
    :catch_c4
    move-exception v5

    goto :goto_59

    .line 484
    .end local v1           #newKey:Ljava/lang/String;
    .end local v2           #newValue:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/String;
    .end local p0           #key:Ljava/lang/String;
    :cond_c6
    return-object v4

    .line 418
    .local v2, bis:Ljava/io/BufferedInputStream;
    .local v3, is:Ljava/io/InputStream;
    .local p0, resourceName:Ljava/lang/String;
    .local p1, defaults:Ljava/util/Properties;
    :catchall_c7
    move-exception p0

    move-object v1, p0

    move-object p1, v3

    .end local v3           #is:Ljava/io/InputStream;
    .local p1, is:Ljava/io/InputStream;
    move-object p0, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .local p0, bis:Ljava/io/BufferedInputStream;
    goto :goto_7f

    .line 399
    .local v1, bis:Ljava/io/BufferedInputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    .local p0, resourceName:Ljava/lang/String;
    .local p1, defaults:Ljava/util/Properties;
    :catch_cc
    move-exception v2

    move-object v8, v2

    move-object v2, v3

    .end local v3           #is:Ljava/io/InputStream;
    .local v2, is:Ljava/io/InputStream;
    move-object v3, v8

    goto :goto_9f

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .local v2, bis:Ljava/io/BufferedInputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    :catch_d1
    move-exception v1

    move-object v8, v1

    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    move-object v2, v3

    .end local v3           #is:Ljava/io/InputStream;
    .local v2, is:Ljava/io/InputStream;
    move-object v3, v8

    goto :goto_9f

    .line 383
    .end local v2           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    :catch_d7
    move-exception v2

    goto :goto_77

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .local v2, bis:Ljava/io/BufferedInputStream;
    :catch_d9
    move-exception v1

    move-object v8, v1

    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    move-object v2, v8

    goto :goto_77

    .end local v3           #is:Ljava/io/InputStream;
    .local v1, value:Ljava/lang/String;
    .local p0, key:Ljava/lang/String;
    .local p1, keys:Ljava/util/Enumeration;
    :cond_de
    move-object v3, v1

    .end local v1           #value:Ljava/lang/String;
    .local v3, value:Ljava/lang/String;
    goto/16 :goto_4f
.end method
