.class public Lcom/ecareme/utils/ConfigUtils;
.super Ljava/lang/Object;
.source "ConfigUtils.java"


# static fields
.field private static final configs:Ljava/util/Map;

.field private static final sysenv:Lorg/apache/commons/configuration/Configuration;

.field private static final sysprops:Lorg/apache/commons/configuration/Configuration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ecareme/utils/ConfigUtils;->configs:Ljava/util/Map;

    .line 31
    new-instance v0, Lorg/apache/commons/configuration/SystemConfiguration;

    invoke-direct {v0}, Lorg/apache/commons/configuration/SystemConfiguration;-><init>()V

    sput-object v0, Lcom/ecareme/utils/ConfigUtils;->sysprops:Lorg/apache/commons/configuration/Configuration;

    .line 32
    new-instance v0, Lorg/apache/commons/configuration/EnvironmentConfiguration;

    invoke-direct {v0}, Lorg/apache/commons/configuration/EnvironmentConfiguration;-><init>()V

    sput-object v0, Lcom/ecareme/utils/ConfigUtils;->sysenv:Lorg/apache/commons/configuration/Configuration;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final convertProperties(Lorg/apache/commons/configuration/Configuration;)Ljava/util/Properties;
    .locals 1
    .parameter "config"

    .prologue
    .line 52
    invoke-static {p0}, Lorg/apache/commons/configuration/ConfigurationConverter;->getProperties(Lorg/apache/commons/configuration/Configuration;)Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemEnv()Lorg/apache/commons/configuration/Configuration;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/ecareme/utils/ConfigUtils;->sysenv:Lorg/apache/commons/configuration/Configuration;

    return-object v0
.end method

.method public static getSystemProperties()Lorg/apache/commons/configuration/Configuration;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/ecareme/utils/ConfigUtils;->sysprops:Lorg/apache/commons/configuration/Configuration;

    return-object v0
.end method

