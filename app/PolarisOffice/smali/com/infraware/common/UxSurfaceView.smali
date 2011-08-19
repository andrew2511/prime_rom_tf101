.class public Lcom/infraware/common/UxSurfaceView;
.super Landroid/view/SurfaceView;
.source "UxSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/infraware/evengine/E$EV_EDITMODETYPE;
.implements Lcom/infraware/evengine/E$EV_GUI_EVENT;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/common/UxSurfaceView$ChangeWatcher;
    }
.end annotation


# static fields
.field static final LOG_CAT:Ljava/lang/String; = "UxSurfaceView"

.field static final USE_RENDER_THREAD:Z


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field protected m_EvInterface:Lcom/infraware/evengine/ICoEngineInterface;

.field protected m_bComposing:Z

.field private m_bDrawCaret:Z

.field protected m_bEditableClear:Z

.field protected m_bKeyProc:Z

.field protected m_bNewFile:Z

.field protected m_bSurfaceCreated:Z

.field public m_nCallBackID:I

.field protected m_nCompLen:I

.field public m_nDocType:I

.field protected m_nEvEditModeType:I

.field protected m_nHeight:I

.field protected m_nNewPptType:I

.field protected m_nWidth:I

.field protected m_oBitmap:Landroid/graphics/Bitmap;

.field protected m_oCanvas:Landroid/graphics/Canvas;

.field private m_oCaretInfo:Lcom/infraware/evengine/EV$CARET_INFO;

.field protected m_oChangeWatcher:Lcom/infraware/common/UxSurfaceView$ChangeWatcher;

.field private m_oCursorBitmap:Landroid/graphics/Bitmap;

.field protected m_oEditable:Landroid/text/Editable;

.field protected m_oGestureDetector:Lcom/infraware/common/UxGestureDetector;

.field protected m_oInputconnection:Lcom/infraware/common/EvInputConnection;

.field protected m_oKeyListener:Landroid/text/method/KeyListener;

.field private m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

.field private m_oPageInfo:Lcom/infraware/common/UxPageInfo;

.field private m_oPaint:Landroid/graphics/Paint;

.field protected m_oSurfaceHolder:Landroid/view/SurfaceHolder;

.field private m_oTmpBitmap:Landroid/graphics/Bitmap;

.field protected m_strFilePath:Ljava/lang/String;

.field protected m_szBookMarkPath:Ljava/lang/String;

.field protected m_szCompText:Ljava/lang/CharSequence;

