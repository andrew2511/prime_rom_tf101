.class Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/present/GalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RunDownloadImageThread"
.end annotation


# instance fields
.field private afterImageLoad:Ljava/lang/Runnable;

.field handler:Landroid/os/Handler;

.field newimageView:Landroid/widget/ImageView;

.field orgimageView:Landroid/widget/ImageView;

.field position:I

.field strurl:Ljava/lang/String;

.field final synthetic this$0:Lnet/yostore/aws/view/present/GalleryActivity;


# direct methods
.method public constructor <init>(Lnet/yostore/aws/view/present/GalleryActivity;Landroid/widget/ImageView;Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter "newimageView"
    .parameter "orgimageView"
    .parameter "strurl"
    .parameter "position"

    .prologue
    .line 221
    iput-object p1, p0, Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;->this$0:Lnet/yostore/aws/view/present/GalleryActivity;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    const/4 v0, -0x1

    iput v0, p0, Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;->position:I

    .line 213
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;->handler:Landroid/os/Handler;

    .line 255
    new-instance v0, Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread$1;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread$1;-><init>(Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;)V

    iput-object v0, p0, Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;->afterImageLoad:Ljava/lang/Runnable;

    .line 217
    iput-object p2, p0, Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;->newimageView:Landroid/widget/ImageView;

    .line 218
    iput-object p3, p0, Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;->orgimageView:Landroid/widget/ImageView;

    .line 219
    iput-object p4, p0, Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;->strurl:Ljava/lang/String;

    .line 220
    iput p5, p0, Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;->position:I

    return-void
.end method

.method static synthetic access$0(Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;)Lnet/yostore/aws/view/present/GalleryActivity;
    .locals 1
    .parameter

    .prologue
    .line 205
    iget-object v0, p0, Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;->this$0:Lnet/yostore/aws/view/present/GalleryActivity;

    return-object v0
.end method

.method private openConnectionCheckRedirects(Ljava/net/URLConnection;I)Ljava/io/InputStream;
    .locals 11
    .parameter "c"
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    const/4 v6, 0x0

    .line 271
    .local v6, redirects:I
    const/4 v3, 0x0

    .line 274
    .local v3, in:Ljava/io/InputStream;
    :cond_0
    instance-of v9, p1, Ljava/net/HttpURLConnection;

    if-eqz v9, :cond_1

    .line 276
    move-object v0, p1

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v9, v0

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 280
    :cond_1
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 281
    const/4 v5, 0x0

    .line 282
    .local v5, redir:Z
    instance-of v9, p1, Ljava/net/HttpURLConnection;

    if-eqz v9, :cond_6

    .line 284
    move-object v0, p1

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 285
    .local v2, http:Ljava/net/HttpURLConnection;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 286
    .local v7, stat:I
    const/16 v9, 0x12c

    if-lt v7, v9, :cond_6

    const/16 v9, 0x133

    if-gt v7, v9, :cond_6

    const/16 v9, 0x132

    if-eq v7, v9, :cond_6

    const/16 v9, 0x130

    if-eq v7, v9, :cond_6

    .line 288
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    .line 289
    .local v1, base:Ljava/net/URL;
    const-string v9, "Location"

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 290
    .local v4, loc:Ljava/lang/String;
    const/4 v8, 0x0

    .line 291
    .local v8, target:Ljava/net/URL;
    if-eqz v4, :cond_2

    .line 293
    new-instance v8, Ljava/net/URL;

    .end local v8           #target:Ljava/net/URL;
    invoke-direct {v8, v1, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 295
    .restart local v8       #target:Ljava/net/URL;
    :cond_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 298
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v9

    const-string v10, "http"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v9

    const-string v10, "https"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    const/4 v9, 0x5

    if-lt v6, v9, :cond_5

    .line 300
    :cond_4
    new-instance v9, Ljava/lang/SecurityException;

    const-string v10, "illegal URL redirect"

    invoke-direct {v9, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 302
    :cond_5
    const/4 v5, 0x1

    .line 303
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 304
    const/16 v9, 0x7530

    invoke-virtual {p1, v9}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 305
    iget-object v9, p0, Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;->this$0:Lnet/yostore/aws/view/present/GalleryActivity;

    invoke-static {v9}, Lnet/yostore/aws/view/present/GalleryActivity;->access$4(Lnet/yostore/aws/view/present/GalleryActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, p2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 306
    add-int/lit8 v6, v6, 0x1

    .line 272
    .end local v1           #base:Ljava/net/URL;
    .end local v2           #http:Ljava/net/HttpURLConnection;
    .end local v4           #loc:Ljava/lang/String;
    .end local v7           #stat:I
    .end local v8           #target:Ljava/net/URL;
    :cond_6
    if-nez v5, :cond_0

    .line 311
    return-object v3
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 229
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;->strurl:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 230
    .local v0, aryURI:Ljava/net/URL;
    const-string v3, "GalleryActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Fetching images: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;->strurl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 233
    .local v1, conn:Ljava/net/URLConnection;
    const/16 v3, 0x7530

    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 235
    iget v3, p0, Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;->position:I

    invoke-direct {p0, v1, v3}, Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;->openConnectionCheckRedirects(Ljava/net/URLConnection;I)Ljava/io/InputStream;

    move-result-object v2

    .line 238
    .local v2, is:Ljava/io/InputStream;
    iget-object v3, p0, Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;->this$0:Lnet/yostore/aws/view/present/GalleryActivity;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v3, Lnet/yostore/aws/view/present/GalleryActivity;->bm:Landroid/graphics/Bitmap;

    .line 240
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 241
    iget-object v3, p0, Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;->this$0:Lnet/yostore/aws/view/present/GalleryActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/present/GalleryActivity;->access$1(Lnet/yostore/aws/view/present/GalleryActivity;)I

    move-result v3

    iget v4, p0, Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;->position:I

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;->this$0:Lnet/yostore/aws/view/present/GalleryActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/present/GalleryActivity;->access$2(Lnet/yostore/aws/view/present/GalleryActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 243
    iget-object v3, p0, Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;->this$0:Lnet/yostore/aws/view/present/GalleryActivity;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lnet/yostore/aws/view/present/GalleryActivity;->access$3(Lnet/yostore/aws/view/present/GalleryActivity;Z)V

    .line 244
    iget-object v3, p0, Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;->afterImageLoad:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .end local v0           #aryURI:Ljava/net/URL;
    .end local v1           #conn:Ljava/net/URLConnection;
    .end local v2           #is:Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v3

    goto :goto_0
.end method
