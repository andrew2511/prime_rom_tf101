.class public Lcom/android/gallery3d/ui/CacheBarView;
.super Lcom/android/gallery3d/ui/GLView;
.source "CacheBarView.java"

# interfaces
.implements Lcom/android/gallery3d/ui/TextButton$OnClickedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/CacheBarView$StorageInfoJob;,
        Lcom/android/gallery3d/ui/CacheBarView$StorageInfo;,
        Lcom/android/gallery3d/ui/CacheBarView$Listener;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/gallery3d/app/GalleryActivity;

.field private mBackground:Lcom/android/gallery3d/ui/NinePatchTexture;

.field private mButtonRightMargin:I

.field private mContext:Landroid/content/Context;

.field private mDoneButton:Lcom/android/gallery3d/ui/TextButton;

.field private mHandler:Landroid/os/Handler;

.field private mLeftLabel:Lcom/android/gallery3d/ui/GLView;

.field private mLeftPin:Lcom/android/gallery3d/ui/GLView;

.field private mListener:Lcom/android/gallery3d/ui/CacheBarView$Listener;

.field private mPinLeftMargin:I

.field private mPinRightMargin:I

.field private mStorageBar:Lcom/android/gallery3d/ui/ProgressBar;

.field private mStorageInfo:Lcom/android/gallery3d/ui/CacheBarView$StorageInfo;

.field private mStorageInfoFuture:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Lcom/android/gallery3d/ui/CacheBarView$StorageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStorageLabel:Lcom/android/gallery3d/ui/Label;

.field private mTotalHeight:I

