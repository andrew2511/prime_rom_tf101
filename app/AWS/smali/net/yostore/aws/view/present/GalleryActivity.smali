.class public Lnet/yostore/aws/view/present/GalleryActivity;
.super Landroid/app/Activity;
.source "GalleryActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GalleryActivity"

.field static final TIMEOUT:I = 0x7530


# instance fields
.field public bm:Landroid/graphics/Bitmap;

.field private currentIdx:I

.field private dataSize:I

.field private gestureDetector:Landroid/view/GestureDetector;

.field private imgContainer:Landroid/widget/LinearLayout;

.field private intDefaultX:I

.field private intDefaultY:I

.field private intHeight:I

.field private intScreenHeight:I

.field private intScreenWidth:I

.field private intWidth:I

.field private isZoonin:Z

.field private loading:Z

.field loadingImg:Ljava/lang/Thread;

.field loadingImgtmp:Ljava/lang/Thread;

.field private loadingimageView:Landroid/widget/ImageView;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mX:F

.field private mY:F

.field private myImageURL:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private newimageView:Landroid/widget/ImageView;

.field private orgimageView:Landroid/widget/ImageView;

.field private scalrate:F

.field private touchStarX:F

.field private touchStarY:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->myImageURL:Ljava/util/ArrayList;

    .line 41
    iput v1, p0, Lnet/yostore/aws/view/present/GalleryActivity;->dataSize:I

    .line 46
    iput-boolean v1, p0, Lnet/yostore/aws/view/present/GalleryActivity;->loading:Z

    .line 47
    iput v1, p0, Lnet/yostore/aws/view/present/GalleryActivity;->currentIdx:I

    .line 49
    iput v1, p0, Lnet/yostore/aws/view/present/GalleryActivity;->intScreenWidth:I

    .line 50
    iput v1, p0, Lnet/yostore/aws/view/present/GalleryActivity;->intScreenHeight:I

    .line 52
    const/high16 v0, 0x3f80

    iput v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->scalrate:F

    .line 54
    iput-boolean v1, p0, Lnet/yostore/aws/view/present/GalleryActivity;->isZoonin:Z

    .line 64
    iput v2, p0, Lnet/yostore/aws/view/present/GalleryActivity;->mX:F

    .line 65
    iput v2, p0, Lnet/yostore/aws/view/present/GalleryActivity;->mY:F

    .line 32
    return-void
.end method

