.class public Lcom/asus/filemanager/adapter/ItemIcon;
.super Ljava/lang/Object;
.source "ItemIcon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/filemanager/adapter/ItemIcon$1;,
        Lcom/asus/filemanager/adapter/ItemIcon$WaitingStack;,
        Lcom/asus/filemanager/adapter/ItemIcon$MsgLoop;,
        Lcom/asus/filemanager/adapter/ItemIcon$IconThread;,
        Lcom/asus/filemanager/adapter/ItemIcon$Icon;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDecodeThread:Ljava/lang/Thread;

.field private mHandler:Landroid/os/Handler;

.field private mPhotoIcon:Landroid/graphics/Bitmap;

.field private mThumbnailDB:Lcom/asus/filemanager/adapter/ThumbnailDB;

.field private mWaitingStack:Lcom/asus/filemanager/adapter/ItemIcon$WaitingStack;


# direct methods
.method public constructor <init>(Lcom/asus/filemanager/adapter/ThumbnailDB;Landroid/content/Context;)V
    .locals 6
    .parameter "db"
    .parameter "c"

    .prologue
    const/4 v5, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v5, p0, Lcom/asus/filemanager/adapter/ItemIcon;->mDecodeThread:Ljava/lang/Thread;

    .line 43
    new-instance v3, Landroid/os/Handler;

    new-instance v4, Lcom/asus/filemanager/adapter/ItemIcon$MsgLoop;

    invoke-direct {v4, p0, v5}, Lcom/asus/filemanager/adapter/ItemIcon$MsgLoop;-><init>(Lcom/asus/filemanager/adapter/ItemIcon;Lcom/asus/filemanager/adapter/ItemIcon$1;)V

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v3, p0, Lcom/asus/filemanager/adapter/ItemIcon;->mHandler:Landroid/os/Handler;

    .line 44
    iput-object p1, p0, Lcom/asus/filemanager/adapter/ItemIcon;->mThumbnailDB:Lcom/asus/filemanager/adapter/ThumbnailDB;

    .line 46
    new-instance v3, Lcom/asus/filemanager/adapter/ItemIcon$WaitingStack;

    invoke-direct {v3, p0, v5}, Lcom/asus/filemanager/adapter/ItemIcon$WaitingStack;-><init>(Lcom/asus/filemanager/adapter/ItemIcon;Lcom/asus/filemanager/adapter/ItemIcon$1;)V

    iput-object v3, p0, Lcom/asus/filemanager/adapter/ItemIcon;->mWaitingStack:Lcom/asus/filemanager/adapter/ItemIcon$WaitingStack;

    .line 47
    iput-object p2, p0, Lcom/asus/filemanager/adapter/ItemIcon;->mContext:Landroid/content/Context;

    .line 48
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02002a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 49
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    instance-of v3, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    .line 50
    const-string v3, "ItemIcon"

    const-string v4, "get photo icon bitmap"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    move-object v0, v2

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v1, v0

    .line 52
    .local v1, bd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/asus/filemanager/adapter/ItemIcon;->mPhotoIcon:Landroid/graphics/Bitmap;

    .line 54
    .end local v1           #bd:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    return-void
.end method

.method private static GetAPKIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "context"
    .parameter "filepath"

    .prologue
    .line 204
    const/4 v0, 0x0

    return-object v0
.end method

.method public static GetIconRes(Lcom/asus/filemanager/main/VFile;)I
    .locals 4
    .parameter "f"

    .prologue
    const v3, 0x7f020022

    .line 109
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {p0}, Lcom/asus/filemanager/main/VFile;->getExtName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, s:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, "text/plain"

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/asus/filemanager/main/VFile;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f020024

    .line 118
    :goto_0
    return v1

    .line 112
    :cond_1
    const-string v1, "text/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_0

    .line 113
    :cond_2
    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f02002a

    goto :goto_0

    .line 114
    :cond_3
    const-string v1, "audio/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f020028

    goto :goto_0

    .line 115
    :cond_4
    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f020026

    goto :goto_0

    .line 116
    :cond_5
    const-string v1, "application/zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const v1, 0x7f02002c

    goto :goto_0

    .line 117
    :cond_6
    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const v1, 0x1080093

    goto :goto_0

    :cond_7
    move v1, v3

    .line 118
    goto :goto_0
.end method