.field protected m_szTempPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/infraware/common/UxSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/infraware/common/UxSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 110
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    iput-boolean v9, p0, Lcom/infraware/common/UxSurfaceView;->m_bSurfaceCreated:Z

    .line 49
    iput-boolean v9, p0, Lcom/infraware/common/UxSurfaceView;->m_bNewFile:Z

    .line 50
    iput v9, p0, Lcom/infraware/common/UxSurfaceView;->m_nNewPptType:I

    .line 51
    const/4 v7, -0x1

    iput v7, p0, Lcom/infraware/common/UxSurfaceView;->m_nDocType:I

    .line 52
    iput v9, p0, Lcom/infraware/common/UxSurfaceView;->m_nWidth:I

    .line 53
    iput v9, p0, Lcom/infraware/common/UxSurfaceView;->m_nHeight:I

    .line 54
    iput-object v10, p0, Lcom/infraware/common/UxSurfaceView;->m_oBitmap:Landroid/graphics/Bitmap;

    .line 55
    iput-object v10, p0, Lcom/infraware/common/UxSurfaceView;->m_oGestureDetector:Lcom/infraware/common/UxGestureDetector;

    .line 56
    const v7, 0xffff

    iput v7, p0, Lcom/infraware/common/UxSurfaceView;->m_nCallBackID:I

    .line 57
    iput v9, p0, Lcom/infraware/common/UxSurfaceView;->m_nEvEditModeType:I

    .line 59
    iput-boolean v9, p0, Lcom/infraware/common/UxSurfaceView;->m_bDrawCaret:Z

    .line 60
    iput-object v10, p0, Lcom/infraware/common/UxSurfaceView;->m_oPaint:Landroid/graphics/Paint;

    .line 61
    iput-object v10, p0, Lcom/infraware/common/UxSurfaceView;->m_oCursorBitmap:Landroid/graphics/Bitmap;

    .line 62
    iput-object v10, p0, Lcom/infraware/common/UxSurfaceView;->m_oCaretInfo:Lcom/infraware/evengine/EV$CARET_INFO;

    .line 63
    iput-object v10, p0, Lcom/infraware/common/UxSurfaceView;->m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

    .line 64
    iput-object v10, p0, Lcom/infraware/common/UxSurfaceView;->m_oPageInfo:Lcom/infraware/common/UxPageInfo;

    .line 67
    iput-object v10, p0, Lcom/infraware/common/UxSurfaceView;->m_oEditable:Landroid/text/Editable;

    .line 68
    iput-object v10, p0, Lcom/infraware/common/UxSurfaceView;->m_oInputconnection:Lcom/infraware/common/EvInputConnection;

    .line 69
    iput-object v10, p0, Lcom/infraware/common/UxSurfaceView;->m_oKeyListener:Landroid/text/method/KeyListener;

    .line 71
    iput-boolean v11, p0, Lcom/infraware/common/UxSurfaceView;->m_bComposing:Z

    .line 72
    iput-object v10, p0, Lcom/infraware/common/UxSurfaceView;->m_szCompText:Ljava/lang/CharSequence;

    .line 73
    iput v9, p0, Lcom/infraware/common/UxSurfaceView;->m_nCompLen:I

    .line 74
    iput-boolean v9, p0, Lcom/infraware/common/UxSurfaceView;->m_bEditableClear:Z

    .line 75
    iput-boolean v9, p0, Lcom/infraware/common/UxSurfaceView;->m_bKeyProc:Z

    .line 76
    iput-object v10, p0, Lcom/infraware/common/UxSurfaceView;->m_oTmpBitmap:Landroid/graphics/Bitmap;

    .line 79
    iput-object v10, p0, Lcom/infraware/common/UxSurfaceView;->m_szTempPath:Ljava/lang/String;

    .line 80
    iput-object v10, p0, Lcom/infraware/common/UxSurfaceView;->m_szBookMarkPath:Ljava/lang/String;

    .line 82
    new-instance v7, Lcom/infraware/common/UxSurfaceView$1;

    invoke-direct {v7, p0}, Lcom/infraware/common/UxSurfaceView$1;-><init>(Lcom/infraware/common/UxSurfaceView;)V

    iput-object v7, p0, Lcom/infraware/common/UxSurfaceView;->mHandler:Landroid/os/Handler;

    .line 112
    invoke-static {}, Lcom/infraware/evengine/ICoEngineInterface;->getInterface()Lcom/infraware/evengine/ICoEngineInterface;

    move-result-object v7

    iput-object v7, p0, Lcom/infraware/common/UxSurfaceView;->m_EvInterface:Lcom/infraware/evengine/ICoEngineInterface;

    .line 114
    invoke-virtual {p0}, Lcom/infraware/common/UxSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v7

    iput-object v7, p0, Lcom/infraware/common/UxSurfaceView;->m_oSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 115
    iget-object v7, p0, Lcom/infraware/common/UxSurfaceView;->m_oSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v7, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 117
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, p0, Lcom/infraware/common/UxSurfaceView;->m_oPaint:Landroid/graphics/Paint;

    .line 118
    new-instance v1, Landroid/graphics/ColorMatrix;

    const/16 v7, 0x14

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-direct {v1, v7}, Landroid/graphics/ColorMatrix;-><init>([F)V

    .line 123
    .local v1, colorMatrix:Landroid/graphics/ColorMatrix;
    iget-object v7, p0, Lcom/infraware/common/UxSurfaceView;->m_oPaint:Landroid/graphics/Paint;

    new-instance v8, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v8, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 125
    new-instance v7, Lcom/infraware/common/UxPageInfo;

    iget-object v8, p0, Lcom/infraware/common/UxSurfaceView;->m_EvInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-direct {v7, p0, v8}, Lcom/infraware/common/UxPageInfo;-><init>(Lcom/infraware/common/UxSurfaceView;Lcom/infraware/evengine/ICoEngineInterface;)V

    iput-object v7, p0, Lcom/infraware/common/UxSurfaceView;->m_oPageInfo:Lcom/infraware/common/UxPageInfo;

    .line 129
    invoke-virtual {p0, v11}, Lcom/infraware/common/UxSurfaceView;->setFocusable(Z)V

    .line 130
    invoke-virtual {p0, v11}, Lcom/infraware/common/UxSurfaceView;->setFocusableInTouchMode(Z)V

    .line 131
    invoke-virtual {p0, v11}, Lcom/infraware/common/UxSurfaceView;->setClickable(Z)V

    .line 132
    invoke-virtual {p0, v11}, Lcom/infraware/common/UxSurfaceView;->setLongClickable(Z)V

    .line 134
    iget-object v7, p0, Lcom/infraware/common/UxSurfaceView;->m_oEditable:Landroid/text/Editable;

    if-nez v7, :cond_0

    .line 135
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v7

    iput-object v7, p0, Lcom/infraware/common/UxSurfaceView;->m_oEditable:Landroid/text/Editable;

    .line 136
    iget-object v7, p0, Lcom/infraware/common/UxSurfaceView;->m_oEditable:Landroid/text/Editable;

    invoke-static {v7, v9}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 138
    :cond_0
    sget-object v7, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static {v9, v7}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v7

    iput-object v7, p0, Lcom/infraware/common/UxSurfaceView;->m_oKeyListener:Landroid/text/method/KeyListener;

    .line 140
    const/16 v0, 0x64

    .line 141
    .local v0, PRIORITY:I
    iget-object v7, p0, Lcom/infraware/common/UxSurfaceView;->m_oEditable:Landroid/text/Editable;

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v5

    .line 142
    .local v5, textLength:I
    iget-object v7, p0, Lcom/infraware/common/UxSurfaceView;->m_oEditable:Landroid/text/Editable;

    instance-of v7, v7, Landroid/text/Spannable;

    if-eqz v7, :cond_2

    .line 143
    iget-object v4, p0, Lcom/infraware/common/UxSurfaceView;->m_oEditable:Landroid/text/Editable;

    .line 147
    .local v4, sp:Landroid/text/Spannable;
    invoke-interface {v4}, Landroid/text/Spannable;->length()I

    move-result v7

    .line 148
    const-class v8, Lcom/infraware/common/UxSurfaceView$ChangeWatcher;

    .line 147
    invoke-interface {v4, v9, v7, v8}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/infraware/common/UxSurfaceView$ChangeWatcher;

    .line 149
    .local v6, watchers:[Lcom/infraware/common/UxSurfaceView$ChangeWatcher;
    array-length v2, v6

    .line 150
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v2, :cond_3

    .line 153
    iget-object v7, p0, Lcom/infraware/common/UxSurfaceView;->m_oChangeWatcher:Lcom/infraware/common/UxSurfaceView$ChangeWatcher;

    if-nez v7, :cond_1

    .line 154
    new-instance v7, Lcom/infraware/common/UxSurfaceView$ChangeWatcher;

    invoke-direct {v7, p0, v10}, Lcom/infraware/common/UxSurfaceView$ChangeWatcher;-><init>(Lcom/infraware/common/UxSurfaceView;Lcom/infraware/common/UxSurfaceView$ChangeWatcher;)V

    iput-object v7, p0, Lcom/infraware/common/UxSurfaceView;->m_oChangeWatcher:Lcom/infraware/common/UxSurfaceView$ChangeWatcher;

    .line 156
    :cond_1
    iget-object v7, p0, Lcom/infraware/common/UxSurfaceView;->m_oChangeWatcher:Lcom/infraware/common/UxSurfaceView$ChangeWatcher;

    .line 157
    const v8, 0x640012

    .line 156
    invoke-interface {v4, v7, v9, v5, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 160
    iget-object v7, p0, Lcom/infraware/common/UxSurfaceView;->m_oKeyListener:Landroid/text/method/KeyListener;

    if-eqz v7, :cond_2

    .line 161
    iget-object v7, p0, Lcom/infraware/common/UxSurfaceView;->m_oKeyListener:Landroid/text/method/KeyListener;

    .line 162
    const/16 v8, 0x12

    .line 161
    invoke-interface {v4, v7, v9, v5, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 165
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #sp:Landroid/text/Spannable;
    .end local v6           #watchers:[Lcom/infraware/common/UxSurfaceView$ChangeWatcher;
    :cond_2
    return-void

    .line 151
    .restart local v2       #count:I
    .restart local v3       #i:I
    .restart local v4       #sp:Landroid/text/Spannable;
    .restart local v6       #watchers:[Lcom/infraware/common/UxSurfaceView$ChangeWatcher;
    :cond_3
    aget-object v7, v6, v3

    invoke-interface {v4, v7}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 150
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 118
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x7ft 0x43t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x7ft 0x43t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x7ft 0x43t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public clearEditable()V
    .locals 2

    .prologue
    .line 495
    const-string v0, "UxSurfaceView"

    const-string v1, "clearEditable"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/infraware/common/UxSurfaceView;->m_oEditable:Landroid/text/Editable;

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 497
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/common/UxSurfaceView;->m_bEditableClear:Z

    .line 498
    iget-object v0, p0, Lcom/infraware/common/UxSurfaceView;->m_oEditable:Landroid/text/Editable;

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 500
    :cond_0
    return-void
.end method

.method public commitText(Ljava/lang/CharSequence;I)V
    .locals 2
    .parameter "text"
    .parameter "nlen"

    .prologue
    .line 529
    const-string v0, "UxSurfaceView"

    const-string v1, "commitText"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/common/UxSurfaceView;->m_bComposing:Z

    .line 531
    return-void
.end method

.method public drawAllContents()V
    .locals 4

    .prologue
    .line 201
    const/4 v0, 0x0

    .line 203
    .local v0, canvas:Landroid/graphics/Canvas;
    :try_start_0
    iget-object v1, p0, Lcom/infraware/common/UxSurfaceView;->m_oSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :try_start_1
    iget-object v2, p0, Lcom/infraware/common/UxSurfaceView;->m_oSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p0, v0}, Lcom/infraware/common/UxSurfaceView;->onDraw(Landroid/graphics/Canvas;)V

    .line 203
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    if-eqz v0, :cond_1

    .line 213
    iget-object v1, p0, Lcom/infraware/common/UxSurfaceView;->m_oSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 215
    iget-object v1, p0, Lcom/infraware/common/UxSurfaceView;->m_oTmpBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 217
    iget-object v1, p0, Lcom/infraware/common/UxSurfaceView;->m_oTmpBitmap:Landroid/graphics/Bitmap;

    monitor-enter v1

    .line 218
    :try_start_2
    iget-object v2, p0, Lcom/infraware/common/UxSurfaceView;->m_oTmpBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 219
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/infraware/common/UxSurfaceView;->m_oTmpBitmap:Landroid/graphics/Bitmap;

    .line 217
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 225
    :cond_1
    :goto_0
    return-void

    .line 203
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    .line 208
    :catch_0
    move-exception v1

    .line 211
    if-eqz v0, :cond_1

    .line 213
    iget-object v1, p0, Lcom/infraware/common/UxSurfaceView;->m_oSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 215
    iget-object v1, p0, Lcom/infraware/common/UxSurfaceView;->m_oTmpBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 217
    iget-object v1, p0, Lcom/infraware/common/UxSurfaceView;->m_oTmpBitmap:Landroid/graphics/Bitmap;

    monitor-enter v1

    .line 218
    :try_start_5
    iget-object v2, p0, Lcom/infraware/common/UxSurfaceView;->m_oTmpBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 219
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/infraware/common/UxSurfaceView;->m_oTmpBitmap:Landroid/graphics/Bitmap;

    .line 217
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2

    .line 210
    :catchall_2
    move-exception v1

    .line 211
    if-eqz v0, :cond_2

    .line 213
    iget-object v2, p0, Lcom/infraware/common/UxSurfaceView;->m_oSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 215
    iget-object v2, p0, Lcom/infraware/common/UxSurfaceView;->m_oTmpBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 217
    iget-object v2, p0, Lcom/infraware/common/UxSurfaceView;->m_oTmpBitmap:Landroid/graphics/Bitmap;

    monitor-enter v2

    .line 218
    :try_start_6
    iget-object v3, p0, Lcom/infraware/common/UxSurfaceView;->m_oTmpBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 219
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/infraware/common/UxSurfaceView;->m_oTmpBitmap:Landroid/graphics/Bitmap;

    .line 217
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 223
    :cond_2
    throw v1

    .line 217
    :catchall_3
    move-exception v1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v1

    :catchall_4
    move-exception v2

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v2
.end method

.method public finishComposingText()Z
    .locals 2

    .prologue
    .line 508
    const-string v0, "UxSurfaceView"

    const-string v1, "finishComposingText"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-virtual {p0}, Lcom/infraware/common/UxSurfaceView;->clearEditable()V

    .line 510
    iget-object v0, p0, Lcom/infraware/common/UxSurfaceView;->m_oGestureDetector:Lcom/infraware/common/UxGestureDetector;

    invoke-virtual {v0}, Lcom/infraware/common/UxGestureDetector;->finishComposingText()Z

    move-result v0

    return v0
.end method

.method public getBitmap(II)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "aScreenWidth"
    .parameter "aScreenHeight"

    .prologue
    const/4 v3, 0x0

    .line 168
    iget-object v1, p0, Lcom/infraware/common/UxSurfaceView;->m_oBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/infraware/common/UxSurfaceView;->m_oBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/infraware/common/UxSurfaceView;->m_oBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v1, p2, :cond_6

    .line 171
    :cond_0
    if-lez p1, :cond_1

    if-gtz p2, :cond_2

    :cond_1
    move-object v1, v3

    .line 196
    :goto_0
    return-object v1

    .line 174
    :cond_2
    iget v1, p0, Lcom/infraware/common/UxSurfaceView;->m_nWidth:I

    if-ne v1, p1, :cond_3

    iget v1, p0, Lcom/infraware/common/UxSurfaceView;->m_nHeight:I

    if-eq v1, p2, :cond_4

    .line 175
    :cond_3
    iget-object v1, p0, Lcom/infraware/common/UxSurfaceView;->mHandler:Landroid/os/Handler;

    const/16 v2, -0x11b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 178
    :cond_4
    iget-object v1, p0, Lcom/infraware/common/UxSurfaceView;->m_oTmpBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    .line 180
    iget-object v1, p0, Lcom/infraware/common/UxSurfaceView;->m_oTmpBitmap:Landroid/graphics/Bitmap;

    monitor-enter v1

    .line 181
    :try_start_0
    iget-object v2, p0, Lcom/infraware/common/UxSurfaceView;->m_oTmpBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 182
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/infraware/common/UxSurfaceView;->m_oTmpBitmap:Landroid/graphics/Bitmap;

    .line 180
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :cond_5
    iget-object v1, p0, Lcom/infraware/common/UxSurfaceView;->m_oBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/infraware/common/UxSurfaceView;->m_oTmpBitmap:Landroid/graphics/Bitmap;

    .line 189
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/common/UxSurfaceView;->m_oBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    .line 196
    :cond_6
    iget-object v1, p0, Lcom/infraware/common/UxSurfaceView;->m_oBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 180
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 191
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/OutOfMemoryError;
    move-object v1, v3

    .line 193
    goto :goto_0
.end method

.method public getEditableText()Landroid/text/Editable;
    .locals 2

    .prologue
    .line 490
    const-string v0, "UxSurfaceView"

    const-string v1, "getEditableText"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/infraware/common/UxSurfaceView;->m_oEditable:Landroid/text/Editable;

    return-object v0
.end method

.method public getInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 2

    .prologue
    .line 503
    const-string v0, "UxSurfaceView"

    const-string v1, "getInputConnection"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/infraware/common/UxSurfaceView;->m_oInputconnection:Lcom/infraware/common/EvInputConnection;

    return-object v0
.end method

.method public final getKeyListener()Landroid/text/method/KeyListener;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/infraware/common/UxSurfaceView;->m_oKeyListener:Landroid/text/method/KeyListener;

    return-object v0
.end method

.method public hideSoftInput()V
    .locals 3

    .prologue
    .line 704
    invoke-virtual {p0}, Lcom/infraware/common/UxSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 705
    .local v0, oInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 707
    invoke-virtual {p0}, Lcom/infraware/common/UxSurfaceView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 709
    :cond_0
    return-void
.end method

.method public invalidate()V
    .locals 0

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/infraware/common/UxSurfaceView;->drawAllContents()V

    .line 234
    return-void
.end method

.method public invalidate(IIII)V
    .locals 0
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/infraware/common/UxSurfaceView;->drawAllContents()V

    .line 240
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "dirty"

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/infraware/common/UxSurfaceView;->drawAllContents()V

    .line 246
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 2

    .prologue
    .line 470
    const-string v0, "UxSurfaceView"

    const-string v1, "onCheckIsTextEditor"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .parameter "outAttrs"

    .prologue
    .line 475
    const-string v0, "UxSurfaceView"

    const-string v1, "onCreateInputConnection"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/infraware/common/UxSurfaceView;->m_oInputconnection:Lcom/infraware/common/EvInputConnection;

    if-nez v0, :cond_0

    .line 477
    new-instance v0, Lcom/infraware/common/EvInputConnection;

    invoke-direct {v0, p0}, Lcom/infraware/common/EvInputConnection;-><init>(Lcom/infraware/common/UxSurfaceView;)V

    iput-object v0, p0, Lcom/infraware/common/UxSurfaceView;->m_oInputconnection:Lcom/infraware/common/EvInputConnection;

    .line 479
    :cond_0
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v1, -0x2fffffff

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 483
    const/16 v0, 0x4001

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 484
    iget-object v0, p0, Lcom/infraware/common/UxSurfaceView;->m_oEditable:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 485
    iget-object v0, p0, Lcom/infraware/common/UxSurfaceView;->m_oEditable:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 486
    iget-object v0, p0, Lcom/infraware/common/UxSurfaceView;->m_oInputconnection:Lcom/infraware/common/EvInputConnection;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x2

    .line 251
    :try_start_0
    iget-object v3, p0, Lcom/infraware/common/UxSurfaceView;->m_oBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v3, p0, Lcom/infraware/common/UxSurfaceView;->m_oBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 256
    iget-object v3, p0, Lcom/infraware/common/UxSurfaceView;->m_oBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 258
    iget-boolean v3, p0, Lcom/infraware/common/UxSurfaceView;->m_bDrawCaret:Z

    if-eqz v3, :cond_6

    .line 259
    iget-object v3, p0, Lcom/infraware/common/UxSurfaceView;->m_EvInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v3}, Lcom/infraware/evengine/ICoEngineInterface;->IGetCaretInfo_Editor()Lcom/infraware/evengine/EV$CARET_INFO;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/common/UxSurfaceView;->m_oCaretInfo:Lcom/infraware/evengine/EV$CARET_INFO;

    .line 261
    iget-object v3, p0, Lcom/infraware/common/UxSurfaceView;->m_oCaretInfo:Lcom/infraware/evengine/EV$CARET_INFO;

    iget v3, v3, Lcom/infraware/evengine/EV$CARET_INFO;->nX:I

    add-int/lit8 v1, v3, 0x1

    .line 262
    .local v1, nCaretX:I
    if-gez v1, :cond_2

    .line 264
    iget-object v3, p0, Lcom/infraware/common/UxSurfaceView;->m_oCaretInfo:Lcom/infraware/evengine/EV$CARET_INFO;

    iget-object v4, p0, Lcom/infraware/common/UxSurfaceView;->m_oCaretInfo:Lcom/infraware/evengine/EV$CARET_INFO;

    iget v4, v4, Lcom/infraware/evengine/EV$CARET_INFO;->nWidth:I

    add-int/2addr v4, v1

    iput v4, v3, Lcom/infraware/evengine/EV$CARET_INFO;->nWidth:I

    .line 265
    const/4 v1, 0x0

    .line 268
    :cond_2
    iget-object v3, p0, Lcom/infraware/common/UxSurfaceView;->m_oCaretInfo:Lcom/infraware/evengine/EV$CARET_INFO;

    iget v3, v3, Lcom/infraware/evengine/EV$CARET_INFO;->nWidth:I

    add-int/2addr v3, v1

    iget-object v4, p0, Lcom/infraware/common/UxSurfaceView;->m_oBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-le v3, v4, :cond_3

    .line 270
    iget-object v3, p0, Lcom/infraware/common/UxSurfaceView;->m_oCaretInfo:Lcom/infraware/evengine/EV$CARET_INFO;

    iget-object v4, p0, Lcom/infraware/common/UxSurfaceView;->m_oCaretInfo:Lcom/infraware/evengine/EV$CARET_INFO;

    iget v4, v4, Lcom/infraware/evengine/EV$CARET_INFO;->nWidth:I

    iget-object v5, p0, Lcom/infraware/common/UxSurfaceView;->m_oCaretInfo:Lcom/infraware/evengine/EV$CARET_INFO;

    iget v5, v5, Lcom/infraware/evengine/EV$CARET_INFO;->nWidth:I

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/infraware/common/UxSurfaceView;->m_oBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/infraware/evengine/EV$CARET_INFO;->nWidth:I

    .line 271
    iget-object v3, p0, Lcom/infraware/common/UxSurfaceView;->m_oBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/infraware/common/UxSurfaceView;->m_oCaretInfo:Lcom/infraware/evengine/EV$CARET_INFO;

    iget v4, v4, Lcom/infraware/evengine/EV$CARET_INFO;->nWidth:I

    sub-int v1, v3, v4

    .line 274
    :cond_3
    iget-object v3, p0, Lcom/infraware/common/UxSurfaceView;->m_oCaretInfo:Lcom/infraware/evengine/EV$CARET_INFO;

    iget v3, v3, Lcom/infraware/evengine/EV$CARET_INFO;->nY:I

    if-gez v3, :cond_4

    .line 276
    iget-object v3, p0, Lcom/infraware/common/UxSurfaceView;->m_oCaretInfo:Lcom/infraware/evengine/EV$CARET_INFO;

    iget-object v4, p0, Lcom/infraware/common/UxSurfaceView;->m_oCaretInfo:Lcom/infraware/evengine/EV$CARET_INFO;

    iget v4, v4, Lcom/infraware/evengine/EV$CARET_INFO;->nHeight:I

    iget-object v5, p0, Lcom/infraware/common/UxSurfaceView;->m_oCaretInfo:Lcom/infraware/evengine/EV$CARET_INFO;

    iget v5, v5, Lcom/infraware/evengine/EV$CARET_INFO;->nY:I

    add-int/2addr v4, v5

    iput v4, v3, Lcom/infraware/evengine/EV$CARET_INFO;->nHeight:I

    .line 277
    iget-object v3, p0, Lcom/infraware/common/UxSurfaceView;->m_oCaretInfo:Lcom/infraware/evengine/EV$CARET_INFO;

    const/4 v4, 0x0

    iput v4, v3, Lcom/infraware/evengine/EV$CARET_INFO;->nY:I

    .line 280
    :cond_4
    iget-object v3, p0, Lcom/infraware/common/UxSurfaceView;->m_oCaretInfo:Lcom/infraware/evengine/EV$CARET_INFO;

    iget v3, v3, Lcom/infraware/evengine/EV$CARET_INFO;->nY:I

    iget-object v4, p0, Lcom/infraware/common/UxSurfaceView;->m_oCaretInfo:Lcom/infraware/evengine/EV$CARET_INFO;

    iget v4, v4, Lcom/infraware/evengine/EV$CARET_INFO;->nHeight:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/infraware/common/UxSurfaceView;->m_oBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_5

    .line 282
    iget-object v3, p0, Lcom/infraware/common/UxSurfaceView;->m_oCaretInfo:Lcom/infraware/evengine/EV$CARET_INFO;

    iget-object v4, p0, Lcom/infraware/common/UxSurfaceView;->m_oCaretInfo:Lcom/infraware/evengine/EV$CARET_INFO;

    iget v4, v4, Lcom/infraware/evengine/EV$CARET_INFO;->nHeight:I

    iget-object v5, p0, Lcom/infraware/common/UxSurfaceView;->m_oCaretInfo:Lcom/infraware/evengine/EV$CARET_INFO;

    iget v5, v5, Lcom/infraware/evengine/EV$CARET_INFO;->nY:I

    iget-object v6, p0, Lcom/infraware/common/UxSurfaceView;->m_oCaretInfo:Lcom/infraware/evengine/EV$CARET_INFO;

    iget v6, v6, Lcom/infraware/evengine/EV$CARET_INFO;->nHeight:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/infraware/common/UxSurfaceView;->m_oBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/infraware/evengine/EV$CARET_INFO;->nHeight:I

    .line 283
    iget-object v3, p0, Lcom/infraware/common/UxSurfaceView;->m_oCaretInfo:Lcom/infraware/evengine/EV$CARET_INFO;

    iget-object v4, p0, Lcom/infraware/common/UxSurfaceView;->m_oBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/infraware/common/UxSurfaceView;->m_oCaretInfo:Lcom/infraware/evengine/EV$CARET_INFO;

    iget v5, v5, Lcom/infraware/evengine/EV$CARET_INFO;->nHeight:I

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/infraware/evengine/EV$CARET_INFO;->nY:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :cond_5
    :try_start_1
    iget-object v3, p0, Lcom/infraware/common/UxSurfaceView;->m_oBitmap:Landroid/graphics/Bitmap;

    .line 288
    iget-object v4, p0, Lcom/infraware/common/UxSurfaceView;->m_oCaretInfo:Lcom/infraware/evengine/EV$CARET_INFO;

    iget v4, v4, Lcom/infraware/evengine/EV$CARET_INFO;->nY:I

    .line 289
    iget-object v5, p0, Lcom/infraware/common/UxSurfaceView;->m_oCaretInfo:Lcom/infraware/evengine/EV$CARET_INFO;

    iget v5, v5, Lcom/infraware/evengine/EV$CARET_INFO;->nWidth:I

    iget-object v6, p0, Lcom/infraware/common/UxSurfaceView;->m_oCaretInfo:Lcom/infraware/evengine/EV$CARET_INFO;

    iget v6, v6, Lcom/infraware/evengine/EV$CARET_INFO;->nHeight:I

    .line 287
    invoke-static {v3, v1, v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/common/UxSurfaceView;->m_oCursorBitmap:Landroid/graphics/Bitmap;

    .line 290
    iget-object v3, p0, Lcom/infraware/common/UxSurfaceView;->m_oCursorBitmap:Landroid/graphics/Bitmap;

    int-to-float v4, v1

    .line 291
    iget-object v5, p0, Lcom/infraware/common/UxSurfaceView;->m_oCaretInfo:Lcom/infraware/evengine/EV$CARET_INFO;

    iget v5, v5, Lcom/infraware/evengine/EV$CARET_INFO;->nY:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/infraware/common/UxSurfaceView;->m_oPaint:Landroid/graphics/Paint;

    .line 290
    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 300
    .end local v1           #nCaretX:I
    :cond_6
    :goto_1
    :try_start_2
    iget v3, p0, Lcom/infraware/common/UxSurfaceView;->m_nDocType:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_7

    iget v3, p0, Lcom/infraware/common/UxSurfaceView;->m_nDocType:I

    const/16 v4, 0x14

    if-ne v3, v4, :cond_9

    .line 302
    :cond_7
    iget-object v3, p0, Lcom/infraware/common/UxSurfaceView;->m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

    if-eqz v3, :cond_8

    .line 303
    iget-object v3, p0, Lcom/infraware/common/UxSurfaceView;->m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/infraware/common/EvObjectProc;->DrawObjCtrlPoint(Landroid/graphics/Canvas;Ljava/lang/Boolean;)Z

    .line 314
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/infraware/common/UxSurfaceView;->setPageInfoTimer()V

    .line 315
    iget-object v3, p0, Lcom/infraware/common/UxSurfaceView;->m_oPageInfo:Lcom/infraware/common/UxPageInfo;

    iget-object v4, p0, Lcom/infraware/common/UxSurfaceView;->m_oBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, p1, v4}, Lcom/infraware/common/UxPageInfo;->onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 318
    :catch_0
    move-exception v3

    goto/16 :goto_0

    .line 292
    .restart local v1       #nCaretX:I
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 296
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/infraware/common/UxSurfaceView;->m_bDrawCaret:Z

    goto :goto_1

    .line 305
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .end local v1           #nCaretX:I
    :cond_9
    iget-object v3, p0, Lcom/infraware/common/UxSurfaceView;->m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

    if-eqz v3, :cond_8

    .line 307
    iget-object v3, p0, Lcom/infraware/common/UxSurfaceView;->m_EvInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v3}, Lcom/infraware/evengine/ICoEngineInterface;->IGetBWPOpInfo_Editor()Lcom/infraware/evengine/EV$BWP_OP_INFO;

    move-result-object v2

    .line 308
    .local v2, oInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;
    iget-object v3, v2, Lcom/infraware/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v3, v3, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    if-gtz v3, :cond_a

    .line 309
    iget v3, v2, Lcom/infraware/evengine/EV$BWP_OP_INFO;->nCaretMode:I

    if-eq v3, v7, :cond_a

    .line 310
    iget-object v3, p0, Lcom/infraware/common/UxSurfaceView;->m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

    invoke-virtual {v3}, Lcom/infraware/common/EvObjectProc;->GetObjCtrlType()I

    move-result v3

    if-ne v3, v7, :cond_8

    .line 311
    :cond_a
    iget-object v3, p0, Lcom/infraware/common/UxSurfaceView;->m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/infraware/common/EvObjectProc;->DrawObjCtrlPoint(Landroid/graphics/Canvas;Ljava/lang/Boolean;)Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 345
    invoke-static {p2}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->getKeyEventEx(Landroid/view/KeyEvent;)Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;

    move-result-object v0

    .line 347
    .local v0, eventEx:Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;
    const-string v1, "UxSurfaceView"

    const-string v2, "onKeyDown"

    invoke-static {v1, v2}, Lcom/infraware/common/CoLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-virtual {p0}, Lcom/infraware/common/UxSurfaceView;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 349
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 400
    :goto_0
    return v1

    .line 351
    :cond_0
    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;->isAltPressed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;->isCtrlPressedEx()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 352
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 354
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_7

    .line 355
    sparse-switch p1, :sswitch_data_0

    .line 379
    iget-object v1, p0, Lcom/infraware/common/UxSurfaceView;->m_oGestureDetector:Lcom/infraware/common/UxGestureDetector;

    invoke-virtual {v1, p1, p2}, Lcom/infraware/common/UxGestureDetector;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 381
    iget-object v1, p0, Lcom/infraware/common/UxSurfaceView;->m_oEditable:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 382
    invoke-virtual {p0}, Lcom/infraware/common/UxSurfaceView;->clearEditable()V

    :cond_3
    move v1, v3

    .line 383
    goto :goto_0

    .line 358
    :sswitch_0
    invoke-virtual {p0}, Lcom/infraware/common/UxSurfaceView;->finishComposingText()Z

    .line 360
    iget-object v1, p0, Lcom/infraware/common/UxSurfaceView;->m_oEditable:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 361
    iget-object v1, p0, Lcom/infraware/common/UxSurfaceView;->m_oKeyListener:Landroid/text/method/KeyListener;

    if-eqz v1, :cond_4

    .line 362
    const-string v1, "UxSurfaceView"

    const-string v2, "mInput.onKeyDown1"

    invoke-static {v1, v2}, Lcom/infraware/common/CoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v1, p0, Lcom/infraware/common/UxSurfaceView;->m_oKeyListener:Landroid/text/method/KeyListener;

    iget-object v2, p0, Lcom/infraware/common/UxSurfaceView;->m_oEditable:Landroid/text/Editable;

    invoke-interface {v1, p0, v2, p1, p2}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 364
    const-string v1, "UxSurfaceView"

    const-string v2, "mInput.onKeyDown2"

    invoke-static {v1, v2}, Lcom/infraware/common/CoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    .line 365
    goto :goto_0

    .line 369
    :cond_4
    iget-object v1, p0, Lcom/infraware/common/UxSurfaceView;->m_oGestureDetector:Lcom/infraware/common/UxGestureDetector;

    invoke-virtual {v1, p1, p2}, Lcom/infraware/common/UxGestureDetector;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 370
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 372
    :sswitch_1
    iget-object v1, p0, Lcom/infraware/common/UxSurfaceView;->m_oGestureDetector:Lcom/infraware/common/UxGestureDetector;

    if-eqz v1, :cond_5

    .line 373
    iget-object v1, p0, Lcom/infraware/common/UxSurfaceView;->m_oGestureDetector:Lcom/infraware/common/UxGestureDetector;

    invoke-virtual {v1, p1, p2}, Lcom/infraware/common/UxGestureDetector;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 374
    :cond_5
    iget-object v1, p0, Lcom/infraware/common/UxSurfaceView;->m_oEditable:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 375
    invoke-virtual {p0}, Lcom/infraware/common/UxSurfaceView;->clearEditable()V

    .line 376
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 388
    :cond_7
    iget-object v1, p0, Lcom/infraware/common/UxSurfaceView;->m_oKeyListener:Landroid/text/method/KeyListener;

    if-eqz v1, :cond_8

    .line 389
    iget-object v1, p0, Lcom/infraware/common/UxSurfaceView;->m_oKeyListener:Landroid/text/method/KeyListener;

    iget-object v2, p0, Lcom/infraware/common/UxSurfaceView;->m_oEditable:Landroid/text/Editable;

    invoke-interface {v1, p0, v2, p1, p2}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 391
    const-string v1, "UxSurfaceView"

    const-string v2, "mInput.onKeyDown3"

    invoke-static {v1, v2}, Lcom/infraware/common/CoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    .line 392
    goto/16 :goto_0

    .line 396
    :cond_8
    const/16 v1, 0x54

    if-eq p1, v1, :cond_9

    .line 397
    const/16 v1, 0x52

    if-ne p1, v1, :cond_a

    .line 398
    :cond_9
    iput-boolean v3, p0, Lcom/infraware/common/UxSurfaceView;->m_bKeyProc:Z

    .line 400
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 355
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_1
        0x43 -> :sswitch_0
        0x70 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 461
    iget-object v0, p0, Lcom/infraware/common/UxSurfaceView;->m_oGestureDetector:Lcom/infraware/common/UxGestureDetector;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/common/UxGestureDetector;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    const/4 v0, 0x1

    .line 464
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 405
    invoke-static {p2}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->getKeyEventEx(Landroid/view/KeyEvent;)Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;

    move-result-object v0

    .line 407
    .local v0, eventEx:Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;
    const-string v1, "UxSurfaceView"

    const-string v2, "onKeyUp"

    invoke-static {v1, v2}, Lcom/infraware/common/CoLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-virtual {p0}, Lcom/infraware/common/UxSurfaceView;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 409
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 456
    :goto_0
    return v1

    .line 411
    :cond_0
    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;->isAltPressed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;->isCtrlPressedEx()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 412
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 414
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 415
    packed-switch p1, :pswitch_data_0

    .line 436
    iget-object v1, p0, Lcom/infraware/common/UxSurfaceView;->m_oGestureDetector:Lcom/infraware/common/UxGestureDetector;

    invoke-virtual {v1, p1, p2}, Lcom/infraware/common/UxGestureDetector;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v3

    .line 437
    goto :goto_0

    .line 417
    :pswitch_0
    iget-object v1, p0, Lcom/infraware/common/UxSurfaceView;->m_oEditable:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 418
    iget-object v1, p0, Lcom/infraware/common/UxSurfaceView;->m_oKeyListener:Landroid/text/method/KeyListener;

    if-eqz v1, :cond_3

    .line 419
    const-string v1, "UxSurfaceView"

    const-string v2, "mInput.onKeyUp1"

    invoke-static {v1, v2}, Lcom/infraware/common/CoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v1, p0, Lcom/infraware/common/UxSurfaceView;->m_oKeyListener:Landroid/text/method/KeyListener;

    .line 421
    iget-object v2, p0, Lcom/infraware/common/UxSurfaceView;->m_oEditable:Landroid/text/Editable;

    .line 420
    invoke-interface {v1, p0, v2, p1, p2}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 422
    const-string v1, "UxSurfaceView"

    const-string v2, "mInput.onKeyUp2"

    invoke-static {v1, v2}, Lcom/infraware/common/CoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    .line 423
    goto :goto_0

    .line 427
    :cond_3
    iget-object v1, p0, Lcom/infraware/common/UxSurfaceView;->m_oGestureDetector:Lcom/infraware/common/UxGestureDetector;

    if-eqz v1, :cond_4

    .line 428
    iget-object v1, p0, Lcom/infraware/common/UxSurfaceView;->m_oGestureDetector:Lcom/infraware/common/UxGestureDetector;

    invoke-virtual {v1, p1, p2}, Lcom/infraware/common/UxGestureDetector;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 429
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 431
    :pswitch_1
    iget-object v1, p0, Lcom/infraware/common/UxSurfaceView;->m_oGestureDetector:Lcom/infraware/common/UxGestureDetector;

    if-eqz v1, :cond_5

    .line 432
    iget-object v1, p0, Lcom/infraware/common/UxSurfaceView;->m_oGestureDetector:Lcom/infraware/common/UxGestureDetector;

    invoke-virtual {v1, p1, p2}, Lcom/infraware/common/UxGestureDetector;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 433
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 441
    :cond_6
    iget-object v1, p0, Lcom/infraware/common/UxSurfaceView;->m_oKeyListener:Landroid/text/method/KeyListener;

    if-eqz v1, :cond_7

    .line 442
    iget-object v1, p0, Lcom/infraware/common/UxSurfaceView;->m_oKeyListener:Landroid/text/method/KeyListener;

    iget-object v2, p0, Lcom/infraware/common/UxSurfaceView;->m_oEditable:Landroid/text/Editable;

    invoke-interface {v1, p0, v2, p1, p2}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 444
    const-string v1, "UxSurfaceView"

    const-string v2, "mInput.onKeyUp3"

    invoke-static {v1, v2}, Lcom/infraware/common/CoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    .line 445
    goto :goto_0

    .line 449
    :cond_7
    const/16 v1, 0x54

    if-eq p1, v1, :cond_8

    .line 450
    const/16 v1, 0x52

    if-ne p1, v1, :cond_9

    .line 452
    :cond_8
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/infraware/common/UxSurfaceView;->m_bKeyProc:Z

    .line 453
    iput-boolean v3, p0, Lcom/infraware/common/UxSurfaceView;->m_bComposing:Z

    .line 456
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 415
    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTextContextMenuItem(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 716
    const/4 v0, 0x0

    return v0
.end method

.method public resetSurfaceConfig()V
    .locals 7

    .prologue
    .line 680
    invoke-static {}, Lcom/infraware/evengine/ICoEngineInterface;->getInterface()Lcom/infraware/evengine/ICoEngineInterface;

    move-result-object v1

    .line 681
    .local v1, evInterface:Lcom/infraware/evengine/ICoEngineInterface;
    invoke-virtual {v1}, Lcom/infraware/evengine/ICoEngineInterface;->IGetProperties()Lcom/infraware/evengine/EV$PROPERTIES;

    move-result-object v2

    .line 682
    .local v2, properties:Lcom/infraware/evengine/EV$PROPERTIES;
    const/4 v4, 0x0

    iput v4, v2, Lcom/infraware/evengine/EV$PROPERTIES;->byPageEdgeWidth:I

    .line 684
    invoke-virtual {p0}, Lcom/infraware/common/UxSurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 685
    .local v3, resources:Landroid/content/res/Resources;
    const/high16 v4, 0x7f07

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, v2, Lcom/infraware/evengine/EV$PROPERTIES;->dwBgColor:I

    .line 686
    const v4, 0x7f070001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, v2, Lcom/infraware/evengine/EV$PROPERTIES;->dwEdgeColor:I

    .line 687
    const v4, 0x7f070002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, v2, Lcom/infraware/evengine/EV$PROPERTIES;->dwOutlineColor:I

    .line 689
    invoke-virtual {v1, v2}, Lcom/infraware/evengine/ICoEngineInterface;->ISetProperties(Lcom/infraware/evengine/EV$PROPERTIES;)V

    .line 690
    const/4 v0, 0x0

    .line 691
    .local v0, bLandScape:I
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 692
    const/4 v0, 0x1

    .line 693
    :cond_0
    iget-object v4, p0, Lcom/infraware/common/UxSurfaceView;->m_EvInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {p0}, Lcom/infraware/common/UxSurfaceView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/infraware/common/UxSurfaceView;->getHeight()I

    move-result v6

    invoke-virtual {v4, v0, v5, v6}, Lcom/infraware/evengine/ICoEngineInterface;->IChangeScreen(III)V

    .line 694
    return-void
.end method

.method public restartInput()V
    .locals 3

    .prologue
    .line 514
    const-string v1, "UxSurfaceView"

    const-string v2, "restartInput"

    invoke-static {v1, v2}, Lcom/infraware/common/CoLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    invoke-virtual {p0}, Lcom/infraware/common/UxSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 516
    .local v0, Imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 517
    :cond_0
    return-void
.end method

.method public setCaret(Z)V
    .locals 0
    .parameter "a_bDrawCaret"

    .prologue
    .line 572
    iput-boolean p1, p0, Lcom/infraware/common/UxSurfaceView;->m_bDrawCaret:Z

    .line 573
    return-void
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)V
    .locals 2
    .parameter "text"
    .parameter "nlen"

    .prologue
    .line 521
    const-string v0, "UxSurfaceView"

    const-string v1, "setComposingText"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iput-object p1, p0, Lcom/infraware/common/UxSurfaceView;->m_szCompText:Ljava/lang/CharSequence;

    .line 523
    iput p2, p0, Lcom/infraware/common/UxSurfaceView;->m_nCompLen:I

    .line 524
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/common/UxSurfaceView;->m_bKeyProc:Z

    .line 525
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/common/UxSurfaceView;->m_bComposing:Z

    .line 526
    return-void
.end method

.method public setGestureHandler(Lcom/infraware/common/UxGestureDetector;)V
    .locals 0
    .parameter "a_oGestureDetector"

    .prologue
    .line 668
    iput-object p1, p0, Lcom/infraware/common/UxSurfaceView;->m_oGestureDetector:Lcom/infraware/common/UxGestureDetector;

    .line 669
    return-void
.end method

.method public setInit(Landroid/content/Context;Ljava/lang/String;ZII)V
    .locals 0
    .parameter "context"
    .parameter "a_strOpenPath"
    .parameter "a_bNewFile"
    .parameter "a_nNewPptType"
    .parameter "a_nDocType"

    .prologue
    .line 327
    iput-object p2, p0, Lcom/infraware/common/UxSurfaceView;->m_strFilePath:Ljava/lang/String;

    .line 328
    iput-boolean p3, p0, Lcom/infraware/common/UxSurfaceView;->m_bNewFile:Z

    .line 329
    iput p4, p0, Lcom/infraware/common/UxSurfaceView;->m_nNewPptType:I

    .line 330
    iput p5, p0, Lcom/infraware/common/UxSurfaceView;->m_nDocType:I

    .line 331
    return-void
.end method

.method public setInit(Landroid/content/Context;Ljava/lang/String;ZIILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "a_strOpenPath"
    .parameter "a_bNewFile"
    .parameter "a_nNewPptType"
    .parameter "a_nDocType"
    .parameter "a_szTempPath"
    .parameter "a_szBookMarkPath"

    .prologue
    .line 335
    iput-object p2, p0, Lcom/infraware/common/UxSurfaceView;->m_strFilePath:Ljava/lang/String;

    .line 336
    iput-object p6, p0, Lcom/infraware/common/UxSurfaceView;->m_szTempPath:Ljava/lang/String;

    .line 337
    iput-object p7, p0, Lcom/infraware/common/UxSurfaceView;->m_szBookMarkPath:Ljava/lang/String;

    .line 338
    iput-boolean p3, p0, Lcom/infraware/common/UxSurfaceView;->m_bNewFile:Z

    .line 339
    iput p4, p0, Lcom/infraware/common/UxSurfaceView;->m_nNewPptType:I

    .line 340
    iput p5, p0, Lcom/infraware/common/UxSurfaceView;->m_nDocType:I

    .line 341
    return-void
.end method

.method public setObjectHandler(Lcom/infraware/common/EvObjectProc;)V
    .locals 0
    .parameter "a_oObject"

    .prologue
    .line 576
    iput-object p1, p0, Lcom/infraware/common/UxSurfaceView;->m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

    .line 577
    return-void
.end method

.method public setPageInfoTimer()V
    .locals 2

    .prologue
    .line 673
    iget-object v0, p0, Lcom/infraware/common/UxSurfaceView;->m_oPageInfo:Lcom/infraware/common/UxPageInfo;

    iget v1, p0, Lcom/infraware/common/UxSurfaceView;->m_nCallBackID:I

    invoke-virtual {v0, v1}, Lcom/infraware/common/UxPageInfo;->setPageInfoTimer(I)V

    .line 674
    const v0, 0xffff

    iput v0, p0, Lcom/infraware/common/UxSurfaceView;->m_nCallBackID:I

    .line 675
    return-void
.end method

.method public showSoftInput()V
    .locals 3

    .prologue
    .line 698
    invoke-virtual {p0}, Lcom/infraware/common/UxSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 699
    .local v0, oInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 700
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 701
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 17
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 581
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/infraware/common/UxSurfaceView;->m_bSurfaceCreated:Z

    move v4, v0

    if-nez v4, :cond_4

    .line 582
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/infraware/common/UxSurfaceView;->m_bSurfaceCreated:Z

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/UxSurfaceView;->m_oBitmap:Landroid/graphics/Bitmap;

    move-object v4, v0

    if-nez v4, :cond_0

    .line 589
    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p3

    move/from16 v1, p4

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/infraware/common/UxSurfaceView;->m_oBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    :cond_0
    :goto_0
    invoke-static {}, Lcom/infraware/evengine/ICoEngineInterface;->getInterface()Lcom/infraware/evengine/ICoEngineInterface;

    move-result-object v14

    .line 600
    .local v14, evInterface:Lcom/infraware/evengine/ICoEngineInterface;
    move-object v0, v14

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/infraware/evengine/ICoEngineInterface;->IInitialize(II)V

    .line 602
    invoke-virtual {v14}, Lcom/infraware/evengine/ICoEngineInterface;->IGetProperties()Lcom/infraware/evengine/EV$PROPERTIES;

    move-result-object v15

    .line 603
    .local v15, properties:Lcom/infraware/evengine/EV$PROPERTIES;
    const/4 v4, 0x0

    iput v4, v15, Lcom/infraware/evengine/EV$PROPERTIES;->byPageEdgeWidth:I

    .line 605
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/common/UxSurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 606
    .local v16, resources:Landroid/content/res/Resources;
    const/high16 v4, 0x7f07

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, v15, Lcom/infraware/evengine/EV$PROPERTIES;->dwBgColor:I

    .line 607
    const v4, 0x7f070001

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, v15, Lcom/infraware/evengine/EV$PROPERTIES;->dwEdgeColor:I

    .line 608
    const v4, 0x7f070002

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, v15, Lcom/infraware/evengine/EV$PROPERTIES;->dwOutlineColor:I

    .line 611
    invoke-virtual {v14, v15}, Lcom/infraware/evengine/ICoEngineInterface;->ISetProperties(Lcom/infraware/evengine/EV$PROPERTIES;)V

    .line 613
    const/4 v11, 0x0

    .line 614
    .local v11, bLandScape:I
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 615
    const/4 v11, 0x1

    .line 617
    :cond_1
    invoke-static/range {v16 .. v16}, Lcom/infraware/common/Utils;->getCurrentLocaleType(Landroid/content/res/Resources;)I

    move-result v10

    .line 621
    .local v10, locale:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/infraware/common/UxSurfaceView;->m_bNewFile:Z

    move v4, v0

    if-eqz v4, :cond_3

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/UxSurfaceView;->m_EvInterface:Lcom/infraware/evengine/ICoEngineInterface;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/UxSurfaceView;->m_strFilePath:Ljava/lang/String;

    move-object v5, v0

    const/16 v8, 0x20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/common/UxSurfaceView;->m_nNewPptType:I

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/UxSurfaceView;->m_szTempPath:Ljava/lang/String;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/UxSurfaceView;->m_szBookMarkPath:Ljava/lang/String;

    move-object v13, v0

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v4 .. v13}, Lcom/infraware/evengine/ICoEngineInterface;->INewDocument(Ljava/lang/String;IIIIIILjava/lang/String;Ljava/lang/String;)V

    .line 640
    .end local v10           #locale:I
    .end local v11           #bLandScape:I
    .end local v14           #evInterface:Lcom/infraware/evengine/ICoEngineInterface;
    .end local v15           #properties:Lcom/infraware/evengine/EV$PROPERTIES;
    .end local v16           #resources:Landroid/content/res/Resources;
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/common/UxSurfaceView;->drawAllContents()V

    .line 641
    return-void

    .line 624
    .restart local v10       #locale:I
    .restart local v11       #bLandScape:I
    .restart local v14       #evInterface:Lcom/infraware/evengine/ICoEngineInterface;
    .restart local v15       #properties:Lcom/infraware/evengine/EV$PROPERTIES;
    .restart local v16       #resources:Landroid/content/res/Resources;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/UxSurfaceView;->m_EvInterface:Lcom/infraware/evengine/ICoEngineInterface;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/UxSurfaceView;->m_strFilePath:Ljava/lang/String;

    move-object v6, v0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/UxSurfaceView;->m_szTempPath:Ljava/lang/String;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/UxSurfaceView;->m_szBookMarkPath:Ljava/lang/String;

    move-object v13, v0

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-virtual/range {v5 .. v13}, Lcom/infraware/evengine/ICoEngineInterface;->IOpen(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 628
    .end local v10           #locale:I
    .end local v11           #bLandScape:I
    .end local v14           #evInterface:Lcom/infraware/evengine/ICoEngineInterface;
    .end local v15           #properties:Lcom/infraware/evengine/EV$PROPERTIES;
    .end local v16           #resources:Landroid/content/res/Resources;
    :cond_4
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/infraware/common/UxSurfaceView;->setWillNotDraw(Z)V

    .line 630
    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/common/UxSurfaceView;->m_nWidth:I

    move v4, v0

    move v0, v4

    move/from16 v1, p3

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/common/UxSurfaceView;->m_nHeight:I

    move v4, v0

    move v0, v4

    move/from16 v1, p4

    if-eq v0, v1, :cond_2

    .line 631
    :cond_5
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/infraware/common/UxSurfaceView;->m_nWidth:I

    .line 632
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/infraware/common/UxSurfaceView;->m_nHeight:I

    .line 633
    const/4 v11, 0x0

    .line 634
    .restart local v11       #bLandScape:I
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/common/UxSurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 635
    .restart local v16       #resources:Landroid/content/res/Resources;
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    .line 636
    const/4 v11, 0x1

    .line 637
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/UxSurfaceView;->m_EvInterface:Lcom/infraware/evengine/ICoEngineInterface;

    move-object v4, v0

    move-object v0, v4

    move v1, v11

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/infraware/evengine/ICoEngineInterface;->IChangeScreen(III)V

    goto :goto_1

    .line 591
    .end local v11           #bLandScape:I
    .end local v16           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 645
    iget-boolean v0, p0, Lcom/infraware/common/UxSurfaceView;->m_bSurfaceCreated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/common/UxSurfaceView;->m_oBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/infraware/common/UxSurfaceView;->mHandler:Landroid/os/Handler;

    const/16 v1, -0x11b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 647
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    const/4 v1, 0x0

    .line 651
    iget-object v0, p0, Lcom/infraware/common/UxSurfaceView;->m_oPageInfo:Lcom/infraware/common/UxPageInfo;

    invoke-virtual {v0}, Lcom/infraware/common/UxPageInfo;->killPageInfoTimer()V

    .line 654
    iget-object v0, p0, Lcom/infraware/common/UxSurfaceView;->m_oBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/infraware/common/UxSurfaceView;->m_oBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 657
    iput-object v1, p0, Lcom/infraware/common/UxSurfaceView;->m_oBitmap:Landroid/graphics/Bitmap;

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/infraware/common/UxSurfaceView;->m_oTmpBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 662
    iget-object v0, p0, Lcom/infraware/common/UxSurfaceView;->m_oTmpBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 663
    iput-object v1, p0, Lcom/infraware/common/UxSurfaceView;->m_oTmpBitmap:Landroid/graphics/Bitmap;

    .line 665
    :cond_1
    return-void
.end method
