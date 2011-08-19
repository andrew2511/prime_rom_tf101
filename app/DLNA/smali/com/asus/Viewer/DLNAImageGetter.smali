.class Lcom/asus/Viewer/DLNAImageGetter;
.super Ljava/lang/Object;
.source "DLNAImageGetter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/Viewer/DLNAImageGetter$DLNAImageGetterRunnable;
    }
.end annotation


# static fields
.field private static final INTERNET_EXCEPTION:I = 0x62

.field private static final OK:I = 0x64

.field private static final STOP:I = 0x63

.field private static final TAG:Ljava/lang/String; = "InternetImageGetter"


# instance fields
.field final BUFFER_SIZE:I

.field private isError:Z

.field private mCB:Lcom/asus/Viewer/DLNAImageGetterCallback;

.field private volatile mCancel:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentPosition:I

.field private mFilename:Ljava/lang/String;

.field private mGetterThread:Ljava/lang/Thread;

.field private mHandler:Lcom/asus/Viewer/GetterHandler;

.field private mHeight:I

.field private mImageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mWidth:I

.field private pfd:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>(ILcom/asus/Viewer/DLNAImageGetterCallback;Ljava/util/ArrayList;Lcom/asus/Viewer/GetterHandler;IILandroid/content/Context;I)V
    .locals 3
    .parameter "position"
    .parameter "cb"
    .parameter
    .parameter "handler"
    .parameter "width"
    .parameter "height"
    .parameter "context"
    .parameter "ID"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/asus/Viewer/DLNAImageGetterCallback;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/asus/Viewer/GetterHandler;",
            "II",
            "Landroid/content/Context;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p3, imageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v2, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/asus/Viewer/DLNAImageGetter;->mCurrentPosition:I

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/Viewer/DLNAImageGetter;->mCancel:Z

    .line 66
    const/high16 v0, 0x4

    iput v0, p0, Lcom/asus/Viewer/DLNAImageGetter;->BUFFER_SIZE:I

    .line 68
    iput-boolean v2, p0, Lcom/asus/Viewer/DLNAImageGetter;->isError:Z

    .line 144
    iput p1, p0, Lcom/asus/Viewer/DLNAImageGetter;->mCurrentPosition:I

    .line 145
    iput-object p3, p0, Lcom/asus/Viewer/DLNAImageGetter;->mImageList:Ljava/util/ArrayList;

    .line 146
    iput-object p2, p0, Lcom/asus/Viewer/DLNAImageGetter;->mCB:Lcom/asus/Viewer/DLNAImageGetterCallback;

    .line 147
    iput-object p4, p0, Lcom/asus/Viewer/DLNAImageGetter;->mHandler:Lcom/asus/Viewer/GetterHandler;

    .line 148
    iput p5, p0, Lcom/asus/Viewer/DLNAImageGetter;->mWidth:I

    .line 149
    iput p6, p0, Lcom/asus/Viewer/DLNAImageGetter;->mHeight:I

    .line 150
    iput-object p7, p0, Lcom/asus/Viewer/DLNAImageGetter;->mContext:Landroid/content/Context;

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "template"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/Viewer/DLNAImageGetter;->mFilename:Ljava/lang/String;

    .line 153
    iput-boolean v2, p0, Lcom/asus/Viewer/DLNAImageGetter;->mCancel:Z

    .line 154
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/asus/Viewer/DLNAImageGetter$DLNAImageGetterRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/asus/Viewer/DLNAImageGetter$DLNAImageGetterRunnable;-><init>(Lcom/asus/Viewer/DLNAImageGetter;Lcom/asus/Viewer/DLNAImageGetter$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/asus/Viewer/DLNAImageGetter;->mGetterThread:Ljava/lang/Thread;

    .line 155
    iget-object v0, p0, Lcom/asus/Viewer/DLNAImageGetter;->mGetterThread:Ljava/lang/Thread;

    const-string v1, "DLNAImageGettter"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/asus/Viewer/DLNAImageGetter;->mGetterThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 157
    return-void
.end method

.method private ExceptionCallback()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/asus/Viewer/DLNAImageGetter$3;

    invoke-direct {v0, p0}, Lcom/asus/Viewer/DLNAImageGetter$3;-><init>(Lcom/asus/Viewer/DLNAImageGetter;)V

    return-object v0
.end method

.method static synthetic access$000(Lcom/asus/Viewer/DLNAImageGetter;)Lcom/asus/Viewer/DLNAImageGetterCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/asus/Viewer/DLNAImageGetter;->mCB:Lcom/asus/Viewer/DLNAImageGetterCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/asus/Viewer/DLNAImageGetter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/asus/Viewer/DLNAImageGetter;->mFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/asus/Viewer/DLNAImageGetter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/asus/Viewer/DLNAImageGetter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/asus/Viewer/DLNAImageGetter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/asus/Viewer/DLNAImageGetter;->mImageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/asus/Viewer/DLNAImageGetter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/asus/Viewer/DLNAImageGetter;->mCancel:Z

    return v0
.end method

.method static synthetic access$500(Lcom/asus/Viewer/DLNAImageGetter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/asus/Viewer/DLNAImageGetter;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$600(Lcom/asus/Viewer/DLNAImageGetter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/asus/Viewer/DLNAImageGetter;->isError:Z

    return v0
.end method

.method static synthetic access$602(Lcom/asus/Viewer/DLNAImageGetter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/asus/Viewer/DLNAImageGetter;->isError:Z

    return p1
.end method

.method static synthetic access$700(Lcom/asus/Viewer/DLNAImageGetter;IILandroid/graphics/Bitmap;Z)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/asus/Viewer/DLNAImageGetter;->callback(IILandroid/graphics/Bitmap;Z)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/asus/Viewer/DLNAImageGetter;)Lcom/asus/Viewer/GetterHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/asus/Viewer/DLNAImageGetter;->mHandler:Lcom/asus/Viewer/GetterHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/asus/Viewer/DLNAImageGetter;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/asus/Viewer/DLNAImageGetter;->completedCallback()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method private callback(IILandroid/graphics/Bitmap;Z)Ljava/lang/Runnable;
    .locals 6
    .parameter "position"
    .parameter "offset"
    .parameter "bitmap"
    .parameter "isError"

    .prologue
    .line 72
    new-instance v0, Lcom/asus/Viewer/DLNAImageGetter$1;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/asus/Viewer/DLNAImageGetter$1;-><init>(Lcom/asus/Viewer/DLNAImageGetter;IILandroid/graphics/Bitmap;Z)V

    return-object v0
.end method

.method private completedCallback()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/asus/Viewer/DLNAImageGetter$2;

    invoke-direct {v0, p0}, Lcom/asus/Viewer/DLNAImageGetter$2;-><init>(Lcom/asus/Viewer/DLNAImageGetter;)V

    return-object v0
.end method

.method private static makeInputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .parameter "uri"
    .parameter "cr"

    .prologue
    .line 195
    :try_start_0
    const-string v1, "r"

    invoke-virtual {p1, p0, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 197
    :goto_0
    return-object v1

    .line 196
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 197
    .local v0, ex:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public Downloader(Landroid/net/Uri;)I
    .locals 10
    .parameter "uri"

    .prologue
    .line 168
    const/4 v6, 0x0

    .line 169
    .local v6, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/io/InputStream;

    move-object v6, v0

    .line 170
    iget-object v7, p0, Lcom/asus/Viewer/DLNAImageGetter;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/asus/Viewer/DLNAImageGetter;->mFilename:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    .line 171
    .local v5, fos:Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/BufferedInputStream;

    const/high16 v7, 0x4

    invoke-direct {v3, v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 172
    .local v3, bis:Ljava/io/BufferedInputStream;
    const/high16 v7, 0x4

    new-array v2, v7, [B

    .line 173
    .local v2, baf:[B
    const/4 v1, 0x0

    .line 174
    .local v1, actual:I
    :goto_0
    const/4 v7, -0x1

    if-eq v1, v7, :cond_1

    .line 175
    iget-boolean v7, p0, Lcom/asus/Viewer/DLNAImageGetter;->mCancel:Z

    if-eqz v7, :cond_0

    .line 176
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 177
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 178
    const/16 v7, 0x63

    .line 189
    .end local v1           #actual:I
    .end local v2           #baf:[B
    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    :goto_1
    return v7

    .line 180
    .restart local v1       #actual:I
    .restart local v2       #baf:[B
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v5, v2, v7, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 181
    const/4 v7, 0x0

    const/high16 v8, 0x4

    invoke-virtual {v3, v2, v7, v8}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v1

    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 184
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    const/16 v7, 0x64

    goto :goto_1

    .line 187
    .end local v1           #actual:I
    .end local v2           #baf:[B
    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 188
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 189
    const/16 v7, 0x62

    goto :goto_1
.end method

.method public SetBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 22
    .parameter "uri"

    .prologue
    .line 203
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 204
    .local v13, o:Landroid/graphics/BitmapFactory$Options;
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object v1, v13

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 205
    const/4 v4, 0x0

    .line 207
    .local v4, b:Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 208
    .local v8, fd:Ljava/io/FileDescriptor;
    const/4 v9, 0x0

    .line 209
    .local v9, fin:Ljava/io/FileInputStream;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "http"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 210
    invoke-virtual/range {p0 .. p1}, Lcom/asus/Viewer/DLNAImageGetter;->Downloader(Landroid/net/Uri;)I

    move-result v14

    .line 211
    .local v14, resultCode:I
    packed-switch v14, :pswitch_data_0

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/Viewer/DLNAImageGetter;->mHandler:Lcom/asus/Viewer/GetterHandler;

    move-object/from16 v19, v0

    invoke-direct/range {p0 .. p0}, Lcom/asus/Viewer/DLNAImageGetter;->ExceptionCallback()Ljava/lang/Runnable;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/asus/Viewer/GetterHandler;->GetterCallback(Ljava/lang/Runnable;)V

    .line 219
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/asus/Viewer/DLNAImageGetter;->mCancel:Z

    .line 220
    const/16 v19, 0x0

    .line 296
    .end local v14           #resultCode:I
    :goto_0
    return-object v19

    .line 216
    .restart local v14       #resultCode:I
    :pswitch_0
    const/16 v19, 0x0

    goto :goto_0

    .line 223
    :pswitch_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/Viewer/DLNAImageGetter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/Viewer/DLNAImageGetter;->mFilename:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v13

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 246
    .end local v14           #resultCode:I
    :goto_1
    move-object v0, v13

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v17, v0

    .line 247
    .local v17, tmp_width:F
    move-object v0, v13

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v16, v0

    .line 249
    .local v16, tmp_height:F
    const/4 v15, 0x1

    .line 250
    .local v15, scale:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/Viewer/DLNAImageGetter;->mWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpl-float v19, v17, v19

    if-gtz v19, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/Viewer/DLNAImageGetter;->mHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpl-float v19, v16, v19

    if-lez v19, :cond_1

    .line 251
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/Viewer/DLNAImageGetter;->mWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v17, v19

    .line 252
    .local v18, w:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/Viewer/DLNAImageGetter;->mHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v12, v16, v19

    .line 253
    .local v12, h:F
    cmpl-float v19, v18, v12

    if-lez v19, :cond_6

    .line 254
    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move v15, v0

    .line 261
    .end local v12           #h:F
    .end local v18           #w:F
    :cond_1
    :goto_2
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object v1, v13

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 262
    iput v15, v13, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 263
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "http"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 264
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/Viewer/DLNAImageGetter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/Viewer/DLNAImageGetter;->mFilename:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v13

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 278
    :goto_3
    if-nez v4, :cond_a

    .line 279
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 224
    .end local v15           #scale:I
    .end local v16           #tmp_height:F
    .end local v17           #tmp_width:F
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "content"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/Viewer/DLNAImageGetter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 226
    .local v6, cr:Landroid/content/ContentResolver;
    move-object/from16 v0, p1

    move-object v1, v6

    invoke-static {v0, v1}, Lcom/asus/Viewer/DLNAImageGetter;->makeInputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/Viewer/DLNAImageGetter;->pfd:Landroid/os/ParcelFileDescriptor;

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/Viewer/DLNAImageGetter;->pfd:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v19, v0

    if-nez v19, :cond_3

    .line 228
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 230
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/Viewer/DLNAImageGetter;->pfd:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    .line 231
    const/16 v19, 0x0

    move-object v0, v8

    move-object/from16 v1, v19

    move-object v2, v13

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 232
    goto/16 :goto_1

    .end local v6           #cr:Landroid/content/ContentResolver;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "file"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 234
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object v0, v10

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v9           #fin:Ljava/io/FileInputStream;
    .local v10, fin:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v10}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v8

    .line 236
    const/16 v19, 0x0

    move-object v0, v8

    move-object/from16 v1, v19

    move-object v2, v13

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    move-object v9, v10

    .line 240
    .end local v10           #fin:Ljava/io/FileInputStream;
    .restart local v9       #fin:Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 237
    :catch_0
    move-exception v19

    move-object/from16 v7, v19

    .line 238
    .local v7, e:Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 239
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 243
    .end local v7           #e:Ljava/lang/Exception;
    :cond_5
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 256
    .restart local v12       #h:F
    .restart local v15       #scale:I
    .restart local v16       #tmp_height:F
    .restart local v17       #tmp_width:F
    .restart local v18       #w:F
    :cond_6
    move v0, v12

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move v15, v0

    goto/16 :goto_2

    .line 265
    .end local v12           #h:F
    .end local v18           #w:F
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "content"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 266
    const/16 v19, 0x0

    move-object v0, v8

    move-object/from16 v1, v19

    move-object v2, v13

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto/16 :goto_3

    .line 267
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "file"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 268
    const/16 v19, 0x0

    move-object v0, v8

    move-object/from16 v1, v19

    move-object v2, v13

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 270
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    .line 271
    :catch_1
    move-exception v7

    .line 272
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 273
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 276
    .end local v7           #e:Ljava/io/IOException;
    :cond_9
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 281
    :cond_a
    const/high16 v11, 0x3f80

    .line 282
    .local v11, fscale:F
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v17, v0

    .line 283
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v16, v0

    .line 285
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/Viewer/DLNAImageGetter;->mWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpl-float v19, v17, v19

    if-gtz v19, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/Viewer/DLNAImageGetter;->mHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpl-float v19, v16, v19

    if-lez v19, :cond_c

    .line 286
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/Viewer/DLNAImageGetter;->mWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v19, v17

    .line 287
    .restart local v18       #w:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/Viewer/DLNAImageGetter;->mHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v12, v19, v16

    .line 288
    .restart local v12       #h:F
    cmpg-float v19, v18, v12

    if-gez v19, :cond_d

    .line 289
    move/from16 v11, v18

    .line 294
    .end local v12           #h:F
    .end local v18           #w:F
    :cond_c
    :goto_5
    mul-float v19, v17, v11

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    mul-float v20, v16, v11

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    move-object v0, v4

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 295
    .local v5, b_final:Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 v19, v5

    .line 296
    goto/16 :goto_0

    .line 291
    .end local v5           #b_final:Landroid/graphics/Bitmap;
    .restart local v12       #h:F
    .restart local v18       #w:F
    :cond_d
    move v11, v12

    goto :goto_5

    .line 237
    .end local v9           #fin:Ljava/io/FileInputStream;
    .end local v11           #fscale:F
    .end local v12           #h:F
    .end local v15           #scale:I
    .end local v16           #tmp_height:F
    .end local v17           #tmp_width:F
    .end local v18           #w:F
    .restart local v10       #fin:Ljava/io/FileInputStream;
    :catch_2
    move-exception v19

    move-object/from16 v7, v19

    move-object v9, v10

    .end local v10           #fin:Ljava/io/FileInputStream;
    .restart local v9       #fin:Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public cancelCurrent()V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/Viewer/DLNAImageGetter;->mCancel:Z

    .line 162
    return-void
.end method
