.class public Lcom/ecareme/pixwe/media/Photographs;
.super Landroid/app/Activity;
.source "Photographs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecareme/pixwe/media/Photographs$SetWallpaperThread;
    }
.end annotation


# static fields
.field static final CROP_DONE:I = 0x2

.field static final DO_LAUNCH_ICICLE:Ljava/lang/String; = "do_launch"

.field static final FINISH:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "Wallpaper"

.field static final PHOTO_PICKED:I = 0x1

.field static final SHOW_PROGRESS:I = 0x0

.field static final TEMP_FILE_PATH_ICICLE:Ljava/lang/String; = "temp_file_path"


# instance fields
.field private mApp:Lcom/ecareme/pixwe/app/App;

.field private mDoLaunch:Z

.field private final mHandler:Landroid/os/Handler;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mTempFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/ecareme/pixwe/media/Photographs;->mApp:Lcom/ecareme/pixwe/app/App;

    .line 57
    iput-object v0, p0, Lcom/ecareme/pixwe/media/Photographs;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/Photographs;->mDoLaunch:Z

    .line 61
    new-instance v0, Lcom/ecareme/pixwe/media/Photographs$1;

    invoke-direct {v0, p0}, Lcom/ecareme/pixwe/media/Photographs$1;-><init>(Lcom/ecareme/pixwe/media/Photographs;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/Photographs;->mHandler:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/ecareme/pixwe/media/Photographs;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/ecareme/pixwe/media/Photographs;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$1(Lcom/ecareme/pixwe/media/Photographs;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/Photographs;->closeProgressDialog()V

    return-void
.end method

.method private declared-synchronized closeProgressDialog()V
    .locals 1

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Photographs;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Photographs;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/Photographs;->mProgressDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :cond_0
    monitor-exit p0

    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected formatIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 170
    const-string v2, "temp-wallpaper"

    invoke-virtual {p0, v2}, Lcom/ecareme/pixwe/media/Photographs;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/ecareme/pixwe/media/Photographs;->mTempFile:Ljava/io/File;

    .line 171
    iget-object v2, p0, Lcom/ecareme/pixwe/media/Photographs;->mTempFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 173
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/Photographs;->getWallpaperDesiredMinimumWidth()I

    move-result v1

    .line 174
    .local v1, width:I
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/Photographs;->getWallpaperDesiredMinimumHeight()I

    move-result v0

    .line 175
    .local v0, height:I
    const-string v2, "outputX"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 176
    const-string v2, "outputY"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    const-string v2, "aspectX"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    const-string v2, "aspectY"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    const-string v2, "scale"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 180
    const-string v2, "noFaceDetection"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 181
    const-string v2, "output"

    iget-object v3, p0, Lcom/ecareme/pixwe/media/Photographs;->mTempFile:Ljava/io/File;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 182
    const-string v2, "outputFormat"

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v3}, Landroid/graphics/Bitmap$CompressFormat;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 190
    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    :cond_0
    const/4 v3, -0x1

    if-ne p2, v3, :cond_2

    if-eqz p3, :cond_2

    .line 192
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/ecareme/pixwe/media/Photographs;->mTempFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .local v2, s:Ljava/io/InputStream;
    :try_start_1
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 195
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 196
    const-string v3, "Wallpaper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to set wallpaper. Couldn\'t get bitmap for path "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/ecareme/pixwe/media/Photographs;->mTempFile:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :goto_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/ecareme/pixwe/media/Photographs;->mDoLaunch:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    :try_start_2
    invoke-static {v2}, Lcom/ecareme/pixwe/media/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 212
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #s:Ljava/io/InputStream;
    :goto_1
    return-void

    .line 198
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #s:Ljava/io/InputStream;
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/ecareme/pixwe/media/Photographs;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 199
    new-instance v3, Lcom/ecareme/pixwe/media/Photographs$SetWallpaperThread;

    iget-object v4, p0, Lcom/ecareme/pixwe/media/Photographs;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/ecareme/pixwe/media/Photographs;->mTempFile:Ljava/io/File;

    invoke-direct {v3, v0, v4, p0, v5}, Lcom/ecareme/pixwe/media/Photographs$SetWallpaperThread;-><init>(Landroid/graphics/Bitmap;Landroid/os/Handler;Landroid/content/Context;Ljava/io/File;)V

    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/Photographs$SetWallpaperThread;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 202
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v3

    .line 203
    :try_start_4
    invoke-static {v2}, Lcom/ecareme/pixwe/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 204
    throw v3
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    .line 205
    .end local v2           #s:Ljava/io/InputStream;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 206
    .local v1, ex:Ljava/io/FileNotFoundException;
    const-string v3, "Wallpaper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "file not found: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/ecareme/pixwe/media/Photographs;->mTempFile:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 209
    .end local v1           #ex:Ljava/io/FileNotFoundException;
    :cond_2
    invoke-virtual {p0, v4}, Lcom/ecareme/pixwe/media/Photographs;->setResult(I)V

    .line 210
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/Photographs;->finish()V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    new-instance v0, Lcom/ecareme/pixwe/app/App;

    invoke-direct {v0, p0}, Lcom/ecareme/pixwe/app/App;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/Photographs;->mApp:Lcom/ecareme/pixwe/app/App;

    .line 117
    if-eqz p1, :cond_0

    .line 118
    const-string v0, "do_launch"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/Photographs;->mDoLaunch:Z

    .line 119
    new-instance v0, Ljava/io/File;

    const-string v1, "temp_file_path"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/Photographs;->mTempFile:Ljava/io/File;

    .line 121
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Photographs;->mApp:Lcom/ecareme/pixwe/app/App;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/app/App;->shutdown()V

    .line 162
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 163
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/Photographs;->closeProgressDialog()V

    .line 132
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 133
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Photographs;->mApp:Lcom/ecareme/pixwe/app/App;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/app/App;->onPause()V

    .line 134
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 138
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 139
    iget-object v2, p0, Lcom/ecareme/pixwe/media/Photographs;->mApp:Lcom/ecareme/pixwe/app/App;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/app/App;->onResume()V

    .line 140
    iget-boolean v2, p0, Lcom/ecareme/pixwe/media/Photographs;->mDoLaunch:Z

    if-nez v2, :cond_0

    .line 157
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/Photographs;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 144
    .local v0, imageToUse:Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 145
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 146
    .local v1, intent:Landroid/content/Intent;
    const-class v2, Lcom/ecareme/pixwe/media/CropImage;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 147
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 148
    invoke-virtual {p0, v1}, Lcom/ecareme/pixwe/media/Photographs;->formatIntent(Landroid/content/Intent;)V

    .line 149
    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/ecareme/pixwe/media/Photographs;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 151
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 152
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v2, "crop"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    invoke-virtual {p0, v1}, Lcom/ecareme/pixwe/media/Photographs;->formatIntent(Landroid/content/Intent;)V

    .line 155
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/ecareme/pixwe/media/Photographs;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 125
    const-string v0, "do_launch"

    iget-boolean v1, p0, Lcom/ecareme/pixwe/media/Photographs;->mDoLaunch:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 126
    const-string v0, "temp_file_path"

    iget-object v1, p0, Lcom/ecareme/pixwe/media/Photographs;->mTempFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method
