.class Lcom/nuance/xt9/input/DatabaseConfig;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "DatabaseConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/xt9/input/DatabaseConfig$DatabaseFileElement;
    }
.end annotation


# static fields
.field private static DATABASE_CONFIG_FILE_NAME:Ljava/lang/String;

.field private static TAG_ASDB:Ljava/lang/String;

.field private static TAG_CDB:Ljava/lang/String;

.field private static TAG_FILE:Ljava/lang/String;

.field private static TAG_HWR_DB_TEMPLATE:Ljava/lang/String;

.field private static TAG_HWR_DIC:Ljava/lang/String;

.field private static TAG_KDB:Ljava/lang/String;

.field private static TAG_LDB:Ljava/lang/String;

.field private static TAG_MDB:Ljava/lang/String;

.field private static TAG_MULTIPART_FILE:Ljava/lang/String;

.field private static TAG_ROOT:Ljava/lang/String;

.field private static TAG_UDB:Ljava/lang/String;

.field private static mConfigFilePath:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentDatabaseFileElement:Lcom/nuance/xt9/input/DatabaseConfig$DatabaseFileElement;

.field private mCurrentTag:Ljava/lang/String;

.field private mDatabaseConfigurations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRefreshAllDatabases:Z

.field private mRefreshPerDatabaseSection:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "kdb"

    sput-object v0, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_KDB:Ljava/lang/String;

    .line 56
    const-string v0, "ldb"

    sput-object v0, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_LDB:Ljava/lang/String;

    .line 57
    const-string v0, "mdb"

    sput-object v0, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_MDB:Ljava/lang/String;

    .line 58
    const-string v0, "udb"

    sput-object v0, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_UDB:Ljava/lang/String;

    .line 59
    const-string v0, "cdb"

    sput-object v0, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_CDB:Ljava/lang/String;

    .line 60
    const-string v0, "asdb"

    sput-object v0, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_ASDB:Ljava/lang/String;

    .line 61
    const-string v0, "hwr_dic"

    sput-object v0, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_HWR_DIC:Ljava/lang/String;

    .line 62
    const-string v0, "hwr_db_template"

    sput-object v0, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_HWR_DB_TEMPLATE:Ljava/lang/String;

    .line 63
    const-string v0, "file"

    sput-object v0, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_FILE:Ljava/lang/String;

    .line 64
    const-string v0, "multipart_file"

    sput-object v0, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_MULTIPART_FILE:Ljava/lang/String;

    .line 65
    const-string v0, "database_config"

    sput-object v0, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_ROOT:Ljava/lang/String;

    .line 66
    const-string v0, "databases.conf"

    sput-object v0, Lcom/nuance/xt9/input/DatabaseConfig;->DATABASE_CONFIG_FILE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    .line 85
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 69
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mDatabaseConfigurations:Ljava/util/Map;

    .line 87
    sget-object v7, Lcom/nuance/xt9/input/DatabaseConfig;->mConfigFilePath:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 89
    iput-object p1, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mContext:Landroid/content/Context;

    .line 91
    iget-object v7, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mDatabaseConfigurations:Ljava/util/Map;

    sget-object v8, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_KDB:Ljava/lang/String;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v7, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mDatabaseConfigurations:Ljava/util/Map;

    sget-object v8, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_LDB:Ljava/lang/String;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v7, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mDatabaseConfigurations:Ljava/util/Map;

    sget-object v8, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_CDB:Ljava/lang/String;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v7, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mDatabaseConfigurations:Ljava/util/Map;

    sget-object v8, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_MDB:Ljava/lang/String;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v7, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mDatabaseConfigurations:Ljava/util/Map;

    sget-object v8, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_UDB:Ljava/lang/String;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v7, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mDatabaseConfigurations:Ljava/util/Map;

    sget-object v8, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_ASDB:Ljava/lang/String;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v7, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mDatabaseConfigurations:Ljava/util/Map;

    sget-object v8, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_HWR_DIC:Ljava/lang/String;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v7, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mDatabaseConfigurations:Ljava/util/Map;

    sget-object v8, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_HWR_DB_TEMPLATE:Ljava/lang/String;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :try_start_0
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    sput-object v7, Lcom/nuance/xt9/input/DatabaseConfig;->mConfigFilePath:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const-string v8, "database_config.xml"

    const/4 v9, 0x3

    invoke-virtual {v7, v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v2

    .line 106
    .local v2, is:Ljava/io/InputStream;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v4

    .line 107
    .local v4, spf:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 109
    .local v3, sp:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v6

    .line 110
    .local v6, xr:Lorg/xml/sax/XMLReader;
    invoke-interface {v6, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 111
    new-instance v7, Lorg/xml/sax/InputSource;

    invoke-direct {v7, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v6, v7}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 116
    iget-object v7, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mDatabaseConfigurations:Ljava/util/Map;

    sget-object v8, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_KDB:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mDatabaseConfigurations:Ljava/util/Map;

    sget-object v8, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_LDB:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 120
    sget-object v7, Lcom/nuance/xt9/input/DatabaseConfig;->DATABASE_CONFIG_FILE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v7}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 121
    new-instance v5, Ljava/io/BufferedOutputStream;

    sget-object v7, Lcom/nuance/xt9/input/DatabaseConfig;->DATABASE_CONFIG_FILE_NAME:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 122
    .local v5, stream:Ljava/io/BufferedOutputStream;
    sget-object v8, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_KDB:Ljava/lang/String;

    iget-object v7, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mDatabaseConfigurations:Ljava/util/Map;

    sget-object v9, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_KDB:Ljava/lang/String;

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-direct {p0, v8, v7, v5}, Lcom/nuance/xt9/input/DatabaseConfig;->writeDatabaseSection(Ljava/lang/String;Ljava/util/Map;Ljava/io/BufferedOutputStream;)V

    .line 123
    sget-object v8, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_LDB:Ljava/lang/String;

    iget-object v7, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mDatabaseConfigurations:Ljava/util/Map;

    sget-object v9, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_LDB:Ljava/lang/String;

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-direct {p0, v8, v7, v5}, Lcom/nuance/xt9/input/DatabaseConfig;->writeDatabaseSection(Ljava/lang/String;Ljava/util/Map;Ljava/io/BufferedOutputStream;)V

    .line 124
    sget-object v8, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_MDB:Ljava/lang/String;

    iget-object v7, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mDatabaseConfigurations:Ljava/util/Map;

    sget-object v9, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_MDB:Ljava/lang/String;

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-direct {p0, v8, v7, v5}, Lcom/nuance/xt9/input/DatabaseConfig;->writeDatabaseSection(Ljava/lang/String;Ljava/util/Map;Ljava/io/BufferedOutputStream;)V

    .line 125
    sget-object v8, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_UDB:Ljava/lang/String;

    iget-object v7, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mDatabaseConfigurations:Ljava/util/Map;

    sget-object v9, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_UDB:Ljava/lang/String;

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-direct {p0, v8, v7, v5}, Lcom/nuance/xt9/input/DatabaseConfig;->writeDatabaseSection(Ljava/lang/String;Ljava/util/Map;Ljava/io/BufferedOutputStream;)V

    .line 126
    sget-object v8, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_CDB:Ljava/lang/String;

    iget-object v7, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mDatabaseConfigurations:Ljava/util/Map;

    sget-object v9, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_CDB:Ljava/lang/String;

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-direct {p0, v8, v7, v5}, Lcom/nuance/xt9/input/DatabaseConfig;->writeDatabaseSection(Ljava/lang/String;Ljava/util/Map;Ljava/io/BufferedOutputStream;)V

    .line 127
    sget-object v8, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_ASDB:Ljava/lang/String;

    iget-object v7, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mDatabaseConfigurations:Ljava/util/Map;

    sget-object v9, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_ASDB:Ljava/lang/String;

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-direct {p0, v8, v7, v5}, Lcom/nuance/xt9/input/DatabaseConfig;->writeDatabaseSection(Ljava/lang/String;Ljava/util/Map;Ljava/io/BufferedOutputStream;)V

    .line 128
    sget-object v8, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_HWR_DIC:Ljava/lang/String;

    iget-object v7, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mDatabaseConfigurations:Ljava/util/Map;

    sget-object v9, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_HWR_DIC:Ljava/lang/String;

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-direct {p0, v8, v7, v5}, Lcom/nuance/xt9/input/DatabaseConfig;->writeDatabaseSection(Ljava/lang/String;Ljava/util/Map;Ljava/io/BufferedOutputStream;)V

    .line 129
    sget-object v8, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_HWR_DB_TEMPLATE:Ljava/lang/String;

    iget-object v7, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mDatabaseConfigurations:Ljava/util/Map;

    sget-object v9, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_HWR_DB_TEMPLATE:Ljava/lang/String;

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-direct {p0, v8, v7, v5}, Lcom/nuance/xt9/input/DatabaseConfig;->writeDatabaseSection(Ljava/lang/String;Ljava/util/Map;Ljava/io/BufferedOutputStream;)V

    .line 130
    const-string v7, "\n"

    const-string v8, "UTF-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 131
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    .line 134
    new-instance v7, Ljava/lang/String;

    sget-object v8, Lcom/nuance/xt9/input/DatabaseConfig;->DATABASE_CONFIG_FILE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v8}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v7, Lcom/nuance/xt9/input/DatabaseConfig;->mConfigFilePath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v4           #spf:Ljavax/xml/parsers/SAXParserFactory;
    .end local v5           #stream:Ljava/io/BufferedOutputStream;
    .end local v6           #xr:Lorg/xml/sax/XMLReader;
    :cond_0
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 139
    .local v1, ie:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 141
    .end local v1           #ie:Ljava/io/IOException;
    :catch_1
    move-exception v7

    move-object v0, v7

    .line 142
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private extractFileAsset(Lcom/nuance/xt9/input/DatabaseConfig$DatabaseFileElement;)Z
    .locals 10
    .parameter "databaseElement"

    .prologue
    .line 305
    const/4 v6, 0x1

    .line 307
    .local v6, success:Z
    const-string v7, "DatabaseConfig"

    const-string v8, "extractFileAsset()..."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const-string v7, "DatabaseConfig"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "databaseTag = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/nuance/xt9/input/DatabaseConfig$DatabaseFileElement;->mDatabaseTag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const-string v7, "DatabaseConfig"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "databaseID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/nuance/xt9/input/DatabaseConfig$DatabaseFileElement;->mDatabaseID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const-string v7, "DatabaseConfig"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "databaseFile = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/nuance/xt9/input/DatabaseConfig$DatabaseFileElement;->mDatabaseFile:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const-string v7, "DatabaseConfig"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "assets = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/nuance/xt9/input/DatabaseConfig$DatabaseFileElement;->mAssetList:Ljava/util/List;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-boolean v7, p1, Lcom/nuance/xt9/input/DatabaseConfig$DatabaseFileElement;->mRefresh:Z

    if-eqz v7, :cond_0

    .line 316
    iget-object v7, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mContext:Landroid/content/Context;

    iget-object v8, p1, Lcom/nuance/xt9/input/DatabaseConfig$DatabaseFileElement;->mDatabaseFile:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 319
    :cond_0
    iget-object v7, p1, Lcom/nuance/xt9/input/DatabaseConfig$DatabaseFileElement;->mDatabaseFile:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/nuance/xt9/input/DatabaseConfig;->isFileAlreadyExist(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 323
    :try_start_0
    iget-object v7, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mContext:Landroid/content/Context;

    iget-object v8, p1, Lcom/nuance/xt9/input/DatabaseConfig$DatabaseFileElement;->mDatabaseFile:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    .line 325
    .local v5, ous:Ljava/io/FileOutputStream;
    iget-object v7, p1, Lcom/nuance/xt9/input/DatabaseConfig$DatabaseFileElement;->mAssetList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 327
    .local v0, assetFile:Ljava/lang/String;
    :try_start_1
    iget-object v7, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v7, v0, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v1

    .line 329
    .local v1, assetStream:Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v7

    new-array v2, v7, [B

    .line 330
    .local v2, buffer:[B
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    .line 331
    invoke-virtual {v5, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 333
    .end local v1           #assetStream:Ljava/io/InputStream;
    .end local v2           #buffer:[B
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 334
    .local v3, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 335
    const/4 v6, 0x0

    .line 341
    .end local v0           #assetFile:Ljava/lang/String;
    .end local v3           #e:Ljava/io/IOException;
    :cond_1
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 348
    :goto_1
    if-nez v6, :cond_2

    .line 349
    :try_start_4
    iget-object v7, p1, Lcom/nuance/xt9/input/DatabaseConfig$DatabaseFileElement;->mDatabaseFile:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/nuance/xt9/input/DatabaseConfig;->isFileAlreadyExist(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 350
    iget-object v7, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mContext:Landroid/content/Context;

    iget-object v8, p1, Lcom/nuance/xt9/input/DatabaseConfig$DatabaseFileElement;->mDatabaseFile:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    .line 361
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #ous:Ljava/io/FileOutputStream;
    :cond_2
    :goto_2
    const-string v7, "DatabaseConfig"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "extractFileAsset()...success "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    return v6

    .line 343
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #ous:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    .line 344
    .restart local v3       #e:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    .line 345
    const/4 v6, 0x0

    goto :goto_1

    .line 355
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #ous:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v7

    move-object v3, v7

    .line 356
    .local v3, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 357
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private isDatabaseSectionTag(Ljava/lang/String;)Z
    .locals 1
    .parameter "tag"

    .prologue
    .line 170
    sget-object v0, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_KDB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_LDB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_MDB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_UDB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_ASDB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_CDB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_HWR_DIC:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_HWR_DB_TEMPLATE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    :cond_0
    const/4 v0, 0x1

    .line 177
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFileAlreadyExist(Ljava/lang/String;)Z
    .locals 4
    .parameter "fileName"

    .prologue
    .line 283
    const/4 v1, 0x1

    .line 287
    .local v1, fileExist:Z
    :try_start_0
    iget-object v3, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 289
    .local v2, inputStream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 301
    .end local v2           #inputStream:Ljava/io/FileInputStream;
    :goto_0
    return v1

    .line 291
    .restart local v2       #inputStream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 293
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0

    .line 296
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #inputStream:Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 298
    .local v0, e:Ljava/io/FileNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isUserDynamicDatabaseTag(Ljava/lang/String;)Z
    .locals 1
    .parameter "tag"

    .prologue
    .line 278
    sget-object v0, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_ASDB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_CDB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_UDB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeDatabaseSection(Ljava/lang/String;Ljava/util/Map;Ljava/io/BufferedOutputStream;)V
    .locals 5
    .parameter "tag"
    .parameter
    .parameter "stream"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/BufferedOutputStream;",
            ")V"
        }
    .end annotation

    .prologue
    .line 149
    .local p2, databases:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v3, "\n"

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 150
    const-string v3, "["

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 151
    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 152
    const-string v3, "]\n"

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 154
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 155
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 156
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 157
    .local v2, key:Ljava/lang/String;
    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 158
    const-string v3, " "

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 159
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 160
    const-string v3, "\n"

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2           #key:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 164
    .local v0, ie:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .end local v0           #ie:Ljava/io/IOException;
    :cond_0
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 4
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 265
    iget-object v1, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mCurrentTag:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mCurrentTag:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/nuance/xt9/input/DatabaseConfig;->isDatabaseSectionTag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mCurrentDatabaseFileElement:Lcom/nuance/xt9/input/DatabaseConfig$DatabaseFileElement;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mCurrentDatabaseFileElement:Lcom/nuance/xt9/input/DatabaseConfig$DatabaseFileElement;

    iget-boolean v1, v1, Lcom/nuance/xt9/input/DatabaseConfig$DatabaseFileElement;->mMultiPartFile:Z

    if-eqz v1, :cond_0

    .line 268
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 270
    .local v0, multiPartAssetFile:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mCurrentDatabaseFileElement:Lcom/nuance/xt9/input/DatabaseConfig$DatabaseFileElement;

    iget-object v1, v1, Lcom/nuance/xt9/input/DatabaseConfig$DatabaseFileElement;->mAssetList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    const-string v1, "DatabaseConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "characters = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .end local v0           #multiPartAssetFile:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 243
    sget-object v1, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_FILE:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_MULTIPART_FILE:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 244
    :cond_0
    iget-object v1, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mCurrentDatabaseFileElement:Lcom/nuance/xt9/input/DatabaseConfig$DatabaseFileElement;

    if-eqz v1, :cond_2

    .line 245
    iget-object v1, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mDatabaseConfigurations:Ljava/util/Map;

    iget-object v2, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mCurrentDatabaseFileElement:Lcom/nuance/xt9/input/DatabaseConfig$DatabaseFileElement;

    iget-object v2, v2, Lcom/nuance/xt9/input/DatabaseConfig$DatabaseFileElement;->mDatabaseTag:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 247
    .local v0, databaseSection:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mCurrentDatabaseFileElement:Lcom/nuance/xt9/input/DatabaseConfig$DatabaseFileElement;

    iget-object v1, v1, Lcom/nuance/xt9/input/DatabaseConfig$DatabaseFileElement;->mDatabaseTag:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/nuance/xt9/input/DatabaseConfig;->isUserDynamicDatabaseTag(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mCurrentDatabaseFileElement:Lcom/nuance/xt9/input/DatabaseConfig$DatabaseFileElement;

    invoke-direct {p0, v1}, Lcom/nuance/xt9/input/DatabaseConfig;->extractFileAsset(Lcom/nuance/xt9/input/DatabaseConfig$DatabaseFileElement;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 251
    :cond_1
    iget-object v1, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mCurrentDatabaseFileElement:Lcom/nuance/xt9/input/DatabaseConfig$DatabaseFileElement;

    iget-object v1, v1, Lcom/nuance/xt9/input/DatabaseConfig$DatabaseFileElement;->mDatabaseID:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mCurrentDatabaseFileElement:Lcom/nuance/xt9/input/DatabaseConfig$DatabaseFileElement;

    iget-object v3, v3, Lcom/nuance/xt9/input/DatabaseConfig$DatabaseFileElement;->mDatabaseFile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .end local v0           #databaseSection:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    iput-object v4, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mCurrentDatabaseFileElement:Lcom/nuance/xt9/input/DatabaseConfig$DatabaseFileElement;

    .line 260
    :cond_3
    :goto_0
    return-void

    .line 257
    :cond_4
    invoke-direct {p0, p2}, Lcom/nuance/xt9/input/DatabaseConfig;->isDatabaseSectionTag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 258
    iput-object v4, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mCurrentTag:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDatabaseConfigureFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/nuance/xt9/input/DatabaseConfig;->mConfigFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/xt9/input/DatabaseConfig;->mConfigFilePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 79
    :cond_0
    const/4 v0, 0x0

    .line 82
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/nuance/xt9/input/DatabaseConfig;->mConfigFilePath:Ljava/lang/String;

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 8
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "qName"
    .parameter "atts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    .line 184
    sget-object v0, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_ROOT:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    iput-object v7, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mCurrentTag:Ljava/lang/String;

    .line 186
    iput-object v7, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mCurrentDatabaseFileElement:Lcom/nuance/xt9/input/DatabaseConfig$DatabaseFileElement;

    .line 189
    const-string v0, "refresh"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 190
    .local v6, refresh:Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string v0, "true"

    invoke-virtual {v6, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 191
    iput-boolean v1, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mRefreshAllDatabases:Z

    .line 237
    .end local v6           #refresh:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    invoke-direct {p0, p2}, Lcom/nuance/xt9/input/DatabaseConfig;->isDatabaseSectionTag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    iput-object p2, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mCurrentTag:Ljava/lang/String;

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mRefreshPerDatabaseSection:Z

    .line 199
    iget-boolean v0, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mRefreshAllDatabases:Z

    if-nez v0, :cond_0

    .line 200
    const-string v0, "refresh"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 201
    .restart local v6       #refresh:Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string v0, "true"

    invoke-virtual {v6, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 202
    iput-boolean v1, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mRefreshPerDatabaseSection:Z

    goto :goto_0

    .line 206
    .end local v6           #refresh:Ljava/lang/String;
    :cond_2
    sget-object v0, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_FILE:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_MULTIPART_FILE:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 207
    :cond_3
    const-string v0, "id"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, id:Ljava/lang/String;
    const-string v0, "name"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, file_name:Ljava/lang/String;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 210
    :cond_4
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " missing id or name attribute"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_5
    const/4 v4, 0x0

    .line 215
    .local v4, refreshPerDatabaseFile:Z
    iget-boolean v0, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mRefreshPerDatabaseSection:Z

    if-nez v0, :cond_6

    .line 216
    const-string v0, "refresh"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 217
    .restart local v6       #refresh:Ljava/lang/String;
    if-eqz v6, :cond_6

    const-string v0, "true"

    invoke-virtual {v6, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    .line 218
    const/4 v4, 0x1

    .line 222
    .end local v6           #refresh:Ljava/lang/String;
    :cond_6
    iget-boolean v0, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mRefreshPerDatabaseSection:Z

    iget-boolean v1, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mRefreshAllDatabases:Z

    or-int/2addr v0, v1

    or-int/2addr v4, v0

    .line 223
    sget-object v0, Lcom/nuance/xt9/input/DatabaseConfig;->TAG_MULTIPART_FILE:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 225
    .local v5, multiPartFile:Z
    new-instance v0, Lcom/nuance/xt9/input/DatabaseConfig$DatabaseFileElement;

    iget-object v1, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mCurrentTag:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/nuance/xt9/input/DatabaseConfig$DatabaseFileElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mCurrentDatabaseFileElement:Lcom/nuance/xt9/input/DatabaseConfig$DatabaseFileElement;

    .line 226
    if-nez v5, :cond_0

    .line 229
    iget-object v0, p0, Lcom/nuance/xt9/input/DatabaseConfig;->mCurrentDatabaseFileElement:Lcom/nuance/xt9/input/DatabaseConfig$DatabaseFileElement;

    iget-object v0, v0, Lcom/nuance/xt9/input/DatabaseConfig$DatabaseFileElement;->mAssetList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 235
    .end local v2           #id:Ljava/lang/String;
    .end local v3           #file_name:Ljava/lang/String;
    .end local v4           #refreshPerDatabaseFile:Z
    .end local v5           #multiPartFile:Z
    :cond_7
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " is not a valid tag"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