.method private StartDecode()V
    .locals 3

    .prologue
    .line 99
    iget-object v2, p0, Lcom/asus/filemanager/adapter/ItemIcon;->mDecodeThread:Ljava/lang/Thread;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/asus/filemanager/adapter/ItemIcon;->mWaitingStack:Lcom/asus/filemanager/adapter/ItemIcon$WaitingStack;

    invoke-virtual {v2}, Lcom/asus/filemanager/adapter/ItemIcon$WaitingStack;->empty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/asus/filemanager/adapter/ItemIcon;->mWaitingStack:Lcom/asus/filemanager/adapter/ItemIcon$WaitingStack;

    invoke-virtual {v2}, Lcom/asus/filemanager/adapter/ItemIcon$WaitingStack;->pop()Lcom/asus/filemanager/adapter/ItemIcon$Icon;

    move-result-object v0

    .line 102
    .local v0, i:Lcom/asus/filemanager/adapter/ItemIcon$Icon;
    new-instance v1, Lcom/asus/filemanager/adapter/ItemIcon$IconThread;

    invoke-direct {v1, p0, v0}, Lcom/asus/filemanager/adapter/ItemIcon$IconThread;-><init>(Lcom/asus/filemanager/adapter/ItemIcon;Lcom/asus/filemanager/adapter/ItemIcon$Icon;)V

    .line 103
    .local v1, todo:Lcom/asus/filemanager/adapter/ItemIcon$IconThread;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/asus/filemanager/adapter/ItemIcon;->mDecodeThread:Ljava/lang/Thread;

    .line 104
    iget-object v2, p0, Lcom/asus/filemanager/adapter/ItemIcon;->mDecodeThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 106
    .end local v0           #i:Lcom/asus/filemanager/adapter/ItemIcon$Icon;
    .end local v1           #todo:Lcom/asus/filemanager/adapter/ItemIcon$IconThread;
    :cond_0
    return-void
.end method

.method static synthetic access$300(Lcom/asus/filemanager/adapter/ItemIcon;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/asus/filemanager/adapter/ItemIcon;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-static {p0, p1}, Lcom/asus/filemanager/adapter/ItemIcon;->GetAPKIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/asus/filemanager/adapter/ItemIcon;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/asus/filemanager/adapter/ItemIcon;->mPhotoIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/asus/filemanager/adapter/ItemIcon;)Lcom/asus/filemanager/adapter/ThumbnailDB;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/asus/filemanager/adapter/ItemIcon;->mThumbnailDB:Lcom/asus/filemanager/adapter/ThumbnailDB;

    return-object v0
.end method

