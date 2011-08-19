.class public Lcom/google/android/apps/books/widget/PageTurnView;
.super Landroid/renderscript/RSSurfaceView;
.source "PageTurnView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/widget/PageTurnView$EndTurnDirectional;,
        Lcom/google/android/apps/books/widget/PageTurnView$EndTurnInertial;,
        Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;,
        Lcom/google/android/apps/books/widget/PageTurnView$StartTurn;,
        Lcom/google/android/apps/books/widget/PageTurnView$Mode;,
        Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;,
        Lcom/google/android/apps/books/widget/PageTurnView$ActionEvent;,
        Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;,
        Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;,
        Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;,
        Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;
    }
.end annotation


# static fields
.field private static final MSG_FADEIN_COMPLETE:I = 0x12c

.field private static final MSG_INITIALIZATION_COMPLETE:I = 0x64

.field private static final MSG_UPDATE_POSITION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "PageTurnView"


# instance fields
.field private mAnchorPosition:Lcom/google/android/apps/books/render/RenderPosition;

.field private mAnchorPositionSlot:I

.field private mBasePosition:Lcom/google/android/apps/books/common/Position;

.field private final mCommandQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mCustomSlots:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;",
            ">;"
        }
    .end annotation
.end field

.field private mFraction:F

.field private final mNormalizedSlots:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/apps/books/render/RenderPosition;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingAction:Lcom/google/android/apps/books/widget/PageTurnView$ActionEvent;

.field private mRS:Landroid/renderscript/RenderScriptGL;

.field private mReaderDelegate:Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;

.field private final mRenderListener:Lcom/google/android/apps/books/render/RendererListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/books/render/RendererListener",
            "<",
            "Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;",
            ">;"
        }
    .end annotation
.end field

.field private mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

.field private mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/books/render/ReaderRenderer",
            "<",
            "Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;",
            ">;"
        }
    .end annotation
.end field

.field private mRendererSequenceNumber:I

.field private mSlotEndOfVolume:Ljava/lang/Integer;

.field private mSlotStartOfVolume:Ljava/lang/Integer;

.field private mSpecialViews:Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;

.field private mTurnDirection:I

.field private final mUpdateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 257
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/books/widget/PageTurnView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 258
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/books/widget/PageTurnView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 262
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 265
    invoke-direct {p0, p1, p2}, Landroid/renderscript/RSSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    iput-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPosition:Lcom/google/android/apps/books/render/RenderPosition;

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPositionSlot:I

    .line 178
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mNormalizedSlots:Landroid/util/SparseArray;

    .line 185
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mCustomSlots:Landroid/util/SparseArray;

    .line 188
    iput-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mSlotStartOfVolume:Ljava/lang/Integer;

    .line 190
    iput-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mSlotEndOfVolume:Ljava/lang/Integer;

    .line 232
    new-instance v0, Lcom/google/android/apps/books/widget/PageTurnView$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/widget/PageTurnView$1;-><init>(Lcom/google/android/apps/books/widget/PageTurnView;)V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mUpdateHandler:Landroid/os/Handler;

    .line 774
    new-instance v0, Lcom/google/android/apps/books/widget/PageTurnView$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/widget/PageTurnView$2;-><init>(Lcom/google/android/apps/books/widget/PageTurnView;)V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderListener:Lcom/google/android/apps/books/render/RendererListener;

    .line 919
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mCommandQueue:Ljava/util/Queue;

    .line 266
    const-string v0, "missing context"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mContext:Landroid/content/Context;

    .line 267
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mReaderDelegate:Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/widget/PageTurnRS;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/common/Position;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mBasePosition:Lcom/google/android/apps/books/common/Position;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/apps/books/widget/PageTurnView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRendererSequenceNumber:I

    return v0
.end method

