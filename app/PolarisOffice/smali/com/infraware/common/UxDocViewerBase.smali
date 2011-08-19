.class public abstract Lcom/infraware/common/UxDocViewerBase;
.super Landroid/app/Activity;
.source "UxDocViewerBase.java"

# interfaces
.implements Lcom/infraware/common/UxSdCardHandler;
.implements Lcom/infraware/evengine/E$EV_EDITMODETYPE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/common/UxDocViewerBase$OnOrientationChangeListener;
    }
.end annotation


# static fields
.field protected static final FALSE:I = 0x0

.field private static final LOG_CAT:Ljava/lang/String; = "UxDocViewerBase"

.field protected static final TRUE:I = 0x1

.field public static g_bProgressFlag:Z


# instance fields
.field private final DEFAULT_PATH:Ljava/lang/String;

.field public m_bLoadComplete:Z

.field protected m_bNewFile:Z

.field public m_bProcessingError:Z

.field public m_bReplaceAll:Z

.field protected m_bWebfile:Z

.field private m_nDocType:I

.field public m_nEV_VIEW_MODE:I

.field private m_nNewPptType:I

.field protected m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

.field protected m_oEventListener:Lcom/infraware/common/UiCoreEventListener;

.field protected m_oGestureDetector:Lcom/infraware/common/UxGestureDetector;

.field protected m_oGestureDomain:Lcom/infraware/common/UxGestureDomain;

.field public m_oHandler:Landroid/os/Handler;

.field private m_oLocaleType:Ljava/util/Locale;

.field protected m_oMsgDialog:Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

.field private m_oOrientationChangedListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/infraware/common/UxDocViewerBase$OnOrientationChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field protected m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

.field protected m_oSdListener:Lcom/infraware/common/UxSdCardListener;

.field protected m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

.field protected m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

.field public m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

.field m_oToast:Landroid/widget/Toast;

.field protected m_oViewerCB:Lcom/infraware/common/ICoDocViewerCB;

.field public m_strOpenPath:Ljava/lang/String;

.field private m_szBookMarkPath:Ljava/lang/String;

.field private m_szTempPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Lcom/infraware/common/UxDocViewerBase;->g_bProgressFlag:Z

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    iput-object v1, p0, Lcom/infraware/common/UxDocViewerBase;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    .line 44
    iput v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_nEV_VIEW_MODE:I

    .line 45
    iput-object v1, p0, Lcom/infraware/common/UxDocViewerBase;->m_strOpenPath:Ljava/lang/String;

    .line 46
    iput v2, p0, Lcom/infraware/common/UxDocViewerBase;->m_nDocType:I

    .line 47
    iput-boolean v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_bNewFile:Z

    .line 48
    iput v2, p0, Lcom/infraware/common/UxDocViewerBase;->m_nNewPptType:I

    .line 51
    iput-object v1, p0, Lcom/infraware/common/UxDocViewerBase;->m_oViewerCB:Lcom/infraware/common/ICoDocViewerCB;

    .line 53
    iput-object v1, p0, Lcom/infraware/common/UxDocViewerBase;->m_oGestureDomain:Lcom/infraware/common/UxGestureDomain;

    .line 54
    iput-object v1, p0, Lcom/infraware/common/UxDocViewerBase;->m_oEventListener:Lcom/infraware/common/UiCoreEventListener;

    .line 55
    iput-object v1, p0, Lcom/infraware/common/UxDocViewerBase;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    .line 56
    iput-object v1, p0, Lcom/infraware/common/UxDocViewerBase;->m_oGestureDetector:Lcom/infraware/common/UxGestureDetector;

    .line 63
    iput-object v1, p0, Lcom/infraware/common/UxDocViewerBase;->m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    .line 64
    iput-object v1, p0, Lcom/infraware/common/UxDocViewerBase;->m_oHandler:Landroid/os/Handler;

    .line 65
    iput-object v1, p0, Lcom/infraware/common/UxDocViewerBase;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    .line 66
    iput-boolean v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_bLoadComplete:Z

    .line 68
    iput-object v1, p0, Lcom/infraware/common/UxDocViewerBase;->m_oLocaleType:Ljava/util/Locale;

    .line 70
    iput-object v1, p0, Lcom/infraware/common/UxDocViewerBase;->m_oToast:Landroid/widget/Toast;

    .line 71
    iput-object v1, p0, Lcom/infraware/common/UxDocViewerBase;->m_oSdListener:Lcom/infraware/common/UxSdCardListener;

    .line 72
    iput-object v1, p0, Lcom/infraware/common/UxDocViewerBase;->m_oMsgDialog:Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    .line 73
    iput-boolean v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_bWebfile:Z

    .line 74
    iput-boolean v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_bProcessingError:Z

    .line 76
    iput-boolean v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_bReplaceAll:Z

    .line 78
    invoke-static {}, Lcom/infraware/filemanager/FmFileDefine;->getRootFileManagerPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->DEFAULT_PATH:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lcom/infraware/common/UxDocViewerBase;->m_szTempPath:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/infraware/common/UxDocViewerBase;->m_szBookMarkPath:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private getOpenFileInfo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 386
    invoke-virtual {p0}, Lcom/infraware/common/UxDocViewerBase;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 387
    .local v0, extras:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/infraware/common/UxDocViewerBase;->finish()V

    .line 390
    :cond_0
    const-string v1, "key_filename"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/common/UxDocViewerBase;->m_strOpenPath:Ljava/lang/String;

    .line 391
    const-string v1, "file_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/infraware/common/UxDocViewerBase;->m_nDocType:I

    .line 392
    const-string v1, "new_file"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/infraware/common/UxDocViewerBase;->m_bNewFile:Z

    .line 393
    const-string v1, "ppt_type"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/infraware/common/UxDocViewerBase;->m_nNewPptType:I

    .line 395
    const-string v1, "web_file"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/infraware/common/UxDocViewerBase;->m_bWebfile:Z

    .line 396
    return-void
