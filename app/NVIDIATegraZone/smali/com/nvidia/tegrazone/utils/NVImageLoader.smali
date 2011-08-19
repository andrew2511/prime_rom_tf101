.class public Lcom/nvidia/tegrazone/utils/NVImageLoader;
.super Ljava/lang/Object;
.source "NVImageLoader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static fetch(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "address"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 63
    .local v1, url:Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v0

    .line 64
    .local v0, content:Ljava/lang/Object;
    return-object v0
.end method

.method public static getImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "imageURL"

    .prologue
    const/4 v4, 0x0

    .line 49
    :try_start_0
    invoke-static {p0}, Lcom/nvidia/tegrazone/utils/NVImageLoader;->fetch(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 50
    .local v2, is:Ljava/io/InputStream;
    const-string v3, "src"

    invoke-static {v2, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .local v0, d:Landroid/graphics/drawable/Drawable;
    move-object v3, v0

    .line 57
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v2           #is:Ljava/io/InputStream;
    :goto_0
    return-object v3

    .line 52
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 53
    .local v1, e:Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v3, v4

    .line 54
    goto :goto_0

    .line 55
    .end local v1           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 56
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 57
    goto :goto_0
.end method
