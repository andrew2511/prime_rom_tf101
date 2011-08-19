.class final Ljavax/xml/datatype/FactoryFinder;
.super Ljava/lang/Object;
.source "FactoryFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/xml/datatype/FactoryFinder$ConfigurationError;
    }
.end annotation


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "javax.xml.datatype.FactoryFinder"

.field private static final DEFAULT_LINE_LENGTH:I = 0x50

.field private static cacheProps:Ljava/util/Properties;

.field private static debug:Z

.field private static firstTime:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    sput-boolean v3, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    .line 56
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    sput-object v2, Ljavax/xml/datatype/FactoryFinder;->cacheProps:Ljava/util/Properties;

    .line 61
    sput-boolean v4, Ljavax/xml/datatype/FactoryFinder;->firstTime:Z

    .line 77
    :try_start_d
    const-string v2, "jaxp.debug"

    invoke-static {v2}, Ljavax/xml/datatype/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, val:Ljava/lang/String;
    if-eqz v0, :cond_21

    const-string v2, "false"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    move v2, v4

    :goto_1e
    sput-boolean v2, Ljavax/xml/datatype/FactoryFinder;->debug:Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_20} :catch_23

    .line 83
    .end local v0           #val:Ljava/lang/String;
    :goto_20
    return-void

    .restart local v0       #val:Ljava/lang/String;
    :cond_21
    move v2, v3

    .line 79
    goto :goto_1e

    .line 80
    .end local v0           #val:Ljava/lang/String;
    :catch_23
    move-exception v2

    move-object v1, v2

    .line 81
    .local v1, x:Ljava/lang/Exception;
    sput-boolean v3, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    goto :goto_20
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static debugPrintln(Ljava/lang/String;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 93
    sget-boolean v0, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    if-eqz v0, :cond_1c

    .line 94
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javax.xml.datatype.FactoryFinder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 99
    :cond_1c
    return-void
.end method

.method static find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 13
    .parameter "factoryId"
    .parameter "fallbackClassName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/datatype/FactoryFinder$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 188
    invoke-static {}, Ljavax/xml/datatype/FactoryFinder;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 192
    .local v0, classLoader:Ljava/lang/ClassLoader;
    :try_start_4
    invoke-static {p0}, Ljavax/xml/datatype/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 193
    .local v7, systemProp:Ljava/lang/String;
    if-eqz v7, :cond_3a

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3a

    .line 194
    sget-boolean v8, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    if-eqz v8, :cond_34

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "found "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in the system property "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljavax/xml/datatype/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 195
    :cond_34
    invoke-static {v7, v0}, Ljavax/xml/datatype/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    :try_end_37
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_37} :catch_39

    move-result-object v8

    .line 242
    .end local v7           #systemProp:Ljava/lang/String;
    :goto_38
    return-object v8

    .line 197
    :catch_39
    move-exception v8

    .line 203
    :cond_3a
    :try_start_3a
    const-string v8, "java.home"

    invoke-static {v8}, Ljavax/xml/datatype/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 204
    .local v5, javah:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "lib"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "jaxp.properties"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, configFile:Ljava/lang/String;
    const/4 v4, 0x0

    .line 206
    .local v4, factoryClassName:Ljava/lang/String;
    sget-boolean v8, Ljavax/xml/datatype/FactoryFinder;->firstTime:Z

    if-eqz v8, :cond_a3

    .line 207
    sget-object v8, Ljavax/xml/datatype/FactoryFinder;->cacheProps:Ljava/util/Properties;

    monitor-enter v8
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_6d} :catch_d4

    .line 208
    :try_start_6d
    sget-boolean v9, Ljavax/xml/datatype/FactoryFinder;->firstTime:Z

    if-eqz v9, :cond_a2

    .line 209
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    .local v3, f:Ljava/io/File;
    const/4 v9, 0x0

    sput-boolean v9, Ljavax/xml/datatype/FactoryFinder;->firstTime:Z

    .line 211
    invoke-static {v3}, Ljavax/xml/datatype/SecuritySupport;->doesFileExist(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_a2

    .line 212
    sget-boolean v9, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    if-eqz v9, :cond_99

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Read properties file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljavax/xml/datatype/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 213
    :cond_99
    sget-object v9, Ljavax/xml/datatype/FactoryFinder;->cacheProps:Ljava/util/Properties;

    invoke-static {v3}, Ljavax/xml/datatype/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 216
    .end local v3           #f:Ljava/io/File;
    :cond_a2
    monitor-exit v8
    :try_end_a3
    .catchall {:try_start_6d .. :try_end_a3} :catchall_d1

    .line 218
    :cond_a3
    :try_start_a3
    sget-object v8, Ljavax/xml/datatype/FactoryFinder;->cacheProps:Ljava/util/Properties;

    invoke-virtual {v8, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 219
    sget-boolean v8, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    if-eqz v8, :cond_c9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "found "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in $java.home/jaxp.properties"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljavax/xml/datatype/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 221
    :cond_c9
    if-eqz v4, :cond_dd

    .line 222
    invoke-static {v4, v0}, Ljavax/xml/datatype/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_ce} :catch_d4

    move-result-object v8

    goto/16 :goto_38

    .line 216
    :catchall_d1
    move-exception v9

    :try_start_d2
    monitor-exit v8
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d1

    :try_start_d3
    throw v9
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_d4} :catch_d4

    .line 224
    .end local v1           #configFile:Ljava/lang/String;
    .end local v4           #factoryClassName:Ljava/lang/String;
    .end local v5           #javah:Ljava/lang/String;
    :catch_d4
    move-exception v8

    move-object v2, v8

    .line 225
    .local v2, ex:Ljava/lang/Exception;
    sget-boolean v8, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    if-eqz v8, :cond_dd

    .line 226
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 231
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_dd
    invoke-static {p0}, Ljavax/xml/datatype/FactoryFinder;->findJarServiceProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 232
    .local v6, provider:Ljava/lang/Object;
    if-eqz v6, :cond_e6

    move-object v8, v6

    .line 233
    goto/16 :goto_38

    .line 236
    :cond_e6
    if-nez p1, :cond_108

    .line 237
    new-instance v8, Ljavax/xml/datatype/FactoryFinder$ConfigurationError;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Provider for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " cannot be found"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Ljavax/xml/datatype/FactoryFinder$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v8

    .line 241
    :cond_108
    sget-boolean v8, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    if-eqz v8, :cond_122

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loaded from fallback value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljavax/xml/datatype/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 242
    :cond_122
    invoke-static {p1, v0}, Ljavax/xml/datatype/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v8

    goto/16 :goto_38
