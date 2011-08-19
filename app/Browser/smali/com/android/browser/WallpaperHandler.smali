.class public Lcom/android/browser/WallpaperHandler;
.super Ljava/lang/Thread;
.source "WallpaperHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private mCanceled:Z

.field private mContext:Landroid/content/Context;

.field private mUrl:Ljava/net/URL;

.field private mWallpaperProgress:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "url"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 53
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/browser/WallpaperHandler;->mCanceled:Z

    .line 56
    iput-object p1, p0, Lcom/android/browser/WallpaperHandler;->mContext:Landroid/content/Context;

    .line 58
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/browser/WallpaperHandler;->mUrl:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 60
    .local v0, e:Ljava/net/MalformedURLException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/browser/WallpaperHandler;->mUrl:Ljava/net/URL;

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/WallpaperHandler;->mCanceled:Z

    .line 67
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 71
    iget-object v0, p0, Lcom/android/browser/WallpaperHandler;->mUrl:Ljava/net/URL;

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/browser/WallpaperHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/WallpaperHandler;->mWallpaperProgress:Landroid/app/ProgressDialog;

    .line 77
    iget-object v0, p0, Lcom/android/browser/WallpaperHandler;->mWallpaperProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 78
    iget-object v0, p0, Lcom/android/browser/WallpaperHandler;->mWallpaperProgress:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/browser/WallpaperHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090152

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/android/browser/WallpaperHandler;->mWallpaperProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 81
    iget-object v0, p0, Lcom/android/browser/WallpaperHandler;->mWallpaperProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 82
    iget-object v0, p0, Lcom/android/browser/WallpaperHandler;->mWallpaperProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 83
    invoke-virtual {p0}, Lcom/android/browser/WallpaperHandler;->start()V

    .line 85
    :cond_0
    return v3
.end method

