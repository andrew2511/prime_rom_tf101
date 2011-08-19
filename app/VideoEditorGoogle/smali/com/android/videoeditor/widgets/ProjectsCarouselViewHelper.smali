.class public Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;
.super Lcom/android/ex/carousel/CarouselViewHelper;
.source "ProjectsCarouselViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper$CarouselItemListener;
    }
.end annotation


# static fields
.field private static final CARD_SLOTS_LANDSCAPE:I = 0xc

.field private static final CARD_SLOTS_PORTRAIT:I = 0x18

.field private static final SLOTS_VISIBLE_LANDSCAPE:I = 0x3

.field private static final SLOTS_VISIBLE_PORTRAIT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ProjectsCarouselView"


# instance fields
.field private final mCarouselDetailTextureHeight:I

.field private final mCarouselDetailTextureWidth:I

.field private final mCarouselItemListener:Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper$CarouselItemListener;

.field private final mCarouselPixelBorder:I

.field private final mCarouselTextureHeight:I

.field private final mCarouselTextureWidth:I

.field private final mContext:Landroid/content/Context;

.field private final mDetailTextureParameters:Lcom/android/ex/carousel/CarouselViewHelper$DetailTextureParameters;

.field private final mPaint:Landroid/graphics/Paint;

.field private mProjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/videoeditor/service/VideoEditorProject;",
            ">;"
        }
    .end annotation
.end field

.field private final mSyncHandler:Landroid/os/Handler;