.end method

.method private static findClassLoader()Ljava/lang/ClassLoader;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/datatype/FactoryFinder$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {}, Ljavax/xml/datatype/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 119
    .local v0, classLoader:Ljava/lang/ClassLoader;
    sget-boolean v1, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    if-eqz v1, :cond_1e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using context class loader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/xml/datatype/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 123
    :cond_1e
    if-nez v0, :cond_40

    .line 126
    const-class v1, Ljavax/xml/datatype/FactoryFinder;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 127
    sget-boolean v1, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    if-eqz v1, :cond_40

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using the class loader of FactoryFinder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/xml/datatype/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 132
    :cond_40
    return-object v0
.end method

.method private static findJarServiceProvider(Ljava/lang/String;)Ljava/lang/Object;
    .registers 12
    .parameter "factoryId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/datatype/FactoryFinder$ConfigurationError;
        }
    .end annotation

    .prologue
    const/16 v10, 0x50

    const/4 v9, 0x0

    .line 254
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "META-INF/services/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 255
    .local v5, serviceId:Ljava/lang/String;
    const/4 v3, 0x0

    .line 258
    .local v3, is:Ljava/io/InputStream;
    invoke-static {}, Ljavax/xml/datatype/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 259
    .local v0, cl:Ljava/lang/ClassLoader;
    if-eqz v0, :cond_31

    .line 260
    invoke-static {v0, v5}, Ljavax/xml/datatype/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 263
    if-nez v3, :cond_2d

    .line 264
    const-class v7, Ljavax/xml/datatype/FactoryFinder;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 265
    invoke-static {v0, v5}, Ljavax/xml/datatype/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 274
    :cond_2d
    :goto_2d
    if-nez v3, :cond_3c

    move-object v7, v9

    .line 310
    :goto_30
    return-object v7

    .line 270
    :cond_31
    const-class v7, Ljavax/xml/datatype/FactoryFinder;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 271
    invoke-static {v0, v5}, Ljavax/xml/datatype/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    goto :goto_2d

    .line 279
    :cond_3c
    sget-boolean v7, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    if-eqz v7, :cond_60

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "found jar resource="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " using ClassLoader: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljavax/xml/datatype/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 284
    :cond_60
    :try_start_60
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    const-string v8, "UTF-8"

    invoke-direct {v7, v3, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v8, 0x50

    invoke-direct {v4, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_6e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_60 .. :try_end_6e} :catch_9f

    .line 289
    .local v4, rd:Ljava/io/BufferedReader;
    :goto_6e
    const/4 v2, 0x0

    .line 293
    .local v2, factoryClassName:Ljava/lang/String;
    :try_start_6f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_b3
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_ac

    move-result-object v2

    .line 298
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 301
    if-eqz v2, :cond_b8

    const-string v7, ""

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b8

    .line 303
    sget-boolean v7, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    if-eqz v7, :cond_9a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "found in resource, value="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljavax/xml/datatype/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 306
    :cond_9a
    invoke-static {v2, v0}, Ljavax/xml/datatype/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_30

    .line 285
    .end local v2           #factoryClassName:Ljava/lang/String;
    .end local v4           #rd:Ljava/io/BufferedReader;
    :catch_9f
    move-exception v7

    move-object v1, v7

    .line 286
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v7, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .restart local v4       #rd:Ljava/io/BufferedReader;
    goto :goto_6e

    .line 294
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v2       #factoryClassName:Ljava/lang/String;
    :catch_ac
    move-exception v6

    .line 298
    .local v6, x:Ljava/io/IOException;
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v7, v9

    goto/16 :goto_30

    .end local v6           #x:Ljava/io/IOException;
    :catchall_b3
    move-exception v7

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v7

    :cond_b8
    move-object v7, v9

    .line 310
    goto/16 :goto_30
.end method

.method static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 7
    .parameter "className"
    .parameter "classLoader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/datatype/FactoryFinder$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 152
    if-nez p1, :cond_33

    .line 153
    :try_start_2
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 158
    .local v0, spiClass:Ljava/lang/Class;
    :goto_6
    sget-boolean v2, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    if-eqz v2, :cond_2e

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loaded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljavax/xml/datatype/FactoryFinder;->which(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/xml/datatype/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 162
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 155
    .end local v0           #spiClass:Ljava/lang/Class;
    :cond_33
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_36
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_36} :catch_38
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_36} :catch_59

    move-result-object v0

    .restart local v0       #spiClass:Ljava/lang/Class;
    goto :goto_6

    .line 163
    .end local v0           #spiClass:Ljava/lang/Class;
    :catch_38
    move-exception v2

    move-object v1, v2

    .line 164
    .local v1, x:Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljavax/xml/datatype/FactoryFinder$ConfigurationError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/xml/datatype/FactoryFinder$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 166
    .end local v1           #x:Ljava/lang/ClassNotFoundException;
    :catch_59
    move-exception v2

    move-object v1, v2

    .line 167
    .local v1, x:Ljava/lang/Exception;
    new-instance v2, Ljavax/xml/datatype/FactoryFinder$ConfigurationError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " could not be instantiated: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/xml/datatype/FactoryFinder$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method private static which(Ljava/lang/Class;)Ljava/lang/String;
    .registers 11
    .parameter "clazz"

    .prologue
    .line 358
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2e

    const/16 v9, 0x2f

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".class"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, classnameAsResource:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 364
    .local v2, loader:Ljava/lang/ClassLoader;
    if-eqz v2, :cond_30

    .line 365
    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 370
    .local v1, it:Ljava/net/URL;
    :goto_29
    if-eqz v1, :cond_44

    .line 371
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    .line 388
    .end local v0           #classnameAsResource:Ljava/lang/String;
    .end local v1           #it:Ljava/net/URL;
    .end local v2           #loader:Ljava/lang/ClassLoader;
    :goto_2f
    return-object v6

    .line 367
    .restart local v0       #classnameAsResource:Ljava/lang/String;
    .restart local v2       #loader:Ljava/lang/ClassLoader;
    :cond_30
    invoke-static {v0}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;
    :try_end_33
    .catch Ljava/lang/VirtualMachineError; {:try_start_0 .. :try_end_33} :catch_35
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_33} :catch_38
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_33} :catch_3b

    move-result-object v1

    .restart local v1       #it:Ljava/net/URL;
    goto :goto_29

    .line 375
    .end local v0           #classnameAsResource:Ljava/lang/String;
    .end local v1           #it:Ljava/net/URL;
    .end local v2           #loader:Ljava/lang/ClassLoader;
    :catch_35
    move-exception v6

    move-object v5, v6

    .line 376
    .local v5, vme:Ljava/lang/VirtualMachineError;
    throw v5

    .line 379
    .end local v5           #vme:Ljava/lang/VirtualMachineError;
    :catch_38
    move-exception v6

    move-object v4, v6

    .line 380
    .local v4, td:Ljava/lang/ThreadDeath;
    throw v4

    .line 382
    .end local v4           #td:Ljava/lang/ThreadDeath;
    :catch_3b
    move-exception v6

    move-object v3, v6

    .line 384
    .local v3, t:Ljava/lang/Throwable;
    sget-boolean v6, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    if-eqz v6, :cond_44

    .line 385
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 388
    .end local v3           #t:Ljava/lang/Throwable;
    :cond_44
    const-string v6, "unknown location"

    goto :goto_2f
.end method