.method static synthetic access$1200(Lcom/google/android/apps/books/widget/PageTurnView;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mNormalizedSlots:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/apps/books/widget/PageTurnView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->finishPositionUpdate()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/apps/books/widget/PageTurnView;ILandroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/widget/PageTurnView;->setPageToBitmap(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/apps/books/widget/PageTurnView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/widget/PageTurnView;->setPageError(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/apps/books/widget/PageTurnView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->isLandscape()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mSpecialViews:Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/apps/books/widget/PageTurnView;)Ljava/lang/Integer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mSlotStartOfVolume:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/google/android/apps/books/widget/PageTurnView;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mSlotStartOfVolume:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1900(Ljava/lang/Integer;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/google/android/apps/books/widget/PageTurnView;->maxIgnoringNull(Ljava/lang/Integer;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/books/widget/PageTurnView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTurnDirection:I

    return v0
.end method

.method static synthetic access$2000(Lcom/google/android/apps/books/widget/PageTurnView;)Ljava/lang/Integer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mSlotEndOfVolume:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/google/android/apps/books/widget/PageTurnView;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mSlotEndOfVolume:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$202(Lcom/google/android/apps/books/widget/PageTurnView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTurnDirection:I

    return p1
.end method

.method static synthetic access$2100(Ljava/lang/Integer;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/google/android/apps/books/widget/PageTurnView;->minIgnoringNull(Ljava/lang/Integer;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/google/android/apps/books/widget/PageTurnView;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mCustomSlots:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/android/apps/books/widget/PageTurnView;ILcom/google/android/apps/books/widget/PageTurnView$SpecialView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/widget/PageTurnView;->setPageToSpecialView(ILcom/google/android/apps/books/widget/PageTurnView$SpecialView;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/android/apps/books/widget/PageTurnView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->rewindPage()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/books/widget/PageTurnView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mFraction:F

    return v0
.end method

.method static synthetic access$302(Lcom/google/android/apps/books/widget/PageTurnView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mFraction:F

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/apps/books/widget/PageTurnView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->advancePage()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/render/RenderPosition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPosition:Lcom/google/android/apps/books/render/RenderPosition;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/android/apps/books/widget/PageTurnView;Lcom/google/android/apps/books/render/RenderPosition;)Lcom/google/android/apps/books/render/RenderPosition;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPosition:Lcom/google/android/apps/books/render/RenderPosition;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/android/apps/books/widget/PageTurnView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPositionSlot:I

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/books/widget/PageTurnView;IZLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/books/widget/PageTurnView;->startPositionUpdate(IZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/apps/books/widget/PageTurnView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->serviceQueue()V

    return-void
.end method

.method private advancePage()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 548
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPosition:Lcom/google/android/apps/books/render/RenderPosition;

    if-nez v1, :cond_0

    .line 549
    const-string v1, "PageTurnView"

    const-string v2, "ignoring advancePage(), mAnchorPosition is missing"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :goto_0
    return-void

    .line 553
    :cond_0
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    move v0, v1

    .line 554
    .local v0, pageOffset:I
    :goto_1
    invoke-direct {p0, v0, v2}, Lcom/google/android/apps/books/widget/PageTurnView;->moveByOffset(II)V

    goto :goto_0

    .end local v0           #pageOffset:I
    :cond_1
    move v0, v2

    .line 553
    goto :goto_1
.end method

.method private dispatchCommand(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "command"

    .prologue
    .line 932
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mCommandQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 933
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->serviceQueue()V

    .line 934
    return-void
.end method

.method private declared-synchronized finishPositionUpdate()V
    .locals 4

    .prologue
    const-string v1, "PageTurnView"

    .line 738
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mPendingAction:Lcom/google/android/apps/books/widget/PageTurnView$ActionEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 753
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 742
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mNormalizedSlots:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mPendingAction:Lcom/google/android/apps/books/widget/PageTurnView$ActionEvent;

    iget v2, v2, Lcom/google/android/apps/books/widget/PageTurnView$ActionEvent;->targetSlot:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/render/RenderPosition;

    .line 743
    .local v0, normalized:Lcom/google/android/apps/books/render/RenderPosition;
    if-eqz v0, :cond_0

    .line 744
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mPendingAction:Lcom/google/android/apps/books/widget/PageTurnView$ActionEvent;

    iget-object v2, v0, Lcom/google/android/apps/books/render/RenderPosition;->position:Lcom/google/android/apps/books/common/Position;

    iput-object v2, v1, Lcom/google/android/apps/books/widget/PageTurnView$ActionEvent;->position:Lcom/google/android/apps/books/common/Position;

    .line 746
    const-string v1, "PageTurnView"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 747
    const-string v1, "PageTurnView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishPositionUpdate() found position; action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mPendingAction:Lcom/google/android/apps/books/widget/PageTurnView$ActionEvent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mUpdateHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mPendingAction:Lcom/google/android/apps/books/widget/PageTurnView$ActionEvent;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 751
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mPendingAction:Lcom/google/android/apps/books/widget/PageTurnView$ActionEvent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 738
    .end local v0           #normalized:Lcom/google/android/apps/books/render/RenderPosition;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private isLandscape()Z
    .locals 2

    .prologue
    .line 1234
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static maxIgnoringNull(Ljava/lang/Integer;I)I
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 910
    if-nez p0, :cond_0

    move v0, p1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method private static minIgnoringNull(Ljava/lang/Integer;I)I
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 906
    if-nez p0, :cond_0

    move v0, p1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private moveByOffset(II)V
    .locals 2
    .parameter "offset"
    .parameter "mode"

    .prologue
    .line 544
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPosition:Lcom/google/android/apps/books/render/RenderPosition;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/render/RenderPosition;->offsetBy(I)Lcom/google/android/apps/books/render/RenderPosition;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPositionSlot:I

    add-int/2addr v1, p1

    invoke-direct {p0, v0, v1, p2}, Lcom/google/android/apps/books/widget/PageTurnView;->moveToPosition(Lcom/google/android/apps/books/render/RenderPosition;II)V

    .line 545
    return-void
.end method

.method private moveToPosition(Lcom/google/android/apps/books/render/RenderPosition;II)V
    .locals 20
    .parameter "position"
    .parameter "targetSlot"
    .parameter "mode"

    .prologue
    .line 579
    const-string v16, "PageTurnView"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "moveToPosition() moving to "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", mode="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPosition:Lcom/google/android/apps/books/render/RenderPosition;

    .line 581
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPositionSlot:I

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/widget/PageTurnRS;->setAnchorIndex(I)V

    .line 587
    :cond_0
    const/16 v16, 0x1

    move/from16 v0, p3

    move/from16 v1, v16

    if-ne v0, v1, :cond_7

    const/16 v16, 0x1

    move/from16 v5, v16

    .line 588
    .local v5, advance:Z
    :goto_0
    const/16 v16, 0x2

    move/from16 v0, p3

    move/from16 v1, v16

    if-ne v0, v1, :cond_8

    const/16 v16, 0x1

    move/from16 v15, v16

    .line 591
    .local v15, rewind:Z
    :goto_1
    if-nez p3, :cond_9

    const/16 v16, 0x1

    move/from16 v10, v16

    .line 592
    .local v10, renderCurrent:Z
    :goto_2
    if-nez v5, :cond_a

    const/16 v16, 0x1

    move/from16 v14, v16

    .line 593
    .local v14, renderPrevious:Z
    :goto_3
    if-nez v5, :cond_b

    const/16 v16, 0x1

    move/from16 v13, v16

    .line 594
    .local v13, renderPrevPrev:Z
    :goto_4
    if-nez v15, :cond_c

    const/16 v16, 0x1

    move/from16 v11, v16

    .line 595
    .local v11, renderNext:Z
    :goto_5
    if-nez v15, :cond_d

    const/16 v16, 0x1

    move/from16 v12, v16

    .line 599
    .local v12, renderNextNext:Z
    :goto_6
    const/16 v16, -0x2

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/render/RenderPosition;->offsetBy(I)Lcom/google/android/apps/books/render/RenderPosition;

    move-result-object v8

    .line 600
    .local v8, prevPrevPage:Lcom/google/android/apps/books/render/RenderPosition;
    const/16 v16, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/render/RenderPosition;->offsetBy(I)Lcom/google/android/apps/books/render/RenderPosition;

    move-result-object v9

    .line 601
    .local v9, previousPage:Lcom/google/android/apps/books/render/RenderPosition;
    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/render/RenderPosition;->offsetBy(I)Lcom/google/android/apps/books/render/RenderPosition;

    move-result-object v7

    .line 602
    .local v7, nextPage:Lcom/google/android/apps/books/render/RenderPosition;
    const/16 v16, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/render/RenderPosition;->offsetBy(I)Lcom/google/android/apps/books/render/RenderPosition;

    move-result-object v6

    .line 606
    .local v6, nextNextPage:Lcom/google/android/apps/books/render/RenderPosition;
    if-eqz v10, :cond_1

    invoke-direct/range {p0 .. p2}, Lcom/google/android/apps/books/widget/PageTurnView;->requestRenderPage(Lcom/google/android/apps/books/render/RenderPosition;I)V

    .line 607
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/books/widget/PageTurnView;->isLandscape()Z

    move-result v16

    if-eqz v16, :cond_e

    .line 608
    if-eqz v13, :cond_2

    const/16 v16, 0x2

    sub-int v16, p2, v16

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/widget/PageTurnView;->requestRenderPage(Lcom/google/android/apps/books/render/RenderPosition;I)V

    .line 609
    :cond_2
    if-eqz v14, :cond_3

    const/16 v16, 0x1

    sub-int v16, p2, v16

    move-object/from16 v0, p0

    move-object v1, v9

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/widget/PageTurnView;->requestRenderPage(Lcom/google/android/apps/books/render/RenderPosition;I)V

    .line 610
    :cond_3
    if-eqz v11, :cond_4

    add-int/lit8 v16, p2, 0x1

    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/widget/PageTurnView;->requestRenderPage(Lcom/google/android/apps/books/render/RenderPosition;I)V

    .line 611
    :cond_4
    if-eqz v12, :cond_5

    add-int/lit8 v16, p2, 0x2

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/widget/PageTurnView;->requestRenderPage(Lcom/google/android/apps/books/render/RenderPosition;I)V

    .line 617
    :cond_5
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    move-object/from16 v16, v0

    if-eqz v16, :cond_6

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/books/widget/PageTurnView;->mFraction:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/books/widget/PageTurnView;->mTurnDirection:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, p2

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/books/widget/PageTurnRS;->setTurnState(IFIZ)V

    .line 620
    :cond_6
    return-void

    .line 587
    .end local v5           #advance:Z
    .end local v6           #nextNextPage:Lcom/google/android/apps/books/render/RenderPosition;
    .end local v7           #nextPage:Lcom/google/android/apps/books/render/RenderPosition;
    .end local v8           #prevPrevPage:Lcom/google/android/apps/books/render/RenderPosition;
    .end local v9           #previousPage:Lcom/google/android/apps/books/render/RenderPosition;
    .end local v10           #renderCurrent:Z
    .end local v11           #renderNext:Z
    .end local v12           #renderNextNext:Z
    .end local v13           #renderPrevPrev:Z
    .end local v14           #renderPrevious:Z
    .end local v15           #rewind:Z
    :cond_7
    const/16 v16, 0x0

    move/from16 v5, v16

    goto/16 :goto_0

    .line 588
    .restart local v5       #advance:Z
    :cond_8
    const/16 v16, 0x0

    move/from16 v15, v16

    goto/16 :goto_1

    .line 591
    .restart local v15       #rewind:Z
    :cond_9
    const/16 v16, 0x0

    move/from16 v10, v16

    goto/16 :goto_2

    .line 592
    .restart local v10       #renderCurrent:Z
    :cond_a
    const/16 v16, 0x0

    move/from16 v14, v16

    goto/16 :goto_3

    .line 593
    .restart local v14       #renderPrevious:Z
    :cond_b
    const/16 v16, 0x0

    move/from16 v13, v16

    goto/16 :goto_4

    .line 594
    .restart local v13       #renderPrevPrev:Z
    :cond_c
    const/16 v16, 0x0

    move/from16 v11, v16

    goto/16 :goto_5

    .line 595
    .restart local v11       #renderNext:Z
    :cond_d
    const/16 v16, 0x0

    move/from16 v12, v16

    goto/16 :goto_6

    .line 613
    .restart local v6       #nextNextPage:Lcom/google/android/apps/books/render/RenderPosition;
    .restart local v7       #nextPage:Lcom/google/android/apps/books/render/RenderPosition;
    .restart local v8       #prevPrevPage:Lcom/google/android/apps/books/render/RenderPosition;
    .restart local v9       #previousPage:Lcom/google/android/apps/books/render/RenderPosition;
    .restart local v12       #renderNextNext:Z
    :cond_e
    if-eqz v11, :cond_f

    add-int/lit8 v16, p2, 0x1

    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/widget/PageTurnView;->requestRenderPage(Lcom/google/android/apps/books/render/RenderPosition;I)V

    .line 614
    :cond_f
    if-eqz v14, :cond_5

    const/16 v16, 0x1

    sub-int v16, p2, v16

    move-object/from16 v0, p0

    move-object v1, v9

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/widget/PageTurnView;->requestRenderPage(Lcom/google/android/apps/books/render/RenderPosition;I)V

    goto :goto_7
.end method

.method private requestRenderPage(Lcom/google/android/apps/books/render/RenderPosition;I)V
    .locals 5
    .parameter "position"
    .parameter "targetSlot"

    .prologue
    const-string v3, "PageTurnView"

    .line 634
    const-string v1, "PageTurnView"

    const/4 v1, 0x3

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 635
    const-string v1, "PageTurnView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestRenderPage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mCustomSlots:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;

    .line 638
    .local v0, customView:Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;
    if-eqz v0, :cond_1

    .line 642
    invoke-direct {p0, p2, v0}, Lcom/google/android/apps/books/widget/PageTurnView;->setPageToSpecialView(ILcom/google/android/apps/books/widget/PageTurnView$SpecialView;)V

    .line 656
    :goto_0
    return-void

    .line 644
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;

    if-eqz v1, :cond_2

    .line 647
    invoke-direct {p0, p2}, Lcom/google/android/apps/books/widget/PageTurnView;->setPageLoading(I)V

    .line 648
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;

    new-instance v2, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;

    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mBasePosition:Lcom/google/android/apps/books/common/Position;

    iget v4, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRendererSequenceNumber:I

    invoke-direct {v2, v3, v4, p2}, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;-><init>(Lcom/google/android/apps/books/common/Position;II)V

    invoke-virtual {v1, p1, v2}, Lcom/google/android/apps/books/render/ReaderRenderer;->requestRenderPage(Lcom/google/android/apps/books/render/RenderPosition;Ljava/lang/Object;)V

    goto :goto_0

    .line 652
    :cond_2
    const-string v1, "PageTurnView"

    const-string v1, "requestRenderPage() missing renderer, not requesting texture"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    invoke-direct {p0, p2}, Lcom/google/android/apps/books/widget/PageTurnView;->setPageLoading(I)V

    goto :goto_0
.end method

.method private resetInternalState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 315
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mNormalizedSlots:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 316
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mCustomSlots:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 318
    iput-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mSlotStartOfVolume:Ljava/lang/Integer;

    .line 319
    iput-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mSlotEndOfVolume:Ljava/lang/Integer;

    .line 323
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;

    invoke-virtual {v0}, Lcom/google/android/apps/books/render/ReaderRenderer;->cancelPendingRequests()V

    .line 327
    :cond_0
    iget v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRendererSequenceNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRendererSequenceNumber:I

    .line 328
    return-void
.end method

.method private rewindPage()V
    .locals 3

    .prologue
    .line 558
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPosition:Lcom/google/android/apps/books/render/RenderPosition;

    if-nez v1, :cond_0

    .line 559
    const-string v1, "PageTurnView"

    const-string v2, "ignoring rewindPage(), mAnchorPosition is missing"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :goto_0
    return-void

    .line 563
    :cond_0
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x2

    move v0, v1

    .line 564
    .local v0, pageOffset:I
    :goto_1
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/books/widget/PageTurnView;->moveByOffset(II)V

    goto :goto_0

    .line 563
    .end local v0           #pageOffset:I
    :cond_1
    const/4 v1, -0x1

    move v0, v1

    goto :goto_1
.end method

.method private serviceQueue()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const-string v3, "PageTurnView"

    .line 945
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_3

    .line 946
    const-string v1, "PageTurnView"

    const-string v1, "serviceQueue() must be called from the UI thread"

    invoke-static {v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    new-instance v1, Lcom/google/android/apps/books/widget/PageTurnView$3;

    invoke-direct {v1, p0}, Lcom/google/android/apps/books/widget/PageTurnView$3;-><init>(Lcom/google/android/apps/books/widget/PageTurnView;)V

    invoke-virtual {p0, v1}, Lcom/google/android/apps/books/widget/PageTurnView;->post(Ljava/lang/Runnable;)Z

    .line 975
    :cond_0
    :goto_0
    return-void

    .line 968
    .local v0, command:Ljava/lang/Runnable;
    :cond_1
    const-string v1, "PageTurnView"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 969
    const-string v1, "PageTurnView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Servicing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mCommandQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 972
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 960
    .end local v0           #command:Ljava/lang/Runnable;
    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mCommandQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 961
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mCommandQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 962
    .restart local v0       #command:Ljava/lang/Runnable;
    iget v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTurnDirection:I

    if-eqz v1, :cond_1

    instance-of v1, v0, Lcom/google/android/apps/books/widget/PageTurnView$StartTurn;

    if-eqz v1, :cond_1

    .line 963
    const-string v1, "PageTurnView"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 964
    const-string v1, "PageTurnView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delaying: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setPageError(I)V
    .locals 1
    .parameter "targetSlot"

    .prologue
    .line 665
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/widget/PageTurnRS;->setPageError(I)V

    .line 668
    :cond_0
    return-void
.end method

.method private setPageLoading(I)V
    .locals 1
    .parameter "targetSlot"

    .prologue
    .line 659
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/widget/PageTurnRS;->setPageLoading(I)V

    .line 662
    :cond_0
    return-void
.end method

.method private setPageToBitmap(ILandroid/graphics/Bitmap;)V
    .locals 1
    .parameter "targetSlot"
    .parameter "bitmap"

    .prologue
    .line 709
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/books/widget/PageTurnRS;->setPageToBitmap(ILandroid/graphics/Bitmap;)V

    .line 712
    :cond_0
    return-void
.end method

.method private setPageToSpecialView(ILcom/google/android/apps/books/widget/PageTurnView$SpecialView;)V
    .locals 2
    .parameter "slot"
    .parameter "view"

    .prologue
    .line 623
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 624
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/books/widget/PageTurnView;->setPageToBitmap(ILandroid/graphics/Bitmap;)V

    .line 625
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 626
    return-void
.end method

.method private declared-synchronized startPositionUpdate(IZLjava/lang/String;)V
    .locals 3
    .parameter "targetSlot"
    .parameter "fromUser"
    .parameter "lastAction"

    .prologue
    const-string v0, "PageTurnView"

    .line 723
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/apps/books/widget/PageTurnView$ActionEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/apps/books/widget/PageTurnView$ActionEvent;-><init>(IZLjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mPendingAction:Lcom/google/android/apps/books/widget/PageTurnView$ActionEvent;

    .line 724
    const-string v0, "PageTurnView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 725
    const-string v0, "PageTurnView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPositionUpdate() with action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mPendingAction:Lcom/google/android/apps/books/widget/PageTurnView$ActionEvent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_0
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->finishPositionUpdate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 730
    monitor-exit p0

    return-void

    .line 723
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public clearRenderer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 302
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/render/ReaderRenderer;->setRenderListener(Lcom/google/android/apps/books/render/RendererListener;)V

    .line 304
    iput-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;

    .line 306
    :cond_0
    return-void
.end method

.method public endTurn(I)V
    .locals 3
    .parameter "direction"

    .prologue
    const-string v2, "PageTurnView"

    .line 1178
    const-string v0, "PageTurnView"

    const/4 v0, 0x3

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1179
    const-string v0, "PageTurnView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endTurn("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    :cond_0
    new-instance v0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnDirectional;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnDirectional;-><init>(Lcom/google/android/apps/books/widget/PageTurnView;I)V

    invoke-direct {p0, v0}, Lcom/google/android/apps/books/widget/PageTurnView;->dispatchCommand(Ljava/lang/Runnable;)V

    .line 1182
    return-void
.end method

.method public endTurn(Z)Z
    .locals 5
    .parameter "canceled"

    .prologue
    const-string v3, "PageTurnView"

    .line 1156
    const-string v1, "PageTurnView"

    const/4 v1, 0x3

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1157
    const-string v1, "PageTurnView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endTurn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mCommandQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1160
    iget v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mFraction:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 1169
    .local v0, result:Z
    :goto_0
    new-instance v1, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnInertial;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnInertial;-><init>(Lcom/google/android/apps/books/widget/PageTurnView;Z)V

    invoke-direct {p0, v1}, Lcom/google/android/apps/books/widget/PageTurnView;->dispatchCommand(Ljava/lang/Runnable;)V

    .line 1170
    return v0

    .line 1160
    .end local v0           #result:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 1166
    :cond_2
    const/4 v0, 0x1

    .restart local v0       #result:Z
    goto :goto_0
.end method

.method public moveToPosition(Lcom/google/android/apps/books/common/Position;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "position"
    .parameter "fromUser"
    .parameter "lastAction"
    .parameter "highlight"

    .prologue
    const/4 v3, 0x0

    .line 336
    const-string v1, "missing position"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    if-nez p3, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const-string v2, "missing lastAction"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 339
    iput-object p1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mBasePosition:Lcom/google/android/apps/books/common/Position;

    .line 343
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->resetInternalState()V

    .line 345
    const/4 v0, 0x0

    .line 349
    .local v0, targetSlot:I
    invoke-direct {p0, v3, p2, p3}, Lcom/google/android/apps/books/widget/PageTurnView;->startPositionUpdate(IZLjava/lang/String;)V

    .line 351
    new-instance v1, Lcom/google/android/apps/books/render/RenderPosition;

    invoke-direct {v1, p1, p4}, Lcom/google/android/apps/books/render/RenderPosition;-><init>(Lcom/google/android/apps/books/common/Position;Ljava/lang/String;)V

    invoke-direct {p0, v1, v3, v3}, Lcom/google/android/apps/books/widget/PageTurnView;->moveToPosition(Lcom/google/android/apps/books/render/RenderPosition;II)V

    .line 352
    return-void

    .end local v0           #targetSlot:I
    :cond_1
    move v1, v3

    .line 337
    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 528
    invoke-super {p0}, Landroid/renderscript/RSSurfaceView;->onAttachedToWindow()V

    .line 529
    const-string v0, "PageTurnView"

    const-string v1, "onAttachedToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/widget/PageTurnView;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 532
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 536
    invoke-super {p0}, Landroid/renderscript/RSSurfaceView;->onDetachedFromWindow()V

    .line 537
    const-string v0, "PageTurnView"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->resetInternalState()V

    .line 540
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/widget/PageTurnView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 541
    return-void
.end method

.method public onSpecialViewsLayoutChange()V
    .locals 6

    .prologue
    .line 157
    iget-object v5, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mSpecialViews:Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    if-eqz v5, :cond_0

    .line 159
    iget-object v5, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mSpecialViews:Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;

    invoke-interface {v5}, Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;->getLoadingView()Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;

    move-result-object v3

    .line 160
    .local v3, loadingView:Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 161
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    invoke-virtual {v5, v0}, Lcom/google/android/apps/books/widget/PageTurnRS;->setLoadingBitmap(Landroid/graphics/Bitmap;)V

    .line 162
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 165
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mCustomSlots:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 166
    iget-object v5, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mCustomSlots:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 167
    .local v4, targetSlot:I
    iget-object v5, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mCustomSlots:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;

    .line 168
    .local v1, customView:Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;
    invoke-direct {p0, v4, v1}, Lcom/google/android/apps/books/widget/PageTurnView;->setPageToSpecialView(ILcom/google/android/apps/books/widget/PageTurnView$SpecialView;)V

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #customView:Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;
    .end local v2           #i:I
    .end local v3           #loadingView:Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;
    .end local v4           #targetSlot:I
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    .line 1187
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v1, v4

    .line 1188
    .local v1, halfWidth:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    cmpl-float v4, v4, v1

    if-lez v4, :cond_2

    const/4 v4, 0x1

    move v2, v4

    .line 1191
    .local v2, touchedRightHalf:Z
    :goto_0
    iget v3, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPositionSlot:I

    .line 1192
    .local v3, touchedSlot:I
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->isLandscape()Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v2, :cond_0

    .line 1193
    add-int/lit8 v3, v3, -0x1

    .line 1196
    :cond_0
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mCustomSlots:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;

    .line 1197
    .local v0, customView:Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;
    if-eqz v0, :cond_3

    .line 1199
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->isLandscape()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    .line 1200
    neg-float v4, v1

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1203
    :cond_1
    invoke-interface {v0, p1}, Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 1205
    :goto_1
    return v4

    .end local v0           #customView:Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;
    .end local v2           #touchedRightHalf:Z
    .end local v3           #touchedSlot:I
    :cond_2
    move v2, v5

    .line 1188
    goto :goto_0

    .restart local v0       #customView:Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;
    .restart local v2       #touchedRightHalf:Z
    .restart local v3       #touchedSlot:I
    :cond_3
    move v4, v5

    .line 1205
    goto :goto_1
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 505
    invoke-super {p0}, Landroid/renderscript/RSSurfaceView;->pause()V

    .line 508
    iget v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTurnDirection:I

    if-eqz v0, :cond_0

    .line 509
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/widget/PageTurnView;->endTurn(Z)Z

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRS:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_1

    .line 513
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0}, Landroid/renderscript/RenderScriptGL;->pause()V

    .line 515
    :cond_1
    return-void
.end method

.method public refreshPages()V
    .locals 3

    .prologue
    const-string v2, "PageTurnView"

    .line 756
    const-string v1, "PageTurnView"

    const/4 v1, 0x3

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 757
    const-string v1, "PageTurnView"

    const-string v1, "refreshPages()"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_0
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->resetInternalState()V

    .line 764
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPosition:Lcom/google/android/apps/books/render/RenderPosition;

    if-eqz v1, :cond_1

    .line 767
    new-instance v0, Lcom/google/android/apps/books/render/RenderPosition;

    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPosition:Lcom/google/android/apps/books/render/RenderPosition;

    iget-object v1, v1, Lcom/google/android/apps/books/render/RenderPosition;->position:Lcom/google/android/apps/books/common/Position;

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/render/RenderPosition;-><init>(Lcom/google/android/apps/books/common/Position;)V

    .line 769
    .local v0, anchorWithoutIndices:Lcom/google/android/apps/books/render/RenderPosition;
    iget v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPositionSlot:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/books/widget/PageTurnView;->moveToPosition(Lcom/google/android/apps/books/render/RenderPosition;II)V

    .line 772
    .end local v0           #anchorWithoutIndices:Lcom/google/android/apps/books/render/RenderPosition;
    :cond_1
    return-void
.end method

.method public resetZoom()V
    .locals 1

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    if-eqz v0, :cond_0

    .line 1223
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/PageTurnRS;->resetZoom()V

    .line 1225
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 519
    invoke-super {p0}, Landroid/renderscript/RSSurfaceView;->pause()V

    .line 521
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRS:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0}, Landroid/renderscript/RenderScriptGL;->resume()V

    .line 524
    :cond_0
    return-void
.end method

.method public setReaderDelegate(Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;)V
    .locals 1
    .parameter "readerDelegate"

    .prologue
    .line 206
    const-string v0, "missing delegate"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;

    iput-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mReaderDelegate:Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;

    .line 207
    return-void
.end method

.method public setReadingMode(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/view/ViewGroup;I)Lcom/google/android/apps/books/render/ReaderRenderer;
    .locals 4
    .parameter "context"
    .parameter "resolver"
    .parameter "parent"
    .parameter "targetMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ContentResolver;",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/google/android/apps/books/render/ReaderRenderer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 276
    packed-switch p4, :pswitch_data_0

    .line 284
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported reader mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 278
    :pswitch_0
    new-instance v0, Lcom/google/android/apps/books/render/ImageModeRenderer;

    invoke-direct {v0, p2, p1}, Lcom/google/android/apps/books/render/ImageModeRenderer;-><init>(Landroid/content/ContentResolver;Landroid/content/Context;)V

    .line 287
    .local v0, renderer:Lcom/google/android/apps/books/render/ReaderRenderer;,"Lcom/google/android/apps/books/render/ReaderRenderer<Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;>;"
    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/apps/books/render/ReaderRenderer;->setRenderListener(Lcom/google/android/apps/books/render/RendererListener;)V

    .line 291
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderListener:Lcom/google/android/apps/books/render/RendererListener;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/render/ReaderRenderer;->setRenderListener(Lcom/google/android/apps/books/render/RendererListener;)V

    .line 293
    iput-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;

    .line 295
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;

    return-object v1

    .line 281
    .end local v0           #renderer:Lcom/google/android/apps/books/render/ReaderRenderer;,"Lcom/google/android/apps/books/render/ReaderRenderer<Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;>;"
    :pswitch_1
    new-instance v0, Lcom/google/android/apps/books/render/WebViewRenderer;

    invoke-direct {v0, p3, p2}, Lcom/google/android/apps/books/render/WebViewRenderer;-><init>(Landroid/view/ViewGroup;Landroid/content/ContentResolver;)V

    .line 282
    .restart local v0       #renderer:Lcom/google/android/apps/books/render/ReaderRenderer;,"Lcom/google/android/apps/books/render/ReaderRenderer<Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;>;"
    goto :goto_0

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setShouldFadeIn(Z)V
    .locals 1
    .parameter "fade"

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    if-eqz v0, :cond_0

    .line 1229
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/widget/PageTurnRS;->setShouldFadeIn(Z)V

    .line 1231
    :cond_0
    return-void
.end method

.method public setSpecialViews(Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;)V
    .locals 2
    .parameter "specialViews"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mSpecialViews:Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;

    .line 151
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/widget/PageTurnRS;->setLoadingBitmap(Landroid/graphics/Bitmap;)V

    .line 154
    :cond_0
    return-void
.end method

.method public setZoom(FFF)V
    .locals 1
    .parameter "scale"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    if-eqz v0, :cond_0

    .line 1217
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/apps/books/widget/PageTurnRS;->setZoom(FFF)V

    .line 1219
    :cond_0
    return-void
.end method

.method public startTurn(I)V
    .locals 3
    .parameter "turnDirection"

    .prologue
    const/4 v1, 0x1

    const-string v2, "PageTurnView"

    .line 1131
    if-eq p1, v1, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1132
    const-string v0, "PageTurnView"

    const/4 v0, 0x3

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1133
    const-string v0, "PageTurnView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startTurn("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    :cond_1
    new-instance v0, Lcom/google/android/apps/books/widget/PageTurnView$StartTurn;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/books/widget/PageTurnView$StartTurn;-><init>(Lcom/google/android/apps/books/widget/PageTurnView;I)V

    invoke-direct {p0, v0}, Lcom/google/android/apps/books/widget/PageTurnView;->dispatchCommand(Ljava/lang/Runnable;)V

    .line 1136
    return-void

    .line 1131
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 461
    invoke-super {p0, p1, p2, p3, p4}, Landroid/renderscript/RSSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 462
    const-string v0, "PageTurnView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceChanged() w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRS:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0, p1, p3, p4}, Landroid/renderscript/RenderScriptGL;->setSurface(Landroid/view/SurfaceHolder;II)V

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    if-eqz v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/PageTurnRS;->surfaceChanged()V

    .line 471
    :cond_1
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 6
    .parameter "holder"

    .prologue
    const/16 v3, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 426
    invoke-super {p0, p1}, Landroid/renderscript/RSSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 427
    const-string v1, "PageTurnView"

    const-string v2, "surfaceCreated()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRS:Landroid/renderscript/RenderScriptGL;

    if-nez v1, :cond_0

    .line 430
    new-instance v0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    invoke-direct {v0}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;-><init>()V

    .line 431
    .local v0, sc:Landroid/renderscript/RenderScriptGL$SurfaceConfig;
    invoke-virtual {v0, v3, v3}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->setAlpha(II)V

    .line 432
    new-instance v1, Landroid/renderscript/RenderScriptGL;

    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/renderscript/RenderScriptGL;-><init>(Landroid/content/Context;Landroid/renderscript/RenderScriptGL$SurfaceConfig;)V

    iput-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRS:Landroid/renderscript/RenderScriptGL;

    .line 436
    .end local v0           #sc:Landroid/renderscript/RenderScriptGL$SurfaceConfig;
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRS:Landroid/renderscript/RenderScriptGL;

    new-instance v2, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;-><init>(Lcom/google/android/apps/books/widget/PageTurnView;Lcom/google/android/apps/books/widget/PageTurnView$1;)V

    invoke-virtual {v1, v2}, Landroid/renderscript/RenderScriptGL;->setMessageHandler(Landroid/renderscript/RenderScript$RSMessageHandler;)V

    .line 438
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    if-nez v1, :cond_1

    .line 439
    new-instance v1, Lcom/google/android/apps/books/widget/PageTurnRS;

    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/books/widget/PageTurnRS;-><init>(Landroid/renderscript/RenderScriptGL;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    .line 441
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    invoke-virtual {v1, v4}, Lcom/google/android/apps/books/widget/PageTurnRS;->setAnchorIndex(I)V

    .line 443
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    invoke-virtual {v1, v4}, Lcom/google/android/apps/books/widget/PageTurnRS;->setPageEmpty(I)V

    .line 444
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    invoke-virtual {v1, v5}, Lcom/google/android/apps/books/widget/PageTurnRS;->setPageEmpty(I)V

    .line 445
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/books/widget/PageTurnRS;->setPageEmpty(I)V

    .line 446
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/android/apps/books/widget/PageTurnRS;->setPageEmpty(I)V

    .line 447
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/android/apps/books/widget/PageTurnRS;->setPageEmpty(I)V

    .line 448
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/google/android/apps/books/widget/PageTurnRS;->setPageEmpty(I)V

    .line 450
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    invoke-virtual {v1}, Lcom/google/android/apps/books/widget/PageTurnRS;->resumeRendering()V

    .line 452
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2, v4, v5}, Lcom/google/android/apps/books/widget/PageTurnRS;->setTurnState(IFIZ)V

    .line 455
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mSpecialViews:Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/books/widget/PageTurnView;->setSpecialViews(Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;)V

    .line 457
    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4
    .parameter "holder"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 475
    invoke-super {p0, p1}, Landroid/renderscript/RSSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 476
    const-string v0, "PageTurnView"

    const-string v1, "surfaceDestroyed()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/PageTurnRS;->pauseRendering()V

    .line 480
    iput-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRS:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_1

    .line 484
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0, v2}, Landroid/renderscript/RenderScriptGL;->setMessageHandler(Landroid/renderscript/RenderScript$RSMessageHandler;)V

    .line 485
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0, v2, v3, v3}, Landroid/renderscript/RenderScriptGL;->setSurface(Landroid/view/SurfaceHolder;II)V

    .line 486
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0}, Landroid/renderscript/RenderScriptGL;->destroy()V

    .line 487
    iput-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRS:Landroid/renderscript/RenderScriptGL;

    .line 490
    :cond_1
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->resetInternalState()V

    .line 491
    return-void
.end method

.method public surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 498
    const-wide/16 v0, 0x32

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    :goto_0
    return-void

    .line 499
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public tallestCurrentBitmap()I
    .locals 7

    .prologue
    .line 695
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->isLandscape()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    move v4, v5

    .line 696
    .local v4, slotWidth:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->getHeight()I

    move-result v3

    .line 697
    .local v3, slotHeight:I
    int-to-float v5, v4

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 698
    .local v2, slotAspectRatio:F
    move v1, v3

    .line 699
    .local v1, result:I
    iget-object v5, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    if-eqz v5, :cond_0

    .line 700
    iget-object v5, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    invoke-virtual {v5}, Lcom/google/android/apps/books/widget/PageTurnRS;->getTallestCurrentAspectRatio()F

    move-result v0

    .line 701
    .local v0, bitmapAspectRatio:F
    cmpl-float v5, v0, v2

    if-lez v5, :cond_0

    .line 702
    int-to-float v5, v4

    div-float/2addr v5, v0

    float-to-int v1, v5

    .line 705
    .end local v0           #bitmapAspectRatio:F
    :cond_0
    return v1

    .line 695
    .end local v1           #result:I
    .end local v2           #slotAspectRatio:F
    .end local v3           #slotHeight:I
    .end local v4           #slotWidth:I
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->getWidth()I

    move-result v5

    move v4, v5

    goto :goto_0
.end method

.method public updateTurn(F)V
    .locals 1
    .parameter "fraction"

    .prologue
    .line 1144
    new-instance v0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;-><init>(Lcom/google/android/apps/books/widget/PageTurnView;F)V

    invoke-direct {p0, v0}, Lcom/google/android/apps/books/widget/PageTurnView;->dispatchCommand(Ljava/lang/Runnable;)V

    .line 1145
    return-void
.end method

.method public widestCurrentBitmap()I
    .locals 7

    .prologue
    .line 676
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->isLandscape()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    move v4, v5

    .line 677
    .local v4, slotWidth:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->getHeight()I

    move-result v3

    .line 678
    .local v3, slotHeight:I
    int-to-float v5, v4

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 679
    .local v2, slotAspectRatio:F
    move v1, v4

    .line 680
    .local v1, result:I
    iget-object v5, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    if-eqz v5, :cond_0

    .line 681
    iget-object v5, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    invoke-virtual {v5}, Lcom/google/android/apps/books/widget/PageTurnRS;->getWidestCurrentAspectRatio()F

    move-result v0

    .line 682
    .local v0, bitmapAspectRatio:F
    const/4 v5, 0x0

    cmpl-float v5, v0, v5

    if-lez v5, :cond_0

    cmpg-float v5, v0, v2

    if-gez v5, :cond_0

    .line 683
    int-to-float v5, v3

    mul-float/2addr v5, v0

    float-to-int v1, v5

    .line 686
    .end local v0           #bitmapAspectRatio:F
    :cond_0
    return v1

    .line 676
    .end local v1           #result:I
    .end local v2           #slotAspectRatio:F
    .end local v3           #slotHeight:I
    .end local v4           #slotWidth:I
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->getWidth()I

    move-result v5

    move v4, v5

    goto :goto_0
.end method