.field private final mView:Lcom/android/videoeditor/widgets/ProjectsCarouselView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/videoeditor/widgets/ProjectsCarouselView;Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper$CarouselItemListener;)V
    .locals 16
    .parameter "context"
    .parameter "view"
    .parameter "listener"

    .prologue
    .line 111
    invoke-direct/range {p0 .. p2}, Lcom/android/ex/carousel/CarouselViewHelper;-><init>(Landroid/content/Context;Lcom/android/ex/carousel/CarouselView;)V

    .line 78
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mProjects:Ljava/util/List;

    .line 113
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mContext:Landroid/content/Context;

    .line 114
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mCarouselItemListener:Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper$CarouselItemListener;

    .line 116
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 117
    .local v9, resources:Landroid/content/res/Resources;
    const v11, 0x7f07000d

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mCarouselPixelBorder:I

    .line 118
    const v11, 0x7f07000e

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mCarouselTextureHeight:I

    .line 119
    const v11, 0x7f070011

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mCarouselDetailTextureHeight:I

    .line 122
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mView:Lcom/android/videoeditor/widgets/ProjectsCarouselView;

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mView:Lcom/android/videoeditor/widgets/ProjectsCarouselView;

    move-object v11, v0

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/ProjectsCarouselView;->setCallback(Lcom/android/ex/carousel/CarouselRS$CarouselCallback;)V

    .line 125
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mPaint:Landroid/graphics/Paint;

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mPaint:Landroid/graphics/Paint;

    move-object v11, v0

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 128
    new-instance v11, Lcom/android/ex/carousel/CarouselViewHelper$DetailTextureParameters;

    const/4 v12, 0x0

    const/high16 v13, 0x40a0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/android/ex/carousel/CarouselViewHelper$DetailTextureParameters;-><init>(FFFF)V

    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mDetailTextureParameters:Lcom/android/ex/carousel/CarouselViewHelper$DetailTextureParameters;

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mContext:Landroid/content/Context;

    move-object v11, v0

    const-string v12, "window"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/view/WindowManager;

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 132
    .local v4, display:Landroid/view/Display;
    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v8

    .line 133
    .local v8, orientation:I
    if-eqz v8, :cond_0

    const/4 v11, 0x2

    if-ne v8, v11, :cond_1

    :cond_0
    const/4 v11, 0x1

    move v6, v11

    .line 137
    .local v6, landscape:Z
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mCarouselTextureHeight:I

    move v11, v0

    mul-int/lit8 v11, v11, 0x4

    div-int/lit8 v11, v11, 0x3

    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mCarouselTextureWidth:I

    .line 138
    const/16 v11, 0x10

    new-array v7, v11, [F

    fill-array-data v7, :array_0

    .line 143
    .local v7, matrix:[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mView:Lcom/android/videoeditor/widgets/ProjectsCarouselView;

    move-object v11, v0

    invoke-virtual {v11, v7}, Lcom/android/videoeditor/widgets/ProjectsCarouselView;->setDefaultCardMatrix([F)V

    .line 145
    const v11, 0x7f02000d

    invoke-static {v9, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 146
    .local v3, border:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mView:Lcom/android/videoeditor/widgets/ProjectsCarouselView;

    move-object v11, v0

    invoke-virtual {v11, v3}, Lcom/android/videoeditor/widgets/ProjectsCarouselView;->setDefaultBitmap(Landroid/graphics/Bitmap;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mView:Lcom/android/videoeditor/widgets/ProjectsCarouselView;

    move-object v11, v0

    invoke-virtual {v11, v3}, Lcom/android/videoeditor/widgets/ProjectsCarouselView;->setLoadingBitmap(Landroid/graphics/Bitmap;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mView:Lcom/android/videoeditor/widgets/ProjectsCarouselView;

    move-object v11, v0

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/videoeditor/widgets/ProjectsCarouselView;->createCards(I)V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mView:Lcom/android/videoeditor/widgets/ProjectsCarouselView;

    move-object v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/android/videoeditor/widgets/ProjectsCarouselView;->setBackgroundColor(FFFF)V

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mView:Lcom/android/videoeditor/widgets/ProjectsCarouselView;

    move-object v11, v0

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/videoeditor/widgets/ProjectsCarouselView;->setRezInCardCount(F)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mView:Lcom/android/videoeditor/widgets/ProjectsCarouselView;

    move-object v11, v0

    const-wide/16 v12, 0xfa

    invoke-virtual {v11, v12, v13}, Lcom/android/videoeditor/widgets/ProjectsCarouselView;->setFadeInDuration(J)V

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mView:Lcom/android/videoeditor/widgets/ProjectsCarouselView;

    move-object v11, v0

    const v12, -0x4036f025

    invoke-virtual {v11, v12}, Lcom/android/videoeditor/widgets/ProjectsCarouselView;->setCardRotation(F)V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mView:Lcom/android/videoeditor/widgets/ProjectsCarouselView;

    move-object v11, v0

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/android/videoeditor/widgets/ProjectsCarouselView;->setDragModel(I)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mView:Lcom/android/videoeditor/widgets/ProjectsCarouselView;

    move-object v11, v0

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/videoeditor/widgets/ProjectsCarouselView;->setCardsFaceTangent(Z)V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mView:Lcom/android/videoeditor/widgets/ProjectsCarouselView;

    move-object v11, v0

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/videoeditor/widgets/ProjectsCarouselView;->setDrawRuler(Z)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mView:Lcom/android/videoeditor/widgets/ProjectsCarouselView;

    move-object v11, v0

    const/16 v12, 0x110

    invoke-virtual {v11, v12}, Lcom/android/videoeditor/widgets/ProjectsCarouselView;->setDetailTextureAlignment(I)V

    .line 162
    if-eqz v6, :cond_2

    .line 163
    const v11, 0x7f07000f

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mCarouselDetailTextureWidth:I

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mView:Lcom/android/videoeditor/widgets/ProjectsCarouselView;

    move-object v11, v0

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Lcom/android/videoeditor/widgets/ProjectsCarouselView;->setVisibleSlots(I)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mView:Lcom/android/videoeditor/widgets/ProjectsCarouselView;

    move-object v11, v0

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Lcom/android/videoeditor/widgets/ProjectsCarouselView;->setVisibleDetails(I)V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mView:Lcom/android/videoeditor/widgets/ProjectsCarouselView;

    move-object v11, v0

    const v12, 0x40060a92

    invoke-virtual {v11, v12}, Lcom/android/videoeditor/widgets/ProjectsCarouselView;->setStartAngle(F)V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mView:Lcom/android/videoeditor/widgets/ProjectsCarouselView;

    move-object v11, v0

    const/16 v12, 0xc

    invoke-virtual {v11, v12}, Lcom/android/videoeditor/widgets/ProjectsCarouselView;->setSlotCount(I)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mView:Lcom/android/videoeditor/widgets/ProjectsCarouselView;

    move-object v11, v0

    const/high16 v12, 0x4080

    invoke-virtual {v11, v12}, Lcom/android/videoeditor/widgets/ProjectsCarouselView;->setRadius(F)V

    .line 172
    const/4 v11, 0x3

    new-array v5, v11, [F

    fill-array-data v5, :array_1

    .line 173
    .local v5, eye:[F
    const/4 v11, 0x3

    new-array v2, v11, [F

    fill-array-data v2, :array_2

    .line 174
    .local v2, at:[F
    const/4 v11, 0x3

    new-array v10, v11, [F

    fill-array-data v10, :array_3

    .line 190
    .local v10, up:[F
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mView:Lcom/android/videoeditor/widgets/ProjectsCarouselView;

    move-object v11, v0

    invoke-virtual {v11, v5, v2, v10}, Lcom/android/videoeditor/widgets/ProjectsCarouselView;->setLookAt([F[F[F)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mView:Lcom/android/videoeditor/widgets/ProjectsCarouselView;

    move-object v11, v0

    invoke-virtual {v11}, Lcom/android/videoeditor/widgets/ProjectsCarouselView;->getController()Lcom/android/ex/carousel/CarouselController;

    move-result-object v11

    const/4 v12, -0x1

    invoke-virtual {v11, v12}, Lcom/android/ex/carousel/CarouselController;->setFillDirection(I)V

    .line 194
    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mSyncHandler:Landroid/os/Handler;

    .line 195
    return-void

    .line 133
    .end local v2           #at:[F
    .end local v3           #border:Landroid/graphics/Bitmap;
    .end local v5           #eye:[F
    .end local v6           #landscape:Z
    .end local v7           #matrix:[F
    .end local v10           #up:[F
    :cond_1
    const/4 v11, 0x0

    move v6, v11

    goto/16 :goto_0

    .line 176
    .restart local v3       #border:Landroid/graphics/Bitmap;
    .restart local v6       #landscape:Z
    .restart local v7       #matrix:[F
    :cond_2
    const v11, 0x7f070010

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mCarouselDetailTextureWidth:I

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mView:Lcom/android/videoeditor/widgets/ProjectsCarouselView;

    move-object v11, v0

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Lcom/android/videoeditor/widgets/ProjectsCarouselView;->setVisibleSlots(I)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mView:Lcom/android/videoeditor/widgets/ProjectsCarouselView;

    move-object v11, v0

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Lcom/android/videoeditor/widgets/ProjectsCarouselView;->setVisibleDetails(I)V

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mView:Lcom/android/videoeditor/widgets/ProjectsCarouselView;

    move-object v11, v0

    const v12, 0x3fea927f

    invoke-virtual {v11, v12}, Lcom/android/videoeditor/widgets/ProjectsCarouselView;->setStartAngle(F)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mView:Lcom/android/videoeditor/widgets/ProjectsCarouselView;

    move-object v11, v0

    const/16 v12, 0x18

    invoke-virtual {v11, v12}, Lcom/android/videoeditor/widgets/ProjectsCarouselView;->setSlotCount(I)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mView:Lcom/android/videoeditor/widgets/ProjectsCarouselView;

    move-object v11, v0

    const/high16 v12, 0x4100

    invoke-virtual {v11, v12}, Lcom/android/videoeditor/widgets/ProjectsCarouselView;->setRadius(F)V

    .line 185
    const/4 v11, 0x3

    new-array v5, v11, [F

    fill-array-data v5, :array_4

    .line 186
    .restart local v5       #eye:[F
    const/4 v11, 0x3

    new-array v2, v11, [F

    fill-array-data v2, :array_5

    .line 187
    .restart local v2       #at:[F
    const/4 v11, 0x3

    new-array v10, v11, [F

    fill-array-data v10, :array_6

    .restart local v10       #up:[F
    goto :goto_1

    .line 138
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x40t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 172
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x40t
    .end array-data

    .line 173
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x70t 0xc1t
    .end array-data

    .line 174
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 185
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x41t
    .end array-data

    .line 186
    :array_5
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xf0t 0xc1t
    .end array-data

    .line 187
    :array_6
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->handleTapAction(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;I[I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->handleLongPressAction(I[I)V

    return-void
.end method

.method private handleLongPressAction(I[I)V
    .locals 4
    .parameter "id"
    .parameter "touchPosition"

    .prologue
    .line 395
    iget-object v2, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mProjects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_0

    .line 407
    .end local p0
    :goto_0
    return-void

    .line 400
    .restart local p0
    :cond_0
    iget-object v2, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mView:Lcom/android/videoeditor/widgets/ProjectsCarouselView;

    invoke-virtual {v2}, Lcom/android/videoeditor/widgets/ProjectsCarouselView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const v3, 0x7f08000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 401
    .local v0, anchorView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 402
    .local v1, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v2, 0x0

    aget v2, p2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 403
    const/4 v2, 0x1

    aget v2, p2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 404
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 406
    iget-object v2, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mCarouselItemListener:Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper$CarouselItemListener;

    iget-object v3, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mProjects:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {p0}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper$CarouselItemListener;->onCarouselItemLongPress(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0
.end method

.method private handleTapAction(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mProjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mCarouselItemListener:Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper$CarouselItemListener;

    iget-object v1, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mProjects:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {p0}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper$CarouselItemListener;->onCarouselItemTap(Ljava/lang/String;)V

    .line 387
    :goto_0
    return-void

    .line 385
    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mCarouselItemListener:Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper$CarouselItemListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper$CarouselItemListener;->onCarouselItemTap(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getDetailTexture(I)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "id"

    .prologue
    const/high16 v11, 0x4000

    .line 309
    iget v7, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mCarouselDetailTextureWidth:I

    iget v8, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mCarouselDetailTextureHeight:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 311
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 312
    .local v1, canvas:Landroid/graphics/Canvas;
    iget-object v7, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mProjects:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge p1, v7, :cond_2

    .line 313
    iget-object v7, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mProjects:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/videoeditor/service/VideoEditorProject;

    .line 314
    .local v4, project:Lcom/android/videoeditor/service/VideoEditorProject;
    invoke-virtual {v4}, Lcom/android/videoeditor/service/VideoEditorProject;->getName()Ljava/lang/String;

    move-result-object v5

    .line 315
    .local v5, projectName:Ljava/lang/String;
    if-nez v5, :cond_0

    .line 316
    iget-object v7, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mContext:Landroid/content/Context;

    const v8, 0x7f090082

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 319
    :cond_0
    iget-object v7, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mPaint:Landroid/graphics/Paint;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 320
    iget-object v7, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mPaint:Landroid/graphics/Paint;

    const/high16 v8, 0x41b0

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 321
    iget-object v7, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 323
    iget-object v7, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    iget v9, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mCarouselDetailTextureWidth:I

    const/16 v10, 0xc

    sub-int/2addr v9, v10

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-virtual {v7, v5, v8, v9, v10}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v2

    .line 325
    .local v2, chars:I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 326
    const/4 v7, 0x0

    invoke-virtual {v5, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 327
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 330
    :cond_1
    iget-object v7, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 331
    .local v6, textWidth:F
    iget v7, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mCarouselDetailTextureWidth:I

    int-to-float v7, v7

    sub-float/2addr v7, v6

    div-float/2addr v7, v11

    iget v8, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mCarouselDetailTextureHeight:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    iget-object v9, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 334
    iget-object v7, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mPaint:Landroid/graphics/Paint;

    const/high16 v8, 0x4180

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 335
    iget-object v7, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 336
    iget-object v7, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/VideoEditorProject;->getProjectDuration()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/android/videoeditor/util/StringUtils;->getDurationAsString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 338
    .local v3, durationString:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 339
    iget v7, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mCarouselDetailTextureWidth:I

    int-to-float v7, v7

    sub-float/2addr v7, v6

    div-float/2addr v7, v11

    iget v8, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mCarouselDetailTextureHeight:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    iget-object v9, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getTextSize()F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x4120

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 343
    .end local v2           #chars:I
    .end local v3           #durationString:Ljava/lang/String;
    .end local v4           #project:Lcom/android/videoeditor/service/VideoEditorProject;
    .end local v5           #projectName:Ljava/lang/String;
    .end local v6           #textWidth:F
    :cond_2
    return-object v0
.end method

.method public getDetailTextureParameters(I)Lcom/android/ex/carousel/CarouselViewHelper$DetailTextureParameters;
    .locals 1
    .parameter "id"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mDetailTextureParameters:Lcom/android/ex/carousel/CarouselViewHelper$DetailTextureParameters;

    return-object v0
.end method

.method public getTexture(I)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "id"

    .prologue
    .line 239
    iget v1, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mCarouselTextureWidth:I

    iget v2, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mCarouselTextureHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 242
    .local v6, bitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 243
    .local v0, canvas:Landroid/graphics/Canvas;
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 245
    iget-object v1, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mProjects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 247
    iget v1, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mCarouselPixelBorder:I

    iget v2, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mCarouselPixelBorder:I

    iget v3, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mCarouselTextureWidth:I

    iget v4, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mCarouselPixelBorder:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mCarouselTextureHeight:I

    iget v5, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mCarouselPixelBorder:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 251
    new-instance v11, Ljava/io/File;

    iget-object v1, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mProjects:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {p1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "thumbnail.jpg"

    invoke-direct {v11, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .local v11, thumbnail:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    :try_start_0
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mCarouselTextureWidth:I

    iget v3, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mCarouselTextureHeight:I

    sget v4, Lcom/android/videoeditor/util/ImageUtils;->MATCH_LARGER_DIMENSION:I

    invoke-static {v1, v2, v3, v4}, Lcom/android/videoeditor/util/ImageUtils;->scaleImage(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 258
    .local v10, previewBitmap:Landroid/graphics/Bitmap;
    if-eqz v10, :cond_0

    .line 259
    iget-object v1, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 260
    iget v1, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mCarouselTextureWidth:I

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mCarouselTextureHeight:I

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v10, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 263
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 301
    .end local v10           #previewBitmap:Landroid/graphics/Bitmap;
    .end local v11           #thumbnail:Ljava/io/File;
    :goto_0
    return-object v6

    .line 265
    .restart local v10       #previewBitmap:Landroid/graphics/Bitmap;
    .restart local v11       #thumbnail:Ljava/io/File;
    :cond_0
    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 267
    .end local v10           #previewBitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    move-object v7, v1

    .line 268
    .local v7, ex:Ljava/io/IOException;
    const-string v1, "ProjectsCarouselView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot load: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 271
    .end local v7           #ex:Ljava/io/IOException;
    :cond_1
    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0

    .line 274
    .end local v11           #thumbnail:Ljava/io/File;
    .restart local p1
    :cond_2
    iget v1, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mCarouselPixelBorder:I

    div-int/lit8 v8, v1, 0x2

    .line 276
    .local v8, halfBorderWidth:I
    iget v1, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mCarouselTextureWidth:I

    sub-int/2addr v1, v8

    iget v2, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mCarouselTextureHeight:I

    sub-int/2addr v2, v8

    invoke-virtual {v0, v8, v8, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 280
    iget-object v1, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 281
    iget-object v1, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 283
    iget v1, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mCarouselPixelBorder:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mCarouselPixelBorder:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mCarouselTextureWidth:I

    iget v4, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mCarouselPixelBorder:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mCarouselTextureHeight:I

    iget v5, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mCarouselPixelBorder:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 287
    iget-object v1, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4190

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 288
    iget-object v1, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 290
    iget-object v1, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02003f

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 293
    .local v9, newProjectBitmap:Landroid/graphics/Bitmap;
    iget v1, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mCarouselTextureWidth:I

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v12, v1, 0x2

    .line 294
    .local v12, x:I
    iget v1, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mCarouselTextureHeight:I

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v13, v1, 0x2

    .line 295
    .local v13, y:I
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v1, v12, v1

    const/16 v2, 0xa

    sub-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v2, v13

    iget-object v3, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 296
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 298
    iget-object v1, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f090027

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    int-to-float v2, v12

    add-int/lit8 v3, v13, 0x12

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public onCardLongPress(I[ILandroid/graphics/Rect;)V
    .locals 2
    .parameter "id"
    .parameter "touchPosition"
    .parameter "detailCoordinates"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mSyncHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper$2;-><init>(Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;I[I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 374
    return-void
.end method

.method public onCardSelected(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mSyncHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper$1;-><init>(Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 359
    return-void
.end method

.method public removeProject(Ljava/lang/String;)V
    .locals 5
    .parameter "projectPath"

    .prologue
    .line 213
    const/4 v1, 0x0

    .line 214
    .local v1, id:I
    iget-object v3, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mProjects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/videoeditor/service/VideoEditorProject;

    .line 215
    .local v2, project:Lcom/android/videoeditor/service/VideoEditorProject;
    invoke-virtual {v2}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 216
    iget-object v3, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mProjects:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 217
    iget-object v3, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mView:Lcom/android/videoeditor/widgets/ProjectsCarouselView;

    invoke-virtual {v3, v1}, Lcom/android/videoeditor/widgets/ProjectsCarouselView;->createCards(I)V

    .line 218
    iget-object v3, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mView:Lcom/android/videoeditor/widgets/ProjectsCarouselView;

    iget-object v4, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mProjects:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/videoeditor/widgets/ProjectsCarouselView;->createCards(I)V

    .line 224
    .end local v2           #project:Lcom/android/videoeditor/service/VideoEditorProject;
    :cond_0
    return-void

    .line 221
    .restart local v2       #project:Lcom/android/videoeditor/service/VideoEditorProject;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setProjects(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/videoeditor/service/VideoEditorProject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p1, projects:Ljava/util/List;,"Ljava/util/List<Lcom/android/videoeditor/service/VideoEditorProject;>;"
    iget-object v0, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mView:Lcom/android/videoeditor/widgets/ProjectsCarouselView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/ProjectsCarouselView;->createCards(I)V

    .line 203
    iget-object v0, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mView:Lcom/android/videoeditor/widgets/ProjectsCarouselView;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/ProjectsCarouselView;->createCards(I)V

    .line 204
    iput-object p1, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->mProjects:Ljava/util/List;

    .line 205
    return-void
.end method
