.class public Lcom/newspaperdirect/pressreader/android/core/PageBitmapLoader;
.super Ljava/lang/Object;
.source "PageBitmapLoader.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "PageBitmapLoader"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadBitmap(Ljava/io/File;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "file"
    .parameter "name"

    .prologue
    .line 95
    const/4 v3, 0x0

    .line 96
    .local v3, result:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 98
    .local v4, zip:Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v4           #zip:Ljava/util/zip/ZipFile;
    .local v5, zip:Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v5, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v1

    .line 100
    .local v1, entry:Ljava/util/zip/ZipEntry;
    if-nez v1, :cond_1

    .line 110
    if-eqz v5, :cond_0

    :try_start_2
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 111
    :cond_0
    :goto_0
    const/4 v4, 0x0

    .line 100
    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .restart local v4       #zip:Ljava/util/zip/ZipFile;
    const/4 v6, 0x0

    .line 113
    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    :goto_1
    return-object v6

    .line 102
    .end local v4           #zip:Ljava/util/zip/ZipFile;
    .restart local v1       #entry:Ljava/util/zip/ZipEntry;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    :cond_1
    :try_start_3
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 103
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v6, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 104
    invoke-static {v5, v1, v2}, Lcom/newspaperdirect/pressreader/android/core/PageBitmapLoader;->loadBitmap(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v3

    .line 110
    if-eqz v5, :cond_2

    :try_start_4
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 111
    :cond_2
    :goto_2
    const/4 v4, 0x0

    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .restart local v4       #zip:Ljava/util/zip/ZipFile;
    :goto_3
    move-object v6, v3

    .line 113
    goto :goto_1

    .line 106
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 107
    .local v0, e:Ljava/lang/Exception;
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 110
    if-eqz v4, :cond_3

    :try_start_6
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 111
    :cond_3
    :goto_5
    const/4 v4, 0x0

    goto :goto_3

    .line 109
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 110
    :goto_6
    if-eqz v4, :cond_4

    :try_start_7
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 111
    :cond_4
    :goto_7
    const/4 v4, 0x0

    .line 112
    throw v6

    .line 110
    .end local v4           #zip:Ljava/util/zip/ZipFile;
    .restart local v1       #entry:Ljava/util/zip/ZipEntry;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    :catch_1
    move-exception v6

    goto :goto_0

    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .restart local v0       #e:Ljava/lang/Exception;
    .restart local v4       #zip:Ljava/util/zip/ZipFile;
    :catch_2
    move-exception v6

    goto :goto_5

    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v7

    goto :goto_7

    .end local v4           #zip:Ljava/util/zip/ZipFile;
    .restart local v1       #entry:Ljava/util/zip/ZipEntry;
    .restart local v2       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    :catch_4
    move-exception v6

    goto :goto_2

    .line 109
    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .restart local v4       #zip:Ljava/util/zip/ZipFile;
    goto :goto_6

    .line 106
    .end local v4           #zip:Ljava/util/zip/ZipFile;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    :catch_5
    move-exception v6

    move-object v0, v6

    move-object v4, v5

    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .restart local v4       #zip:Ljava/util/zip/ZipFile;
    goto :goto_4
.end method

.method private static loadBitmap(Ljava/util/zip/ZipFile;Lcom/newspaperdirect/pressreader/android/core/layout/Page;Z)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "file"
    .parameter "page"
    .parameter "addArticlesLayer"

    .prologue
    .line 117
    const/4 v1, 0x0

    .line 119
    .local v1, result:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 120
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "p"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".jpg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 123
    .local v0, entry:Ljava/util/zip/ZipEntry;
    if-nez v0, :cond_0

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #entry:Ljava/util/zip/ZipEntry;
    const-string v2, "p"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 125
    .restart local v0       #entry:Ljava/util/zip/ZipEntry;
    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #entry:Ljava/util/zip/ZipEntry;
    const-string v2, "p"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_bg.jpg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 127
    .restart local v0       #entry:Ljava/util/zip/ZipEntry;
    if-nez v0, :cond_0

    const/4 p0, 0x0

    move-object p1, p0

    move-object p0, v1

    .line 171
    .end local v0           #entry:Ljava/util/zip/ZipEntry;
    .end local v1           #result:Landroid/graphics/Bitmap;
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    .end local p1
    .end local p2
    .local p0, result:Landroid/graphics/Bitmap;
    :goto_0
    return-object p1

    .line 131
    .restart local v0       #entry:Ljava/util/zip/ZipEntry;
    .restart local v1       #result:Landroid/graphics/Bitmap;
    .restart local v3       #options:Landroid/graphics/BitmapFactory$Options;
    .local p0, file:Ljava/util/zip/ZipFile;
    .restart local p1
    .restart local p2
    :cond_0
    invoke-static {p0, v0, v3}, Lcom/newspaperdirect/pressreader/android/core/PageBitmapLoader;->loadBitmap(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 132
    .local v0, bm:Landroid/graphics/Bitmap;
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 133
    .end local v1           #result:Landroid/graphics/Bitmap;
    .local v4, result:Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 134
    const/4 v0, 0x0

    .line 135
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 137
    .local v1, canvas:Landroid/graphics/Canvas;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "p"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "_fg.png"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 138
    .local v2, entry:Ljava/util/zip/ZipEntry;
    if-eqz v2, :cond_5

    .line 139
    invoke-static {p0, v2, v3}, Lcom/newspaperdirect/pressreader/android/core/PageBitmapLoader;->loadBitmap(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 140
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .local p0, bm:Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 141
    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 142
    const/4 p0, 0x0

    .line 145
    :goto_1
    if-eqz p2, :cond_4

    .line 146
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getArticles()Ljava/util/List;

    move-result-object p0

    .line 147
    .local p0, articles:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/layout/Article;>;"
    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    .end local p2
    if-lez p2, :cond_4

    .line 148
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object p1

    .end local p1
    iget p1, p1, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->width:I

    int-to-float p1, p1

    div-float v0, p2, p1

    .line 149
    .local v0, scale:F
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 150
    .local p1, paint:Landroid/graphics/Paint;
    const p2, -0x7fa37f43

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 151
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local p0           #articles:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/layout/Article;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_2

    move-object p0, v4

    .end local v0           #scale:F
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v4           #result:Landroid/graphics/Bitmap;
    .end local p1           #paint:Landroid/graphics/Paint;
    .local p0, result:Landroid/graphics/Bitmap;
    :goto_2
    move-object p1, p0

    .line 171
    goto :goto_0

    .line 151
    .end local p0           #result:Landroid/graphics/Bitmap;
    .restart local v0       #scale:F
    .restart local v1       #canvas:Landroid/graphics/Canvas;
    .restart local v4       #result:Landroid/graphics/Bitmap;
    .restart local p1       #paint:Landroid/graphics/Paint;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    .line 152
    .local p0, article:Lcom/newspaperdirect/pressreader/android/core/layout/Article;
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getTitle()Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    move-result-object p0

    .line 153
    .local p0, title:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;
    if-eqz p0, :cond_1

    .line 154
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;->getRects()Ljava/util/List;

    move-result-object p0

    .line 155
    .local p0, rects:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;>;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    .line 156
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local p0           #rects:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;>;"
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    .line 157
    .local p0, rect:Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;
    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->getRectF(F)Landroid/graphics/RectF;

    move-result-object p0

    .line 158
    .local p0, r:Landroid/graphics/RectF;
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p2

    const/high16 v5, 0x41a0

    cmpg-float p2, p2, v5

    if-gez p2, :cond_3

    const/4 p2, 0x3

    :goto_4
    int-to-float p2, p2

    .line 159
    .local p2, rad:F
    invoke-virtual {v1, p0, p2, p2, p1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 167
    .end local v0           #scale:F
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local p0           #r:Landroid/graphics/RectF;
    .end local p1           #paint:Landroid/graphics/Paint;
    .end local p2           #rad:F
    :catch_0
    move-exception p0

    move-object p1, v4

    .line 168
    .end local v4           #result:Landroid/graphics/Bitmap;
    .local p0, e:Ljava/lang/Exception;
    .local p1, result:Landroid/graphics/Bitmap;
    :goto_5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object p0, p1

    .end local p1           #result:Landroid/graphics/Bitmap;
    .local p0, result:Landroid/graphics/Bitmap;
    goto :goto_2

    .line 158
    .restart local v0       #scale:F
    .restart local v1       #canvas:Landroid/graphics/Canvas;
    .restart local v4       #result:Landroid/graphics/Bitmap;
    .local p0, r:Landroid/graphics/RectF;
    .local p1, paint:Landroid/graphics/Paint;
    :cond_3
    const/16 p2, 0x8

    goto :goto_4

    .line 167
    .end local v0           #scale:F
    .end local v4           #result:Landroid/graphics/Bitmap;
    .local v1, result:Landroid/graphics/Bitmap;
    .local p0, file:Ljava/util/zip/ZipFile;
    .local p1, page:Lcom/newspaperdirect/pressreader/android/core/layout/Page;
    .local p2, addArticlesLayer:Z
    :catch_1
    move-exception p0

    move-object p1, v1

    .end local v1           #result:Landroid/graphics/Bitmap;
    .local p1, result:Landroid/graphics/Bitmap;
    goto :goto_5

    .end local p0           #file:Ljava/util/zip/ZipFile;
    .end local p2           #addArticlesLayer:Z
    .local v1, canvas:Landroid/graphics/Canvas;
    .restart local v4       #result:Landroid/graphics/Bitmap;
    .local p1, page:Lcom/newspaperdirect/pressreader/android/core/layout/Page;
    :cond_4
    move-object p0, v4

    .end local v4           #result:Landroid/graphics/Bitmap;
    .local p0, result:Landroid/graphics/Bitmap;
    goto :goto_2

    .local v0, bm:Landroid/graphics/Bitmap;
    .restart local v2       #entry:Ljava/util/zip/ZipEntry;
    .restart local v3       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v4       #result:Landroid/graphics/Bitmap;
    .local p0, file:Ljava/util/zip/ZipFile;
    .restart local p2       #addArticlesLayer:Z
    :cond_5
    move-object p0, v0

    .end local v0           #bm:Landroid/graphics/Bitmap;
    .local p0, bm:Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method private static loadBitmap(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "zip"
    .parameter "entry"
    .parameter "options"

    .prologue
    .line 175
    const/4 v8, 0x0

    .line 176
    .local v8, result:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 177
    .local v3, istream:Ljava/io/BufferedInputStream;
    const/4 v5, 0x0

    .line 179
    .local v5, ostream:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-static {p0}, Lcom/newspaperdirect/pressreader/android/core/cipher/Util;->retrievePassword(Ljava/util/zip/ZipFile;)[B

    move-result-object v7

    .line 180
    .local v7, password:[B
    if-nez v7, :cond_2

    .line 181
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v9

    const/high16 v10, 0x1

    invoke-direct {v4, v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 182
    .end local v3           #istream:Ljava/io/BufferedInputStream;
    .local v4, istream:Ljava/io/BufferedInputStream;
    const/4 v9, 0x0

    :try_start_1
    invoke-static {v4, v9, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    move-result-object v8

    move-object v3, v4

    .line 203
    .end local v4           #istream:Ljava/io/BufferedInputStream;
    .restart local v3       #istream:Ljava/io/BufferedInputStream;
    :goto_0
    if-eqz v5, :cond_0

    .line 204
    :try_start_2
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    .line 205
    :goto_1
    const/4 v5, 0x0

    .line 207
    :cond_0
    if-eqz v3, :cond_1

    .line 208
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    .line 209
    :goto_2
    const/4 v3, 0x0

    .line 213
    .end local v7           #password:[B
    :cond_1
    :goto_3
    return-object v8

    .line 185
    .restart local v7       #password:[B
    :cond_2
    :try_start_4
    new-instance v4, Lcom/newspaperdirect/pressreader/android/core/cipher/BufferedRC4InputStream;

    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v9

    const/high16 v10, 0x1

    invoke-direct {v4, v9, v10, v7}, Lcom/newspaperdirect/pressreader/android/core/cipher/BufferedRC4InputStream;-><init>(Ljava/io/InputStream;I[B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 186
    .end local v3           #istream:Ljava/io/BufferedInputStream;
    .restart local v4       #istream:Ljava/io/BufferedInputStream;
    const/16 v9, 0x2000

    :try_start_5
    new-array v0, v9, [B

    .line 187
    .local v0, buffer:[B
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    array-length v9, v0

    invoke-direct {v6, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a

    .line 188
    .end local v5           #ostream:Ljava/io/ByteArrayOutputStream;
    .local v6, ostream:Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 189
    .local v1, count:I
    :goto_4
    :try_start_6
    invoke-virtual {v4, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v1

    if-gtz v1, :cond_3

    .line 191
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v11

    invoke-static {v9, v10, v11, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object v5, v6

    .end local v6           #ostream:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #ostream:Ljava/io/ByteArrayOutputStream;
    move-object v3, v4

    .end local v4           #istream:Ljava/io/BufferedInputStream;
    .restart local v3       #istream:Ljava/io/BufferedInputStream;
    goto :goto_0

    .line 190
    .end local v3           #istream:Ljava/io/BufferedInputStream;
    .end local v5           #ostream:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #istream:Ljava/io/BufferedInputStream;
    .restart local v6       #ostream:Ljava/io/ByteArrayOutputStream;
    :cond_3
    const/4 v9, 0x0

    invoke-virtual {v6, v0, v9, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b

    goto :goto_4

    .line 194
    :catch_0
    move-exception v9

    move-object v2, v9

    move-object v5, v6

    .end local v6           #ostream:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #ostream:Ljava/io/ByteArrayOutputStream;
    move-object v3, v4

    .line 195
    .end local v0           #buffer:[B
    .end local v1           #count:I
    .end local v4           #istream:Ljava/io/BufferedInputStream;
    .end local v7           #password:[B
    .local v2, e:Ljava/lang/OutOfMemoryError;
    .restart local v3       #istream:Ljava/io/BufferedInputStream;
    :goto_5
    :try_start_7
    const-string v9, "PageBitmapLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 203
    if-eqz v5, :cond_4

    .line 204
    :try_start_8
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 205
    :goto_6
    const/4 v5, 0x0

    .line 207
    :cond_4
    if-eqz v3, :cond_1

    .line 208
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 209
    :goto_7
    const/4 v3, 0x0

    goto :goto_3

    .line 198
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v9

    move-object v2, v9

    .line 199
    .local v2, e:Ljava/lang/Exception;
    :goto_8
    :try_start_a
    const-string v9, "PageBitmapLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 203
    if-eqz v5, :cond_5

    .line 204
    :try_start_b
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 205
    :goto_9
    const/4 v5, 0x0

    .line 207
    :cond_5
    if-eqz v3, :cond_1

    .line 208
    :try_start_c
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 209
    :goto_a
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 202
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 203
    :goto_b
    if-eqz v5, :cond_6

    .line 204
    :try_start_d
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    .line 205
    :goto_c
    const/4 v5, 0x0

    .line 207
    :cond_6
    if-eqz v3, :cond_7

    .line 208
    :try_start_e
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    .line 209
    :goto_d
    const/4 v3, 0x0

    .line 211
    :cond_7
    throw v9

    .line 204
    .local v2, e:Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v9

    goto :goto_6

    .line 208
    :catch_3
    move-exception v9

    goto :goto_7

    .line 204
    .local v2, e:Ljava/lang/Exception;
    :catch_4
    move-exception v9

    goto :goto_9

    .line 208
    :catch_5
    move-exception v9

    goto :goto_a

    .line 204
    .end local v2           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v10

    goto :goto_c

    .line 208
    :catch_7
    move-exception v10

    goto :goto_d

    .line 204
    .restart local v7       #password:[B
    :catch_8
    move-exception v9

    goto/16 :goto_1

    .line 208
    :catch_9
    move-exception v9

    goto/16 :goto_2

    .line 202
    .end local v3           #istream:Ljava/io/BufferedInputStream;
    .restart local v4       #istream:Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4           #istream:Ljava/io/BufferedInputStream;
    .restart local v3       #istream:Ljava/io/BufferedInputStream;
    goto :goto_b

    .end local v3           #istream:Ljava/io/BufferedInputStream;
    .end local v5           #ostream:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #buffer:[B
    .restart local v1       #count:I
    .restart local v4       #istream:Ljava/io/BufferedInputStream;
    .restart local v6       #ostream:Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v9

    move-object v5, v6

    .end local v6           #ostream:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #ostream:Ljava/io/ByteArrayOutputStream;
    move-object v3, v4

    .end local v4           #istream:Ljava/io/BufferedInputStream;
    .restart local v3       #istream:Ljava/io/BufferedInputStream;
    goto :goto_b

    .line 198
    .end local v0           #buffer:[B
    .end local v1           #count:I
    .end local v3           #istream:Ljava/io/BufferedInputStream;
    .restart local v4       #istream:Ljava/io/BufferedInputStream;
    :catch_a
    move-exception v9

    move-object v2, v9

    move-object v3, v4

    .end local v4           #istream:Ljava/io/BufferedInputStream;
    .restart local v3       #istream:Ljava/io/BufferedInputStream;
    goto :goto_8

    .end local v3           #istream:Ljava/io/BufferedInputStream;
    .end local v5           #ostream:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #buffer:[B
    .restart local v1       #count:I
    .restart local v4       #istream:Ljava/io/BufferedInputStream;
    .restart local v6       #ostream:Ljava/io/ByteArrayOutputStream;
    :catch_b
    move-exception v9

    move-object v2, v9

    move-object v5, v6

    .end local v6           #ostream:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #ostream:Ljava/io/ByteArrayOutputStream;
    move-object v3, v4

    .end local v4           #istream:Ljava/io/BufferedInputStream;
    .restart local v3       #istream:Ljava/io/BufferedInputStream;
    goto :goto_8

    .line 194
    .end local v0           #buffer:[B
    .end local v1           #count:I
    .end local v7           #password:[B
    :catch_c
    move-exception v9

    move-object v2, v9

    goto/16 :goto_5

    .end local v3           #istream:Ljava/io/BufferedInputStream;
    .restart local v4       #istream:Ljava/io/BufferedInputStream;
    .restart local v7       #password:[B
    :catch_d
    move-exception v9

    move-object v2, v9

    move-object v3, v4

    .end local v4           #istream:Ljava/io/BufferedInputStream;
    .restart local v3       #istream:Ljava/io/BufferedInputStream;
    goto/16 :goto_5
.end method

.method public static varargs loadBitmaps(Ljava/io/File;ZI[Lcom/newspaperdirect/pressreader/android/core/layout/Page;)[Landroid/graphics/Bitmap;
    .locals 7
    .parameter "file"
    .parameter "addArticlesLayer"
    .parameter "pageIdx2StartWith"
    .parameter "pages"

    .prologue
    .line 34
    array-length v5, p3

    new-array v2, v5, [Landroid/graphics/Bitmap;

    .line 35
    .local v2, result:[Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 37
    .local v3, zip:Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-direct {v4, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 38
    .end local v3           #zip:Ljava/util/zip/ZipFile;
    .local v4, zip:Ljava/util/zip/ZipFile;
    if-ltz p2, :cond_0

    :try_start_1
    array-length v5, p3

    if-ge p2, v5, :cond_0

    aget-object v5, p3, p2

    if-eqz v5, :cond_0

    .line 39
    aget-object v5, p3, p2

    invoke-static {v4, v5, p1}, Lcom/newspaperdirect/pressreader/android/core/PageBitmapLoader;->loadBitmap(Ljava/util/zip/ZipFile;Lcom/newspaperdirect/pressreader/android/core/layout/Page;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v2, p2

    .line 40
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, p3

    if-lt v1, v5, :cond_2

    .line 45
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 46
    const/4 v3, 0x0

    .line 52
    .end local v4           #zip:Ljava/util/zip/ZipFile;
    .restart local v3       #zip:Ljava/util/zip/ZipFile;
    if-eqz v3, :cond_1

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 53
    :cond_1
    :goto_1
    const/4 v3, 0x0

    .line 55
    .end local v1           #i:I
    :goto_2
    return-object v2

    .line 41
    .end local v3           #zip:Ljava/util/zip/ZipFile;
    .restart local v1       #i:I
    .restart local v4       #zip:Ljava/util/zip/ZipFile;
    :cond_2
    if-ne v1, p2, :cond_3

    .line 40
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    :cond_3
    :try_start_3
    aget-object v5, p3, v1

    if-nez v5, :cond_5

    const/4 v5, 0x0

    aput-object v5, v2, v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 48
    .end local v1           #i:I
    :catch_0
    move-exception v5

    move-object v0, v5

    move-object v3, v4

    .line 49
    .end local v4           #zip:Ljava/util/zip/ZipFile;
    .local v0, e:Ljava/lang/Exception;
    .restart local v3       #zip:Ljava/util/zip/ZipFile;
    :goto_4
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 52
    if-eqz v3, :cond_4

    :try_start_5
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 53
    :cond_4
    :goto_5
    const/4 v3, 0x0

    goto :goto_2

    .line 43
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #zip:Ljava/util/zip/ZipFile;
    .restart local v1       #i:I
    .restart local v4       #zip:Ljava/util/zip/ZipFile;
    :cond_5
    :try_start_6
    aget-object v5, p3, v1

    invoke-static {v4, v5, p1}, Lcom/newspaperdirect/pressreader/android/core/PageBitmapLoader;->loadBitmap(Ljava/util/zip/ZipFile;Lcom/newspaperdirect/pressreader/android/core/layout/Page;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v2, v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_3

    .line 51
    .end local v1           #i:I
    :catchall_0
    move-exception v5

    move-object v3, v4

    .line 52
    .end local v4           #zip:Ljava/util/zip/ZipFile;
    .restart local v3       #zip:Ljava/util/zip/ZipFile;
    :goto_6
    if-eqz v3, :cond_6

    :try_start_7
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 53
    :cond_6
    :goto_7
    const/4 v3, 0x0

    .line 54
    throw v5

    .line 52
    .restart local v0       #e:Ljava/lang/Exception;
    :catch_1
    move-exception v5

    goto :goto_5

    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v6

    goto :goto_7

    .restart local v1       #i:I
    :catch_3
    move-exception v5

    goto :goto_1

    .line 51
    .end local v1           #i:I
    :catchall_1
    move-exception v5

    goto :goto_6

    .line 48
    :catch_4
    move-exception v5

    move-object v0, v5

    goto :goto_4
.end method

.method public static loadPurgeableBitmaps(Ljava/io/File;Lcom/newspaperdirect/pressreader/android/core/layout/Page;)[Landroid/graphics/Bitmap;
    .locals 9
    .parameter "file"
    .parameter "page"

    .prologue
    const/4 v8, 0x0

    .line 59
    const/4 v6, 0x2

    new-array v3, v6, [Landroid/graphics/Bitmap;

    .line 60
    .local v3, result:[Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 62
    .local v4, zip:Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 63
    .end local v4           #zip:Ljava/util/zip/ZipFile;
    .local v5, zip:Ljava/util/zip/ZipFile;
    :try_start_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 64
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 65
    const/4 v6, 0x0

    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 66
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v6, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 68
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "p"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 69
    .local v1, entry:Ljava/util/zip/ZipEntry;
    if-nez v1, :cond_1

    .line 70
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "p"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 71
    if-nez v1, :cond_1

    .line 72
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "p"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_bg.jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 73
    if-nez v1, :cond_1

    .line 88
    if-eqz v5, :cond_0

    :try_start_2
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 89
    :cond_0
    :goto_0
    const/4 v4, 0x0

    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .restart local v4       #zip:Ljava/util/zip/ZipFile;
    move-object v6, v8

    .line 91
    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_1
    return-object v6

    .line 76
    .end local v4           #zip:Ljava/util/zip/ZipFile;
    .restart local v1       #entry:Ljava/util/zip/ZipEntry;
    .restart local v2       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    :cond_1
    const/4 v6, 0x0

    :try_start_3
    invoke-static {v5, v1, v2}, Lcom/newspaperdirect/pressreader/android/core/PageBitmapLoader;->loadBitmap(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    aput-object v7, v3, v6

    .line 78
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "p"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_fg.png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 79
    if-eqz v1, :cond_3

    .line 80
    const/4 v6, 0x1

    invoke-static {v5, v1, v2}, Lcom/newspaperdirect/pressreader/android/core/PageBitmapLoader;->loadBitmap(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    aput-object v7, v3, v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 88
    :goto_2
    if-eqz v5, :cond_2

    :try_start_4
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 89
    :cond_2
    :goto_3
    const/4 v4, 0x0

    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .restart local v4       #zip:Ljava/util/zip/ZipFile;
    :goto_4
    move-object v6, v3

    .line 91
    goto :goto_1

    .line 82
    .end local v4           #zip:Ljava/util/zip/ZipFile;
    .restart local v1       #entry:Ljava/util/zip/ZipEntry;
    .restart local v2       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    :cond_3
    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_5
    aput-object v7, v3, v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 84
    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v6

    move-object v0, v6

    move-object v4, v5

    .line 85
    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .local v0, e:Ljava/lang/Exception;
    .restart local v4       #zip:Ljava/util/zip/ZipFile;
    :goto_5
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 88
    if-eqz v4, :cond_4

    :try_start_7
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 89
    :cond_4
    :goto_6
    const/4 v4, 0x0

    goto :goto_4

    .line 87
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 88
    :goto_7
    if-eqz v4, :cond_5

    :try_start_8
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 89
    :cond_5
    :goto_8
    const/4 v4, 0x0

    .line 90
    throw v6

    .line 88
    .end local v4           #zip:Ljava/util/zip/ZipFile;
    .restart local v1       #entry:Ljava/util/zip/ZipEntry;
    .restart local v2       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    :catch_1
    move-exception v6

    goto :goto_0

    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .restart local v0       #e:Ljava/lang/Exception;
    .restart local v4       #zip:Ljava/util/zip/ZipFile;
    :catch_2
    move-exception v6

    goto :goto_6

    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v7

    goto :goto_8

    .end local v4           #zip:Ljava/util/zip/ZipFile;
    .restart local v1       #entry:Ljava/util/zip/ZipEntry;
    .restart local v2       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    :catch_4
    move-exception v6

    goto :goto_3

    .line 87
    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .restart local v4       #zip:Ljava/util/zip/ZipFile;
    goto :goto_7

    .line 84
    :catch_5
    move-exception v6

    move-object v0, v6

    goto :goto_5
.end method