.end method

.method private initThumnailmode()V
    .locals 3

    .prologue
    .line 317
    invoke-static {}, Lcom/infraware/evengine/ICoEngineInterface;->getInterface()Lcom/infraware/evengine/ICoEngineInterface;

    move-result-object v0

    .line 318
    .local v0, evInterface:Lcom/infraware/evengine/ICoEngineInterface;
    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetProperties()Lcom/infraware/evengine/EV$PROPERTIES;

    move-result-object v1

    .line 319
    .local v1, properties:Lcom/infraware/evengine/EV$PROPERTIES;
    const/16 v2, 0xa

    iput v2, v1, Lcom/infraware/evengine/EV$PROPERTIES;->nThumbnailPercent:I

    .line 320
    invoke-virtual {v0, v1}, Lcom/infraware/evengine/ICoEngineInterface;->ISetProperties(Lcom/infraware/evengine/EV$PROPERTIES;)V

    .line 321
    return-void
.end method


# virtual methods
.method public addOrientationChangedListener(Lcom/infraware/common/UxDocViewerBase$OnOrientationChangeListener;)V
    .locals 1
    .parameter "a_oListener"

    .prologue
    .line 443
    iget-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_oOrientationChangedListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 444
    return-void
.end method

.method public clearNewFile()V
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_bNewFile:Z

    .line 435
    return-void
.end method

.method protected abstract createHandler()V
.end method

.method protected deleteDirectory(Ljava/lang/String;)V
    .locals 5
    .parameter "path"

    .prologue
    .line 286
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 287
    .local v1, temp:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v3, :cond_1

    .line 293
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 295
    :cond_0
    return-void

    .line 289
    :cond_1
    aget-object v0, v2, v4

    .line 291
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 289
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_szTempPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/infraware/common/UxDocViewerBase;->DEFAULT_PATH:Ljava/lang/String;

    if-eq v0, v1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_szTempPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/infraware/common/UxDocViewerBase;->deleteDirectory(Ljava/lang/String;)V

    .line 272
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 273
    return-void
.end method

.method public getCoreInterface()Lcom/infraware/common/CoCoreFunctionInterface;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    return-object v0
.end method

