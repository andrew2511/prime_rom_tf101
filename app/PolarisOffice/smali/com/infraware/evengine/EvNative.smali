.class Lcom/infraware/evengine/EvNative;
.super Ljava/lang/Object;
.source "EvNative.java"

# interfaces
.implements Lcom/infraware/evengine/E$EV_GUI_EVENT;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private LOG_CAT:Ljava/lang/String;

.field private mDvListener:Lcom/infraware/evengine/EvListener$ViewerListener;

.field private mEvCodeConversion:Lcom/infraware/evengine/EvCodeConversion;

.field private mEvImageUtil:Lcom/infraware/evengine/EvImageUtil;

.field private mEvListener:Lcom/infraware/evengine/EvListener$EditorListener;

.field private mEvPptListener:Lcom/infraware/evengine/EvListener$PptEditorListener;

.field private mEvSheetListener:Lcom/infraware/evengine/EvListener$SheetEditorListener;

.field private mEvWordListener:Lcom/infraware/evengine/EvListener$WordEditorListener;

.field private mInterface:Lcom/infraware/evengine/ICoEngineInterface;

.field private mPvListener:Lcom/infraware/evengine/EvListener$PreviewListener;

.field private mSystemFontFilePaths:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/infraware/evengine/EvNative;->$assertionsDisabled:Z

    .line 483
    const-string v0, "polarisoffice"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void

    .line 15
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/infraware/evengine/ICoEngineInterface;)V
    .locals 2
    .parameter "a_interface"

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "EvNative"

    iput-object v0, p0, Lcom/infraware/evengine/EvNative;->LOG_CAT:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Lcom/infraware/evengine/EvNative;->mInterface:Lcom/infraware/evengine/ICoEngineInterface;

    .line 19
    iput-object v1, p0, Lcom/infraware/evengine/EvNative;->mDvListener:Lcom/infraware/evengine/EvListener$ViewerListener;

    .line 20
    iput-object v1, p0, Lcom/infraware/evengine/EvNative;->mEvListener:Lcom/infraware/evengine/EvListener$EditorListener;

    .line 21
    iput-object v1, p0, Lcom/infraware/evengine/EvNative;->mEvWordListener:Lcom/infraware/evengine/EvListener$WordEditorListener;

    .line 22
    iput-object v1, p0, Lcom/infraware/evengine/EvNative;->mEvPptListener:Lcom/infraware/evengine/EvListener$PptEditorListener;

    .line 23
    iput-object v1, p0, Lcom/infraware/evengine/EvNative;->mEvSheetListener:Lcom/infraware/evengine/EvListener$SheetEditorListener;

    .line 24
    iput-object v1, p0, Lcom/infraware/evengine/EvNative;->mEvCodeConversion:Lcom/infraware/evengine/EvCodeConversion;

    .line 25
    iput-object v1, p0, Lcom/infraware/evengine/EvNative;->mEvImageUtil:Lcom/infraware/evengine/EvImageUtil;

    .line 26
    iput-object v1, p0, Lcom/infraware/evengine/EvNative;->mSystemFontFilePaths:[Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/infraware/evengine/EvNative;->mPvListener:Lcom/infraware/evengine/EvListener$PreviewListener;

    .line 68
    sget-boolean v0, Lcom/infraware/evengine/EvNative;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mInterface:Lcom/infraware/evengine/ICoEngineInterface;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 70
    :cond_0
    iput-object p1, p0, Lcom/infraware/evengine/EvNative;->mInterface:Lcom/infraware/evengine/ICoEngineInterface;

    .line 71
    invoke-static {}, Lcom/infraware/evengine/EvCodeConversion;->getCodeConversion()Lcom/infraware/evengine/EvCodeConversion;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvCodeConversion:Lcom/infraware/evengine/EvCodeConversion;

    .line 72
    invoke-static {}, Lcom/infraware/evengine/EvImageUtil;->getEvImageUtil()Lcom/infraware/evengine/EvImageUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvImageUtil:Lcom/infraware/evengine/EvImageUtil;

    .line 73
    invoke-direct {p0}, Lcom/infraware/evengine/EvNative;->MakeSystemFontFileNames()V

    .line 74
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvCodeConversion:Lcom/infraware/evengine/EvCodeConversion;

    iget-object v1, p0, Lcom/infraware/evengine/EvNative;->mEvImageUtil:Lcom/infraware/evengine/EvImageUtil;

    invoke-direct {p0, v0, v1}, Lcom/infraware/evengine/EvNative;->IBeginNative(Lcom/infraware/evengine/EvCodeConversion;Lcom/infraware/evengine/EvImageUtil;)V

    .line 75
    return-void
.end method

.method private GetBitmap(II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "w"
    .parameter "h"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mDvListener:Lcom/infraware/evengine/EvListener$ViewerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mDvListener:Lcom/infraware/evengine/EvListener$ViewerListener;

    invoke-interface {v0, p1, p2}, Lcom/infraware/evengine/EvListener$ViewerListener;->GetBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 338
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private GetThumbnailBitmap(III)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "nPageNum"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mDvListener:Lcom/infraware/evengine/EvListener$ViewerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mDvListener:Lcom/infraware/evengine/EvListener$ViewerListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/infraware/evengine/EvListener$ViewerListener;->GetThumbnailBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native IBeginNative(Lcom/infraware/evengine/EvCodeConversion;Lcom/infraware/evengine/EvImageUtil;)V
.end method

.method private MakeSystemFontFileNames()V
    .locals 15

    .prologue
    .line 31
    const/4 v13, 0x7

    new-array v9, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "androidclock"

    aput-object v14, v9, v13

    const/4 v13, 0x1

    const-string v14, "clockopia"

    aput-object v14, v9, v13

    const/4 v13, 0x2

    const-string v14, "bold"

    aput-object v14, v9, v13

    const/4 v13, 0x3

    const-string v14, "italic"

    aput-object v14, v9, v13

    const/4 v13, 0x4

    const-string v14, "ebook"

    aput-object v14, v9, v13

    const/4 v13, 0x5

    const-string v14, "iris"

    aput-object v14, v9, v13

    const/4 v13, 0x6

    const-string v14, "subset"

    aput-object v14, v9, v13

    .line 37
    .local v9, ignoreString:[Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v7, fontPaths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v13, Ljava/io/File;

    const-string v14, "/system/fonts/"

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 39
    .local v4, fontFiles:[Ljava/io/File;
    array-length v3, v4

    .line 40
    .local v3, fontCount:I
    const-wide/16 v11, 0x0

    .line 41
    .local v11, mostBigFileSize:J
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-lt v8, v3, :cond_0

    .line 60
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 61
    .local v6, fontNameSize:I
    new-array v13, v6, [Ljava/lang/String;

    iput-object v13, p0, Lcom/infraware/evengine/EvNative;->mSystemFontFilePaths:[Ljava/lang/String;

    .line 62
    const/4 v8, 0x0

    :goto_1
    if-lt v8, v6, :cond_5

    .line 64
    return-void

    .line 42
    .end local v6           #fontNameSize:I
    :cond_0
    aget-object v13, v4, v8

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 43
    .local v5, fontName:Ljava/lang/String;
    aget-object v13, v4, v8

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 45
    .local v1, fileSize:J
    const/4 v0, 0x0

    .line 46
    .local v0, bMatch:Z
    const/4 v10, 0x0

    .local v10, j:I
    :goto_2
    array-length v13, v9

    if-lt v10, v13, :cond_3

    .line 50
    :cond_1
    if-nez v0, :cond_2

    .line 51
    cmp-long v13, v11, v1

    if-gez v13, :cond_4

    .line 52
    move-wide v11, v1

    .line 53
    const/4 v13, 0x0

    aget-object v14, v4, v8

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v7, v13, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 41
    :cond_2
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 47
    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "(?i).*"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v14, v9, v10

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".*"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 56
    :cond_4
    aget-object v13, v4, v8

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 63
    .end local v0           #bMatch:Z
    .end local v1           #fileSize:J
    .end local v5           #fontName:Ljava/lang/String;
    .end local v10           #j:I
    .restart local v6       #fontNameSize:I
    :cond_5
    iget-object v13, p0, Lcom/infraware/evengine/EvNative;->mSystemFontFilePaths:[Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v13, v8

    .line 62
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method private OnBookMarkEditorMode()V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvListener:Lcom/infraware/evengine/EvListener$EditorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvListener:Lcom/infraware/evengine/EvListener$EditorListener;

    invoke-interface {v0}, Lcom/infraware/evengine/EvListener$EditorListener;->OnBookMarkEditorMode()V

    :cond_0
    return-void
.end method

.method private OnCloseDoc()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mDvListener:Lcom/infraware/evengine/EvListener$ViewerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mDvListener:Lcom/infraware/evengine/EvListener$ViewerListener;

    invoke-interface {v0}, Lcom/infraware/evengine/EvListener$ViewerListener;->OnCloseDoc()V

    :cond_0
    return-void
.end method

.method private OnDrawBitmap(III)V
    .locals 3
    .parameter "nCallId"
    .parameter "bShowAutomap"
    .parameter "nCurrentMode"

    .prologue
    const v2, 0xffff

    .line 342
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->EV()Lcom/infraware/evengine/EV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getConfigInfo()Lcom/infraware/evengine/EV$CONFIG_INFO;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/infraware/evengine/EvNative;->IGetConfig(Lcom/infraware/evengine/EV$CONFIG_INFO;)V

    .line 343
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->EV()Lcom/infraware/evengine/EV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getScreenInfo()Lcom/infraware/evengine/EV$SCREEN_INFO;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/infraware/evengine/EvNative;->IGetScreenPos(Lcom/infraware/evengine/EV$SCREEN_INFO;)V

    .line 345
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->EV()Lcom/infraware/evengine/EV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getScrollInfoEditor()Lcom/infraware/evengine/EV$SCROLLINFO_EDITOR;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/infraware/evengine/EvNative;->IGetScrollInfo_Editor(Lcom/infraware/evengine/EV$SCROLLINFO_EDITOR;)V

    .line 346
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->EV()Lcom/infraware/evengine/EV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getCaretInfoEvent()Lcom/infraware/evengine/EV$CARET_INFO;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/infraware/evengine/EvNative;->IGetCaretInfo(Lcom/infraware/evengine/EV$CARET_INFO;)V

    .line 347
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvListener:Lcom/infraware/evengine/EvListener$EditorListener;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0, p3}, Lcom/infraware/evengine/ICoEngineInterface;->ISetEditorMode_Editor(I)V

    .line 351
    :cond_0
    if-ne p1, v2, :cond_1

    .line 352
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->LOG_CAT:Ljava/lang/String;

    const-string v1, "CallId == eEV_GUI_MAX_EVENT"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mDvListener:Lcom/infraware/evengine/EvListener$ViewerListener;

    if-eqz v0, :cond_2

    if-eq p1, v2, :cond_2

    .line 355
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mDvListener:Lcom/infraware/evengine/EvListener$ViewerListener;

    invoke-interface {v0, p1, p2}, Lcom/infraware/evengine/EvListener$ViewerListener;->OnDrawBitmap(II)V

    .line 356
    :cond_2
    return-void
.end method

.method private OnDrawPreviewBitmap()V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mPvListener:Lcom/infraware/evengine/EvListener$PreviewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mPvListener:Lcom/infraware/evengine/EvListener$PreviewListener;

    invoke-interface {v0}, Lcom/infraware/evengine/EvListener$PreviewListener;->OnDrawPreviewBitmap()V

    :cond_0
    return-void
.end method

.method private OnDrawThumbnailBitmap(I)V
    .locals 1
    .parameter "nPageNum"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mDvListener:Lcom/infraware/evengine/EvListener$ViewerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mDvListener:Lcom/infraware/evengine/EvListener$ViewerListener;

    invoke-interface {v0, p1}, Lcom/infraware/evengine/EvListener$ViewerListener;->OnDrawThumbnailBitmap(I)V

    :cond_0
    return-void
.end method

.method private OnEditCopyCut(ILjava/lang/String;)V
    .locals 1
    .parameter "nType"
    .parameter "str"

    .prologue
    .line 405
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvListener:Lcom/infraware/evengine/EvListener$EditorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvListener:Lcom/infraware/evengine/EvListener$EditorListener;

    invoke-interface {v0, p1, p2}, Lcom/infraware/evengine/EvListener$EditorListener;->OnEditCopyCut(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private OnEditOrViewMode(II)V
    .locals 1
    .parameter "bEditMode"
    .parameter "EV_EDITMODETYPE"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvListener:Lcom/infraware/evengine/EvListener$EditorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvListener:Lcom/infraware/evengine/EvListener$EditorListener;

    invoke-interface {v0, p1, p2}, Lcom/infraware/evengine/EvListener$EditorListener;->OnEditOrViewMode(II)V

    :cond_0
    return-void
.end method

.method private OnExitPreviewMode()V
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mPvListener:Lcom/infraware/evengine/EvListener$PreviewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mPvListener:Lcom/infraware/evengine/EvListener$PreviewListener;

    invoke-interface {v0}, Lcom/infraware/evengine/EvListener$PreviewListener;->OnExitPreviewMode()V

    :cond_0
    return-void
.end method

.method private OnFinalizeComplete()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->OnFinalizeComplete()V

    return-void
.end method

.method private OnGetDeviceInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    invoke-static {}, Lcom/infraware/PolarisOffice;->getInstance()Lcom/infraware/PolarisOffice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/PolarisOffice;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    const-string v0, "Slider SL101"

    .line 380
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    goto :goto_0
.end method

.method private OnGetFormulaFieldSelection()[I
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvSheetListener:Lcom/infraware/evengine/EvListener$SheetEditorListener;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvSheetListener:Lcom/infraware/evengine/EvListener$SheetEditorListener;

    invoke-interface {v0}, Lcom/infraware/evengine/EvListener$SheetEditorListener;->OnGetFormulaFieldSelection()[I

    move-result-object v0

    .line 436
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private OnGetFormulaFieldText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvSheetListener:Lcom/infraware/evengine/EvListener$SheetEditorListener;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvSheetListener:Lcom/infraware/evengine/EvListener$SheetEditorListener;

    invoke-interface {v0}, Lcom/infraware/evengine/EvListener$SheetEditorListener;->OnGetFormulaFieldText()Ljava/lang/String;

    move-result-object v0

    .line 425
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private OnGetPreviewBitmap(II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "w"
    .parameter "h"

    .prologue
    .line 475
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mPvListener:Lcom/infraware/evengine/EvListener$PreviewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mPvListener:Lcom/infraware/evengine/EvListener$PreviewListener;

    invoke-interface {v0, p1, p2}, Lcom/infraware/evengine/EvListener$PreviewListener;->OnGetPreviewBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private OnGetResStringID(I)Ljava/lang/String;
    .locals 1
    .parameter "nStrID"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mDvListener:Lcom/infraware/evengine/EvListener$ViewerListener;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mDvListener:Lcom/infraware/evengine/EvListener$ViewerListener;

    invoke-interface {v0, p1}, Lcom/infraware/evengine/EvListener$ViewerListener;->OnGetResID(I)Ljava/lang/String;

    move-result-object v0

    .line 362
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private OnGetSheetScrollIInfo()[I
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvSheetListener:Lcom/infraware/evengine/EvListener$SheetEditorListener;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvSheetListener:Lcom/infraware/evengine/EvListener$SheetEditorListener;

    invoke-interface {v0}, Lcom/infraware/evengine/EvListener$SheetEditorListener;->OnGetSheetScrollIInfo()[I

    move-result-object v0

    .line 447
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private OnHidAction(I)V
    .locals 1
    .parameter "EEV_HID_ACTION"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvListener:Lcom/infraware/evengine/EvListener$EditorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvListener:Lcom/infraware/evengine/EvListener$EditorListener;

    invoke-interface {v0, p1}, Lcom/infraware/evengine/EvListener$EditorListener;->OnHidAction(I)V

    :cond_0
    return-void
.end method

.method private OnIMEInsertMode()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvListener:Lcom/infraware/evengine/EvListener$EditorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvListener:Lcom/infraware/evengine/EvListener$EditorListener;

    invoke-interface {v0}, Lcom/infraware/evengine/EvListener$EditorListener;->OnIMEInsertMode()V

    :cond_0
    return-void
.end method

.method private OnInitComplete(I)V
    .locals 1
    .parameter "EEV_ERROR_CODE"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/ICoEngineInterface;->OnInitComplete(I)V

    return-void
.end method

.method private OnInsertTableMode(I)V
    .locals 1
    .parameter "EEV_TABLE_RESULT"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvListener:Lcom/infraware/evengine/EvListener$EditorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvListener:Lcom/infraware/evengine/EvListener$EditorListener;

    invoke-interface {v0, p1}, Lcom/infraware/evengine/EvListener$EditorListener;->OnInsertTableMode(I)V

    :cond_0
    return-void
.end method

.method private OnLoadComplete()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mDvListener:Lcom/infraware/evengine/EvListener$ViewerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mDvListener:Lcom/infraware/evengine/EvListener$ViewerListener;

    invoke-interface {v0}, Lcom/infraware/evengine/EvListener$ViewerListener;->OnLoadComplete()V

    :cond_0
    return-void
.end method

.method private OnLoadFail(I)V
    .locals 1
    .parameter "EEV_ERROR_CODE"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mDvListener:Lcom/infraware/evengine/EvListener$ViewerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mDvListener:Lcom/infraware/evengine/EvListener$ViewerListener;

    invoke-interface {v0, p1}, Lcom/infraware/evengine/EvListener$ViewerListener;->OnLoadFail(I)V

    :cond_0
    return-void
.end method

.method private OnNewDoc(I)V
    .locals 1
    .parameter "bOk"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvListener:Lcom/infraware/evengine/EvListener$EditorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvListener:Lcom/infraware/evengine/EvListener$EditorListener;

    invoke-interface {v0, p1}, Lcom/infraware/evengine/EvListener$EditorListener;->OnNewDoc(I)V

    :cond_0
    return-void
.end method

.method private OnNotify(I)V
    .locals 1
    .parameter "nNotifyCode"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mDvListener:Lcom/infraware/evengine/EvListener$ViewerListener;

    invoke-interface {v0, p1}, Lcom/infraware/evengine/EvListener$ViewerListener;->OnNotify(I)V

    .line 373
    return-void
.end method

.method private OnObjectPoints([I)V
    .locals 2
    .parameter "param"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvListener:Lcom/infraware/evengine/EvListener$EditorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvListener:Lcom/infraware/evengine/EvListener$EditorListener;

    iget-object v1, p0, Lcom/infraware/evengine/EvNative;->mInterface:Lcom/infraware/evengine/ICoEngineInterface;

    iget-object v1, v1, Lcom/infraware/evengine/ICoEngineInterface;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/evengine/EV;->getEditorObjectPointArray()Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->setValue([I)Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/infraware/evengine/EvListener$EditorListener;->OnObjectPoints(Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;)V

    :cond_0
    return-void
.end method

.method private OnPageMove(III)V
    .locals 1
    .parameter "nCurrentPage"
    .parameter "nTotalPage"
    .parameter "nErrorCode"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->EV()Lcom/infraware/evengine/EV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getConfigInfo()Lcom/infraware/evengine/EV$CONFIG_INFO;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/infraware/evengine/EvNative;->IGetConfig(Lcom/infraware/evengine/EV$CONFIG_INFO;)V

    .line 321
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mDvListener:Lcom/infraware/evengine/EvListener$ViewerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mDvListener:Lcom/infraware/evengine/EvListener$ViewerListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/infraware/evengine/EvListener$ViewerListener;->OnPageMove(III)V

    .line 322
    :cond_0
    return-void
.end method

.method private OnPptDrawSlidesBitmap(I)V
    .locals 1
    .parameter "pageNum"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvPptListener:Lcom/infraware/evengine/EvListener$PptEditorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvPptListener:Lcom/infraware/evengine/EvListener$PptEditorListener;

    invoke-interface {v0, p1}, Lcom/infraware/evengine/EvListener$PptEditorListener;->OnPptDrawSlidesBitmap(I)V

    :cond_0
    return-void
.end method

.method private OnPptGetSlidenoteBitmap(II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "w"
    .parameter "h"

    .prologue
    .line 459
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvPptListener:Lcom/infraware/evengine/EvListener$PptEditorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvPptListener:Lcom/infraware/evengine/EvListener$PptEditorListener;

    invoke-interface {v0, p1, p2}, Lcom/infraware/evengine/EvListener$PptEditorListener;->OnPptGetSlidenoteBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private OnPptGetSlidesBitmap(IIIILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "bBitmapImage"
    .parameter "nPageNum"
    .parameter "w"
    .parameter "h"
    .parameter "strSlideTitle"

    .prologue
    .line 457
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvPptListener:Lcom/infraware/evengine/EvListener$PptEditorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvPptListener:Lcom/infraware/evengine/EvListener$PptEditorListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/infraware/evengine/EvListener$PptEditorListener;->OnPptGetSlidesBitmap(IIIILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private OnPptOnDrawSlidenote(I)V
    .locals 1
    .parameter "pageNum"

    .prologue
    .line 460
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvPptListener:Lcom/infraware/evengine/EvListener$PptEditorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvPptListener:Lcom/infraware/evengine/EvListener$PptEditorListener;

    invoke-interface {v0, p1}, Lcom/infraware/evengine/EvListener$PptEditorListener;->OnPptOnDrawSlidenote(I)V

    :cond_0
    return-void
.end method

.method private OnPptSlideDelete()V
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvPptListener:Lcom/infraware/evengine/EvListener$PptEditorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvPptListener:Lcom/infraware/evengine/EvListener$PptEditorListener;

    invoke-interface {v0}, Lcom/infraware/evengine/EvListener$PptEditorListener;->OnPptSlideDelete()V

    :cond_0
    return-void
.end method

.method private OnPptSlideMoveNext()V
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvPptListener:Lcom/infraware/evengine/EvListener$PptEditorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvPptListener:Lcom/infraware/evengine/EvListener$PptEditorListener;

    invoke-interface {v0}, Lcom/infraware/evengine/EvListener$PptEditorListener;->OnPptSlideMoveNext()V

    :cond_0
    return-void
.end method

.method private OnPptSlideMovePrev()V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvPptListener:Lcom/infraware/evengine/EvListener$PptEditorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvPptListener:Lcom/infraware/evengine/EvListener$PptEditorListener;

    invoke-interface {v0}, Lcom/infraware/evengine/EvListener$PptEditorListener;->OnPptSlideMovePrev()V

    :cond_0
    return-void
.end method

.method private OnPptSlideexInsert()V
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvPptListener:Lcom/infraware/evengine/EvListener$PptEditorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvPptListener:Lcom/infraware/evengine/EvListener$PptEditorListener;

    invoke-interface {v0}, Lcom/infraware/evengine/EvListener$PptEditorListener;->OnPptSlideexInsert()V

    :cond_0
    return-void
.end method

.method private OnPptSlidenoteStart()V
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvPptListener:Lcom/infraware/evengine/EvListener$PptEditorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvPptListener:Lcom/infraware/evengine/EvListener$PptEditorListener;

    invoke-interface {v0}, Lcom/infraware/evengine/EvListener$PptEditorListener;->OnPptSlidenoteStart()V

    :cond_0
    return-void
.end method

.method private OnPreviewTimerStart()V
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mPvListener:Lcom/infraware/evengine/EvListener$PreviewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mPvListener:Lcom/infraware/evengine/EvListener$PreviewListener;

    invoke-interface {v0}, Lcom/infraware/evengine/EvListener$PreviewListener;->OnPreviewTimerStart()V

    :cond_0
    return-void
.end method

.method private OnPreviewTimerStop()V
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mPvListener:Lcom/infraware/evengine/EvListener$PreviewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mPvListener:Lcom/infraware/evengine/EvListener$PreviewListener;

    invoke-interface {v0}, Lcom/infraware/evengine/EvListener$PreviewListener;->OnPreviewTimerStop()V

    :cond_0
    return-void
.end method

.method private OnPrintMode(Ljava/lang/String;)V
    .locals 1
    .parameter "strPrintFile"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mDvListener:Lcom/infraware/evengine/EvListener$ViewerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mDvListener:Lcom/infraware/evengine/EvListener$ViewerListener;

    invoke-interface {v0, p1}, Lcom/infraware/evengine/EvListener$ViewerListener;->OnPrintMode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private OnPrintedCount(I)V
    .locals 1
    .parameter "nTotalCount"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mDvListener:Lcom/infraware/evengine/EvListener$ViewerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mDvListener:Lcom/infraware/evengine/EvListener$ViewerListener;

    invoke-interface {v0, p1}, Lcom/infraware/evengine/EvListener$ViewerListener;->OnPrintedCount(I)V

    :cond_0
    return-void
.end method

.method private OnProgress(II)V
    .locals 1
    .parameter "EV_PROGRESS_TYPE"
    .parameter "nProgressValue"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mDvListener:Lcom/infraware/evengine/EvListener$ViewerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mDvListener:Lcom/infraware/evengine/EvListener$ViewerListener;

    invoke-interface {v0, p1, p2}, Lcom/infraware/evengine/EvListener$ViewerListener;->OnProgress(II)V

    :cond_0
    return-void
.end method

.method private OnProgressStart(I)V
    .locals 1
    .parameter "EV_PROGRESS_TYPE"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mDvListener:Lcom/infraware/evengine/EvListener$ViewerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mDvListener:Lcom/infraware/evengine/EvListener$ViewerListener;

    invoke-interface {v0, p1}, Lcom/infraware/evengine/EvListener$ViewerListener;->OnProgressStart(I)V

    :cond_0
    return-void
.end method

.method private OnSaveDoc(I)V
    .locals 1
    .parameter "bOk"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvListener:Lcom/infraware/evengine/EvListener$EditorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvListener:Lcom/infraware/evengine/EvListener$EditorListener;

    invoke-interface {v0, p1}, Lcom/infraware/evengine/EvListener$EditorListener;->OnSaveDoc(I)V

    :cond_0
    return-void
.end method

.method private OnSearchMode(IIII)V
    .locals 1
    .parameter "EEV_SEARCH_TYPE"
    .parameter "nCurrentPage"
    .parameter "nTotalPage"
    .parameter "nReplaceAllCount"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mDvListener:Lcom/infraware/evengine/EvListener$ViewerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mDvListener:Lcom/infraware/evengine/EvListener$ViewerListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/infraware/evengine/EvListener$ViewerListener;->OnSearchMode(IIII)V

    :cond_0
    return-void
.end method

.method private OnSetFormulaFieldSelection(II)V
    .locals 1
    .parameter "nStartPos"
    .parameter "nEndPos"

    .prologue
    .line 440
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvSheetListener:Lcom/infraware/evengine/EvListener$SheetEditorListener;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvSheetListener:Lcom/infraware/evengine/EvListener$SheetEditorListener;

    invoke-interface {v0, p1, p2}, Lcom/infraware/evengine/EvListener$SheetEditorListener;->OnSetFormulaFieldSelection(II)V

    .line 442
    :cond_0
    return-void
.end method

.method private OnSetFormulaFieldText(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 429
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvSheetListener:Lcom/infraware/evengine/EvListener$SheetEditorListener;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvSheetListener:Lcom/infraware/evengine/EvListener$SheetEditorListener;

    invoke-interface {v0, p1}, Lcom/infraware/evengine/EvListener$SheetEditorListener;->OnSetFormulaFieldText(Ljava/lang/String;)V

    .line 431
    :cond_0
    return-void
.end method

.method private OnSetNameBoxText(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvSheetListener:Lcom/infraware/evengine/EvListener$SheetEditorListener;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvSheetListener:Lcom/infraware/evengine/EvListener$SheetEditorListener;

    invoke-interface {v0, p1}, Lcom/infraware/evengine/EvListener$SheetEditorListener;->OnSetNameBoxText(Ljava/lang/String;)V

    .line 420
    :cond_0
    return-void
.end method

.method private OnSetSheetScrollIInfo(IIIII)V
    .locals 6
    .parameter "nValue"
    .parameter "nMin"
    .parameter "nMax"
    .parameter "nSize"
    .parameter "bHorizontal"

    .prologue
    .line 451
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvSheetListener:Lcom/infraware/evengine/EvListener$SheetEditorListener;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvSheetListener:Lcom/infraware/evengine/EvListener$SheetEditorListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/infraware/evengine/EvListener$SheetEditorListener;->OnSetSheetScrollIInfo(IIIII)V

    .line 453
    :cond_0
    return-void
.end method

.method private OnSheetChart(I)V
    .locals 1
    .parameter "EEV_SHEET_EDITOR_STATUS"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvSheetListener:Lcom/infraware/evengine/EvListener$SheetEditorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvSheetListener:Lcom/infraware/evengine/EvListener$SheetEditorListener;

    invoke-interface {v0, p1}, Lcom/infraware/evengine/EvListener$SheetEditorListener;->OnSheetChart(I)V

    :cond_0
    return-void
.end method

.method private OnSheetEdit(II)V
    .locals 1
    .parameter "EEV_SHEET_EDIT"
    .parameter "EEV_SHEET_EDITOR_RESULT"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvSheetListener:Lcom/infraware/evengine/EvListener$SheetEditorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvSheetListener:Lcom/infraware/evengine/EvListener$SheetEditorListener;

    invoke-interface {v0, p1, p2}, Lcom/infraware/evengine/EvListener$SheetEditorListener;->OnSheetEdit(II)V

    :cond_0
    return-void
.end method

.method private OnSheetFocus()V
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvSheetListener:Lcom/infraware/evengine/EvListener$SheetEditorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvSheetListener:Lcom/infraware/evengine/EvListener$SheetEditorListener;

    invoke-interface {v0}, Lcom/infraware/evengine/EvListener$SheetEditorListener;->OnSheetFocus()V

    :cond_0
    return-void
.end method

.method private OnSheetFunction(III)V
    .locals 1
    .parameter "EEV_SHEET_EDITOR_STATUS"
    .parameter "EEV_SHEET_FUNCTION_ERROR"
    .parameter "EEV_SHEET_FUNCTION_ERROR_CODE"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvSheetListener:Lcom/infraware/evengine/EvListener$SheetEditorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvSheetListener:Lcom/infraware/evengine/EvListener$SheetEditorListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/infraware/evengine/EvListener$SheetEditorListener;->OnSheetFunction(III)V

    :cond_0
    return-void
.end method

.method private OnSheetInputField(II)V
    .locals 1
    .parameter "EEV_SHEET_EDITOR_RESULT"
    .parameter "EEV_SHEET_IPUTFIELD_RESULT"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvSheetListener:Lcom/infraware/evengine/EvListener$SheetEditorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvSheetListener:Lcom/infraware/evengine/EvListener$SheetEditorListener;

    invoke-interface {v0, p1, p2}, Lcom/infraware/evengine/EvListener$SheetEditorListener;->OnSheetInputField(II)V

    :cond_0
    return-void
.end method

.method private OnSheetProtection(I)V
    .locals 1
    .parameter "EEV_SHEET_EDITOR_RESULT"

    .prologue
    .line 410
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvSheetListener:Lcom/infraware/evengine/EvListener$SheetEditorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvSheetListener:Lcom/infraware/evengine/EvListener$SheetEditorListener;

    invoke-interface {v0, p1}, Lcom/infraware/evengine/EvListener$SheetEditorListener;->OnSheetProtection(I)V

    :cond_0
    return-void
.end method

.method private OnSheetSort(I)V
    .locals 1
    .parameter "EEV_SHEET_EDITOR_RESULT"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvSheetListener:Lcom/infraware/evengine/EvListener$SheetEditorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvSheetListener:Lcom/infraware/evengine/EvListener$SheetEditorListener;

    invoke-interface {v0, p1}, Lcom/infraware/evengine/EvListener$SheetEditorListener;->OnSheetSort(I)V

    :cond_0
    return-void
.end method

.method private OnTerminate()V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mDvListener:Lcom/infraware/evengine/EvListener$ViewerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mDvListener:Lcom/infraware/evengine/EvListener$ViewerListener;

    invoke-interface {v0}, Lcom/infraware/evengine/EvListener$ViewerListener;->OnTerminate()V

    :cond_0
    return-void
.end method

.method private OnTextToSpeachString(Ljava/lang/String;)V
    .locals 1
    .parameter "strTTS"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mDvListener:Lcom/infraware/evengine/EvListener$ViewerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mDvListener:Lcom/infraware/evengine/EvListener$ViewerListener;

    invoke-interface {v0, p1}, Lcom/infraware/evengine/EvListener$ViewerListener;->OnTextToSpeachString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private OnTimerStart()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mInterface:Lcom/infraware/evengine/ICoEngineInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->OnTimerStart()V

    :cond_0
    return-void
.end method

.method private OnTimerStop()V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mInterface:Lcom/infraware/evengine/ICoEngineInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->OnTimerStop()V

    :cond_0
    return-void
.end method

.method private OnUndoOrRedo(III)V
    .locals 1
    .parameter "nAction"
    .parameter "nPage1"
    .parameter "nPage2"

    .prologue
    .line 399
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvListener:Lcom/infraware/evengine/EvListener$EditorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvListener:Lcom/infraware/evengine/EvListener$EditorListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/infraware/evengine/EvListener$EditorListener;->OnUndoOrRedo(III)V

    :cond_0
    return-void
.end method

.method private OnWordCellDeleteMode()V
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvWordListener:Lcom/infraware/evengine/EvListener$WordEditorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvWordListener:Lcom/infraware/evengine/EvListener$WordEditorListener;

    invoke-interface {v0}, Lcom/infraware/evengine/EvListener$WordEditorListener;->OnWordCellDeleteMode()V

    :cond_0
    return-void
.end method

.method private OnWordCellInsertMode()V
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvWordListener:Lcom/infraware/evengine/EvListener$WordEditorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvWordListener:Lcom/infraware/evengine/EvListener$WordEditorListener;

    invoke-interface {v0}, Lcom/infraware/evengine/EvListener$WordEditorListener;->OnWordCellInsertMode()V

    :cond_0
    return-void
.end method

.method private OnWordCellSplitMode(I)V
    .locals 1
    .parameter "nResult"

    .prologue
    .line 470
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvWordListener:Lcom/infraware/evengine/EvListener$WordEditorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvWordListener:Lcom/infraware/evengine/EvListener$WordEditorListener;

    invoke-interface {v0, p1}, Lcom/infraware/evengine/EvListener$WordEditorListener;->OnWordCellSplitMode(I)V

    :cond_0
    return-void
.end method

.method private OnWordMultiSelectCellMode()V
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvWordListener:Lcom/infraware/evengine/EvListener$WordEditorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvWordListener:Lcom/infraware/evengine/EvListener$WordEditorListener;

    invoke-interface {v0}, Lcom/infraware/evengine/EvListener$WordEditorListener;->OnWordMultiSelectCellMode()V

    :cond_0
    return-void
.end method

.method private OnWordOneSelectCellMode()V
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvWordListener:Lcom/infraware/evengine/EvListener$WordEditorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvWordListener:Lcom/infraware/evengine/EvListener$WordEditorListener;

    invoke-interface {v0}, Lcom/infraware/evengine/EvListener$WordEditorListener;->OnWordOneSelectCellMode()V

    :cond_0
    return-void
.end method

.method private getClipBoardData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvListener:Lcom/infraware/evengine/EvListener$EditorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvListener:Lcom/infraware/evengine/EvListener$EditorListener;

    invoke-interface {v0}, Lcom/infraware/evengine/EvListener$EditorListener;->getClipBoardData()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasClipBoardData()I
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvListener:Lcom/infraware/evengine/EvListener$EditorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvListener:Lcom/infraware/evengine/EvListener$EditorListener;

    invoke-interface {v0}, Lcom/infraware/evengine/EvListener$EditorListener;->hasClipBoardData()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setClipBoardData(Ljava/lang/String;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvListener:Lcom/infraware/evengine/EvListener$EditorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mEvListener:Lcom/infraware/evengine/EvListener$EditorListener;

    invoke-interface {v0, p1}, Lcom/infraware/evengine/EvListener$EditorListener;->setClipBoardData(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method GetFontFileList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/infraware/evengine/EvNative;->mSystemFontFilePaths:[Ljava/lang/String;

    return-object v0
.end method

.method native IApplyBookClip(Lcom/infraware/evengine/EV$BOOK_CLIP;)V
.end method

.method native IApplyBookMark()V
.end method

.method native IBookMarkOnOff(I)V
.end method

.method native IBookmarkEditor(ILjava/lang/String;)V
.end method

.method native IBulletNumbering(III)V
.end method

.method native ICanCellDelete()Z
.end method

.method native ICanExtendSortRange()I
.end method

.method native ICanInsertBookmark_Editor()I
.end method

.method native ICancel()V
.end method

.method native ICancelFontAttribute()V
.end method

.method native ICaretMark(II)V
.end method

.method native ICaretMove(I)V
.end method

.method native ICaretShow(I)V
.end method

.method native ICellInsertDelete(II)V
.end method

.method native ICellMergeSeparate(III)V
.end method

.method native IChangeDisplay(I)V
.end method

.method native IChangeScreen(IIIII)V
.end method

.method native IChangeViewMode(IIII)V
.end method

.method native ICharInsert(II)V
.end method

.method native IClose()V
.end method

.method native ICreateTable(III)V
.end method

.method native IDeleteBookClip(Lcom/infraware/evengine/EV$BOOK_CLIP;)V
.end method

.method native IDocumentModified()Z
.end method

.method native IEditDocument(IIILjava/lang/String;)V
.end method

.method native IEditPageRedrawBitmap()V
.end method

.method native IExitPreview()V
.end method

.method native IFinalize()V
.end method

.method native IFindWordNext(I)V
.end method

.method native IFindWordNextByPos(II)V
.end method

.method native IFindWordStart(II)V
.end method

.method native IFindWordStop()V
.end method

.method native IFlick(II)V
.end method

.method native IGetBWPCellStatusInfo_Editor()J
.end method

.method native IGetBWPGrapAttrInfo(Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;)V
.end method

.method native IGetBWPOpInfo(Lcom/infraware/evengine/EV$BWP_OP_INFO;)V
.end method

.method native IGetBWPSplitCellMaxNum(Lcom/infraware/evengine/EV$BWP_SPLITCELL_MAXNUM;)V
.end method

.method native IGetBookClipCount(Lcom/infraware/evengine/EV$BOOK_CLIP;)I
.end method

.method native IGetBookClipName(ILcom/infraware/evengine/EV$BOOK_CLIP;)V
.end method

.method native IGetBookmarkCount_Editor()I
.end method

.method native IGetBookmarkInfo()[Ljava/lang/String;
.end method

.method native IGetBookmarkInfo_Editor(I)Ljava/lang/String;
.end method

.method native IGetBookmarkLabel(ILcom/infraware/evengine/EV$BOOKMARK_LABEL;)V
.end method

.method native IGetBorderProperty(Lcom/infraware/evengine/EV$GUI_BORDER_EVENT;)V
.end method

.method native IGetBulletType(Lcom/infraware/evengine/EV$BULLET_TYPE;)V
.end method

.method native IGetCaretAfterString(I)Ljava/lang/String;
.end method

.method native IGetCaretBeforeString(I)Ljava/lang/String;
.end method

.method native IGetCaretInfo(Lcom/infraware/evengine/EV$CARET_INFO;)V
.end method

.method native IGetCaretPos(Lcom/infraware/evengine/EV$CARET_POS;)V
.end method

.method native IGetCellInfo(Lcom/infraware/evengine/EV$SHEET_CELL_INFO;)V
.end method

.method native IGetCellProperty(Lcom/infraware/evengine/EV$CELL_PROPERTY;)V
.end method

.method native IGetCellType()I
.end method

.method native IGetChartInfo(Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;)V
.end method

.method native IGetColumn()I
.end method

.method native IGetConfig(Lcom/infraware/evengine/EV$CONFIG_INFO;)V
.end method

.method native IGetCurrentSheetIndex()I
.end method

.method native IGetEditStauts()J
.end method

.method native IGetEditorMode()I
.end method

.method native IGetFontAttInfo(Lcom/infraware/evengine/EV$FONT_INFO;)V
.end method

.method native IGetFormatInfo(Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;)V
.end method

.method native IGetHyperLinkInfo(Lcom/infraware/evengine/EV$HYPERLINK_INFO;)Z
.end method

.method native IGetHyperLinkInfoEx(IILcom/infraware/evengine/EV$HYPERLINK_INFO;)Z
.end method

.method native IGetInvalidRect(Lcom/infraware/evengine/EV$INVALID_DRAW_INFO;)V
.end method

.method native IGetMarkString()Ljava/lang/String;
.end method

.method native IGetParaAttInfo(Lcom/infraware/evengine/EV$SET_PARAATT_INFO;)Z
.end method

.method native IGetProperties(Lcom/infraware/evengine/EV$PROPERTIES;)V
.end method

.method native IGetProtectStatus_Editor()I
.end method

.method native IGetScreenPos(Lcom/infraware/evengine/EV$SCREEN_INFO;)V
.end method

.method native IGetScrollInfo_Editor(Lcom/infraware/evengine/EV$SCROLLINFO_EDITOR;)V
.end method

.method native IGetSeparateMarkString_Editor()Ljava/lang/String;
.end method

.method native IGetSheetCount()I
.end method

.method native IGetSheetInfo(Lcom/infraware/evengine/EV$SHEET_INFO;I)V
.end method

.method native IGetSheetNameList()[Ljava/lang/String;
.end method

.method native IGetSlideNoteString(I)Ljava/lang/String;
.end method

.method native IGetSortRange(Lcom/infraware/evengine/EV$RANGE;I)I
.end method

.method native IGetSystemFontCount()I
.end method

.method native IGetSystemFontNames()[Ljava/lang/String;
.end method

.method native IGetTextToSpeachString(III)V
.end method

.method native IGetTouchString(II)Ljava/lang/String;
.end method

.method native IGetUseFontCount()I
.end method

.method native IGetUseFontNames()[Ljava/lang/String;
.end method

.method native IHIDAction(IIII)V
.end method

.method native IHyperLink(III)V
.end method

.method native IHyperLinkEnd()V
.end method

.method native IHyperlinkEditor(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method native IImageInsert(Ljava/lang/String;Landroid/graphics/Bitmap;II)V
.end method

.method native IIndentation(I)V
.end method

.method native IInitialize(IIIIIII)V
.end method

.method native IInputChar(I)V
.end method

.method native IInsertShape(I)V
.end method

.method native IInsertString(Ljava/lang/String;III)V
.end method

.method native IInsertTextBox()V
.end method

.method native IIsComplexColumn()Z
.end method

.method native IIsStartOfSentence_Editor()I
.end method

.method native IMovePage(II)V
.end method

.method native INewDocument(Ljava/lang/String;IIIIIILjava/lang/String;Ljava/lang/String;)V
.end method

.method native IOpen(Ljava/lang/String;IIIIIIIIIIIILjava/lang/String;Ljava/lang/String;)V
.end method

.method native IOpenEx(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method native IParagraphAlign(I)V
.end method

.method native IPivotScreen(III)V
.end method

.method native IPopupOffset(IIIII)V
.end method

.method native IPrint(IIILjava/lang/String;)V
.end method

.method native IReDraw()V
.end method

.method native IRedoUndo(I)V
.end method

.method native IRemoveAllBookMark()V
.end method

.method native IRemoveBookMark(Ljava/lang/String;)V
.end method

.method native IRotate(II)V
.end method

.method native ISaveBookMark()V
.end method

.method native ISaveDocument(Ljava/lang/String;)V
.end method

.method native ISaveThumbnailAt(IIILjava/lang/String;I)V
.end method

.method native IScroll(IIIII)V
.end method

.method native ISearchStart(Ljava/lang/String;IIII)V
.end method

.method native ISearchStop()V
.end method

.method native ISelectAll()V
.end method

.method native ISellectAll()V
.end method

.method native ISetBookClip(Lcom/infraware/evengine/EV$BOOK_CLIP;)I
.end method

.method native ISetBookmarkLabel(Lcom/infraware/evengine/EV$BOOKMARK_LABEL;I)V
.end method

.method native ISetBorder(IIIIIIIIIZ)V
.end method

.method native ISetColors(III)V
.end method

.method native ISetColumn(II)V
.end method

.method native ISetCompBackColor(IIIIJJIII)V
.end method

.method native ISetFontAttribute(Ljava/lang/String;IIIIIIIZ)V
.end method

.method native ISetHeapSize(I)V
.end method

.method native ISetLineShape(IIII)V
.end method

.method native ISetLineSpace(I)V
.end method

.method native ISetLocale(I)V
.end method

.method native ISetModeStatus(I)V
.end method

.method native ISetObjDelete()V
.end method

.method native ISetObjPos(I)V
.end method

.method native ISetObjResize(II)V
.end method

.method native ISetObjTextEdit()V
.end method

.method native ISetObjectAttribute(IIIIIIIIII)V
.end method

.method native ISetPageMap(IIIIII)V
.end method

.method native ISetParaAttribute(IIIIIIIIIIZ)V
.end method

.method native ISetPreview(IIILjava/lang/String;I)V
.end method

.method native ISetPreviewTimerCB()V
.end method

.method native ISetPrint(IIILjava/lang/String;I)V
.end method

.method native ISetPrintEx(IIILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
.end method

.method native ISetPrintMode()V
.end method

.method native ISetProperties(Lcom/infraware/evengine/EV$PROPERTIES;)V
.end method

.method native ISetReplace(Ljava/lang/String;IIILjava/lang/String;I)V
.end method

.method native ISetScreenMode(I)V
.end method

.method native ISetShapeObjectAttribute(IIIIIIIIIIZ)V
.end method

.method native ISetSheetFontAttribute(Ljava/lang/String;IIIIIII)V
.end method

.method native ISetSortRange(Lcom/infraware/evengine/EV$RANGE;)V
.end method

.method native ISetTemplateShape(II)V
.end method

.method native ISetThumbnailBackground(Z)V
.end method

.method native ISetViewMode(I)V
.end method

.method native ISetWebMode()V
.end method

.method native ISetZoom(IIIIIIIIIII)V
.end method

.method native ISheetBorder(Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;)V
.end method

.method native ISheetClear(I)V
.end method

.method native ISheetEdit(ILjava/lang/String;IIII)V
.end method

.method native ISheetFindReplace(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method native ISheetFixFrame()V
.end method

.method native ISheetFocus()V
.end method

.method native ISheetFormat(IIIIIIII)V
.end method

.method native ISheetFunction(I)V
.end method

.method native ISheetInputField(I)V
.end method

.method native ISheetInsertCell(II)V
.end method

.method native ISheetInsertChart(ILcom/infraware/evengine/EV$RANGE;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method native ISheetInsertColumns(III)V
.end method

.method native ISheetInsertRows(III)V
.end method

.method native ISheetMerge()V
.end method

.method native ISheetPageBreak()V
.end method

.method native ISheetProtection()V
.end method

.method native ISheetRecalculate()V
.end method

.method native ISheetSetAlignment(II)V
.end method

.method native ISheetSetColor(I)V
.end method

.method native ISheetSetRowColSize(III)V
.end method

.method native ISheetShowHideRowCol(III)V
.end method

.method native ISheetSort(IIII)V
.end method

.method native IShowHideImage(I)V
.end method

.method native ISlideAddMove(III)V
.end method

.method native ISlideNote(III)V
.end method

.method native ISlideNoteInput(ILjava/lang/String;I)V
.end method

.method native ISlideObjInsert(III)V
.end method

.method native ISlideObjStart(III)V
.end method

.method native ISlideObjStartEx(III)V
.end method

.method native ISlideShow(III)V
.end method

.method native IThreadSuspend(I)V
.end method

.method native IThumbnail(IIIII)V
.end method

.method native ITimer()V
.end method

.method native IToggleSheetLineBreak()V
.end method

.method native IZoomInOut(II)V
.end method

.method SetListener(Lcom/infraware/evengine/EvListener$ViewerListener;Lcom/infraware/evengine/EvListener$EditorListener;Lcom/infraware/evengine/EvListener$WordEditorListener;Lcom/infraware/evengine/EvListener$PptEditorListener;Lcom/infraware/evengine/EvListener$SheetEditorListener;)V
    .locals 0
    .parameter "DvL"
    .parameter "EvL"
    .parameter "EvWL"
    .parameter "EvPL"
    .parameter "EvSL"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/infraware/evengine/EvNative;->mDvListener:Lcom/infraware/evengine/EvListener$ViewerListener;

    .line 80
    iput-object p2, p0, Lcom/infraware/evengine/EvNative;->mEvListener:Lcom/infraware/evengine/EvListener$EditorListener;

    .line 81
    iput-object p3, p0, Lcom/infraware/evengine/EvNative;->mEvWordListener:Lcom/infraware/evengine/EvListener$WordEditorListener;

    .line 82
    iput-object p4, p0, Lcom/infraware/evengine/EvNative;->mEvPptListener:Lcom/infraware/evengine/EvListener$PptEditorListener;

    .line 83
    iput-object p5, p0, Lcom/infraware/evengine/EvNative;->mEvSheetListener:Lcom/infraware/evengine/EvListener$SheetEditorListener;

    .line 84
    return-void
.end method

.method SetPreViewListener(Lcom/infraware/evengine/EvListener$PreviewListener;)V
    .locals 0
    .parameter "PvL"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/infraware/evengine/EvNative;->mPvListener:Lcom/infraware/evengine/EvListener$PreviewListener;

    .line 90
    return-void
.end method