.method static synthetic access$0(Lnet/yostore/aws/view/present/GalleryActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->imgContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1(Lnet/yostore/aws/view/present/GalleryActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 47
    iget v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->currentIdx:I

    return v0
.end method

.method static synthetic access$2(Lnet/yostore/aws/view/present/GalleryActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-boolean v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->loading:Z

    return v0
.end method

.method static synthetic access$3(Lnet/yostore/aws/view/present/GalleryActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-boolean p1, p0, Lnet/yostore/aws/view/present/GalleryActivity;->loading:Z

    return-void
.end method

.method static synthetic access$4(Lnet/yostore/aws/view/present/GalleryActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->myImageURL:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getImageViewById(I)Landroid/view/View;
    .locals 8
    .parameter "i"

    .prologue
    const/4 v7, 0x1

    .line 126
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->newimageView:Landroid/widget/ImageView;

    .line 127
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->orgimageView:Landroid/widget/ImageView;

    .line 128
    iget-object v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->newimageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 130
    iget-object v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->loadingImgtmp:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 132
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 134
    :cond_0
    iput-boolean v7, p0, Lnet/yostore/aws/view/present/GalleryActivity;->loading:Z

    .line 135
    iput p1, p0, Lnet/yostore/aws/view/present/GalleryActivity;->currentIdx:I

    .line 136
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;

    iget-object v2, p0, Lnet/yostore/aws/view/present/GalleryActivity;->newimageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lnet/yostore/aws/view/present/GalleryActivity;->orgimageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lnet/yostore/aws/view/present/GalleryActivity;->myImageURL:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;-><init>(Lnet/yostore/aws/view/present/GalleryActivity;Landroid/widget/ImageView;Landroid/widget/ImageView;Ljava/lang/String;I)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v6, p0, Lnet/yostore/aws/view/present/GalleryActivity;->loadingImgtmp:Ljava/lang/Thread;

    .line 137
    iget-object v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->loadingImgtmp:Ljava/lang/Thread;

    iput-object v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->loadingImg:Ljava/lang/Thread;

    .line 138
    iget-object v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->loadingImg:Ljava/lang/Thread;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 139
    iget-object v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->loadingImg:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 141
    iget-object v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->newimageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setLongClickable(Z)V

    .line 142
    iget-object v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->newimageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 143
    iget-object v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->orgimageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setLongClickable(Z)V

    .line 144
    iget-object v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->orgimageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 145
    iget-object v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->loadingimageView:Landroid/widget/ImageView;

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
    .line 161
    const/4 v6, 0x0

    .line 162
    .local v6, redirects:I
    const/4 v3, 0x0

    .line 165
    .local v3, in:Ljava/io/InputStream;
    :cond_0
    instance-of v9, p1, Ljava/net/HttpURLConnection;

    if-eqz v9, :cond_1

    .line 167
    move-object v0, p1

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v9, v0

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 171
    :cond_1
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 172
    const/4 v5, 0x0

    .line 173
    .local v5, redir:Z
    instance-of v9, p1, Ljava/net/HttpURLConnection;

    if-eqz v9, :cond_6

    .line 175
    move-object v0, p1

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 176
    .local v2, http:Ljava/net/HttpURLConnection;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 177
    .local v7, stat:I
    const/16 v9, 0x12c

    if-lt v7, v9, :cond_6

    const/16 v9, 0x133

    if-gt v7, v9, :cond_6

    const/16 v9, 0x132

    if-eq v7, v9, :cond_6

    const/16 v9, 0x130

    if-eq v7, v9, :cond_6

    .line 179
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    .line 180
    .local v1, base:Ljava/net/URL;
    const-string v9, "Location"

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, loc:Ljava/lang/String;
    const/4 v8, 0x0

    .line 182
    .local v8, target:Ljava/net/URL;
    if-eqz v4, :cond_2

    .line 184
    new-instance v8, Ljava/net/URL;

    .end local v8           #target:Ljava/net/URL;
    invoke-direct {v8, v1, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 186
    .restart local v8       #target:Ljava/net/URL;
    :cond_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 189
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

    .line 191
    :cond_4
    new-instance v9, Ljava/lang/SecurityException;

    const-string v10, "illegal URL redirect"

    invoke-direct {v9, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 193
    :cond_5
    const/4 v5, 0x1

    .line 194
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 195
    const/16 v9, 0x7530

    invoke-virtual {p1, v9}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 196
    iget-object v9, p0, Lnet/yostore/aws/view/present/GalleryActivity;->myImageURL:Ljava/util/ArrayList;

    invoke-virtual {v9, p2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 197
    add-int/lit8 v6, v6, 0x1

    .line 163
    .end local v1           #base:Ljava/net/URL;
    .end local v2           #http:Ljava/net/HttpURLConnection;
    .end local v4           #loc:Ljava/lang/String;
    .end local v7           #stat:I
    .end local v8           #target:Ljava/net/URL;
    :cond_6
    if-nez v5, :cond_0

    .line 202
    return-object v3
.end method

.method private originalsize()V
    .locals 0

    .prologue
    .line 440
    return-void
.end method

.method private picMove(FF)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    .line 321
    iget v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->mX:F

    add-float/2addr v0, p1

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    iget v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->mX:F

    add-float/2addr v0, p1

    iget-object v1, p0, Lnet/yostore/aws/view/present/GalleryActivity;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lnet/yostore/aws/view/present/GalleryActivity;->intScreenWidth:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 323
    iget v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->mX:F

    add-float/2addr v0, p1

    iput v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->mX:F

    .line 325
    :cond_0
    iget v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->mY:F

    add-float/2addr v0, p2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    iget v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->mY:F

    add-float/2addr v0, p2

    iget-object v1, p0, Lnet/yostore/aws/view/present/GalleryActivity;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lnet/yostore/aws/view/present/GalleryActivity;->intScreenHeight:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 327
    iget v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->mY:F

    add-float/2addr v0, p2

    iput v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->mY:F

    .line 331
    :cond_1
    const-string v0, "jay"

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/yostore/aws/view/present/GalleryActivity;->mX:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnet/yostore/aws/view/present/GalleryActivity;->mY:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->orgimageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v2, p0, Lnet/yostore/aws/view/present/GalleryActivity;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lnet/yostore/aws/view/present/GalleryActivity;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget v4, p0, Lnet/yostore/aws/view/present/GalleryActivity;->mX:F

    float-to-int v4, v4

    iget v5, p0, Lnet/yostore/aws/view/present/GalleryActivity;->mY:F

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    return-void
.end method

.method private showImage(I)V
    .locals 5
    .parameter "i"

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 151
    iget-object v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->imgContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 152
    iget-object v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->imgContainer:Landroid/widget/LinearLayout;

    .line 153
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/present/GalleryActivity;->getImageViewById(I)Landroid/view/View;

    move-result-object v1

    .line 154
    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v2, v4, v4, v3, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 152
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    iput-boolean v3, p0, Lnet/yostore/aws/view/present/GalleryActivity;->isZoonin:Z

    .line 156
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const v4, 0x7f02006f

    const/4 v3, 0x0

    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v1, 0x7f030006

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/present/GalleryActivity;->setContentView(I)V

    .line 77
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 78
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lnet/yostore/aws/view/present/GalleryActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 80
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lnet/yostore/aws/view/present/GalleryActivity;->intScreenWidth:I

    .line 81
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lnet/yostore/aws/view/present/GalleryActivity;->intScreenHeight:I

    .line 82
    const v1, 0x7f09001c

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/present/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lnet/yostore/aws/view/present/GalleryActivity;->imgContainer:Landroid/widget/LinearLayout;

    .line 83
    new-instance v1, Landroid/view/GestureDetector;

    invoke-direct {v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lnet/yostore/aws/view/present/GalleryActivity;->gestureDetector:Landroid/view/GestureDetector;

    .line 85
    invoke-virtual {p0}, Lnet/yostore/aws/view/present/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "urlArr"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/view/present/GalleryActivity;->myImageURL:Ljava/util/ArrayList;

    .line 87
    const-string v1, "AWSPrefs"

    invoke-virtual {p0, v1, v3}, Lnet/yostore/aws/view/present/GalleryActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/view/present/GalleryActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 88
    iget-object v1, p0, Lnet/yostore/aws/view/present/GalleryActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "galleryIdx"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lnet/yostore/aws/view/present/GalleryActivity;->currentIdx:I

    .line 92
    iget-object v1, p0, Lnet/yostore/aws/view/present/GalleryActivity;->myImageURL:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lnet/yostore/aws/view/present/GalleryActivity;->dataSize:I

    .line 100
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lnet/yostore/aws/view/present/GalleryActivity;->loadingimageView:Landroid/widget/ImageView;

    .line 101
    iget-object v1, p0, Lnet/yostore/aws/view/present/GalleryActivity;->loadingimageView:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 102
    iget-object v1, p0, Lnet/yostore/aws/view/present/GalleryActivity;->loadingimageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    iget-object v1, p0, Lnet/yostore/aws/view/present/GalleryActivity;->loadingimageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 104
    iget-object v1, p0, Lnet/yostore/aws/view/present/GalleryActivity;->loadingimageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLongClickable(Z)V

    .line 105
    iget-object v1, p0, Lnet/yostore/aws/view/present/GalleryActivity;->loadingimageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 106
    iget v1, p0, Lnet/yostore/aws/view/present/GalleryActivity;->currentIdx:I

    invoke-direct {p0, v1}, Lnet/yostore/aws/view/present/GalleryActivity;->showImage(I)V

    .line 107
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 380
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 394
    iget-boolean v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->isZoonin:Z

    if-nez v0, :cond_0

    .line 395
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->currentIdx:I

    iget v1, p0, Lnet/yostore/aws/view/present/GalleryActivity;->dataSize:I

    sub-int/2addr v1, v4

    if-ge v0, v1, :cond_1

    .line 397
    iget v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->currentIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->currentIdx:I

    .line 398
    iget v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->currentIdx:I

    invoke-direct {p0, v0}, Lnet/yostore/aws/view/present/GalleryActivity;->showImage(I)V

    :cond_0
    :goto_0
    move v0, v3

    .line 411
    :goto_1
    return v0

    .line 401
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->currentIdx:I

    if-lez v0, :cond_2

    .line 403
    iget v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->currentIdx:I

    sub-int/2addr v0, v4

    iput v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->currentIdx:I

    .line 404
    iget v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->currentIdx:I

    invoke-direct {p0, v0}, Lnet/yostore/aws/view/present/GalleryActivity;->showImage(I)V

    goto :goto_0

    :cond_2
    move v0, v3

    .line 408
    goto :goto_1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 7
    .parameter "e"

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x0

    const/high16 v2, -0x4080

    const/4 v3, 0x0

    .line 419
    iget-boolean v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->isZoonin:Z

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->imgContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 421
    iget-object v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->imgContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lnet/yostore/aws/view/present/GalleryActivity;->newimageView:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v2, v5, v5, v3, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    iput-boolean v3, p0, Lnet/yostore/aws/view/present/GalleryActivity;->isZoonin:Z

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    iget-boolean v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->isZoonin:Z

    if-nez v0, :cond_0

    iget v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->intScreenWidth:I

    iget-object v1, p0, Lnet/yostore/aws/view/present/GalleryActivity;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-lt v0, v1, :cond_2

    iget v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->intScreenHeight:I

    iget-object v1, p0, Lnet/yostore/aws/view/present/GalleryActivity;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 424
    :cond_2
    iget-object v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->imgContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 427
    iput v4, p0, Lnet/yostore/aws/view/present/GalleryActivity;->mX:F

    .line 428
    iput v4, p0, Lnet/yostore/aws/view/present/GalleryActivity;->mY:F

    .line 429
    iput v2, p0, Lnet/yostore/aws/view/present/GalleryActivity;->touchStarX:F

    .line 430
    iput v2, p0, Lnet/yostore/aws/view/present/GalleryActivity;->touchStarY:F

    .line 431
    iget-object v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->imgContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lnet/yostore/aws/view/present/GalleryActivity;->orgimageView:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v3, p0, Lnet/yostore/aws/view/present/GalleryActivity;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lnet/yostore/aws/view/present/GalleryActivity;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v5, p0, Lnet/yostore/aws/view/present/GalleryActivity;->mX:F

    float-to-int v5, v5

    iget v6, p0, Lnet/yostore/aws/view/present/GalleryActivity;->mY:F

    float-to-int v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/yostore/aws/view/present/GalleryActivity;->isZoonin:Z

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 115
    iget-object v1, p0, Lnet/yostore/aws/view/present/GalleryActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 116
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "galleryIdx"

    iget v2, p0, Lnet/yostore/aws/view/present/GalleryActivity;->currentIdx:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 117
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 118
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 119
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 446
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 454
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 460
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 342
    iget-boolean v3, p0, Lnet/yostore/aws/view/present/GalleryActivity;->isZoonin:Z

    if-eqz v3, :cond_0

    .line 343
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 344
    .local v1, x:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 346
    .local v2, y:F
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 372
    .end local v1           #x:F
    .end local v2           #y:F
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v3, p0, Lnet/yostore/aws/view/present/GalleryActivity;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 349
    .restart local v1       #x:F
    .restart local v2       #y:F
    :pswitch_1
    :try_start_1
    iget v3, p0, Lnet/yostore/aws/view/present/GalleryActivity;->touchStarX:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    iget v3, p0, Lnet/yostore/aws/view/present/GalleryActivity;->touchStarY:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 350
    iput v1, p0, Lnet/yostore/aws/view/present/GalleryActivity;->touchStarX:F

    .line 351
    iput v2, p0, Lnet/yostore/aws/view/present/GalleryActivity;->touchStarY:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 367
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 369
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 355
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_2
    :try_start_2
    iget v3, p0, Lnet/yostore/aws/view/present/GalleryActivity;->touchStarX:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    iget v3, p0, Lnet/yostore/aws/view/present/GalleryActivity;->touchStarY:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    .line 356
    iget v3, p0, Lnet/yostore/aws/view/present/GalleryActivity;->touchStarX:F

    sub-float v3, v1, v3

    iget v4, p0, Lnet/yostore/aws/view/present/GalleryActivity;->touchStarY:F

    sub-float v4, v2, v4

    invoke-direct {p0, v3, v4}, Lnet/yostore/aws/view/present/GalleryActivity;->picMove(FF)V

    goto :goto_0

    .line 360
    :pswitch_3
    const/high16 v3, -0x4080

    iput v3, p0, Lnet/yostore/aws/view/present/GalleryActivity;->touchStarX:F

    .line 361
    const/high16 v3, -0x4080

    iput v3, p0, Lnet/yostore/aws/view/present/GalleryActivity;->touchStarY:F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 346
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