.method public static final loadClassPathProperties(Ljava/lang/String;)Lorg/apache/commons/configuration/PropertiesConfiguration;
    .locals 1
    .parameter "propertiesFile"

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ecareme/utils/ConfigUtils;->loadClassPathProperties(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/commons/configuration/PropertiesConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public static final loadClassPathProperties(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/commons/configuration/PropertiesConfiguration;
    .locals 2
    .parameter "propertiesFile"
    .parameter "loader"

    .prologue
    .line 175
    if-eqz p0, :cond_1

    .line 177
    if-nez p1, :cond_0

    .line 179
    invoke-static {p0}, Lcom/ecareme/utils/ClassLoaderUtils;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lcom/ecareme/utils/ConfigUtils;->loadProperties(Ljava/net/URL;)Lorg/apache/commons/configuration/PropertiesConfiguration;

    move-result-object v0

    .line 190
    :goto_0
    return-object v0

    .line 183
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lcom/ecareme/utils/ConfigUtils;->loadProperties(Ljava/net/URL;)Lorg/apache/commons/configuration/PropertiesConfiguration;

    move-result-object v0

    goto :goto_0

    .line 188
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Properties load failed, an empty Configuration returned. error:given parameter is null"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 189
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 190
    new-instance v0, Lorg/apache/commons/configuration/PropertiesConfiguration;

    invoke-direct {v0}, Lorg/apache/commons/configuration/PropertiesConfiguration;-><init>()V

    goto :goto_0
.end method

.method public static final loadClassPathXML(Ljava/lang/String;)Lorg/apache/commons/configuration/XMLConfiguration;
    .locals 1
    .parameter "xmlFile"

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ecareme/utils/ConfigUtils;->loadClassPathXML(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/commons/configuration/XMLConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public static final loadClassPathXML(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/commons/configuration/XMLConfiguration;
    .locals 2
    .parameter "xmlFile"
    .parameter "loader"

    .prologue
    .line 62
    if-eqz p0, :cond_1

    .line 64
    if-nez p1, :cond_0

    .line 66
    invoke-static {p0}, Lcom/ecareme/utils/ClassLoaderUtils;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lcom/ecareme/utils/ConfigUtils;->loadXML(Ljava/net/URL;)Lorg/apache/commons/configuration/XMLConfiguration;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    .line 70
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lcom/ecareme/utils/ConfigUtils;->loadXML(Ljava/net/URL;)Lorg/apache/commons/configuration/XMLConfiguration;

    move-result-object v0

    goto :goto_0

    .line 75
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "XML load failed, an empty Configuration returned. error:given parameter is null"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 76
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 77
    new-instance v0, Lorg/apache/commons/configuration/XMLConfiguration;

    invoke-direct {v0}, Lorg/apache/commons/configuration/XMLConfiguration;-><init>()V

    goto :goto_0
.end method

.method public static final loadProperties(Ljava/io/File;)Lorg/apache/commons/configuration/PropertiesConfiguration;
    .locals 4
    .parameter "propertiesFile"

    .prologue
    .line 201
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 205
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    invoke-static {v1}, Lcom/ecareme/utils/ConfigUtils;->loadProperties(Ljava/net/URL;)Lorg/apache/commons/configuration/PropertiesConfiguration;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 218
    :goto_0
    return-object v1

    .line 207
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 209
    .local v0, e:Ljava/net/MalformedURLException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " load failed, an empty Configuration returned. error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 210
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 211
    new-instance v1, Lorg/apache/commons/configuration/PropertiesConfiguration;

    invoke-direct {v1}, Lorg/apache/commons/configuration/PropertiesConfiguration;-><init>()V

    goto :goto_0

    .line 216
    .end local v0           #e:Ljava/net/MalformedURLException;
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Configuration load failed, an empty Configuration returned. error:given file does not exists or is a directory or null"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 217
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 218
    new-instance v1, Lorg/apache/commons/configuration/PropertiesConfiguration;

    invoke-direct {v1}, Lorg/apache/commons/configuration/PropertiesConfiguration;-><init>()V

    goto :goto_0
.end method

.method public static final loadProperties(Ljava/io/InputStream;)Lorg/apache/commons/configuration/PropertiesConfiguration;
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/configuration/ConfigurationException;
        }
    .end annotation

    .prologue
    .line 276
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/ecareme/utils/ConfigUtils;->loadProperties(Ljava/io/Reader;)Lorg/apache/commons/configuration/PropertiesConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public static final loadProperties(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/commons/configuration/PropertiesConfiguration;
    .locals 1
    .parameter "in"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/configuration/ConfigurationException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 267
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ecareme/utils/ConfigUtils;->loadProperties(Ljava/io/Reader;)Lorg/apache/commons/configuration/PropertiesConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public static final loadProperties(Ljava/io/Reader;)Lorg/apache/commons/configuration/PropertiesConfiguration;
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/configuration/ConfigurationException;
        }
    .end annotation

    .prologue
    .line 284
    new-instance v0, Lorg/apache/commons/configuration/PropertiesConfiguration;

    invoke-direct {v0}, Lorg/apache/commons/configuration/PropertiesConfiguration;-><init>()V

    .line 285
    .local v0, conf:Lorg/apache/commons/configuration/PropertiesConfiguration;
    if-eqz p0, :cond_0

    .line 287
    invoke-virtual {v0, p0}, Lorg/apache/commons/configuration/PropertiesConfiguration;->load(Ljava/io/Reader;)V

    .line 289
    :cond_0
    return-object v0
.end method

.method public static final loadProperties(Ljava/lang/String;)Lorg/apache/commons/configuration/PropertiesConfiguration;
    .locals 1
    .parameter "propertiesFile"

    .prologue
    .line 196
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ecareme/utils/ConfigUtils;->loadProperties(Ljava/io/File;)Lorg/apache/commons/configuration/PropertiesConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public static final loadProperties(Ljava/net/URL;)Lorg/apache/commons/configuration/PropertiesConfiguration;
    .locals 6
    .parameter "propertiesFile"

    .prologue
    .line 224
    if-nez p0, :cond_0

    .line 226
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Configuration load failed, an empty Configuration returned. error:given parameter is null"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 227
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 228
    new-instance v3, Lorg/apache/commons/configuration/PropertiesConfiguration;

    invoke-direct {v3}, Lorg/apache/commons/configuration/PropertiesConfiguration;-><init>()V

    .line 258
    :goto_0
    return-object v3

    .line 230
    :cond_0
    sget-object v3, Lcom/ecareme/utils/ConfigUtils;->configs:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/configuration/PropertiesConfiguration;

    .line 231
    .local v0, conf:Lorg/apache/commons/configuration/PropertiesConfiguration;
    if-nez v0, :cond_1

    .line 233
    const/4 v2, 0x0

    .line 236
    .local v2, in:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    .line 237
    invoke-static {v2}, Lcom/ecareme/utils/ConfigUtils;->loadProperties(Ljava/io/InputStream;)Lorg/apache/commons/configuration/PropertiesConfiguration;

    move-result-object v0

    .line 238
    sget-object v3, Lcom/ecareme/utils/ConfigUtils;->configs:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " loaded."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/commons/configuration/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 255
    invoke-static {v2}, Lcom/ecareme/utils/IOUtils;->closeQuitely(Ljava/io/InputStream;)V

    .end local v2           #in:Ljava/io/InputStream;
    :cond_1
    move-object v3, v0

    .line 258
    goto :goto_0

    .line 241
    .restart local v2       #in:Ljava/io/InputStream;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 243
    .local v1, e:Ljava/io/IOException;
    :try_start_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " load failed, an empty Configuration returned. error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 245
    new-instance v3, Lorg/apache/commons/configuration/PropertiesConfiguration;

    invoke-direct {v3}, Lorg/apache/commons/configuration/PropertiesConfiguration;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    invoke-static {v2}, Lcom/ecareme/utils/IOUtils;->closeQuitely(Ljava/io/InputStream;)V

    goto :goto_0

    .line 247
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 249
    .local v1, e:Lorg/apache/commons/configuration/ConfigurationException;
    :try_start_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " load failed, an empty Configuration returned. error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/commons/configuration/ConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v1}, Lorg/apache/commons/configuration/ConfigurationException;->printStackTrace()V

    .line 251
    new-instance v3, Lorg/apache/commons/configuration/PropertiesConfiguration;

    invoke-direct {v3}, Lorg/apache/commons/configuration/PropertiesConfiguration;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 255
    invoke-static {v2}, Lcom/ecareme/utils/IOUtils;->closeQuitely(Ljava/io/InputStream;)V

    goto/16 :goto_0

    .line 254
    .end local v1           #e:Lorg/apache/commons/configuration/ConfigurationException;
    :catchall_0
    move-exception v3

    .line 255
    invoke-static {v2}, Lcom/ecareme/utils/IOUtils;->closeQuitely(Ljava/io/InputStream;)V

    .line 256
    throw v3
.end method

.method public static final loadXML(Ljava/io/File;)Lorg/apache/commons/configuration/XMLConfiguration;
    .locals 4
    .parameter "xmlFile"

    .prologue
    .line 88
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    invoke-static {v1}, Lcom/ecareme/utils/ConfigUtils;->loadXML(Ljava/net/URL;)Lorg/apache/commons/configuration/XMLConfiguration;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 105
    :goto_0
    return-object v1

    .line 94
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 96
    .local v0, e:Ljava/net/MalformedURLException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Configuration load failed, an empty Configuration returned. error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 97
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    new-instance v1, Lorg/apache/commons/configuration/XMLConfiguration;

    invoke-direct {v1}, Lorg/apache/commons/configuration/XMLConfiguration;-><init>()V

    goto :goto_0

    .line 103
    .end local v0           #e:Ljava/net/MalformedURLException;
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Configuration load failed, an empty Configuration returned. error:given file does not exists or is a directory or null"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 105
    new-instance v1, Lorg/apache/commons/configuration/XMLConfiguration;

    invoke-direct {v1}, Lorg/apache/commons/configuration/XMLConfiguration;-><init>()V

    goto :goto_0
.end method

.method public static final loadXML(Ljava/io/InputStream;)Lorg/apache/commons/configuration/XMLConfiguration;
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/configuration/ConfigurationException;
        }
    .end annotation

    .prologue
    .line 163
    new-instance v0, Lorg/apache/commons/configuration/XMLConfiguration;

    invoke-direct {v0}, Lorg/apache/commons/configuration/XMLConfiguration;-><init>()V

    .line 164
    .local v0, conf:Lorg/apache/commons/configuration/XMLConfiguration;
    invoke-virtual {v0, p0}, Lorg/apache/commons/configuration/XMLConfiguration;->load(Ljava/io/InputStream;)V

    .line 165
    return-object v0
.end method

.method public static final loadXML(Ljava/io/Reader;)Lorg/apache/commons/configuration/XMLConfiguration;
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/configuration/ConfigurationException;
        }
    .end annotation

    .prologue
    .line 153
    new-instance v0, Lorg/apache/commons/configuration/XMLConfiguration;

    invoke-direct {v0}, Lorg/apache/commons/configuration/XMLConfiguration;-><init>()V

    .line 154
    .local v0, conf:Lorg/apache/commons/configuration/XMLConfiguration;
    invoke-virtual {v0, p0}, Lorg/apache/commons/configuration/XMLConfiguration;->load(Ljava/io/Reader;)V

    .line 155
    return-object v0
.end method

.method public static final loadXML(Ljava/lang/String;)Lorg/apache/commons/configuration/XMLConfiguration;
    .locals 1
    .parameter "xmlFile"

    .prologue
    .line 83
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ecareme/utils/ConfigUtils;->loadXML(Ljava/io/File;)Lorg/apache/commons/configuration/XMLConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public static final loadXML(Ljava/net/URL;)Lorg/apache/commons/configuration/XMLConfiguration;
    .locals 6
    .parameter "xmlFile"

    .prologue
    .line 111
    if-nez p0, :cond_0

    .line 113
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Configuration load failed, an empty Configuration returned. error:given parameter is null"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 114
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 115
    new-instance v3, Lorg/apache/commons/configuration/XMLConfiguration;

    invoke-direct {v3}, Lorg/apache/commons/configuration/XMLConfiguration;-><init>()V

    .line 145
    :goto_0
    return-object v3

    .line 117
    :cond_0
    sget-object v3, Lcom/ecareme/utils/ConfigUtils;->configs:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/configuration/XMLConfiguration;

    .line 118
    .local v0, conf:Lorg/apache/commons/configuration/XMLConfiguration;
    if-nez v0, :cond_1

    .line 120
    const/4 v2, 0x0

    .line 123
    .local v2, in:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    .line 124
    invoke-static {v2}, Lcom/ecareme/utils/ConfigUtils;->loadXML(Ljava/io/InputStream;)Lorg/apache/commons/configuration/XMLConfiguration;

    move-result-object v0

    .line 125
    sget-object v3, Lcom/ecareme/utils/ConfigUtils;->configs:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " loaded."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/commons/configuration/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 142
    invoke-static {v2}, Lcom/ecareme/utils/IOUtils;->closeQuitely(Ljava/io/InputStream;)V

    .end local v2           #in:Ljava/io/InputStream;
    :cond_1
    move-object v3, v0

    .line 145
    goto :goto_0

    .line 128
    .restart local v2       #in:Ljava/io/InputStream;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 130
    .local v1, e:Ljava/io/IOException;
    :try_start_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " load failed, an empty Configuration returned. error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 132
    new-instance v3, Lorg/apache/commons/configuration/XMLConfiguration;

    invoke-direct {v3}, Lorg/apache/commons/configuration/XMLConfiguration;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    invoke-static {v2}, Lcom/ecareme/utils/IOUtils;->closeQuitely(Ljava/io/InputStream;)V

    goto :goto_0

    .line 134
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 136
    .local v1, e:Lorg/apache/commons/configuration/ConfigurationException;
    :try_start_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " load failed, an empty Configuration returned. error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/commons/configuration/ConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v1}, Lorg/apache/commons/configuration/ConfigurationException;->printStackTrace()V

    .line 138
    new-instance v3, Lorg/apache/commons/configuration/XMLConfiguration;

    invoke-direct {v3}, Lorg/apache/commons/configuration/XMLConfiguration;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    invoke-static {v2}, Lcom/ecareme/utils/IOUtils;->closeQuitely(Ljava/io/InputStream;)V

    goto/16 :goto_0

    .line 141
    .end local v1           #e:Lorg/apache/commons/configuration/ConfigurationException;
    :catchall_0
    move-exception v3

    .line 142
    invoke-static {v2}, Lcom/ecareme/utils/IOUtils;->closeQuitely(Ljava/io/InputStream;)V

    .line 143
    throw v3
.end method