.method static synthetic access$700(Lcom/asus/filemanager/adapter/ItemIcon;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/asus/filemanager/adapter/ItemIcon;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$802(Lcom/asus/filemanager/adapter/ItemIcon;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/asus/filemanager/adapter/ItemIcon;->mDecodeThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$900(Lcom/asus/filemanager/adapter/ItemIcon;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/asus/filemanager/adapter/ItemIcon;->StartDecode()V

    return-void
.end method

.method public static loadResizedBitmap(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "filename"
    .parameter "width"
    .parameter "height"
    .parameter "exact"

    .prologue
    const/4 v6, 0x1

    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 179
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 180
    invoke-static {p0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 181
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v4, :cond_3

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v4, :cond_3

    .line 183
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 184
    .local v2, oldWidth:I
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 185
    .local v1, oldHeight:I
    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 187
    :goto_0
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v4, v5

    if-gt v4, p1, :cond_0

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v4, v5

    if-le v4, p2, :cond_1

    .line 189
    :cond_0
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    .line 191
    :cond_1
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 192
    invoke-static {p0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 193
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-le v4, v6, :cond_4

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v4, v2, :cond_2

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v4, v1, :cond_4

    .line 194
    :cond_2
    const-string v4, "ItemIcon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " thumbnail = null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .end local v1           #oldHeight:I
    .end local v2           #oldWidth:I
    :cond_3
    :goto_1
    return-object v0

    .line 196
    .restart local v1       #oldHeight:I
    .restart local v2       #oldWidth:I
    :cond_4
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 197
    invoke-static {p0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public SetIcon(Lcom/asus/filemanager/main/VFile;Landroid/widget/ImageView;Z)V
    .locals 7
    .parameter "f"
    .parameter "v"
    .parameter "showThumbnail"

    .prologue
    .line 61
    invoke-static {p1}, Lcom/asus/filemanager/adapter/ItemIcon;->GetIconRes(Lcom/asus/filemanager/main/VFile;)I

    move-result v3

    .line 62
    .local v3, res:I
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    if-eqz p3, :cond_1

    const v5, 0x7f02002a

    if-ne v3, v5, :cond_1

    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, b:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/asus/filemanager/adapter/ItemIcon;->mThumbnailDB:Lcom/asus/filemanager/adapter/ThumbnailDB;

    if-eqz v5, :cond_0

    .line 68
    iget-object v5, p0, Lcom/asus/filemanager/adapter/ItemIcon;->mThumbnailDB:Lcom/asus/filemanager/adapter/ThumbnailDB;

    invoke-virtual {p1}, Lcom/asus/filemanager/main/VFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/asus/filemanager/adapter/ThumbnailDB;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 70
    :cond_0
    if-eqz v0, :cond_2

    .line 72
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 96
    .end local v0           #b:Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-void

    .line 76
    .restart local v0       #b:Landroid/graphics/Bitmap;
    :cond_2
    const/4 v2, -0x1

    .line 77
    .local v2, idx:I
    new-instance v1, Lcom/asus/filemanager/adapter/ItemIcon$Icon;

    const/4 v5, 0x0

    invoke-direct {v1, p0, v5}, Lcom/asus/filemanager/adapter/ItemIcon$Icon;-><init>(Lcom/asus/filemanager/adapter/ItemIcon;Lcom/asus/filemanager/adapter/ItemIcon$1;)V

    .line 78
    .local v1, i:Lcom/asus/filemanager/adapter/ItemIcon$Icon;
    iput-object p1, v1, Lcom/asus/filemanager/adapter/ItemIcon$Icon;->f:Lcom/asus/filemanager/main/VFile;

    .line 79
    iput-object p2, v1, Lcom/asus/filemanager/adapter/ItemIcon$Icon;->v:Landroid/widget/ImageView;

    .line 80
    iput v3, v1, Lcom/asus/filemanager/adapter/ItemIcon$Icon;->r:I

    .line 81
    iget-object v5, p0, Lcom/asus/filemanager/adapter/ItemIcon;->mWaitingStack:Lcom/asus/filemanager/adapter/ItemIcon$WaitingStack;

    invoke-virtual {v5, v1}, Lcom/asus/filemanager/adapter/ItemIcon$WaitingStack;->indexOf(Lcom/asus/filemanager/adapter/ItemIcon$Icon;)I

    move-result v2

    .line 83
    if-gez v2, :cond_3

    .line 85
    iget-object v5, p0, Lcom/asus/filemanager/adapter/ItemIcon;->mWaitingStack:Lcom/asus/filemanager/adapter/ItemIcon$WaitingStack;

    invoke-virtual {v5, v1}, Lcom/asus/filemanager/adapter/ItemIcon$WaitingStack;->push(Lcom/asus/filemanager/adapter/ItemIcon$Icon;)V

    .line 86
    invoke-direct {p0}, Lcom/asus/filemanager/adapter/ItemIcon;->StartDecode()V

    goto :goto_0

    .line 90
    :cond_3
    iget-object v5, p0, Lcom/asus/filemanager/adapter/ItemIcon;->mWaitingStack:Lcom/asus/filemanager/adapter/ItemIcon$WaitingStack;

    invoke-virtual {v5, v2}, Lcom/asus/filemanager/adapter/ItemIcon$WaitingStack;->remove(I)Lcom/asus/filemanager/adapter/ItemIcon$Icon;

    move-result-object v4

    .line 91
    .local v4, temp:Lcom/asus/filemanager/adapter/ItemIcon$Icon;
    iput-object p2, v4, Lcom/asus/filemanager/adapter/ItemIcon$Icon;->v:Landroid/widget/ImageView;

    .line 92
    iget-object v5, p0, Lcom/asus/filemanager/adapter/ItemIcon;->mWaitingStack:Lcom/asus/filemanager/adapter/ItemIcon$WaitingStack;

    invoke-virtual {v5, v4}, Lcom/asus/filemanager/adapter/ItemIcon$WaitingStack;->push(Lcom/asus/filemanager/adapter/ItemIcon$Icon;)V

    goto :goto_0
.end method
