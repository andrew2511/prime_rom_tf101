.class Lcom/infraware/common/UxPageInfo$PageInfoTask;
.super Ljava/util/TimerTask;
.source "UxPageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/UxPageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PageInfoTask"
.end annotation


# instance fields
.field protected final mAnimInterval:J

.field protected final mInfoInterval:J

.field protected final mMinusRatio:F

.field protected final mScrollBarInterval:J

.field mStartTime:J

.field final synthetic this$0:Lcom/infraware/common/UxPageInfo;


# direct methods
.method constructor <init>(Lcom/infraware/common/UxPageInfo;J)V
    .locals 2
    .parameter
    .parameter "startTime"

    .prologue
    .line 245
    iput-object p1, p0, Lcom/infraware/common/UxPageInfo$PageInfoTask;->this$0:Lcom/infraware/common/UxPageInfo;

    .line 246
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 239
    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/infraware/common/UxPageInfo$PageInfoTask;->mInfoInterval:J

    .line 240
    const-wide/16 v0, 0x28a

    iput-wide v0, p0, Lcom/infraware/common/UxPageInfo$PageInfoTask;->mScrollBarInterval:J

    .line 241
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/infraware/common/UxPageInfo$PageInfoTask;->mAnimInterval:J

    .line 242
    const v0, 0x3f933333

    iput v0, p0, Lcom/infraware/common/UxPageInfo$PageInfoTask;->mMinusRatio:F

    .line 247
    iput-wide p2, p0, Lcom/infraware/common/UxPageInfo$PageInfoTask;->mStartTime:J

    .line 248
    const/16 v0, 0xe6

    iput v0, p1, Lcom/infraware/common/UxPageInfo;->mScrollBarAlpha:I

    .line 249
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x28a

    const/4 v6, 0x0

    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/infraware/common/UxPageInfo$PageInfoTask;->mStartTime:J

    sub-long v0, v2, v4

    .line 253
    .local v0, diffTime:J
    cmp-long v2, v0, v7

    if-ltz v2, :cond_0

    .line 254
    const-wide/16 v2, 0x5dc

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 255
    iget-object v2, p0, Lcom/infraware/common/UxPageInfo$PageInfoTask;->this$0:Lcom/infraware/common/UxPageInfo;

    iput v6, v2, Lcom/infraware/common/UxPageInfo;->mScrollBarAlpha:I

    .line 256
    iget-object v2, p0, Lcom/infraware/common/UxPageInfo$PageInfoTask;->this$0:Lcom/infraware/common/UxPageInfo;

    iget-object v2, v2, Lcom/infraware/common/UxPageInfo;->mPageInfoTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 257
    iget-object v2, p0, Lcom/infraware/common/UxPageInfo$PageInfoTask;->this$0:Lcom/infraware/common/UxPageInfo;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/infraware/common/UxPageInfo;->mPageInfoTimer:Ljava/util/Timer;

    .line 258
    iget-object v2, p0, Lcom/infraware/common/UxPageInfo$PageInfoTask;->this$0:Lcom/infraware/common/UxPageInfo;

    iput-boolean v6, v2, Lcom/infraware/common/UxPageInfo;->mbScrollbar:Z

    .line 259
    iget-object v2, p0, Lcom/infraware/common/UxPageInfo$PageInfoTask;->this$0:Lcom/infraware/common/UxPageInfo;

    invoke-virtual {v2, v6}, Lcom/infraware/common/UxPageInfo;->setPageInfoType(I)V

    .line 267
    :goto_0
    iget-object v2, p0, Lcom/infraware/common/UxPageInfo$PageInfoTask;->this$0:Lcom/infraware/common/UxPageInfo;

    iget-object v2, v2, Lcom/infraware/common/UxPageInfo;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v2}, Lcom/infraware/common/UxSurfaceView;->drawAllContents()V

    .line 269
    :cond_0
    return-void

    .line 261
    :cond_1
    cmp-long v2, v0, v7

    if-lez v2, :cond_2

    const-wide/16 v2, 0x352

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 262
    iget-object v2, p0, Lcom/infraware/common/UxPageInfo$PageInfoTask;->this$0:Lcom/infraware/common/UxPageInfo;

    const/high16 v3, 0x4366

    sub-long v4, v0, v7

    long-to-float v4, v4

    const v5, 0x3f933333

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Lcom/infraware/common/UxPageInfo;->mScrollBarAlpha:I

    goto :goto_0

    .line 265
    :cond_2
    iget-object v2, p0, Lcom/infraware/common/UxPageInfo$PageInfoTask;->this$0:Lcom/infraware/common/UxPageInfo;

    iput v6, v2, Lcom/infraware/common/UxPageInfo;->mScrollBarAlpha:I

    goto :goto_0
.end method
