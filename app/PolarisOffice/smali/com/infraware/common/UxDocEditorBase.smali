.class public abstract Lcom/infraware/common/UxDocEditorBase;
.super Lcom/infraware/common/UxDocViewerBase;
.source "UxDocEditorBase.java"

# interfaces
.implements Lcom/infraware/evengine/E$EV_EDIT_OBJECT_TYPE;
.implements Lcom/infraware/common/UDM$UDM_CONTEXT_ID;
.implements Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/common/UxDocEditorBase$GoogleSearchButtonListener;,
        Lcom/infraware/common/UxDocEditorBase$NoneActionModeCallback;,
        Lcom/infraware/common/UxDocEditorBase$ObjectActionModeCallback;,
        Lcom/infraware/common/UxDocEditorBase$TextActionModeCallback;
    }
.end annotation


# static fields
.field private static final MAX_IMAGESIZE:I = 0x320

.field private static final TEMP_IMAGEPATH:Ljava/lang/String;


# instance fields
.field private final LOG_CAT:Ljava/lang/String;

.field protected m_bSavingOnClose:Z

.field private m_nInsertImageHeight:I

.field private m_nInsertImageWidth:I

.field protected m_oCaretHandler:Lcom/infraware/common/EvCaretTask;

.field protected m_oClipBoard:Lcom/infraware/common/helpers/EvClipboardHelper;

.field protected m_oContextMenu:Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;

.field protected m_oEditorCB:Lcom/infraware/common/ICoDocEditorCB;

.field protected m_oMenu:Landroid/view/Menu;

.field private m_oObjectActionModeCallback:Lcom/infraware/common/UxDocEditorBase$ObjectActionModeCallback;

.field public m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

.field protected m_oToolBarUpdater:Lcom/infraware/common/UxToolBarUpdater;

.field protected m_strSavePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/infraware/filemanager/FmFileDefine;->getRootFileManagerPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".capture_temp.bmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/infraware/common/UxDocEditorBase;->TEMP_IMAGEPATH:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Lcom/infraware/common/UxDocViewerBase;-><init>()V

    .line 47
    iput-object v1, p0, Lcom/infraware/common/UxDocEditorBase;->m_oEditorCB:Lcom/infraware/common/ICoDocEditorCB;

    .line 48
    const-string v0, "UxDocEditorBase"

    iput-object v0, p0, Lcom/infraware/common/UxDocEditorBase;->LOG_CAT:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/infraware/common/UxDocEditorBase;->m_oCaretHandler:Lcom/infraware/common/EvCaretTask;

    .line 50
    iput-object v1, p0, Lcom/infraware/common/UxDocEditorBase;->m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

    .line 51
    iput-object v1, p0, Lcom/infraware/common/UxDocEditorBase;->m_oMenu:Landroid/view/Menu;

    .line 52
    iput-object v1, p0, Lcom/infraware/common/UxDocEditorBase;->m_oToolBarUpdater:Lcom/infraware/common/UxToolBarUpdater;

    .line 53
    iput-object v1, p0, Lcom/infraware/common/UxDocEditorBase;->m_oContextMenu:Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;

    .line 54
    iput-object v1, p0, Lcom/infraware/common/UxDocEditorBase;->m_oClipBoard:Lcom/infraware/common/helpers/EvClipboardHelper;

    .line 63
    iput v2, p0, Lcom/infraware/common/UxDocEditorBase;->m_nInsertImageWidth:I

    .line 64
    iput v2, p0, Lcom/infraware/common/UxDocEditorBase;->m_nInsertImageHeight:I

    .line 45
    return-void
.end method


# virtual methods
.method protected abstract changeOptionsMenuByMode(Landroid/view/Menu;)V
.end method

.method protected abstract changeViewMode(I)V
.end method