.field private mUserChangeDelta:J


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;IIIIII)V
    .locals 8
    .parameter "activity"
    .parameter "resBackground"
    .parameter "height"
    .parameter "pinLeftMargin"
    .parameter "pinRightMargin"
    .parameter "buttonRightMargin"
    .parameter "fontSize"

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 68
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/android/gallery3d/ui/CacheBarView;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    .line 70
    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/ui/CacheBarView;->mContext:Landroid/content/Context;

    .line 72
    iput p4, p0, Lcom/android/gallery3d/ui/CacheBarView;->mPinLeftMargin:I

    .line 73
    iput p5, p0, Lcom/android/gallery3d/ui/CacheBarView;->mPinRightMargin:I

    .line 74
    iput p6, p0, Lcom/android/gallery3d/ui/CacheBarView;->mButtonRightMargin:I

    .line 76
    new-instance v1, Lcom/android/gallery3d/ui/NinePatchTexture;

    iget-object v2, p0, Lcom/android/gallery3d/ui/CacheBarView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p2}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/CacheBarView;->mBackground:Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 77
    iget-object v1, p0, Lcom/android/gallery3d/ui/CacheBarView;->mBackground:Lcom/android/gallery3d/ui/NinePatchTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v0

    .line 81
    .local v0, paddings:Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/android/gallery3d/ui/CacheBarView;->mTotalHeight:I

    .line 83
    new-instance v1, Lcom/android/gallery3d/ui/Icon;

    iget-object v2, p0, Lcom/android/gallery3d/ui/CacheBarView;->mContext:Landroid/content/Context;

    const v3, 0x7f02001c

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/Icon;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/CacheBarView;->mLeftPin:Lcom/android/gallery3d/ui/GLView;

    .line 84
    new-instance v1, Lcom/android/gallery3d/ui/Label;

    iget-object v2, p0, Lcom/android/gallery3d/ui/CacheBarView;->mContext:Landroid/content/Context;

    const v3, 0x7f08003b

    invoke-direct {v1, v2, v3, p7, v6}, Lcom/android/gallery3d/ui/Label;-><init>(Landroid/content/Context;III)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/CacheBarView;->mLeftLabel:Lcom/android/gallery3d/ui/GLView;

    .line 86
    iget-object v1, p0, Lcom/android/gallery3d/ui/CacheBarView;->mLeftPin:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/CacheBarView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 87
    iget-object v1, p0, Lcom/android/gallery3d/ui/CacheBarView;->mLeftLabel:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/CacheBarView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 89
    new-instance v1, Lcom/android/gallery3d/ui/TextButton;

    iget-object v2, p0, Lcom/android/gallery3d/ui/CacheBarView;->mContext:Landroid/content/Context;

    const v3, 0x7f08003c

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/TextButton;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/CacheBarView;->mDoneButton:Lcom/android/gallery3d/ui/TextButton;

    .line 90
    iget-object v1, p0, Lcom/android/gallery3d/ui/CacheBarView;->mDoneButton:Lcom/android/gallery3d/ui/TextButton;

    invoke-virtual {v1, p0}, Lcom/android/gallery3d/ui/TextButton;->setOnClickListener(Lcom/android/gallery3d/ui/TextButton$OnClickedListener;)V

    .line 91
    iget-object v1, p0, Lcom/android/gallery3d/ui/CacheBarView;->mDoneButton:Lcom/android/gallery3d/ui/TextButton;

    new-instance v2, Lcom/android/gallery3d/ui/NinePatchTexture;

    iget-object v3, p0, Lcom/android/gallery3d/ui/CacheBarView;->mContext:Landroid/content/Context;

    const v4, 0x7f020009

    invoke-direct {v2, v3, v4}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/TextButton;->setNormalBackground(Lcom/android/gallery3d/ui/Texture;)V

    .line 93
    iget-object v1, p0, Lcom/android/gallery3d/ui/CacheBarView;->mDoneButton:Lcom/android/gallery3d/ui/TextButton;

    new-instance v2, Lcom/android/gallery3d/ui/NinePatchTexture;

    iget-object v3, p0, Lcom/android/gallery3d/ui/CacheBarView;->mContext:Landroid/content/Context;

    const v4, 0x7f02000a

    invoke-direct {v2, v3, v4}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/TextButton;->setPressedBackground(Lcom/android/gallery3d/ui/Texture;)V

    .line 95
    iget-object v1, p0, Lcom/android/gallery3d/ui/CacheBarView;->mDoneButton:Lcom/android/gallery3d/ui/TextButton;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/CacheBarView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 99
    new-instance v1, Lcom/android/gallery3d/ui/ProgressBar;

    iget-object v2, p0, Lcom/android/gallery3d/ui/CacheBarView;->mContext:Landroid/content/Context;

    const v3, 0x7f020034

    const v4, 0x7f020035

    const v5, 0x7f020033

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/gallery3d/ui/ProgressBar;-><init>(Landroid/content/Context;III)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/CacheBarView;->mStorageBar:Lcom/android/gallery3d/ui/ProgressBar;

    .line 103
    new-instance v1, Lcom/android/gallery3d/ui/Label;

    iget-object v2, p0, Lcom/android/gallery3d/ui/CacheBarView;->mContext:Landroid/content/Context;

    const-string v3, ""

    const/16 v4, 0xe

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/android/gallery3d/ui/Label;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/CacheBarView;->mStorageLabel:Lcom/android/gallery3d/ui/Label;

    .line 104
    iget-object v1, p0, Lcom/android/gallery3d/ui/CacheBarView;->mStorageBar:Lcom/android/gallery3d/ui/ProgressBar;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/CacheBarView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 105
    iget-object v1, p0, Lcom/android/gallery3d/ui/CacheBarView;->mStorageLabel:Lcom/android/gallery3d/ui/Label;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/CacheBarView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 106
    iget-object v1, p0, Lcom/android/gallery3d/ui/CacheBarView;->mStorageBar:Lcom/android/gallery3d/ui/ProgressBar;

    invoke-virtual {v1, v7}, Lcom/android/gallery3d/ui/ProgressBar;->setVisibility(I)V

    .line 107
    iget-object v1, p0, Lcom/android/gallery3d/ui/CacheBarView;->mStorageLabel:Lcom/android/gallery3d/ui/Label;

    invoke-virtual {v1, v7}, Lcom/android/gallery3d/ui/Label;->setVisibility(I)V

    .line 109
    new-instance v1, Lcom/android/gallery3d/ui/CacheBarView$1;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/ui/CacheBarView$1;-><init>(Lcom/android/gallery3d/ui/CacheBarView;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/CacheBarView;->mHandler:Landroid/os/Handler;

    .line 120
    return-void
.end method

.method static synthetic access$002(Lcom/android/gallery3d/ui/CacheBarView;Lcom/android/gallery3d/ui/CacheBarView$StorageInfo;)Lcom/android/gallery3d/ui/CacheBarView$StorageInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/gallery3d/ui/CacheBarView;->mStorageInfo:Lcom/android/gallery3d/ui/CacheBarView$StorageInfo;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/gallery3d/ui/CacheBarView;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/gallery3d/ui/CacheBarView;->mStorageInfoFuture:Lcom/android/gallery3d/util/Future;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/CacheBarView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/ui/CacheBarView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/CacheBarView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/ui/CacheBarView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/CacheBarView;)Lcom/android/gallery3d/app/GalleryActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/ui/CacheBarView;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    return-object v0
.end method