.method public run()V
    .locals 25

    .prologue
    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WallpaperHandler;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v20

    .line 91
    .local v20, wm:Landroid/app/WallpaperManager;
    invoke-virtual/range {v20 .. v20}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 92
    .local v15, oldWallpaper:Landroid/graphics/drawable/Drawable;
    const/4 v11, 0x0

    .line 100
    .local v11, inputstream:Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WallpaperHandler;->mUrl:Ljava/net/URL;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v11

    .line 101
    if-eqz v11, :cond_3

    .line 102
    invoke-virtual {v11}, Ljava/io/InputStream;->markSupported()Z

    move-result v21

    if-nez v21, :cond_0

    .line 103
    new-instance v12, Ljava/io/BufferedInputStream;

    const/high16 v21, 0x2

    move-object v0, v12

    move-object v1, v11

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .end local v11           #inputstream:Ljava/io/InputStream;
    .local v12, inputstream:Ljava/io/InputStream;
    move-object v11, v12

    .line 105
    .end local v12           #inputstream:Ljava/io/InputStream;
    .restart local v11       #inputstream:Ljava/io/InputStream;
    :cond_0
    const/high16 v21, 0x2

    move-object v0, v11

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 106
    new-instance v16, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 107
    .local v16, options:Landroid/graphics/BitmapFactory$Options;
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 110
    new-instance v21, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v21

    move-object v1, v11

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 112
    invoke-virtual/range {v20 .. v20}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v14

    .line 113
    .local v14, maxWidth:I
    invoke-virtual/range {v20 .. v20}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result v13

    .line 115
    .local v13, maxHeight:I
    move v0, v14

    int-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x3ff4

    mul-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move v14, v0

    .line 116
    move v0, v13

    int-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x3ff4

    mul-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move v13, v0

    .line 117
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move v7, v0

    .line 118
    .local v7, bmWidth:I
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move v6, v0

    .line 120
    .local v6, bmHeight:I
    const/16 v17, 0x1

    .line 121
    .local v17, scale:I
    :goto_0
    if-gt v7, v14, :cond_1

    if-le v6, v14, :cond_2

    .line 122
    :cond_1
    shl-int/lit8 v17, v17, 0x1

    .line 123
    shr-int/lit8 v7, v7, 0x1

    .line 124
    shr-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 126
    :cond_2
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 127
    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 129
    :try_start_1
    invoke-virtual {v11}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 136
    :goto_1
    const/16 v21, 0x0

    :try_start_2
    move-object v0, v11

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 138
    .local v18, scaledWallpaper:Landroid/graphics/Bitmap;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 146
    .end local v6           #bmHeight:I
    .end local v7           #bmWidth:I
    .end local v13           #maxHeight:I
    .end local v14           #maxWidth:I
    .end local v16           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v17           #scale:I
    .end local v18           #scaledWallpaper:Landroid/graphics/Bitmap;
    :cond_3
    if-eqz v11, :cond_4

    .line 148
    :try_start_3
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 155
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/WallpaperHandler;->mCanceled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 159
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    .line 160
    .local v19, width:I
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    .line 161
    .local v10, height:I
    sget-object v21, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v19

    move v1, v10

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 162
    .local v5, bm:Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 163
    .local v8, canvas:Landroid/graphics/Canvas;
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v0, v15

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v19

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 164
    invoke-virtual {v15, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 166
    :try_start_4
    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 170
    :goto_3
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/browser/WallpaperHandler;->mCanceled:Z

    .line 173
    .end local v5           #bm:Landroid/graphics/Bitmap;
    .end local v8           #canvas:Landroid/graphics/Canvas;
    .end local v10           #height:I
    .end local v19           #width:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WallpaperHandler;->mWallpaperProgress:Landroid/app/ProgressDialog;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_6

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WallpaperHandler;->mWallpaperProgress:Landroid/app/ProgressDialog;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/ProgressDialog;->dismiss()V

    .line 176
    :cond_6
    return-void

    .line 130
    .restart local v6       #bmHeight:I
    .restart local v7       #bmWidth:I
    .restart local v13       #maxHeight:I
    .restart local v14       #maxWidth:I
    .restart local v16       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v17       #scale:I
    :catch_0
    move-exception v9

    .line 133
    .local v9, e:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WallpaperHandler;->mUrl:Ljava/net/URL;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v11

    goto :goto_1

    .line 140
    .end local v6           #bmHeight:I
    .end local v7           #bmWidth:I
    .end local v9           #e:Ljava/io/IOException;
    .end local v13           #maxHeight:I
    .end local v14           #maxWidth:I
    .end local v16           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v17           #scale:I
    :catch_1
    move-exception v21

    move-object/from16 v9, v21

    .line 141
    .restart local v9       #e:Ljava/io/IOException;
    :try_start_6
    const-string v21, "WallpaperHandler"

    const-string v22, "Unable to set new wallpaper"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/browser/WallpaperHandler;->mCanceled:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 146
    if-eqz v11, :cond_4

    .line 148
    :try_start_7
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    .line 149
    :catch_2
    move-exception v21

    goto :goto_2

    .line 146
    .end local v9           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v21

    if-eqz v11, :cond_7

    .line 148
    :try_start_8
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 151
    :cond_7
    :goto_4
    throw v21

    .line 167
    .restart local v5       #bm:Landroid/graphics/Bitmap;
    .restart local v8       #canvas:Landroid/graphics/Canvas;
    .restart local v10       #height:I
    .restart local v19       #width:I
    :catch_3
    move-exception v9

    .line 168
    .restart local v9       #e:Ljava/io/IOException;
    const-string v21, "WallpaperHandler"

    const-string v22, "Unable to restore old wallpaper."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 149
    .end local v5           #bm:Landroid/graphics/Bitmap;
    .end local v8           #canvas:Landroid/graphics/Canvas;
    .end local v9           #e:Ljava/io/IOException;
    .end local v10           #height:I
    .end local v19           #width:I
    :catch_4
    move-exception v21

    goto/16 :goto_2

    :catch_5
    move-exception v22

    goto :goto_4
.end method