.method public getDocType()I
    .locals 1

    .prologue
    .line 415
    iget v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_nDocType:I

    return v0
.end method

.method public getGestureDetector()Lcom/infraware/common/UxGestureDetector;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_oGestureDetector:Lcom/infraware/common/UxGestureDetector;

    return-object v0
.end method

.method public getSearchBar()Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    return-object v0
.end method

.method public getSurfaceView()Lcom/infraware/common/UxSurfaceView;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    return-object v0
.end method

.method public getViewMode()I
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_nEV_VIEW_MODE:I

    return v0
.end method

.method public isNewFile()Z
    .locals 1

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_bNewFile:Z

    return v0
.end method

.method public isReadOnly()Z
    .locals 2

    .prologue
    .line 427
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/infraware/common/UxDocViewerBase;->m_strOpenPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 428
    .local v0, oFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 429
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isWebFile()Z
    .locals 1

    .prologue
    .line 422
    iget-boolean v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_bWebfile:Z

    return v0
.end method

.method protected makeDirectory(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 276
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 279
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    const/4 v1, 0x1

    .line 282
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    .line 325
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 327
    iget-object v1, p0, Lcom/infraware/common/UxDocViewerBase;->m_oLocaleType:Ljava/util/Locale;

    if-nez v1, :cond_3

    .line 328
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/infraware/common/UxDocViewerBase;->m_oLocaleType:Ljava/util/Locale;

    .line 338
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/infraware/common/UxDocViewerBase;->m_oOrientationChangedListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 344
    iget-object v1, p0, Lcom/infraware/common/UxDocViewerBase;->m_oHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 345
    iget-object v1, p0, Lcom/infraware/common/UxDocViewerBase;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v1}, Lcom/infraware/common/CoCoreFunctionInterface;->getZoomViewMode()Lcom/infraware/common/UserClasses$VIEW_MODE;

    move-result-object v1

    sget-object v2, Lcom/infraware/common/UserClasses$VIEW_MODE;->VIEW_FIT_TO_WHOLE_PAGE:Lcom/infraware/common/UserClasses$VIEW_MODE;

    if-eq v1, v2, :cond_1

    .line 346
    iget-object v1, p0, Lcom/infraware/common/UxDocViewerBase;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v1}, Lcom/infraware/common/CoCoreFunctionInterface;->getZoomViewMode()Lcom/infraware/common/UserClasses$VIEW_MODE;

    move-result-object v1

    sget-object v2, Lcom/infraware/common/UserClasses$VIEW_MODE;->VIEW_FIT_TO_WIDTH:Lcom/infraware/common/UserClasses$VIEW_MODE;

    if-ne v1, v2, :cond_2

    .line 347
    :cond_1
    iget-object v1, p0, Lcom/infraware/common/UxDocViewerBase;->m_oHandler:Landroid/os/Handler;

    const/16 v2, -0x118

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 367
    :cond_2
    return-void

    .line 331
    :cond_3
    iget-object v1, p0, Lcom/infraware/common/UxDocViewerBase;->m_oLocaleType:Ljava/util/Locale;

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 333
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/infraware/common/UxDocViewerBase;->m_oLocaleType:Ljava/util/Locale;

    .line 334
    invoke-virtual {p0}, Lcom/infraware/common/UxDocViewerBase;->onLocale()V

    goto :goto_0

    .line 338
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/common/UxDocViewerBase$OnOrientationChangeListener;

    .line 339
    .local v0, oListener:Lcom/infraware/common/UxDocViewerBase$OnOrientationChangeListener;
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-interface {v0, v2}, Lcom/infraware/common/UxDocViewerBase$OnOrientationChangeListener;->onOnrientationChanged(I)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    .line 139
    const v0, 0x7f03006e

    invoke-virtual {p0, v0}, Lcom/infraware/common/UxDocViewerBase;->setContentView(I)V

    .line 142
    invoke-virtual {p0}, Lcom/infraware/common/UxDocViewerBase;->createHandler()V

    .line 143
    iget-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_oHandler:Landroid/os/Handler;

    const/16 v1, -0x102

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 145
    invoke-virtual {p0}, Lcom/infraware/common/UxDocViewerBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_oLocaleType:Ljava/util/Locale;

    .line 147
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/infraware/common/UxDocViewerBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    .line 148
    .local v8, display:Landroid/view/Display;
    const v0, 0x7f0c0160

    invoke-virtual {p0, v0}, Lcom/infraware/common/UxDocViewerBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/infraware/common/UxSurfaceView;

    iput-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/infraware/common/UxDocViewerBase;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.polaris_temp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_szTempPath:Ljava/lang/String;

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/infraware/common/UxDocViewerBase;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/bookmark/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_szBookMarkPath:Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_szTempPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/infraware/common/UxDocViewerBase;->makeDirectory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->DEFAULT_PATH:Ljava/lang/String;

    iput-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_szTempPath:Ljava/lang/String;

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_szBookMarkPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/infraware/common/UxDocViewerBase;->makeDirectory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->DEFAULT_PATH:Ljava/lang/String;

    iput-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_szBookMarkPath:Ljava/lang/String;

    .line 161
    :cond_1
    invoke-direct {p0}, Lcom/infraware/common/UxDocViewerBase;->getOpenFileInfo()V

    .line 162
    invoke-static {}, Lcom/infraware/common/CoCoreFunctionInterface;->getInstance()Lcom/infraware/common/CoCoreFunctionInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    .line 163
    new-instance v0, Lcom/infraware/common/UiCoreEventListener;

    invoke-direct {v0, p0}, Lcom/infraware/common/UiCoreEventListener;-><init>(Lcom/infraware/common/UxDocViewerBase;)V

    iput-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_oEventListener:Lcom/infraware/common/UiCoreEventListener;

    .line 165
    iget-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    iget v1, p0, Lcom/infraware/common/UxDocViewerBase;->m_nDocType:I

    invoke-virtual {v0, v1}, Lcom/infraware/common/CoCoreFunctionInterface;->setDocumentType(I)V

    .line 166
    iget-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    iget-object v2, p0, Lcom/infraware/common/UxDocViewerBase;->m_strOpenPath:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/infraware/common/UxDocViewerBase;->m_bNewFile:Z

    iget v4, p0, Lcom/infraware/common/UxDocViewerBase;->m_nNewPptType:I

    iget v5, p0, Lcom/infraware/common/UxDocViewerBase;->m_nDocType:I

    iget-object v6, p0, Lcom/infraware/common/UxDocViewerBase;->m_szTempPath:Ljava/lang/String;

    iget-object v7, p0, Lcom/infraware/common/UxDocViewerBase;->m_szBookMarkPath:Ljava/lang/String;

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/infraware/common/UxSurfaceView;->setInit(Landroid/content/Context;Ljava/lang/String;ZIILjava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v8}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/infraware/common/CoCoreFunctionInterface;->initializeEngine(II)V

    .line 169
    new-instance v0, Lcom/infraware/common/ICoDocViewerCB;

    iget-object v1, p0, Lcom/infraware/common/UxDocViewerBase;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    invoke-direct {v0, v1, p0}, Lcom/infraware/common/ICoDocViewerCB;-><init>(Lcom/infraware/common/UxSurfaceView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_oViewerCB:Lcom/infraware/common/ICoDocViewerCB;

    .line 172
    new-instance v0, Lcom/infraware/common/UxSdCardListener;

    invoke-direct {v0, p0, p0}, Lcom/infraware/common/UxSdCardListener;-><init>(Landroid/app/Activity;Lcom/infraware/common/UxSdCardHandler;)V

    iput-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_oSdListener:Lcom/infraware/common/UxSdCardListener;

    .line 173
    iget-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_oSdListener:Lcom/infraware/common/UxSdCardListener;

    invoke-virtual {v0}, Lcom/infraware/common/UxSdCardListener;->registerListener()V

    .line 177
    iget-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_strOpenPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/infraware/common/UxDocViewerBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 179
    invoke-direct {p0}, Lcom/infraware/common/UxDocViewerBase;->initThumnailmode()V

    .line 181
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_oOrientationChangedListeners:Ljava/util/LinkedList;

    .line 183
    invoke-virtual {p0, v9}, Lcom/infraware/common/UxDocViewerBase;->setProgressBarIndeterminateVisibility(Z)V

    .line 184
    invoke-virtual {p0, v9}, Lcom/infraware/common/UxDocViewerBase;->setProgressBarVisibility(Z)V

    .line 187
    invoke-static {}, Lcom/infraware/PolarisOffice;->getInstance()Lcom/infraware/PolarisOffice;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/infraware/PolarisOffice;->setCurrentViewer(Lcom/infraware/common/UxDocViewerBase;)V

    .line 189
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 190
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_oSdListener:Lcom/infraware/common/UxSdCardListener;

    invoke-virtual {v0}, Lcom/infraware/common/UxSdCardListener;->unRegisterListener()V

    .line 263
    invoke-static {}, Lcom/infraware/PolarisOffice;->getInstance()Lcom/infraware/PolarisOffice;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/infraware/PolarisOffice;->setCurrentViewer(Lcom/infraware/common/UxDocViewerBase;)V

    .line 264
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 265
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "canvas"
    .parameter "content"

    .prologue
    .line 377
    return-void
.end method

.method protected onLoadComplete(Z)V
    .locals 4
    .parameter "a_bNewDoc"

    .prologue
    .line 116
    iget-object v1, p0, Lcom/infraware/common/UxDocViewerBase;->m_oHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 117
    .local v0, msg:Landroid/os/Message;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 118
    const/16 v1, -0x101

    iput v1, v0, Landroid/os/Message;->what:I

    .line 119
    iget-object v1, p0, Lcom/infraware/common/UxDocViewerBase;->m_oHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 120
    return-void
.end method

.method public abstract onLocale()V
.end method

.method public onLongPress(II)V
    .locals 0
    .parameter "a_nPosX"
    .parameter "a_nPosY"

    .prologue
    .line 380
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 194
    invoke-static {p0}, Lcom/infraware/filemanager/FmSettingActivity;->getFmSetting_PivotLock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    invoke-static {p0}, Lcom/infraware/filemanager/FmSettingActivity;->getFmSetting_IsLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/infraware/common/UxDocViewerBase;->setRequestedOrientation(I)V

    .line 205
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 206
    return-void

    .line 199
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/infraware/common/UxDocViewerBase;->setRequestedOrientation(I)V

    goto :goto_0

    .line 203
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/infraware/common/UxDocViewerBase;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public onSdCardStatusChanged(Z)V
    .locals 5
    .parameter "a_bRemoved"

    .prologue
    const/4 v4, 0x0

    .line 210
    if-eqz p1, :cond_2

    .line 212
    invoke-virtual {p0}, Lcom/infraware/common/UxDocViewerBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a02a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, szTitle:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/infraware/common/UxDocViewerBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a035e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, szMsg:Ljava/lang/String;
    iget-object v2, p0, Lcom/infraware/common/UxDocViewerBase;->m_oMsgDialog:Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/infraware/common/UxDocViewerBase;->m_oMsgDialog:Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    invoke-virtual {v2}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->isVisiable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    iget-object v2, p0, Lcom/infraware/common/UxDocViewerBase;->m_oMsgDialog:Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    invoke-virtual {v2, v4}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->show(Z)V

    .line 217
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/infraware/common/UxDocViewerBase;->m_oMsgDialog:Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    .line 219
    :cond_0
    new-instance v2, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Dialog1Button:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-direct {v2, p0, v1, v0, v3}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V

    iput-object v2, p0, Lcom/infraware/common/UxDocViewerBase;->m_oMsgDialog:Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    .line 220
    iget-object v2, p0, Lcom/infraware/common/UxDocViewerBase;->m_oMsgDialog:Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    invoke-virtual {v2}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->createView()V

    .line 221
    iget-object v2, p0, Lcom/infraware/common/UxDocViewerBase;->m_oMsgDialog:Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    new-instance v3, Lcom/infraware/common/UxDocViewerBase$1;

    invoke-direct {v3, p0}, Lcom/infraware/common/UxDocViewerBase$1;-><init>(Lcom/infraware/common/UxDocViewerBase;)V

    invoke-virtual {v2, v3}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 229
    iget-object v2, p0, Lcom/infraware/common/UxDocViewerBase;->m_oMsgDialog:Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->show(Z)V

    .line 238
    .end local v0           #szMsg:Ljava/lang/String;
    .end local v1           #szTitle:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 233
    :cond_2
    iget-object v2, p0, Lcom/infraware/common/UxDocViewerBase;->m_oMsgDialog:Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/infraware/common/UxDocViewerBase;->m_oMsgDialog:Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    invoke-virtual {v2}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->isVisiable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 235
    iget-object v2, p0, Lcom/infraware/common/UxDocViewerBase;->m_oMsgDialog:Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    invoke-virtual {v2, v4}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->show(Z)V

    goto :goto_0
.end method

.method public onSheetEditFocus()V
    .locals 0

    .prologue
    .line 381
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_oToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_oToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_oToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 255
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 256
    return-void
.end method

.method public processKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "a_oEvent"

    .prologue
    .line 455
    const/4 v0, 0x0

    return v0
.end method

.method public processKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "a_oEvent"

    .prologue
    .line 460
    const/4 v0, 0x0

    return v0
.end method

.method public removeOrientationChangedListener(Lcom/infraware/common/UxDocViewerBase$OnOrientationChangeListener;)V
    .locals 1
    .parameter "a_oListener"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_oOrientationChangedListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 448
    return-void
.end method

.method public setSearchBar(Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;)V
    .locals 0
    .parameter "a_oSearchBar"

    .prologue
    .line 399
    iput-object p1, p0, Lcom/infraware/common/UxDocViewerBase;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    .line 400
    return-void
.end method

.method public setSearchMode(Z)V
    .locals 1
    .parameter "a_bSearchMode"

    .prologue
    .line 439
    iget-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_oGestureDetector:Lcom/infraware/common/UxGestureDetector;

    invoke-virtual {v0, p1}, Lcom/infraware/common/UxGestureDetector;->setSearchMode(Z)V

    .line 440
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "a_strTitle"

    .prologue
    .line 299
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/common/UxDocViewerBase;->m_strOpenPath:Ljava/lang/String;

    .line 302
    iget-object v2, p0, Lcom/infraware/common/UxDocViewerBase;->m_strOpenPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/infraware/common/Utils;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, strTitle:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/infraware/common/UxDocViewerBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0349

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, strReadOnly:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/infraware/common/UxDocViewerBase;->isReadOnly()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 313
    :cond_0
    invoke-super {p0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 314
    return-void
.end method

.method public showReplacebar()V
    .locals 0

    .prologue
    .line 248
    return-void
.end method

.method public showSearchbar()V
    .locals 0

    .prologue
    .line 243
    return-void
.end method

.method public showTitleProgress(Z)V
    .locals 0
    .parameter "a_bShow"

    .prologue
    .line 373
    invoke-virtual {p0, p1}, Lcom/infraware/common/UxDocViewerBase;->setProgressBarIndeterminateVisibility(Z)V

    .line 374
    return-void
.end method

.method protected showToast(II)V
    .locals 1
    .parameter "a_nToastInt"
    .parameter "a_nToastDuration"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_oToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 99
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_oToast:Landroid/widget/Toast;

    .line 108
    :goto_0
    iget-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_oToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 109
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_oToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_oToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_oToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 106
    iget-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_oToast:Landroid/widget/Toast;

    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_0
.end method

.method public showToast(Ljava/lang/String;I)V
    .locals 1
    .parameter "a_strToastString"
    .parameter "a_nToastDuration"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_oToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 85
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_oToast:Landroid/widget/Toast;

    .line 94
    :goto_0
    iget-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_oToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 95
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_oToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_oToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_oToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/infraware/common/UxDocViewerBase;->m_oToast:Landroid/widget/Toast;

    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_0
.end method