.method public finishActionMode()V
    .locals 1

    .prologue
    .line 462
    invoke-static {}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->isHoneycombAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/common/UxDocEditorBase;->m_oObjectActionModeCallback:Lcom/infraware/common/UxDocEditorBase$ObjectActionModeCallback;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/infraware/common/UxDocEditorBase;->m_oObjectActionModeCallback:Lcom/infraware/common/UxDocEditorBase$ObjectActionModeCallback;

    invoke-virtual {v0}, Lcom/infraware/common/UxDocEditorBase$ObjectActionModeCallback;->finish()V

    .line 464
    :cond_0
    return-void
.end method

.method public getCaretTask()Lcom/infraware/common/EvCaretTask;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/infraware/common/UxDocEditorBase;->m_oCaretHandler:Lcom/infraware/common/EvCaretTask;

    return-object v0
.end method

.method public getResizedImageFromFilePath(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "a_szFilePath"

    .prologue
    const/16 v8, 0x320

    const-wide/high16 v9, 0x4000

    const/4 v7, 0x1

    const/4 v11, 0x0

    .line 313
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 314
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 315
    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 317
    const/4 v4, 0x0

    .line 318
    .local v4, orgBitmap:Landroid/graphics/Bitmap;
    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v7, v8, :cond_1

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v7, v8, :cond_1

    .line 321
    const/4 v7, 0x0

    :try_start_0
    invoke-static {p1, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 322
    if-nez v4, :cond_0

    move-object v7, v11

    .line 379
    :goto_0
    return-object v7

    .line 325
    :catch_0
    move-exception v1

    .line 327
    .local v1, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    move-object v7, v11

    .line 328
    goto :goto_0

    .line 330
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :cond_0
    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v7, p0, Lcom/infraware/common/UxDocEditorBase;->m_nInsertImageWidth:I

    .line 331
    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v7, p0, Lcom/infraware/common/UxDocEditorBase;->m_nInsertImageHeight:I

    .line 371
    :goto_1
    :try_start_1
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 372
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    .line 373
    const/4 v4, 0x0

    move-object v7, v0

    .line 374
    goto :goto_0

    .line 335
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 336
    .local v6, width:I
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 337
    .local v2, height:I
    if-lt v6, v2, :cond_2

    .line 338
    div-int/lit16 v7, v6, 0x320

    int-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    div-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 339
    const/16 v6, 0x320

    .line 340
    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/lit16 v7, v7, 0x320

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int v2, v7, v8

    .line 348
    :goto_2
    const/4 v7, 0x0

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 351
    :try_start_2
    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    .line 352
    .local v5, tmpBitmap:Landroid/graphics/Bitmap;
    if-nez v5, :cond_3

    move-object v7, v11

    .line 353
    goto :goto_0

    .line 343
    .end local v5           #tmpBitmap:Landroid/graphics/Bitmap;
    :cond_2
    div-int/lit16 v7, v2, 0x320

    int-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    div-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 344
    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int/lit16 v7, v7, 0x320

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int v6, v7, v8

    .line 345
    const/16 v2, 0x320

    goto :goto_2

    .line 354
    .restart local v5       #tmpBitmap:Landroid/graphics/Bitmap;
    :cond_3
    const/4 v7, 0x1

    :try_start_3
    invoke-static {v5, v6, v2, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 355
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1

    .line 356
    const/4 v5, 0x0

    .line 357
    if-nez v4, :cond_4

    move-object v7, v11

    .line 358
    goto :goto_0

    .line 360
    .end local v5           #tmpBitmap:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 362
    .restart local v1       #e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    move-object v7, v11

    .line 363
    goto :goto_0

    .line 365
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    .restart local v5       #tmpBitmap:Landroid/graphics/Bitmap;
    :cond_4
    iput v6, p0, Lcom/infraware/common/UxDocEditorBase;->m_nInsertImageWidth:I

    .line 366
    iput v2, p0, Lcom/infraware/common/UxDocEditorBase;->m_nInsertImageHeight:I

    goto :goto_1

    .line 376
    .end local v2           #height:I
    .end local v5           #tmpBitmap:Landroid/graphics/Bitmap;
    .end local v6           #width:I
    :catch_2
    move-exception v7

    move-object v1, v7

    .line 378
    .restart local v1       #e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    move-object v7, v11

    .line 379
    goto :goto_0
.end method

.method public getToolBarUpdater()Lcom/infraware/common/UxToolBarUpdater;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/infraware/common/UxDocEditorBase;->m_oToolBarUpdater:Lcom/infraware/common/UxToolBarUpdater;

    return-object v0
.end method

.method public insertCameraImage()V
    .locals 7

    .prologue
    const/16 v5, -0x116

    .line 100
    iget-object v4, p0, Lcom/infraware/common/UxDocEditorBase;->m_oSdListener:Lcom/infraware/common/UxSdCardListener;

    invoke-virtual {v4}, Lcom/infraware/common/UxSdCardListener;->canUse()Z

    move-result v4

    if-nez v4, :cond_1

    .line 102
    iget-object v4, p0, Lcom/infraware/common/UxDocEditorBase;->m_oHandler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    .line 103
    iget-object v4, p0, Lcom/infraware/common/UxDocEditorBase;->m_oHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, i:Landroid/content/Intent;
    const/16 v3, 0x8

    .line 111
    .local v3, oRequestCode:I
    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/infraware/common/UxDocEditorBase;->TEMP_IMAGEPATH:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    .local v2, oFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 114
    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 115
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 124
    :cond_2
    const-string v4, "output"

    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/infraware/common/UxDocEditorBase;->TEMP_IMAGEPATH:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0}, Lcom/infraware/common/UxDocEditorBase;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x1

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 128
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 129
    invoke-virtual {p0, v0, v3}, Lcom/infraware/common/UxDocEditorBase;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 118
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    iget-object v4, p0, Lcom/infraware/common/UxDocEditorBase;->m_oHandler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    .line 119
    iget-object v4, p0, Lcom/infraware/common/UxDocEditorBase;->m_oHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public insertGalleryImage()V
    .locals 5

    .prologue
    .line 84
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, i:Landroid/content/Intent;
    const/4 v2, 0x7

    .line 87
    .local v2, oRequestCode:I
    const-string v3, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v3, "image/*"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0}, Lcom/infraware/common/UxDocEditorBase;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x1

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 92
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 93
    invoke-virtual {p0, v0, v2}, Lcom/infraware/common/UxDocEditorBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 96
    :cond_0
    return-void
.end method

.method public isActionModeEnabled()Z
    .locals 1

    .prologue
    .line 467
    invoke-static {}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->isHoneycombAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/common/UxDocEditorBase;->m_oObjectActionModeCallback:Lcom/infraware/common/UxDocEditorBase$ObjectActionModeCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/common/UxDocEditorBase;->m_oObjectActionModeCallback:Lcom/infraware/common/UxDocEditorBase$ObjectActionModeCallback;

    invoke-virtual {v0}, Lcom/infraware/common/UxDocEditorBase$ObjectActionModeCallback;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 137
    invoke-super {p0, p1, p2, p3}, Lcom/infraware/common/UxDocViewerBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 138
    packed-switch p1, :pswitch_data_0

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 141
    :pswitch_0
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 143
    iget-object v3, p0, Lcom/infraware/common/UxDocEditorBase;->m_oHandler:Landroid/os/Handler;

    if-eqz v3, :cond_1

    .line 146
    const/4 v3, 0x1

    sput-boolean v3, Lcom/infraware/common/UxDocEditorBase;->g_bProgressFlag:Z

    .line 147
    iget-object v3, p0, Lcom/infraware/common/UxDocEditorBase;->m_oHandler:Landroid/os/Handler;

    const/16 v4, -0x115

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 150
    :cond_1
    const-string v10, ""

    .line 151
    .local v10, szAbsolutePath:Ljava/lang/String;
    if-nez p3, :cond_2

    .line 153
    iget-object v3, p0, Lcom/infraware/common/UxDocEditorBase;->m_oHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 154
    iget-object v3, p0, Lcom/infraware/common/UxDocEditorBase;->m_oHandler:Landroid/os/Handler;

    const/16 v4, -0x117

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 160
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 163
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 166
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 168
    :cond_3
    iget-object v3, p0, Lcom/infraware/common/UxDocEditorBase;->m_oHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 169
    iget-object v3, p0, Lcom/infraware/common/UxDocEditorBase;->m_oHandler:Landroid/os/Handler;

    const/16 v4, -0x117

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 173
    :cond_4
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 175
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    .line 177
    iget-object v3, p0, Lcom/infraware/common/UxDocEditorBase;->m_oHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 178
    iget-object v3, p0, Lcom/infraware/common/UxDocEditorBase;->m_oHandler:Landroid/os/Handler;

    const/16 v4, -0x117

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 181
    :cond_5
    new-instance v9, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    .local v9, oFile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_7

    .line 184
    :cond_6
    iget-object v3, p0, Lcom/infraware/common/UxDocEditorBase;->m_oHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 185
    iget-object v3, p0, Lcom/infraware/common/UxDocEditorBase;->m_oHandler:Landroid/os/Handler;

    const/16 v4, -0x117

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 188
    :cond_7
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 236
    :cond_8
    invoke-virtual {p0, v10}, Lcom/infraware/common/UxDocEditorBase;->getResizedImageFromFilePath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 238
    .local v6, bitmap:Landroid/graphics/Bitmap;
    if-nez v6, :cond_e

    .line 240
    iget-object v3, p0, Lcom/infraware/common/UxDocEditorBase;->m_oHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 241
    iget-object v3, p0, Lcom/infraware/common/UxDocEditorBase;->m_oHandler:Landroid/os/Handler;

    const/16 v4, -0x117

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 193
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v9           #oFile:Ljava/io/File;
    :cond_9
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    .line 198
    .local v2, FILE_META_COLUMNS:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/infraware/common/UxDocEditorBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 200
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 201
    .local v7, fileCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_b

    .line 203
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 206
    const/4 v3, 0x0

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 213
    :cond_a
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 218
    :cond_b
    :goto_1
    if-nez v10, :cond_c

    .line 220
    iget-object v3, p0, Lcom/infraware/common/UxDocEditorBase;->m_oHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 221
    iget-object v3, p0, Lcom/infraware/common/UxDocEditorBase;->m_oHandler:Landroid/os/Handler;

    const/16 v4, -0x117

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 210
    :catch_0
    move-exception v3

    .line 213
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 212
    :catchall_0
    move-exception v3

    .line 213
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 214
    throw v3

    .line 226
    :cond_c
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    .restart local v9       #oFile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_8

    .line 229
    :cond_d
    iget-object v3, p0, Lcom/infraware/common/UxDocEditorBase;->m_oHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 230
    iget-object v3, p0, Lcom/infraware/common/UxDocEditorBase;->m_oHandler:Landroid/os/Handler;

    const/16 v4, -0x117

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 245
    .end local v0           #contentResolver:Landroid/content/ContentResolver;
    .end local v2           #FILE_META_COLUMNS:[Ljava/lang/String;
    .end local v7           #fileCursor:Landroid/database/Cursor;
    .restart local v6       #bitmap:Landroid/graphics/Bitmap;
    :cond_e
    iget-object v3, p0, Lcom/infraware/common/UxDocEditorBase;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    const/4 v4, 0x0

    iget v5, p0, Lcom/infraware/common/UxDocEditorBase;->m_nInsertImageWidth:I

    iget v7, p0, Lcom/infraware/common/UxDocEditorBase;->m_nInsertImageHeight:I

    invoke-virtual {v3, v4, v6, v5, v7}, Lcom/infraware/common/CoCoreFunctionInterface;->insertImage(Ljava/lang/String;Landroid/graphics/Bitmap;II)V

    .line 246
    const/4 v3, 0x0

    iput v3, p0, Lcom/infraware/common/UxDocEditorBase;->m_nInsertImageWidth:I

    .line 247
    const/4 v3, 0x0

    iput v3, p0, Lcom/infraware/common/UxDocEditorBase;->m_nInsertImageHeight:I

    .line 249
    iget-object v3, p0, Lcom/infraware/common/UxDocEditorBase;->m_oHandler:Landroid/os/Handler;

    const/16 v4, -0x103

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 254
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v9           #oFile:Ljava/io/File;
    .end local v10           #szAbsolutePath:Ljava/lang/String;
    :pswitch_1
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 256
    iget-object v3, p0, Lcom/infraware/common/UxDocEditorBase;->m_oHandler:Landroid/os/Handler;

    if-eqz v3, :cond_f

    .line 259
    const/4 v3, 0x1

    sput-boolean v3, Lcom/infraware/common/UxDocEditorBase;->g_bProgressFlag:Z

    .line 260
    iget-object v3, p0, Lcom/infraware/common/UxDocEditorBase;->m_oHandler:Landroid/os/Handler;

    const/16 v4, -0x115

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 268
    :cond_f
    new-instance v9, Ljava/io/File;

    sget-object v3, Lcom/infraware/common/UxDocEditorBase;->TEMP_IMAGEPATH:Ljava/lang/String;

    invoke-direct {v9, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 269
    .restart local v9       #oFile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v9}, Ljava/io/File;->canRead()Z

    move-result v3

    if-nez v3, :cond_11

    .line 271
    :cond_10
    iget-object v3, p0, Lcom/infraware/common/UxDocEditorBase;->m_oHandler:Landroid/os/Handler;

    const/16 v4, -0x116

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 275
    :cond_11
    sget-object v3, Lcom/infraware/common/UxDocEditorBase;->TEMP_IMAGEPATH:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/infraware/common/UxDocEditorBase;->getResizedImageFromFilePath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 277
    .local v8, oBitmap:Landroid/graphics/Bitmap;
    if-nez v8, :cond_12

    .line 279
    iget-object v3, p0, Lcom/infraware/common/UxDocEditorBase;->m_oHandler:Landroid/os/Handler;

    const/16 v4, -0x117

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 280
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 284
    :cond_12
    iget-object v3, p0, Lcom/infraware/common/UxDocEditorBase;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    const/4 v4, 0x0

    iget v5, p0, Lcom/infraware/common/UxDocEditorBase;->m_nInsertImageWidth:I

    iget v6, p0, Lcom/infraware/common/UxDocEditorBase;->m_nInsertImageHeight:I

    invoke-virtual {v3, v4, v8, v5, v6}, Lcom/infraware/common/CoCoreFunctionInterface;->insertImage(Ljava/lang/String;Landroid/graphics/Bitmap;II)V

    .line 285
    const/4 v3, 0x0

    iput v3, p0, Lcom/infraware/common/UxDocEditorBase;->m_nInsertImageWidth:I

    .line 286
    const/4 v3, 0x0

    iput v3, p0, Lcom/infraware/common/UxDocEditorBase;->m_nInsertImageHeight:I

    .line 288
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 290
    iget-object v3, p0, Lcom/infraware/common/UxDocEditorBase;->m_oHandler:Landroid/os/Handler;

    const/16 v4, -0x103

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public varargs abstract onCommand(Lcom/infraware/uxcontrol/uiunit/UiUnitView;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;[Ljava/lang/Object;)V
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/infraware/common/UxDocViewerBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 79
    invoke-virtual {p0}, Lcom/infraware/common/UxDocEditorBase;->finishActionMode()V

    .line 80
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 386
    invoke-super {p0, p1}, Lcom/infraware/common/UxDocViewerBase;->onCreate(Landroid/os/Bundle;)V

    .line 388
    new-instance v0, Lcom/infraware/common/EvCaretTask;

    iget-object v1, p0, Lcom/infraware/common/UxDocEditorBase;->m_oEventListener:Lcom/infraware/common/UiCoreEventListener;

    invoke-direct {v0, v1}, Lcom/infraware/common/EvCaretTask;-><init>(Lcom/infraware/common/UiCoreEventListener;)V

    iput-object v0, p0, Lcom/infraware/common/UxDocEditorBase;->m_oCaretHandler:Lcom/infraware/common/EvCaretTask;

    .line 389
    new-instance v0, Lcom/infraware/common/EvObjectProc;

    iget-object v1, p0, Lcom/infraware/common/UxDocEditorBase;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    iget-object v2, p0, Lcom/infraware/common/UxDocEditorBase;->m_oEventListener:Lcom/infraware/common/UiCoreEventListener;

    invoke-direct {v0, v1, v2}, Lcom/infraware/common/EvObjectProc;-><init>(Landroid/view/View;Lcom/infraware/common/UiCoreEventListener;)V

    iput-object v0, p0, Lcom/infraware/common/UxDocEditorBase;->m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

    .line 390
    new-instance v0, Lcom/infraware/common/helpers/EvClipboardHelper;

    invoke-direct {v0, p0}, Lcom/infraware/common/helpers/EvClipboardHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/infraware/common/UxDocEditorBase;->m_oClipBoard:Lcom/infraware/common/helpers/EvClipboardHelper;

    .line 391
    new-instance v0, Lcom/infraware/common/ICoDocEditorCB;

    iget-object v1, p0, Lcom/infraware/common/UxDocEditorBase;->m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

    iget-object v2, p0, Lcom/infraware/common/UxDocEditorBase;->m_oClipBoard:Lcom/infraware/common/helpers/EvClipboardHelper;

    invoke-direct {v0, p0, v1, v2}, Lcom/infraware/common/ICoDocEditorCB;-><init>(Landroid/content/Context;Lcom/infraware/common/EvObjectProc;Lcom/infraware/common/helpers/EvClipboardHelper;)V

    iput-object v0, p0, Lcom/infraware/common/UxDocEditorBase;->m_oEditorCB:Lcom/infraware/common/ICoDocEditorCB;

    .line 394
    new-instance v0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;-><init>(Lcom/infraware/common/UxDocEditorBase;I)V

    iput-object v0, p0, Lcom/infraware/common/UxDocEditorBase;->m_oContextMenu:Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;

    .line 395
    iget-object v0, p0, Lcom/infraware/common/UxDocEditorBase;->m_oContextMenu:Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->createView()V

    .line 396
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 414
    invoke-super {p0, p1, p2, p3}, Lcom/infraware/common/UxDocViewerBase;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 416
    const/4 v0, 0x0

    .line 418
    .local v0, nID:I
    iget-object v1, p0, Lcom/infraware/common/UxDocEditorBase;->m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

    invoke-virtual {v1}, Lcom/infraware/common/EvObjectProc;->GetObjCtrlType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 432
    :goto_0
    invoke-static {}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->isHoneycombAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 434
    packed-switch v0, :pswitch_data_1

    .line 446
    iget-object v1, p0, Lcom/infraware/common/UxDocEditorBase;->m_oContextMenu:Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;

    invoke-virtual {v1, v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->changeType(I)V

    .line 447
    iget-object v1, p0, Lcom/infraware/common/UxDocEditorBase;->m_oContextMenu:Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;

    invoke-virtual {v1, v2}, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->show(Z)V

    .line 455
    :cond_0
    :goto_1
    return-void

    .line 419
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 420
    :pswitch_1
    const/4 v0, 0x7

    goto :goto_0

    .line 421
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 422
    :pswitch_3
    const/4 v0, 0x5

    goto :goto_0

    .line 423
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 424
    :pswitch_5
    const/4 v0, 0x6

    goto :goto_0

    .line 426
    :pswitch_6
    const/4 v0, 0x3

    goto :goto_0

    .line 427
    :pswitch_7
    const/16 v0, 0x8

    goto :goto_0

    .line 436
    :pswitch_8
    new-instance v1, Lcom/infraware/common/UxDocEditorBase$TextActionModeCallback;

    invoke-direct {v1, p0, v3}, Lcom/infraware/common/UxDocEditorBase$TextActionModeCallback;-><init>(Lcom/infraware/common/UxDocEditorBase;Lcom/infraware/common/UxDocEditorBase$TextActionModeCallback;)V

    iput-object v1, p0, Lcom/infraware/common/UxDocEditorBase;->m_oObjectActionModeCallback:Lcom/infraware/common/UxDocEditorBase$ObjectActionModeCallback;

    .line 437
    iget-object v1, p0, Lcom/infraware/common/UxDocEditorBase;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    iget-object v2, p0, Lcom/infraware/common/UxDocEditorBase;->m_oObjectActionModeCallback:Lcom/infraware/common/UxDocEditorBase$ObjectActionModeCallback;

    invoke-static {v1, v2}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->startActionMode(Landroid/view/View;Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode$Callback;)V

    goto :goto_1

    .line 440
    :pswitch_9
    invoke-virtual {p0}, Lcom/infraware/common/UxDocEditorBase;->getToolBarUpdater()Lcom/infraware/common/UxToolBarUpdater;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/common/UxToolBarUpdater;->canPaste()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    new-instance v1, Lcom/infraware/common/UxDocEditorBase$NoneActionModeCallback;

    invoke-direct {v1, p0, v3}, Lcom/infraware/common/UxDocEditorBase$NoneActionModeCallback;-><init>(Lcom/infraware/common/UxDocEditorBase;Lcom/infraware/common/UxDocEditorBase$NoneActionModeCallback;)V

    iput-object v1, p0, Lcom/infraware/common/UxDocEditorBase;->m_oObjectActionModeCallback:Lcom/infraware/common/UxDocEditorBase$ObjectActionModeCallback;

    .line 442
    iget-object v1, p0, Lcom/infraware/common/UxDocEditorBase;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    iget-object v2, p0, Lcom/infraware/common/UxDocEditorBase;->m_oObjectActionModeCallback:Lcom/infraware/common/UxDocEditorBase$ObjectActionModeCallback;

    invoke-static {v1, v2}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->startActionMode(Landroid/view/View;Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode$Callback;)V

    goto :goto_1

    .line 452
    :cond_1
    iget-object v1, p0, Lcom/infraware/common/UxDocEditorBase;->m_oContextMenu:Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;

    invoke-virtual {v1, v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->changeType(I)V

    .line 453
    iget-object v1, p0, Lcom/infraware/common/UxDocEditorBase;->m_oContextMenu:Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;

    invoke-virtual {v1, v2}, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->show(Z)V

    goto :goto_1

    .line 418
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
    .end packed-switch

    .line 434
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 400
    invoke-static {}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->isHoneycombAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/infraware/common/UxDocEditorBase;->isActionModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 407
    :goto_0
    return v0

    .line 404
    :cond_0
    sget-boolean v0, Lcom/infraware/common/UxDocEditorBase;->g_bProgressFlag:Z

    if-eqz v0, :cond_1

    move v0, v1

    .line 405
    goto :goto_0

    .line 407
    :cond_1
    invoke-super {p0, p1}, Lcom/infraware/common/UxDocViewerBase;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSave()V
    .locals 4

    .prologue
    .line 630
    iget-object v2, p0, Lcom/infraware/common/UxDocEditorBase;->m_strOpenPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/infraware/filemanager/FmFileUtil;->getFileExtString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 631
    .local v1, szReqExt:Ljava/lang/String;
    iget-object v2, p0, Lcom/infraware/common/UxDocEditorBase;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    iget v2, v2, Lcom/infraware/common/UxSurfaceView;->m_nDocType:I

    invoke-static {v2}, Lcom/infraware/common/Utils;->getSaveExtByDocType(I)Ljava/lang/String;

    move-result-object v0

    .line 633
    .local v0, szDocExt:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 634
    invoke-static {p0, p0}, Lcom/infraware/common/Utils;->save2003HelperDialog(Lcom/infraware/common/UxDocEditorBase;Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 637
    :goto_0
    return-void

    .line 636
    :cond_0
    iget-object v2, p0, Lcom/infraware/common/UxDocEditorBase;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    iget-object v3, p0, Lcom/infraware/common/UxDocEditorBase;->m_strOpenPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/infraware/common/CoCoreFunctionInterface;->saveDocument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/common/UxDocEditorBase;->m_strSavePath:Ljava/lang/String;

    goto :goto_0
.end method

.method public processKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "a_oEvent"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 641
    iget-object v0, p0, Lcom/infraware/common/UxDocEditorBase;->m_oToolBarUpdater:Lcom/infraware/common/UxToolBarUpdater;

    if-nez v0, :cond_0

    move v0, v2

    .line 676
    :goto_0
    return v0

    .line 643
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_1
    move v0, v2

    .line 676
    goto :goto_0

    .line 646
    :sswitch_0
    iget-object v0, p0, Lcom/infraware/common/UxDocEditorBase;->m_oToolBarUpdater:Lcom/infraware/common/UxToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/common/UxToolBarUpdater;->canCopyCut()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 648
    iget-object v0, p0, Lcom/infraware/common/UxDocEditorBase;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->copy()V

    move v0, v1

    .line 649
    goto :goto_0

    .line 653
    :sswitch_1
    iget-object v0, p0, Lcom/infraware/common/UxDocEditorBase;->m_oToolBarUpdater:Lcom/infraware/common/UxToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/common/UxToolBarUpdater;->canCopyCut()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 655
    iget-object v0, p0, Lcom/infraware/common/UxDocEditorBase;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->cut()V

    move v0, v1

    .line 656
    goto :goto_0

    .line 660
    :sswitch_2
    iget-object v0, p0, Lcom/infraware/common/UxDocEditorBase;->m_oToolBarUpdater:Lcom/infraware/common/UxToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/common/UxToolBarUpdater;->canPaste()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 662
    iget-object v0, p0, Lcom/infraware/common/UxDocEditorBase;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->paste()V

    move v0, v1

    .line 663
    goto :goto_0

    .line 668
    :sswitch_3
    iget-object v0, p0, Lcom/infraware/common/UxDocEditorBase;->m_oToolBarUpdater:Lcom/infraware/common/UxToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/common/UxToolBarUpdater;->canUndo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 670
    iget-object v0, p0, Lcom/infraware/common/UxDocEditorBase;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->unDo()V

    move v0, v1

    .line 671
    goto :goto_0

    .line 643
    nop

    :sswitch_data_0
    .sparse-switch
        0x1f -> :sswitch_0
        0x32 -> :sswitch_2
        0x34 -> :sswitch_1
        0x36 -> :sswitch_3
    .end sparse-switch
.end method

.method public processTextChangedEvent(ZLjava/lang/CharSequence;III)Z
    .locals 1
    .parameter "bComposing"
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 681
    const/4 v0, 0x0

    return v0
.end method

.method public setSavePath(Ljava/lang/String;)V
    .locals 0
    .parameter "a_strNewPath"

    .prologue
    .line 458
    iput-object p1, p0, Lcom/infraware/common/UxDocEditorBase;->m_strSavePath:Ljava/lang/String;

    .line 459
    return-void
.end method
