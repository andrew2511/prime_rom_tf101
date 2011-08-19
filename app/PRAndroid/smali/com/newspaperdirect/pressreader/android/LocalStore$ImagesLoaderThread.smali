.class Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;
.super Ljava/lang/Thread;
.source "LocalStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/LocalStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImagesLoaderThread"
.end annotation


# instance fields
.field private mCacheDir:Ljava/io/File;

.field private mImagesUrl:Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;

.field private final mSleepLength:J

.field private mThumbnailUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public volatile stop:Z

.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;


# direct methods
.method public constructor <init>(Lcom/newspaperdirect/pressreader/android/LocalStore;Ljava/io/File;)V
    .locals 2
    .parameter
    .parameter "cacheDir"

    .prologue
    .line 1856
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    .line 1854
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1845
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;->stop:Z

    .line 1849
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;->mSleepLength:J

    .line 1855
    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;->mCacheDir:Ljava/io/File;

    return-void
.end method

.method private getFlag(Lcom/newspaperdirect/pressreader/android/core/catalog/Country;)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "country"

    .prologue
    .line 1952
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;->getISOCode()Ljava/lang/String;

    move-result-object v7

    .line 1953
    .local v7, isoCode:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "flag_"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;->mImagesUrl:Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;

    invoke-virtual {v13}, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;->getVersion()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1954
    .local v6, fileName:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    iget-object v12, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;->mCacheDir:Ljava/io/File;

    invoke-direct {v5, v12, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1955
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 1981
    :goto_0
    return-object v12

    .line 1956
    :cond_0
    const/4 v8, 0x0

    .line 1957
    .local v8, istream:Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 1959
    .local v9, ostream:Ljava/io/OutputStream;
    :try_start_0
    new-instance v11, Ljava/net/URL;

    new-instance v12, Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;->mImagesUrl:Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;

    invoke-virtual {v13}, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;->getUrl()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "flags/countries/32/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".png"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1960
    .local v11, url:Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v2

    .line 1961
    .local v2, content:Ljava/lang/Object;
    move-object v0, v2

    check-cast v0, Ljava/io/InputStream;

    move-object v8, v0

    .line 1962
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 1963
    .end local v9           #ostream:Ljava/io/OutputStream;
    .local v10, ostream:Ljava/io/OutputStream;
    const/16 v12, 0x2000

    :try_start_1
    new-array v1, v12, [B

    .line 1965
    .local v1, buffer:[B
    :goto_1
    invoke-virtual {v8, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    .local v3, count:I
    if-gtz v3, :cond_2

    .line 1971
    if-eqz v10, :cond_7

    .line 1972
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 1973
    :goto_2
    const/4 v9, 0x0

    .line 1975
    .end local v10           #ostream:Ljava/io/OutputStream;
    .restart local v9       #ostream:Ljava/io/OutputStream;
    :goto_3
    if-eqz v8, :cond_1

    .line 1976
    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 1977
    :goto_4
    const/4 v8, 0x0

    .line 1980
    .end local v1           #buffer:[B
    .end local v2           #content:Ljava/lang/Object;
    .end local v3           #count:I
    .end local v11           #url:Ljava/net/URL;
    :cond_1
    :goto_5
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    goto :goto_0

    .line 1965
    .end local v9           #ostream:Ljava/io/OutputStream;
    .restart local v1       #buffer:[B
    .restart local v2       #content:Ljava/lang/Object;
    .restart local v3       #count:I
    .restart local v10       #ostream:Ljava/io/OutputStream;
    .restart local v11       #url:Ljava/net/URL;
    :cond_2
    const/4 v12, 0x0

    :try_start_4
    invoke-virtual {v10, v1, v12, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 1967
    .end local v1           #buffer:[B
    .end local v3           #count:I
    :catch_0
    move-exception v12

    move-object v4, v12

    move-object v9, v10

    .line 1968
    .end local v2           #content:Ljava/lang/Object;
    .end local v10           #ostream:Ljava/io/OutputStream;
    .end local v11           #url:Ljava/net/URL;
    .local v4, e:Ljava/lang/Exception;
    .restart local v9       #ostream:Ljava/io/OutputStream;
    :goto_6
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1971
    if-eqz v9, :cond_3

    .line 1972
    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1973
    .end local v4           #e:Ljava/lang/Exception;
    :goto_7
    const/4 v9, 0x0

    .line 1975
    :cond_3
    if-eqz v8, :cond_1

    .line 1976
    :try_start_7
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 1977
    :goto_8
    const/4 v8, 0x0

    goto :goto_5

    .line 1972
    .restart local v4       #e:Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 1976
    .end local v4           #e:Ljava/io/IOException;
    :catch_2
    move-exception v4

    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 1970
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v12

    .line 1971
    :goto_9
    if-eqz v9, :cond_4

    .line 1972
    :try_start_8
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 1973
    :goto_a
    const/4 v9, 0x0

    .line 1975
    :cond_4
    if-eqz v8, :cond_5

    .line 1976
    :try_start_9
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 1977
    :goto_b
    const/4 v8, 0x0

    .line 1979
    :cond_5
    throw v12

    .line 1972
    :catch_3
    move-exception v4

    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 1976
    .end local v4           #e:Ljava/io/IOException;
    :catch_4
    move-exception v4

    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 1972
    .end local v4           #e:Ljava/io/IOException;
    .end local v9           #ostream:Ljava/io/OutputStream;
    .restart local v1       #buffer:[B
    .restart local v2       #content:Ljava/lang/Object;
    .restart local v3       #count:I
    .restart local v10       #ostream:Ljava/io/OutputStream;
    .restart local v11       #url:Ljava/net/URL;
    :catch_5
    move-exception v4

    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1976
    .end local v4           #e:Ljava/io/IOException;
    .end local v10           #ostream:Ljava/io/OutputStream;
    .restart local v9       #ostream:Ljava/io/OutputStream;
    :catch_6
    move-exception v4

    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1981
    .end local v1           #buffer:[B
    .end local v2           #content:Ljava/lang/Object;
    .end local v3           #count:I
    .end local v4           #e:Ljava/io/IOException;
    .end local v11           #url:Ljava/net/URL;
    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1970
    .end local v9           #ostream:Ljava/io/OutputStream;
    .restart local v2       #content:Ljava/lang/Object;
    .restart local v10       #ostream:Ljava/io/OutputStream;
    .restart local v11       #url:Ljava/net/URL;
    :catchall_1
    move-exception v12

    move-object v9, v10

    .end local v10           #ostream:Ljava/io/OutputStream;
    .restart local v9       #ostream:Ljava/io/OutputStream;
    goto :goto_9

    .line 1967
    .end local v2           #content:Ljava/lang/Object;
    .end local v11           #url:Ljava/net/URL;
    :catch_7
    move-exception v12

    move-object v4, v12

    goto :goto_6

    .end local v9           #ostream:Ljava/io/OutputStream;
    .restart local v1       #buffer:[B
    .restart local v2       #content:Ljava/lang/Object;
    .restart local v3       #count:I
    .restart local v10       #ostream:Ljava/io/OutputStream;
    .restart local v11       #url:Ljava/net/URL;
    :cond_7
    move-object v9, v10

    .end local v10           #ostream:Ljava/io/OutputStream;
    .restart local v9       #ostream:Ljava/io/OutputStream;
    goto :goto_3
.end method

.method private getThumbnail(Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;)Landroid/graphics/Bitmap;
    .locals 17
    .parameter "newspaper"

    .prologue
    .line 1912
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v14, "MMddyyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-direct {v7, v14, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1913
    .local v7, formatter:Ljava/text/SimpleDateFormat;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "lsthumb"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getCid()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->latestIssueDate:Ljava/util/Date;

    move-object v15, v0

    invoke-virtual {v7, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1914
    .local v6, fileName:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;->mCacheDir:Ljava/io/File;

    move-object v14, v0

    invoke-direct {v5, v14, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1915
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    move-object v14, v0

    invoke-static {v14, v5}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$18(Lcom/newspaperdirect/pressreader/android/LocalStore;Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 1948
    :goto_0
    return-object v14

    .line 1916
    :cond_0
    const/4 v8, 0x0

    .line 1917
    .local v8, istream:Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 1919
    .local v9, ostream:Ljava/io/OutputStream;
    :try_start_0
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/LocalStore$ThumbnailUrls;->access$0()Ljava/util/List;

    move-result-object v13

    .line 1920
    .local v13, urls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v13, :cond_1

    invoke-interface {v13}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    move-result v14

    if-nez v14, :cond_4

    .line 1938
    :cond_1
    if-eqz v9, :cond_2

    .line 1939
    :try_start_1
    throw v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1940
    :goto_1
    const/4 v9, 0x0

    .line 1942
    :cond_2
    if-eqz v8, :cond_3

    .line 1943
    :try_start_2
    throw v8
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1944
    :goto_2
    const/4 v8, 0x0

    .line 1920
    :cond_3
    const/4 v14, 0x0

    goto :goto_0

    .line 1939
    :catch_0
    move-exception v4

    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1943
    .end local v4           #e:Ljava/io/IOException;
    :catch_1
    move-exception v4

    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1921
    .end local v4           #e:Ljava/io/IOException;
    :cond_4
    :try_start_3
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v14, "yyyyMMdd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-direct {v12, v14, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1922
    .local v12, urlFormatter:Ljava/text/SimpleDateFormat;
    new-instance v11, Ljava/net/URL;

    new-instance v14, Ljava/lang/StringBuilder;

    new-instance v15, Ljava/util/Random;

    invoke-direct {v15}, Ljava/util/Random;-><init>()V

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/Random;->nextInt(I)I

    move-result v15

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1923
    const-string v15, "?cid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getCid()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1924
    const-string v15, "&date="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->latestIssueDate:Ljava/util/Date;

    move-object v15, v0

    invoke-virtual {v12, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1925
    const-string v15, "&page=1"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1926
    const-string v15, "&width="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->THUMBNAIL_WIDTH:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1922
    invoke-direct {v11, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1927
    .local v11, url:Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v2

    .line 1928
    .local v2, content:Ljava/lang/Object;
    move-object v0, v2

    check-cast v0, Ljava/io/InputStream;

    move-object v8, v0

    .line 1929
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    .line 1930
    .end local v9           #ostream:Ljava/io/OutputStream;
    .local v10, ostream:Ljava/io/OutputStream;
    const/16 v14, 0x2000

    :try_start_4
    new-array v1, v14, [B

    .line 1932
    .local v1, buffer:[B
    :goto_3
    invoke-virtual {v8, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v3

    .local v3, count:I
    if-gez v3, :cond_6

    .line 1938
    if-eqz v10, :cond_b

    .line 1939
    :try_start_5
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 1940
    :goto_4
    const/4 v9, 0x0

    .line 1942
    .end local v10           #ostream:Ljava/io/OutputStream;
    .restart local v9       #ostream:Ljava/io/OutputStream;
    :goto_5
    if-eqz v8, :cond_5

    .line 1943
    :try_start_6
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 1944
    :goto_6
    const/4 v8, 0x0

    .line 1947
    .end local v1           #buffer:[B
    .end local v2           #content:Ljava/lang/Object;
    .end local v3           #count:I
    .end local v11           #url:Ljava/net/URL;
    .end local v12           #urlFormatter:Ljava/text/SimpleDateFormat;
    .end local v13           #urls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    :goto_7
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    move-object v14, v0

    invoke-static {v14, v5}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$18(Lcom/newspaperdirect/pressreader/android/LocalStore;Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v14

    goto/16 :goto_0

    .line 1932
    .end local v9           #ostream:Ljava/io/OutputStream;
    .restart local v1       #buffer:[B
    .restart local v2       #content:Ljava/lang/Object;
    .restart local v3       #count:I
    .restart local v10       #ostream:Ljava/io/OutputStream;
    .restart local v11       #url:Ljava/net/URL;
    .restart local v12       #urlFormatter:Ljava/text/SimpleDateFormat;
    .restart local v13       #urls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    const/4 v14, 0x0

    :try_start_7
    invoke-virtual {v10, v1, v14, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    .line 1934
    .end local v1           #buffer:[B
    .end local v3           #count:I
    :catch_2
    move-exception v14

    move-object v4, v14

    move-object v9, v10

    .line 1935
    .end local v2           #content:Ljava/lang/Object;
    .end local v10           #ostream:Ljava/io/OutputStream;
    .end local v11           #url:Ljava/net/URL;
    .end local v12           #urlFormatter:Ljava/text/SimpleDateFormat;
    .end local v13           #urls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local v4, e:Ljava/lang/Exception;
    .restart local v9       #ostream:Ljava/io/OutputStream;
    :goto_8
    :try_start_8
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1938
    if-eqz v9, :cond_7

    .line 1939
    :try_start_9
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 1940
    .end local v4           #e:Ljava/lang/Exception;
    :goto_9
    const/4 v9, 0x0

    .line 1942
    :cond_7
    if-eqz v8, :cond_5

    .line 1943
    :try_start_a
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 1944
    :goto_a
    const/4 v8, 0x0

    goto :goto_7

    .line 1939
    .restart local v4       #e:Ljava/lang/Exception;
    :catch_3
    move-exception v4

    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 1943
    .end local v4           #e:Ljava/io/IOException;
    :catch_4
    move-exception v4

    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 1937
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v14

    .line 1938
    :goto_b
    if-eqz v9, :cond_8

    .line 1939
    :try_start_b
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 1940
    :goto_c
    const/4 v9, 0x0

    .line 1942
    :cond_8
    if-eqz v8, :cond_9

    .line 1943
    :try_start_c
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 1944
    :goto_d
    const/4 v8, 0x0

    .line 1946
    :cond_9
    throw v14

    .line 1939
    :catch_5
    move-exception v4

    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 1943
    .end local v4           #e:Ljava/io/IOException;
    :catch_6
    move-exception v4

    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 1939
    .end local v4           #e:Ljava/io/IOException;
    .end local v9           #ostream:Ljava/io/OutputStream;
    .restart local v1       #buffer:[B
    .restart local v2       #content:Ljava/lang/Object;
    .restart local v3       #count:I
    .restart local v10       #ostream:Ljava/io/OutputStream;
    .restart local v11       #url:Ljava/net/URL;
    .restart local v12       #urlFormatter:Ljava/text/SimpleDateFormat;
    .restart local v13       #urls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_7
    move-exception v4

    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1943
    .end local v4           #e:Ljava/io/IOException;
    .end local v10           #ostream:Ljava/io/OutputStream;
    .restart local v9       #ostream:Ljava/io/OutputStream;
    :catch_8
    move-exception v4

    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 1948
    .end local v1           #buffer:[B
    .end local v2           #content:Ljava/lang/Object;
    .end local v3           #count:I
    .end local v4           #e:Ljava/io/IOException;
    .end local v11           #url:Ljava/net/URL;
    .end local v12           #urlFormatter:Ljava/text/SimpleDateFormat;
    .end local v13           #urls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 1937
    .end local v9           #ostream:Ljava/io/OutputStream;
    .restart local v2       #content:Ljava/lang/Object;
    .restart local v10       #ostream:Ljava/io/OutputStream;
    .restart local v11       #url:Ljava/net/URL;
    .restart local v12       #urlFormatter:Ljava/text/SimpleDateFormat;
    .restart local v13       #urls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1
    move-exception v14

    move-object v9, v10

    .end local v10           #ostream:Ljava/io/OutputStream;
    .restart local v9       #ostream:Ljava/io/OutputStream;
    goto :goto_b

    .line 1934
    .end local v2           #content:Ljava/lang/Object;
    .end local v11           #url:Ljava/net/URL;
    .end local v12           #urlFormatter:Ljava/text/SimpleDateFormat;
    .end local v13           #urls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_9
    move-exception v14

    move-object v4, v14

    goto :goto_8

    .end local v9           #ostream:Ljava/io/OutputStream;
    .restart local v1       #buffer:[B
    .restart local v2       #content:Ljava/lang/Object;
    .restart local v3       #count:I
    .restart local v10       #ostream:Ljava/io/OutputStream;
    .restart local v11       #url:Ljava/net/URL;
    .restart local v12       #urlFormatter:Ljava/text/SimpleDateFormat;
    .restart local v13       #urls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_b
    move-object v9, v10

    .end local v10           #ostream:Ljava/io/OutputStream;
    .restart local v9       #ostream:Ljava/io/OutputStream;
    goto :goto_5
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1860
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1861
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;->get()Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;

    move-result-object v3

    iput-object v3, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;->mImagesUrl:Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;

    .line 1862
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;->mImagesUrl:Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;

    if-nez v3, :cond_1

    .line 1909
    :cond_0
    :goto_0
    return-void

    .line 1863
    :cond_1
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/LocalStore$ThumbnailUrls;->access$0()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;->mThumbnailUrls:Ljava/util/List;

    .line 1864
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;->mThumbnailUrls:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;->mThumbnailUrls:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1865
    :cond_2
    :goto_1
    iget-boolean v3, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;->stop:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v3}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$17(Lcom/newspaperdirect/pressreader/android/LocalStore;)Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1867
    :try_start_0
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v3}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$17(Lcom/newspaperdirect/pressreader/android/LocalStore;)Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;

    move-result-object v3

    invoke-static {v3}, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;->access$3(Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;)Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1868
    .local v2, task:Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;
    if-nez v2, :cond_3

    .line 1870
    const-wide/16 v3, 0xa

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1871
    :catch_0
    move-exception v0

    .line 1872
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1905
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v2           #task:Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 1906
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1878
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #task:Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;
    :cond_3
    :try_start_3
    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1886
    const/4 v1, 0x0

    .line 1889
    .local v1, result:Landroid/graphics/Bitmap;
    :goto_2
    if-eqz v1, :cond_2

    .line 1890
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    new-instance v4, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread$1;

    invoke-direct {v4, p0, v2, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread$1;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Lcom/newspaperdirect/pressreader/android/LocalStore;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1880
    .end local v1           #result:Landroid/graphics/Bitmap;
    :pswitch_0
    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;->getCountry()Lcom/newspaperdirect/pressreader/android/core/catalog/Country;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;->getFlag(Lcom/newspaperdirect/pressreader/android/core/catalog/Country;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1881
    .restart local v1       #result:Landroid/graphics/Bitmap;
    goto :goto_2

    .line 1883
    .end local v1           #result:Landroid/graphics/Bitmap;
    :pswitch_1
    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;->getNewspaper()Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;->getThumbnail(Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v1

    .line 1884
    .restart local v1       #result:Landroid/graphics/Bitmap;
    goto :goto_2

    .line 1878
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
