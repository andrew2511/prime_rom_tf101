.class public Lcom/android/browser/UploadHandler;
.super Ljava/lang/Object;
.source "UploadHandler.java"


# instance fields
.field private mCameraFilePath:Ljava/lang/String;

.field private mCaughtActivityNotFoundException:Z

.field private mController:Lcom/android/browser/Controller;

.field private mHandled:Z

.field private mUploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/browser/Controller;)V
    .locals 0
    .parameter "controller"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/browser/UploadHandler;->mController:Lcom/android/browser/Controller;

    .line 49
    return-void
.end method

.method private createCamcorderIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 258
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private createCameraIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    .line 245
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    .local v1, cameraIntent:Landroid/content/Intent;
    sget-object v3, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 248
    .local v2, externalDataDir:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "browser-photos"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    .local v0, cameraDataDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 251
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/browser/UploadHandler;->mCameraFilePath:Ljava/lang/String;

    .line 253
    const-string v3, "output"

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/browser/UploadHandler;->mCameraFilePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 254
    return-object v1
.end method

.method private varargs createChooserIntent([Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .parameter "intents"

    .prologue
    .line 229
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CHOOSER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    .local v0, chooser:Landroid/content/Intent;
    const-string v1, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 231
    const-string v1, "android.intent.extra.TITLE"

    iget-object v2, p0, Lcom/android/browser/UploadHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v2}, Lcom/android/browser/Controller;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    return-object v0
.end method

.method private createDefaultOpenableIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 218
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    .local v1, i:Landroid/content/Intent;
    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string v2, "*/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const/4 v2, 0x3

    new-array v2, v2, [Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/browser/UploadHandler;->createCameraIntent()Landroid/content/Intent;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/android/browser/UploadHandler;->createCamcorderIntent()Landroid/content/Intent;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-direct {p0}, Lcom/android/browser/UploadHandler;->createSoundRecorderIntent()Landroid/content/Intent;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v2}, Lcom/android/browser/UploadHandler;->createChooserIntent([Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 224
    .local v0, chooser:Landroid/content/Intent;
    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 225
    return-object v0
.end method

.method private createOpenableIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "type"

    .prologue
    .line 238
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 239
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    return-object v0
.end method

.method private createSoundRecorderIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 262
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private startActivity(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 198
    :try_start_0
    iget-object v2, p0, Lcom/android/browser/UploadHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v2}, Lcom/android/browser/Controller;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, p1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 203
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/android/browser/UploadHandler;->mCaughtActivityNotFoundException:Z

    .line 204
    iget-object v2, p0, Lcom/android/browser/UploadHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v2}, Lcom/android/browser/Controller;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/browser/UploadHandler;->createDefaultOpenableIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 206
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 208
    .local v1, e2:Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/android/browser/UploadHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v2}, Lcom/android/browser/Controller;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f09000c

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method handled()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/browser/UploadHandler;->mHandled:Z

    return v0
.end method

.method onResult(ILandroid/content/Intent;)V
    .locals 6
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const/4 v3, -0x1

    .line 61
    if-nez p1, :cond_0

    iget-boolean v2, p0, Lcom/android/browser/UploadHandler;->mCaughtActivityNotFoundException:Z

    if-eqz v2, :cond_0

    .line 64
    iput-boolean v5, p0, Lcom/android/browser/UploadHandler;->mCaughtActivityNotFoundException:Z

    .line 91
    :goto_0
    return-void

    .line 68
    :cond_0
    if-eqz p2, :cond_1

    if-eq p1, v3, :cond_3

    :cond_1
    const/4 v2, 0x0

    move-object v1, v2

    .line 77
    .local v1, result:Landroid/net/Uri;
    :goto_1
    if-nez v1, :cond_2

    if-nez p2, :cond_2

    if-ne p1, v3, :cond_2

    .line 78
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/browser/UploadHandler;->mCameraFilePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, cameraFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 80
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 83
    iget-object v2, p0, Lcom/android/browser/UploadHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v2}, Lcom/android/browser/Controller;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 88
    .end local v0           #cameraFile:Ljava/io/File;
    :cond_2
    iget-object v2, p0, Lcom/android/browser/UploadHandler;->mUploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {v2, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 89
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/browser/UploadHandler;->mHandled:Z

    .line 90
    iput-boolean v5, p0, Lcom/android/browser/UploadHandler;->mCaughtActivityNotFoundException:Z

    goto :goto_0

    .line 68
    .end local v1           #result:Landroid/net/Uri;
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object v1, v2

    goto :goto_1
.end method

.method openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 23
    .parameter
    .parameter "acceptType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, uploadMsg:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    const-string v7, "image/*"

    .line 96
    .local v7, imageMimeType:Ljava/lang/String;
    const-string v19, "video/*"

    .line 97
    .local v19, videoMimeType:Ljava/lang/String;
    const-string v4, "audio/*"

    .line 98
    .local v4, audioMimeType:Ljava/lang/String;
    const-string v11, "capture"

    .line 99
    .local v11, mediaSourceKey:Ljava/lang/String;
    const-string v13, "camera"

    .line 100
    .local v13, mediaSourceValueCamera:Ljava/lang/String;
    const-string v14, "filesystem"

    .line 101
    .local v14, mediaSourceValueFileSystem:Ljava/lang/String;
    const-string v12, "camcorder"

    .line 102
    .local v12, mediaSourceValueCamcorder:Ljava/lang/String;
    const-string v15, "microphone"

    .line 106
    .local v15, mediaSourceValueMicrophone:Ljava/lang/String;
    const-string v10, ""

    .line 108
    .local v10, mediaSource:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/UploadHandler;->mUploadMessage:Landroid/webkit/ValueCallback;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 194
    :goto_0
    return-void

    .line 113
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/UploadHandler;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 116
    const-string v20, ";"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 117
    .local v18, params:[Ljava/lang/String;
    const/16 v20, 0x0

    aget-object v16, v18, v20

    .line 119
    .local v16, mimeType:Ljava/lang/String;
    move-object/from16 v3, v18

    .local v3, arr$:[Ljava/lang/String;
    array-length v9, v3

    .local v9, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_1
    if-ge v6, v9, :cond_2

    aget-object v17, v3, v6

    .line 120
    .local v17, p:Ljava/lang/String;
    const-string v20, "="

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 121
    .local v8, keyValue:[Ljava/lang/String;
    move-object v0, v8

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 123
    const-string v20, "capture"

    const/16 v21, 0x0

    aget-object v21, v8, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 124
    const/16 v20, 0x1

    aget-object v10, v8, v20

    .line 119
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 130
    .end local v8           #keyValue:[Ljava/lang/String;
    .end local v17           #p:Ljava/lang/String;
    :cond_2
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/UploadHandler;->mCameraFilePath:Ljava/lang/String;

    .line 132
    const-string v20, "image/*"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 133
    const-string v20, "camera"

    move-object v0, v10

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 136
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/UploadHandler;->createCameraIntent()Landroid/content/Intent;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/browser/UploadHandler;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 138
    :cond_3
    const-string v20, "filesystem"

    move-object v0, v10

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 141
    const-string v20, "image/*"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/browser/UploadHandler;->createOpenableIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/browser/UploadHandler;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 146
    :cond_4
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Landroid/content/Intent;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/browser/UploadHandler;->createCameraIntent()Landroid/content/Intent;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/browser/UploadHandler;->createChooserIntent([Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v5

    .line 147
    .local v5, chooser:Landroid/content/Intent;
    const-string v20, "android.intent.extra.INTENT"

    const-string v21, "image/*"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/browser/UploadHandler;->createOpenableIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    move-object v0, v5

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 148
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/browser/UploadHandler;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 151
    .end local v5           #chooser:Landroid/content/Intent;
    :cond_5
    const-string v20, "video/*"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 152
    const-string v20, "camcorder"

    move-object v0, v10

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 155
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/UploadHandler;->createCamcorderIntent()Landroid/content/Intent;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/browser/UploadHandler;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 157
    :cond_6
    const-string v20, "filesystem"

    move-object v0, v10

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 160
    const-string v20, "video/*"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/browser/UploadHandler;->createOpenableIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/browser/UploadHandler;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 165
    :cond_7
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Landroid/content/Intent;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/browser/UploadHandler;->createCamcorderIntent()Landroid/content/Intent;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/browser/UploadHandler;->createChooserIntent([Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v5

    .line 166
    .restart local v5       #chooser:Landroid/content/Intent;
    const-string v20, "android.intent.extra.INTENT"

    const-string v21, "video/*"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/browser/UploadHandler;->createOpenableIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    move-object v0, v5

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 167
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/browser/UploadHandler;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 170
    .end local v5           #chooser:Landroid/content/Intent;
    :cond_8
    const-string v20, "audio/*"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 171
    const-string v20, "microphone"

    move-object v0, v10

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 174
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/UploadHandler;->createSoundRecorderIntent()Landroid/content/Intent;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/browser/UploadHandler;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 176
    :cond_9
    const-string v20, "filesystem"

    move-object v0, v10

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 179
    const-string v20, "audio/*"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/browser/UploadHandler;->createOpenableIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/browser/UploadHandler;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 184
    :cond_a
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Landroid/content/Intent;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/browser/UploadHandler;->createSoundRecorderIntent()Landroid/content/Intent;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/browser/UploadHandler;->createChooserIntent([Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v5

    .line 185
    .restart local v5       #chooser:Landroid/content/Intent;
    const-string v20, "android.intent.extra.INTENT"

    const-string v21, "audio/*"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/browser/UploadHandler;->createOpenableIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    move-object v0, v5

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 186
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/browser/UploadHandler;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 193
    .end local v5           #chooser:Landroid/content/Intent;
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/UploadHandler;->createDefaultOpenableIntent()Landroid/content/Intent;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/browser/UploadHandler;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