# virtual methods
.method public increaseTargetCacheSize(J)V
    .locals 2
    .parameter "delta"

    .prologue
    .line 204
    iget-wide v0, p0, Lcom/android/gallery3d/ui/CacheBarView;->mUserChangeDelta:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/gallery3d/ui/CacheBarView;->mUserChangeDelta:J

    .line 205
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/CacheBarView;->refreshStorageInfo()V

    .line 206
    return-void
.end method

.method public onClicked(Lcom/android/gallery3d/ui/GLView;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/gallery3d/ui/CacheBarView;->mListener:Lcom/android/gallery3d/ui/CacheBarView$Listener;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/gallery3d/ui/CacheBarView;->mListener:Lcom/android/gallery3d/ui/CacheBarView$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/CacheBarView$Listener;->onDoneClicked()V

    .line 131
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 32
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 138
    sub-int v28, p4, p2

    .line 139
    .local v28, w:I
    sub-int v19, p5, p3

    .line 141
    .local v19, h:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/CacheBarView;->mLeftPin:Lcom/android/gallery3d/ui/GLView;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Lcom/android/gallery3d/ui/GLView;->measure(II)V

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/CacheBarView;->mLeftPin:Lcom/android/gallery3d/ui/GLView;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/gallery3d/ui/GLView;->getMeasuredHeight()I

    move-result v24

    .line 143
    .local v24, pinH:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/CacheBarView;->mLeftPin:Lcom/android/gallery3d/ui/GLView;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/gallery3d/ui/GLView;->getMeasuredWidth()I

    move-result v27

    .line 144
    .local v27, pinW:I
    sub-int v29, v19, v24

    div-int/lit8 v26, v29, 0x2

    .line 145
    .local v26, pinT:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/CacheBarView;->mPinLeftMargin:I

    move/from16 v25, v0

    .line 146
    .local v25, pinL:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/CacheBarView;->mLeftPin:Lcom/android/gallery3d/ui/GLView;

    move-object/from16 v29, v0

    add-int v30, v25, v27

    add-int v31, v26, v24

    move-object/from16 v0, v29

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/ui/GLView;->layout(IIII)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/CacheBarView;->mLeftLabel:Lcom/android/gallery3d/ui/GLView;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Lcom/android/gallery3d/ui/GLView;->measure(II)V

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/CacheBarView;->mLeftLabel:Lcom/android/gallery3d/ui/GLView;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/gallery3d/ui/GLView;->getMeasuredHeight()I

    move-result v20

    .line 150
    .local v20, labelH:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/CacheBarView;->mLeftLabel:Lcom/android/gallery3d/ui/GLView;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/gallery3d/ui/GLView;->getMeasuredWidth()I

    move-result v23

    .line 151
    .local v23, labelW:I
    sub-int v29, v19, v20

    div-int/lit8 v22, v29, 0x2

    .line 152
    .local v22, labelT:I
    add-int v29, v25, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/CacheBarView;->mPinRightMargin:I

    move/from16 v30, v0

    add-int v21, v29, v30

    .line 153
    .local v21, labelL:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/CacheBarView;->mLeftLabel:Lcom/android/gallery3d/ui/GLView;

    move-object/from16 v29, v0

    add-int v30, v21, v23

    add-int v31, v22, v20

    move-object/from16 v0, v29

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/ui/GLView;->layout(IIII)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/CacheBarView;->mDoneButton:Lcom/android/gallery3d/ui/TextButton;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Lcom/android/gallery3d/ui/TextButton;->measure(II)V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/CacheBarView;->mDoneButton:Lcom/android/gallery3d/ui/TextButton;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/gallery3d/ui/TextButton;->getMeasuredHeight()I

    move-result v15

    .line 157
    .local v15, doneH:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/CacheBarView;->mDoneButton:Lcom/android/gallery3d/ui/TextButton;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/gallery3d/ui/TextButton;->getMeasuredWidth()I

    move-result v18

    .line 158
    .local v18, doneW:I
    sub-int v29, v19, v15

    div-int/lit8 v17, v29, 0x2

    .line 159
    .local v17, doneT:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/CacheBarView;->mButtonRightMargin:I

    move/from16 v29, v0

    sub-int v16, v28, v29

    .line 160
    .local v16, doneR:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/CacheBarView;->mDoneButton:Lcom/android/gallery3d/ui/TextButton;

    move-object/from16 v29, v0

    sub-int v30, v16, v18

    add-int v31, v17, v15

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v17

    move/from16 v3, v16

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/ui/TextButton;->layout(IIII)V

    .line 162
    div-int/lit8 v13, v28, 0x2

    .line 163
    .local v13, centerX:I
    div-int/lit8 v14, v19, 0x2

    .line 165
    .local v14, centerY:I
    const/16 v5, 0x14

    .line 166
    .local v5, capBarH:I
    const/16 v8, 0xc8

    .line 167
    .local v8, capBarW:I
    div-int/lit8 v29, v5, 0x2

    sub-int v7, v14, v29

    .line 168
    .local v7, capBarT:I
    div-int/lit8 v29, v8, 0x2

    sub-int v6, v13, v29

    .line 169
    .local v6, capBarL:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/CacheBarView;->mStorageBar:Lcom/android/gallery3d/ui/ProgressBar;

    move-object/from16 v29, v0

    add-int v30, v6, v8

    add-int v31, v7, v5

    move-object/from16 v0, v29

    move v1, v6

    move v2, v7

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/ui/ProgressBar;->layout(IIII)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/CacheBarView;->mStorageLabel:Lcom/android/gallery3d/ui/Label;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Lcom/android/gallery3d/ui/Label;->measure(II)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/CacheBarView;->mStorageLabel:Lcom/android/gallery3d/ui/Label;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/gallery3d/ui/Label;->getMeasuredHeight()I

    move-result v9

    .line 174
    .local v9, capLabelH:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/CacheBarView;->mStorageLabel:Lcom/android/gallery3d/ui/Label;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/gallery3d/ui/Label;->getMeasuredWidth()I

    move-result v12

    .line 175
    .local v12, capLabelW:I
    div-int/lit8 v29, v9, 0x2

    sub-int v11, v14, v29

    .line 176
    .local v11, capLabelT:I
    div-int/lit8 v29, v8, 0x2

    add-int v29, v29, v13

    add-int/lit8 v10, v29, 0x8

    .line 177
    .local v10, capLabelL:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/CacheBarView;->mStorageLabel:Lcom/android/gallery3d/ui/Label;

    move-object/from16 v29, v0

    add-int v30, v10, v12

    add-int v31, v11, v9

    move-object/from16 v0, v29

    move v1, v10

    move v2, v11

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/ui/Label;->layout(IIII)V

    .line 179
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 229
    iget-object v0, p0, Lcom/android/gallery3d/ui/CacheBarView;->mStorageInfoFuture:Lcom/android/gallery3d/util/Future;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/gallery3d/ui/CacheBarView;->mStorageInfoFuture:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/CacheBarView;->mStorageInfoFuture:Lcom/android/gallery3d/util/Future;

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/CacheBarView;->mStorageBar:Lcom/android/gallery3d/ui/ProgressBar;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ProgressBar;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/android/gallery3d/ui/CacheBarView;->mStorageLabel:Lcom/android/gallery3d/ui/Label;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/Label;->setVisibility(I)V

    .line 235
    return-void
.end method

.method public refreshStorageInfo()V
    .locals 23

    .prologue
    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/CacheBarView;->mStorageInfo:Lcom/android/gallery3d/ui/CacheBarView$StorageInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/gallery3d/ui/CacheBarView$StorageInfo;->usedBytes:J

    move-wide/from16 v17, v0

    .line 183
    .local v17, used:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/CacheBarView;->mStorageInfo:Lcom/android/gallery3d/ui/CacheBarView$StorageInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/gallery3d/ui/CacheBarView$StorageInfo;->totalBytes:J

    move-wide v15, v0

    .line 184
    .local v15, total:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/CacheBarView;->mStorageInfo:Lcom/android/gallery3d/ui/CacheBarView$StorageInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/gallery3d/ui/CacheBarView$StorageInfo;->usedCacheBytes:J

    move-wide v3, v0

    .line 185
    .local v3, cached:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/CacheBarView;->mStorageInfo:Lcom/android/gallery3d/ui/CacheBarView$StorageInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/gallery3d/ui/CacheBarView$StorageInfo;->targetCacheBytes:J

    move-wide v13, v0

    .line 187
    .local v13, target:J
    move-wide/from16 v0, v17

    long-to-double v0, v0

    move-wide/from16 v19, v0

    move-wide v0, v15

    long-to-double v0, v0

    move-wide/from16 v21, v0

    div-double v8, v19, v21

    .line 188
    .local v8, primary:D
    sub-long v19, v17, v3

    add-long v19, v19, v13

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/gallery3d/ui/CacheBarView;->mUserChangeDelta:J

    move-wide/from16 v21, v0

    add-long v19, v19, v21

    move-wide/from16 v0, v19

    long-to-double v0, v0

    move-wide/from16 v19, v0

    move-wide v0, v15

    long-to-double v0, v0

    move-wide/from16 v21, v0

    div-double v10, v19, v21

    .line 191
    .local v10, secondary:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/CacheBarView;->mStorageBar:Lcom/android/gallery3d/ui/ProgressBar;

    move-object/from16 v19, v0

    const-wide v20, 0x40c3880000000000L

    mul-double v20, v20, v8

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/gallery3d/ui/ProgressBar;->setProgress(I)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/CacheBarView;->mStorageBar:Lcom/android/gallery3d/ui/ProgressBar;

    move-object/from16 v19, v0

    const-wide v20, 0x40c3880000000000L

    mul-double v20, v20, v10

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/gallery3d/ui/ProgressBar;->setSecondaryProgress(I)V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/CacheBarView;->mStorageInfo:Lcom/android/gallery3d/ui/CacheBarView$StorageInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/gallery3d/ui/CacheBarView$StorageInfo;->totalBytes:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/CacheBarView;->mStorageInfo:Lcom/android/gallery3d/ui/CacheBarView$StorageInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/android/gallery3d/ui/CacheBarView$StorageInfo;->usedBytes:J

    move-wide/from16 v21, v0

    sub-long v5, v19, v21

    .line 195
    .local v5, freeBytes:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/CacheBarView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-wide v1, v5

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    .line 196
    .local v12, sizeString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/CacheBarView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f08005b

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v12, v21, v22

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 197
    .local v7, label:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/CacheBarView;->mStorageLabel:Lcom/android/gallery3d/ui/Label;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/Label;->setText(Ljava/lang/String;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/CacheBarView;->mStorageBar:Lcom/android/gallery3d/ui/ProgressBar;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/gallery3d/ui/ProgressBar;->setVisibility(I)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/CacheBarView;->mStorageLabel:Lcom/android/gallery3d/ui/Label;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/gallery3d/ui/Label;->setVisibility(I)V

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/CacheBarView;->requestLayout()V

    .line 201
    return-void
.end method

.method protected renderBackground(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/gallery3d/ui/CacheBarView;->mBackground:Lcom/android/gallery3d/ui/NinePatchTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v6

    .line 211
    .local v6, paddings:Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/gallery3d/ui/CacheBarView;->mBackground:Lcom/android/gallery3d/ui/NinePatchTexture;

    const/4 v2, 0x0

    iget v1, v6, Landroid/graphics/Rect;->top:I

    neg-int v3, v1

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/CacheBarView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/android/gallery3d/ui/CacheBarView;->mTotalHeight:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/NinePatchTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 212
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/gallery3d/ui/CacheBarView;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/ui/CacheBarView$StorageInfoJob;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/ui/CacheBarView$StorageInfoJob;-><init>(Lcom/android/gallery3d/ui/CacheBarView;Lcom/android/gallery3d/ui/CacheBarView$1;)V

    new-instance v2, Lcom/android/gallery3d/ui/CacheBarView$2;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/ui/CacheBarView$2;-><init>(Lcom/android/gallery3d/ui/CacheBarView;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/CacheBarView;->mStorageInfoFuture:Lcom/android/gallery3d/util/Future;

    .line 226
    return-void
.end method

.method public setListener(Lcom/android/gallery3d/ui/CacheBarView$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/gallery3d/ui/CacheBarView;->mListener:Lcom/android/gallery3d/ui/CacheBarView$Listener;

    .line 124
    return-void
.end method
