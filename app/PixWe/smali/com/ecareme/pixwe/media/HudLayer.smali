.class public final Lcom/ecareme/pixwe/media/HudLayer;
.super Lcom/ecareme/pixwe/media/Layer;
.source "HudLayer.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final CAMERA_BUTTON_ICON:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final CAMERA_BUTTON_ICON_PRESSED:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final GRID_MODE_ICON:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final GRID_MODE_PRESSED_ICON:I = 0x0

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_SELECT:I = 0x1

.field private static final STACK_MODE_ICON:I

.field private static final STACK_MODE_PRESSED_ICON:I

.field private static final ZOOM_IN_ICON:I

.field private static final ZOOM_IN_ICON_PRESSED:I

.field private static final ZOOM_OUT_ICON:I

.field private static final ZOOM_OUT_ICON_PRESSED:I

.field public static selectedSet:Lcom/ecareme/pixwe/media/MediaSet;


# instance fields
.field private facebook:Lcom/facebook/android/Facebook;

.field private isCopying:Z

.field private isMoving:Z

.field private link:Ljava/lang/String;

.field private mAlpha:F

.field private mAnimAlpha:F

.field private mAutoHide:Z

.field private mCachedCaption:Ljava/lang/String;

.field private mCachedCurrentLabel:Ljava/lang/String;

.field private mCachedPosition:Ljava/lang/String;

.field private final mCameraButtonAction:Ljava/lang/Runnable;

.field private mComment:Lcom/ecareme/pixwe/media/CommentLayer;

.field private mContext:Landroid/content/Context;

.field private mCopyMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

.field private final mFullscreenMenu:Lcom/ecareme/pixwe/media/MenuBar;

.field private mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

.field private final mGridModeButtonAction:Ljava/lang/Runnable;

.field private mItemSelectionMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

.field private mLastTimeFullOpacity:J

.field private final mLoadingLayer:Lcom/ecareme/pixwe/media/LoadingLayer;

.field private mMainBottomMenu:Lcom/ecareme/pixwe/media/MenuBar;

.field private mMode:I

.field private mMoveMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

.field private mNormalBottomMenu:[Lcom/ecareme/pixwe/media/MenuBar$Menu;

.field private mNormalBottomMenuNoShare:[Lcom/ecareme/pixwe/media/MenuBar$Menu;

.field private mPathBar:Lcom/ecareme/pixwe/media/PathBarLayer;

.field private mSearchBar:Lcom/ecareme/pixwe/media/PathBarLayer;

.field private final mSelectionMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

.field private final mSelectionMenuTop:Lcom/ecareme/pixwe/media/MenuBar;

.field private mSingleViewIntentBottomMenu:[Lcom/ecareme/pixwe/media/MenuBar$Menu;

.field private mSingleViewIntentBottomMenuNoShare:[Lcom/ecareme/pixwe/media/MenuBar$Menu;

.field private mSmartFullscreenMenu:Lcom/ecareme/pixwe/media/MenuBar;

.field private mSmartItemSelectionMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

.field private final mStackModeButtonAction:Ljava/lang/Runnable;

.field private mStartUploadMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

.field private mTimeBar:Lcom/ecareme/pixwe/media/TimeBar;

.field private final mTopRightButton:Lcom/ecareme/pixwe/media/ImageButton;

.field private mView:Lcom/ecareme/pixwe/media/RenderView;

.field private final mZoomInButton:Lcom/ecareme/pixwe/media/ImageButton;

.field private final mZoomInButtonAction:Ljava/lang/Runnable;

.field private final mZoomOutButton:Lcom/ecareme/pixwe/media/ImageButton;

.field private final mZoomOutButtonAction:Ljava/lang/Runnable;

.field private messageToPost:Ljava/lang/String;

.field moreOptionsMenuForImage:Lcom/ecareme/pixwe/media/MenuBar$Menu;

.field moreOptionsMenuForVideo:Lcom/ecareme/pixwe/media/MenuBar$Menu;

.field myPageUrl:Ljava/lang/String;

.field private selectedItem:Lcom/ecareme/pixwe/media/MediaItem;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const v2, 0x7f020064

    const v1, 0x7f020063

    .line 128
    const v0, 0x7f020007

    sput v0, Lcom/ecareme/pixwe/media/HudLayer;->CAMERA_BUTTON_ICON:I

    .line 129
    const v0, 0x7f020008

    sput v0, Lcom/ecareme/pixwe/media/HudLayer;->CAMERA_BUTTON_ICON_PRESSED:I

    .line 138
    const v0, 0x7f02000a

    sput v0, Lcom/ecareme/pixwe/media/HudLayer;->ZOOM_IN_ICON:I

    .line 139
    const v0, 0x7f02000b

    sput v0, Lcom/ecareme/pixwe/media/HudLayer;->ZOOM_IN_ICON_PRESSED:I

    .line 140
    const v0, 0x7f02000c

    sput v0, Lcom/ecareme/pixwe/media/HudLayer;->ZOOM_OUT_ICON:I

    .line 141
    const v0, 0x7f02000d

    sput v0, Lcom/ecareme/pixwe/media/HudLayer;->ZOOM_OUT_ICON_PRESSED:I

    .line 164
    sput v2, Lcom/ecareme/pixwe/media/HudLayer;->GRID_MODE_ICON:I

    .line 165
    sput v2, Lcom/ecareme/pixwe/media/HudLayer;->GRID_MODE_PRESSED_ICON:I

    .line 190
    sput v1, Lcom/ecareme/pixwe/media/HudLayer;->STACK_MODE_ICON:I

    .line 191
    sput v1, Lcom/ecareme/pixwe/media/HudLayer;->STACK_MODE_PRESSED_ICON:I

    .line 85
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 23
    .parameter "context"

    .prologue
    .line 205
    invoke-direct/range {p0 .. p0}, Lcom/ecareme/pixwe/media/Layer;-><init>()V

    .line 91
    new-instance v17, Lcom/ecareme/pixwe/media/ImageButton;

    invoke-direct/range {v17 .. v17}, Lcom/ecareme/pixwe/media/ImageButton;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/HudLayer;->mTopRightButton:Lcom/ecareme/pixwe/media/ImageButton;

    .line 92
    new-instance v17, Lcom/ecareme/pixwe/media/ImageButton;

    invoke-direct/range {v17 .. v17}, Lcom/ecareme/pixwe/media/ImageButton;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/HudLayer;->mZoomInButton:Lcom/ecareme/pixwe/media/ImageButton;

    .line 93
    new-instance v17, Lcom/ecareme/pixwe/media/ImageButton;

    invoke-direct/range {v17 .. v17}, Lcom/ecareme/pixwe/media/ImageButton;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/HudLayer;->mZoomOutButton:Lcom/ecareme/pixwe/media/ImageButton;

    .line 103
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/HudLayer;->mNormalBottomMenu:[Lcom/ecareme/pixwe/media/MenuBar$Menu;

    .line 104
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/HudLayer;->mSingleViewIntentBottomMenu:[Lcom/ecareme/pixwe/media/MenuBar$Menu;

    .line 105
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/HudLayer;->mNormalBottomMenuNoShare:[Lcom/ecareme/pixwe/media/MenuBar$Menu;

    .line 106
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/HudLayer;->mSingleViewIntentBottomMenuNoShare:[Lcom/ecareme/pixwe/media/MenuBar$Menu;

    .line 122
    new-instance v17, Lcom/ecareme/pixwe/media/LoadingLayer;

    invoke-direct/range {v17 .. v17}, Lcom/ecareme/pixwe/media/LoadingLayer;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/HudLayer;->mLoadingLayer:Lcom/ecareme/pixwe/media/LoadingLayer;

    .line 123
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/HudLayer;->mView:Lcom/ecareme/pixwe/media/RenderView;

    .line 125
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/HudLayer;->mMode:I

    .line 149
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ecareme/pixwe/media/HudLayer;->isMoving:Z

    .line 150
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ecareme/pixwe/media/HudLayer;->isCopying:Z

    .line 152
    const-string v17, ""

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/HudLayer;->myPageUrl:Ljava/lang/String;

    .line 154
    new-instance v17, Lcom/ecareme/pixwe/media/HudLayer$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer$1;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/HudLayer;->mCameraButtonAction:Ljava/lang/Runnable;

    .line 167
    new-instance v17, Lcom/ecareme/pixwe/media/HudLayer$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer$2;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/HudLayer;->mZoomInButtonAction:Ljava/lang/Runnable;

    .line 174
    new-instance v17, Lcom/ecareme/pixwe/media/HudLayer$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer$3;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/HudLayer;->mZoomOutButtonAction:Ljava/lang/Runnable;

    .line 181
    new-instance v17, Lcom/ecareme/pixwe/media/HudLayer$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer$4;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/HudLayer;->mGridModeButtonAction:Ljava/lang/Runnable;

    .line 192
    new-instance v17, Lcom/ecareme/pixwe/media/HudLayer$5;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer$5;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/HudLayer;->mStackModeButtonAction:Ljava/lang/Runnable;

    .line 206
    invoke-static {}, Lcom/ecareme/pixwe/PixWe;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/ecareme/pixwe/PixWe;->getMyHomeUrl(Lnet/yostore/aws/api/ApiConfig;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/HudLayer;->myPageUrl:Ljava/lang/String;

    .line 207
    const/high16 v17, 0x3f80

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/HudLayer;->mAlpha:F

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mTimeBar:Lcom/ecareme/pixwe/media/TimeBar;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    .line 209
    new-instance v17, Lcom/ecareme/pixwe/media/TimeBar;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/TimeBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/HudLayer;->mTimeBar:Lcom/ecareme/pixwe/media/TimeBar;

    .line 210
    new-instance v17, Lcom/ecareme/pixwe/media/PathBarLayer;

    invoke-direct/range {v17 .. v17}, Lcom/ecareme/pixwe/media/PathBarLayer;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/HudLayer;->mPathBar:Lcom/ecareme/pixwe/media/PathBarLayer;

    .line 211
    new-instance v17, Lcom/ecareme/pixwe/media/PathBarLayer;

    invoke-direct/range {v17 .. v17}, Lcom/ecareme/pixwe/media/PathBarLayer;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/HudLayer;->mSearchBar:Lcom/ecareme/pixwe/media/PathBarLayer;

    .line 213
    :cond_0
    new-instance v17, Lcom/ecareme/pixwe/media/CommentLayer;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/CommentLayer;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/HudLayer;->mComment:Lcom/ecareme/pixwe/media/CommentLayer;

    .line 214
    new-instance v17, Lcom/ecareme/pixwe/media/MenuBar;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/MenuBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/HudLayer;->mCopyMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    .line 215
    new-instance v17, Lcom/ecareme/pixwe/media/MenuBar;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/MenuBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/HudLayer;->mMoveMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mTopRightButton:Lcom/ecareme/pixwe/media/ImageButton;

    move-object/from16 v17, v0

    const/high16 v18, 0x42c8

    sget v19, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x42bc

    sget v20, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/ecareme/pixwe/media/ImageButton;->setSize(FF)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mZoomInButton:Lcom/ecareme/pixwe/media/ImageButton;

    move-object/from16 v17, v0

    const/high16 v18, 0x422c

    sget v19, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float v18, v18, v19

    const/high16 v19, 0x422c

    sget v20, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float v19, v19, v20

    invoke-virtual/range {v17 .. v19}, Lcom/ecareme/pixwe/media/ImageButton;->setSize(FF)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mZoomOutButton:Lcom/ecareme/pixwe/media/ImageButton;

    move-object/from16 v17, v0

    const/high16 v18, 0x422c

    sget v19, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float v18, v18, v19

    const/high16 v19, 0x422c

    sget v20, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float v19, v19, v20

    invoke-virtual/range {v17 .. v19}, Lcom/ecareme/pixwe/media/ImageButton;->setSize(FF)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mZoomInButton:Lcom/ecareme/pixwe/media/ImageButton;

    move-object/from16 v17, v0

    sget v18, Lcom/ecareme/pixwe/media/HudLayer;->ZOOM_IN_ICON:I

    sget v19, Lcom/ecareme/pixwe/media/HudLayer;->ZOOM_IN_ICON_PRESSED:I

    invoke-virtual/range {v17 .. v19}, Lcom/ecareme/pixwe/media/ImageButton;->setImages(II)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mZoomInButton:Lcom/ecareme/pixwe/media/ImageButton;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mZoomInButtonAction:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/ecareme/pixwe/media/ImageButton;->setAction(Ljava/lang/Runnable;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mZoomOutButton:Lcom/ecareme/pixwe/media/ImageButton;

    move-object/from16 v17, v0

    sget v18, Lcom/ecareme/pixwe/media/HudLayer;->ZOOM_OUT_ICON:I

    sget v19, Lcom/ecareme/pixwe/media/HudLayer;->ZOOM_OUT_ICON_PRESSED:I

    invoke-virtual/range {v17 .. v19}, Lcom/ecareme/pixwe/media/ImageButton;->setImages(II)V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mZoomOutButton:Lcom/ecareme/pixwe/media/ImageButton;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mZoomOutButtonAction:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/ecareme/pixwe/media/ImageButton;->setAction(Ljava/lang/Runnable;)V

    .line 234
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 237
    .local v12, resources:Landroid/content/res/Resources;
    new-instance v17, Lcom/ecareme/pixwe/media/MenuBar;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/MenuBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/HudLayer;->mMainBottomMenu:Lcom/ecareme/pixwe/media/MenuBar;

    .line 239
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Lcom/ecareme/pixwe/media/PopupMenu$Option;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Lcom/ecareme/pixwe/media/PopupMenu$Option;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f060043

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    const v20, 0x7f020034

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    new-instance v21, Lcom/ecareme/pixwe/media/HudLayer$6;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer$6;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-direct/range {v18 .. v21}, Lcom/ecareme/pixwe/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    aput-object v18, v16, v17

    const/16 v17, 0x1

    .line 245
    new-instance v18, Lcom/ecareme/pixwe/media/PopupMenu$Option;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f060044

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    const v20, 0x7f020035

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    new-instance v21, Lcom/ecareme/pixwe/media/HudLayer$7;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer$7;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-direct/range {v18 .. v21}, Lcom/ecareme/pixwe/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    aput-object v18, v16, v17

    .line 254
    .local v16, uploadOptions:[Lcom/ecareme/pixwe/media/PopupMenu$Option;
    new-instance v17, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f06003d

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;-><init>(Ljava/lang/String;)V

    const v18, 0x7f02005c

    invoke-virtual/range {v17 .. v18}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->icon(I)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v17

    new-instance v18, Lcom/ecareme/pixwe/media/HudLayer$8;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer$8;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-virtual/range {v17 .. v18}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->onSingleTapUp(Ljava/lang/Runnable;)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v17

    .line 261
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->options([Lcom/ecareme/pixwe/media/PopupMenu$Option;)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->build()Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-result-object v15

    .line 263
    .local v15, uploadMenu:Lcom/ecareme/pixwe/media/MenuBar$Menu;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mMainBottomMenu:Lcom/ecareme/pixwe/media/MenuBar;

    move-object/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v15, v18, v19

    const/16 v19, 0x1

    .line 269
    new-instance v20, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f06003f

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;-><init>(Ljava/lang/String;)V

    const v21, 0x7f020051

    invoke-virtual/range {v20 .. v21}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->icon(I)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v20

    new-instance v21, Lcom/ecareme/pixwe/media/HudLayer$9;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer$9;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-virtual/range {v20 .. v21}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->onSingleTapUp(Ljava/lang/Runnable;)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v20

    .line 280
    invoke-virtual/range {v20 .. v20}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->build()Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    .line 281
    new-instance v20, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0600bb

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;-><init>(Ljava/lang/String;)V

    const v21, 0x7f020058

    invoke-virtual/range {v20 .. v21}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->icon(I)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v20

    new-instance v21, Lcom/ecareme/pixwe/media/HudLayer$10;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer$10;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-virtual/range {v20 .. v21}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->onSingleTapUp(Ljava/lang/Runnable;)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v20

    .line 290
    invoke-virtual/range {v20 .. v20}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->build()Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x3

    .line 291
    new-instance v20, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f060040

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;-><init>(Ljava/lang/String;)V

    const v21, 0x7f020059

    invoke-virtual/range {v20 .. v21}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->icon(I)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v20

    new-instance v21, Lcom/ecareme/pixwe/media/HudLayer$11;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer$11;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-virtual/range {v20 .. v21}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->onSingleTapUp(Ljava/lang/Runnable;)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v20

    .line 325
    invoke-virtual/range {v20 .. v20}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->build()Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x4

    .line 326
    new-instance v20, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f060041

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;-><init>(Ljava/lang/String;)V

    const v21, 0x7f02004c

    invoke-virtual/range {v20 .. v21}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->icon(I)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v20

    new-instance v21, Lcom/ecareme/pixwe/media/HudLayer$12;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer$12;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-virtual/range {v20 .. v21}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->onSingleTapUp(Ljava/lang/Runnable;)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v20

    .line 337
    invoke-virtual/range {v20 .. v20}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->build()Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-result-object v20

    aput-object v20, v18, v19

    .line 263
    invoke-virtual/range {v17 .. v18}, Lcom/ecareme/pixwe/media/MenuBar;->setMenus([Lcom/ecareme/pixwe/media/MenuBar$Menu;)V

    .line 339
    new-instance v17, Lcom/ecareme/pixwe/media/MenuBar;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/MenuBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/HudLayer;->mStartUploadMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mStartUploadMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f06003e

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;-><init>(Ljava/lang/String;)V

    const v21, 0x7f02005c

    invoke-virtual/range {v20 .. v21}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->icon(I)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v20

    new-instance v21, Lcom/ecareme/pixwe/media/HudLayer$13;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer$13;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-virtual/range {v20 .. v21}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->onSingleTapUp(Ljava/lang/Runnable;)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v20

    .line 363
    invoke-virtual/range {v20 .. v20}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->build()Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    new-instance v20, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f06001c

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;-><init>(Ljava/lang/String;)V

    const v21, 0x7f020045

    invoke-virtual/range {v20 .. v21}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->icon(I)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v20

    new-instance v21, Lcom/ecareme/pixwe/media/HudLayer$14;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer$14;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-virtual/range {v20 .. v21}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->onSingleTapUp(Ljava/lang/Runnable;)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v20

    .line 368
    invoke-virtual/range {v20 .. v20}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->build()Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-result-object v20

    aput-object v20, v18, v19

    .line 340
    invoke-virtual/range {v17 .. v18}, Lcom/ecareme/pixwe/media/MenuBar;->setMenus([Lcom/ecareme/pixwe/media/MenuBar$Menu;)V

    .line 370
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Lcom/ecareme/pixwe/media/PopupMenu$Option;

    move-object v4, v0

    const/16 v17, 0x0

    new-instance v18, Lcom/ecareme/pixwe/media/PopupMenu$Option;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f06001b

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    const v20, 0x7f020026

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    new-instance v21, Lcom/ecareme/pixwe/media/HudLayer$15;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer$15;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-direct/range {v18 .. v21}, Lcom/ecareme/pixwe/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    aput-object v18, v4, v17

    const/16 v17, 0x1

    .line 374
    new-instance v18, Lcom/ecareme/pixwe/media/PopupMenu$Option;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f06001c

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    const v20, 0x7f020045

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    new-instance v21, Lcom/ecareme/pixwe/media/HudLayer$16;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer$16;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-direct/range {v18 .. v21}, Lcom/ecareme/pixwe/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    aput-object v18, v4, v17

    .line 380
    .local v4, fullscreenDeleteOptions:[Lcom/ecareme/pixwe/media/PopupMenu$Option;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Lcom/ecareme/pixwe/media/PopupMenu$Option;

    move-object v3, v0

    const/16 v17, 0x0

    new-instance v18, Lcom/ecareme/pixwe/media/PopupMenu$Option;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f06001b

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    const v20, 0x7f020026

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    new-instance v21, Lcom/ecareme/pixwe/media/HudLayer$17;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer$17;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-direct/range {v18 .. v21}, Lcom/ecareme/pixwe/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    aput-object v18, v3, v17

    const/16 v17, 0x1

    .line 384
    new-instance v18, Lcom/ecareme/pixwe/media/PopupMenu$Option;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f06001c

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    const v20, 0x7f020045

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    new-instance v21, Lcom/ecareme/pixwe/media/HudLayer$18;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer$18;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-direct/range {v18 .. v21}, Lcom/ecareme/pixwe/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    aput-object v18, v3, v17

    .line 390
    .local v3, deleteOptions:[Lcom/ecareme/pixwe/media/PopupMenu$Option;
    new-instance v17, Lcom/ecareme/pixwe/media/MenuBar;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/MenuBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/HudLayer;->mSelectionMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    .line 401
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [Lcom/ecareme/pixwe/media/PopupMenu$Option;

    move-object v7, v0

    const/16 v17, 0x0

    new-instance v18, Lcom/ecareme/pixwe/media/PopupMenu$Option;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f060048

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    const v20, 0x7f02002b

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    new-instance v21, Lcom/ecareme/pixwe/media/HudLayer$19;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer$19;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-direct/range {v18 .. v21}, Lcom/ecareme/pixwe/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    aput-object v18, v7, v17

    const/16 v17, 0x1

    .line 418
    new-instance v18, Lcom/ecareme/pixwe/media/PopupMenu$Option;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f060049

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    const v20, 0x7f020024

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    new-instance v21, Lcom/ecareme/pixwe/media/HudLayer$20;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer$20;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-direct/range {v18 .. v21}, Lcom/ecareme/pixwe/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    aput-object v18, v7, v17

    const/16 v17, 0x2

    .line 434
    new-instance v18, Lcom/ecareme/pixwe/media/PopupMenu$Option;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f06004a

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    const v20, 0x7f02002e

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    new-instance v21, Lcom/ecareme/pixwe/media/HudLayer$21;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer$21;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-direct/range {v18 .. v21}, Lcom/ecareme/pixwe/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    aput-object v18, v7, v17

    const/16 v17, 0x3

    .line 442
    new-instance v18, Lcom/ecareme/pixwe/media/PopupMenu$Option;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f06004b

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    const v20, 0x7f02002d

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    new-instance v21, Lcom/ecareme/pixwe/media/HudLayer$22;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer$22;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-direct/range {v18 .. v21}, Lcom/ecareme/pixwe/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    aput-object v18, v7, v17

    .line 451
    .local v7, moreOptions:[Lcom/ecareme/pixwe/media/PopupMenu$Option;
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Lcom/ecareme/pixwe/media/PopupMenu$Option;

    move-object v8, v0

    const/16 v17, 0x0

    new-instance v18, Lcom/ecareme/pixwe/media/PopupMenu$Option;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f060049

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    const v20, 0x7f020024

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    new-instance v21, Lcom/ecareme/pixwe/media/HudLayer$23;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer$23;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-direct/range {v18 .. v21}, Lcom/ecareme/pixwe/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    aput-object v18, v8, v17

    const/16 v17, 0x1

    .line 465
    new-instance v18, Lcom/ecareme/pixwe/media/PopupMenu$Option;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f06004a

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    const v20, 0x7f02002e

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    new-instance v21, Lcom/ecareme/pixwe/media/HudLayer$24;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer$24;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-direct/range {v18 .. v21}, Lcom/ecareme/pixwe/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    aput-object v18, v8, v17

    const/16 v17, 0x2

    .line 473
    new-instance v18, Lcom/ecareme/pixwe/media/PopupMenu$Option;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f06004b

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    const v20, 0x7f02002d

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    new-instance v21, Lcom/ecareme/pixwe/media/HudLayer$25;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer$25;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-direct/range {v18 .. v21}, Lcom/ecareme/pixwe/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    aput-object v18, v8, v17

    .line 482
    .local v8, moreOptions2:[Lcom/ecareme/pixwe/media/PopupMenu$Option;
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Lcom/ecareme/pixwe/media/PopupMenu$Option;

    move-object v9, v0

    const/16 v17, 0x0

    new-instance v18, Lcom/ecareme/pixwe/media/PopupMenu$Option;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f06004c

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    const v20, 0x7f020023

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    new-instance v21, Lcom/ecareme/pixwe/media/HudLayer$26;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer$26;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-direct/range {v18 .. v21}, Lcom/ecareme/pixwe/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    aput-object v18, v9, v17

    const/16 v17, 0x1

    .line 487
    new-instance v18, Lcom/ecareme/pixwe/media/PopupMenu$Option;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f06004a

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    const v20, 0x7f02002e

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    new-instance v21, Lcom/ecareme/pixwe/media/HudLayer$27;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer$27;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-direct/range {v18 .. v21}, Lcom/ecareme/pixwe/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    aput-object v18, v9, v17

    const/16 v17, 0x2

    .line 498
    new-instance v18, Lcom/ecareme/pixwe/media/PopupMenu$Option;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f06004b

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    const v20, 0x7f02002d

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    new-instance v21, Lcom/ecareme/pixwe/media/HudLayer$28;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer$28;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-direct/range {v18 .. v21}, Lcom/ecareme/pixwe/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    aput-object v18, v9, v17

    .line 510
    .local v9, moreOptionsForImage:[Lcom/ecareme/pixwe/media/PopupMenu$Option;
    new-instance v17, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f06001f

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;-><init>(Ljava/lang/String;)V

    const v18, 0x7f020050

    invoke-virtual/range {v17 .. v18}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->icon(I)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v17

    new-instance v18, Lcom/ecareme/pixwe/media/HudLayer$29;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer$29;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-virtual/range {v17 .. v18}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->onSingleTapUp(Ljava/lang/Runnable;)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v17

    .line 517
    move-object/from16 v0, v17

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->options([Lcom/ecareme/pixwe/media/PopupMenu$Option;)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->build()Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-result-object v17

    .line 510
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/HudLayer;->moreOptionsMenuForImage:Lcom/ecareme/pixwe/media/MenuBar$Menu;

    .line 519
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Lcom/ecareme/pixwe/media/PopupMenu$Option;

    move-object v10, v0

    const/16 v17, 0x0

    new-instance v18, Lcom/ecareme/pixwe/media/PopupMenu$Option;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f06004c

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    const v20, 0x7f020023

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    new-instance v21, Lcom/ecareme/pixwe/media/HudLayer$30;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer$30;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-direct/range {v18 .. v21}, Lcom/ecareme/pixwe/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    aput-object v18, v10, v17

    const/16 v17, 0x1

    .line 524
    new-instance v18, Lcom/ecareme/pixwe/media/PopupMenu$Option;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f06004d

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    const v20, 0x7f02002c

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    new-instance v21, Lcom/ecareme/pixwe/media/HudLayer$31;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer$31;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-direct/range {v18 .. v21}, Lcom/ecareme/pixwe/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    aput-object v18, v10, v17

    .line 533
    .local v10, moreOptionsForVideo:[Lcom/ecareme/pixwe/media/PopupMenu$Option;
    new-instance v17, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f06001f

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;-><init>(Ljava/lang/String;)V

    const v18, 0x7f020050

    invoke-virtual/range {v17 .. v18}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->icon(I)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v17

    new-instance v18, Lcom/ecareme/pixwe/media/HudLayer$32;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer$32;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-virtual/range {v17 .. v18}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->onSingleTapUp(Ljava/lang/Runnable;)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v17

    .line 540
    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->options([Lcom/ecareme/pixwe/media/PopupMenu$Option;)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->build()Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-result-object v17

    .line 533
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/HudLayer;->moreOptionsMenuForVideo:Lcom/ecareme/pixwe/media/MenuBar$Menu;

    .line 542
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Lcom/ecareme/pixwe/media/PopupMenu$Option;

    move-object v14, v0

    const/16 v17, 0x0

    new-instance v18, Lcom/ecareme/pixwe/media/PopupMenu$Option;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f060047

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    const v20, 0x7f020037

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    new-instance v21, Lcom/ecareme/pixwe/media/HudLayer$33;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer$33;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-direct/range {v18 .. v21}, Lcom/ecareme/pixwe/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    aput-object v18, v14, v17

    .line 578
    .local v14, shareOptions:[Lcom/ecareme/pixwe/media/PopupMenu$Option;
    new-instance v17, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f06001d

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;-><init>(Ljava/lang/String;)V

    const v18, 0x7f02005a

    invoke-virtual/range {v17 .. v18}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->icon(I)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->options([Lcom/ecareme/pixwe/media/PopupMenu$Option;)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->build()Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-result-object v13

    .line 580
    .local v13, shareMenu:Lcom/ecareme/pixwe/media/MenuBar$Menu;
    new-instance v17, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f06001a

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;-><init>(Ljava/lang/String;)V

    const v18, 0x7f020047

    invoke-virtual/range {v17 .. v18}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->icon(I)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v17

    new-instance v18, Lcom/ecareme/pixwe/media/HudLayer$34;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer$34;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-virtual/range {v17 .. v18}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->onSingleTapUp(Ljava/lang/Runnable;)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v17

    .line 587
    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->options([Lcom/ecareme/pixwe/media/PopupMenu$Option;)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->build()Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-result-object v2

    .line 589
    .local v2, deleteMenu:Lcom/ecareme/pixwe/media/MenuBar$Menu;
    new-instance v17, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f06001f

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;-><init>(Ljava/lang/String;)V

    const v18, 0x7f020050

    invoke-virtual/range {v17 .. v18}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->icon(I)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->options([Lcom/ecareme/pixwe/media/PopupMenu$Option;)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->build()Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-result-object v5

    .line 590
    .local v5, moreMenu:Lcom/ecareme/pixwe/media/MenuBar$Menu;
    new-instance v17, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f06001f

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;-><init>(Ljava/lang/String;)V

    const v18, 0x7f020050

    invoke-virtual/range {v17 .. v18}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->icon(I)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->options([Lcom/ecareme/pixwe/media/PopupMenu$Option;)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->build()Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-result-object v6

    .line 592
    .local v6, moreMenu2:Lcom/ecareme/pixwe/media/MenuBar$Menu;
    new-instance v17, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f060045

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;-><init>(Ljava/lang/String;)V

    const v18, 0x7f020057

    invoke-virtual/range {v17 .. v18}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->icon(I)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v17

    new-instance v18, Lcom/ecareme/pixwe/media/HudLayer$35;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer$35;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-virtual/range {v17 .. v18}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->onSingleTapUp(Ljava/lang/Runnable;)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v17

    .line 602
    invoke-virtual/range {v17 .. v17}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->build()Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-result-object v11

    .line 604
    .local v11, renameMenu:Lcom/ecareme/pixwe/media/MenuBar$Menu;
    new-instance v17, Lcom/ecareme/pixwe/media/MenuBar;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/MenuBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/HudLayer;->mItemSelectionMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mItemSelectionMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f06001a

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;-><init>(Ljava/lang/String;)V

    const v21, 0x7f020047

    invoke-virtual/range {v20 .. v21}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->icon(I)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v20

    new-instance v21, Lcom/ecareme/pixwe/media/HudLayer$36;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer$36;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-virtual/range {v20 .. v21}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->onSingleTapUp(Ljava/lang/Runnable;)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v20

    .line 612
    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->options([Lcom/ecareme/pixwe/media/PopupMenu$Option;)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->build()Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    aput-object v5, v18, v19

    .line 605
    invoke-virtual/range {v17 .. v18}, Lcom/ecareme/pixwe/media/MenuBar;->setMenus([Lcom/ecareme/pixwe/media/MenuBar$Menu;)V

    .line 613
    new-instance v17, Lcom/ecareme/pixwe/media/MenuBar;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/MenuBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/HudLayer;->mSmartItemSelectionMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mSmartItemSelectionMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v6, v18, v19

    invoke-virtual/range {v17 .. v18}, Lcom/ecareme/pixwe/media/MenuBar;->setMenus([Lcom/ecareme/pixwe/media/MenuBar$Menu;)V

    .line 622
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v13, v17, v18

    const/16 v18, 0x1

    aput-object v2, v17, v18

    const/16 v18, 0x2

    aput-object v11, v17, v18

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/HudLayer;->mNormalBottomMenu:[Lcom/ecareme/pixwe/media/MenuBar$Menu;

    .line 625
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v13, v17, v18

    const/16 v18, 0x1

    aput-object v5, v17, v18

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/HudLayer;->mSingleViewIntentBottomMenu:[Lcom/ecareme/pixwe/media/MenuBar$Menu;

    .line 627
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v2, v17, v18

    const/16 v18, 0x1

    aput-object v5, v17, v18

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/HudLayer;->mNormalBottomMenuNoShare:[Lcom/ecareme/pixwe/media/MenuBar$Menu;

    .line 628
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v5, v17, v18

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/HudLayer;->mSingleViewIntentBottomMenuNoShare:[Lcom/ecareme/pixwe/media/MenuBar$Menu;

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mSelectionMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mNormalBottomMenu:[Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/ecareme/pixwe/media/MenuBar;->setMenus([Lcom/ecareme/pixwe/media/MenuBar$Menu;)V

    .line 631
    new-instance v17, Lcom/ecareme/pixwe/media/MenuBar;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/MenuBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/HudLayer;->mSelectionMenuTop:Lcom/ecareme/pixwe/media/MenuBar;

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mSelectionMenuTop:Lcom/ecareme/pixwe/media/MenuBar;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    const-string v21, ""

    invoke-direct/range {v20 .. v21}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->build()Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-virtual/range {v17 .. v18}, Lcom/ecareme/pixwe/media/MenuBar;->setMenus([Lcom/ecareme/pixwe/media/MenuBar$Menu;)V

    .line 633
    new-instance v17, Lcom/ecareme/pixwe/media/MenuBar;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/MenuBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/HudLayer;->mFullscreenMenu:Lcom/ecareme/pixwe/media/MenuBar;

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mFullscreenMenu:Lcom/ecareme/pixwe/media/MenuBar;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f060022

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;-><init>(Ljava/lang/String;)V

    const v21, 0x7f020056

    invoke-virtual/range {v20 .. v21}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->icon(I)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v20

    new-instance v21, Lcom/ecareme/pixwe/media/HudLayer$37;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer$37;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-virtual/range {v20 .. v21}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->onSingleTapUp(Ljava/lang/Runnable;)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v20

    .line 641
    invoke-virtual/range {v20 .. v20}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->build()Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    new-instance v20, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f06001a

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;-><init>(Ljava/lang/String;)V

    const v21, 0x7f020047

    invoke-virtual/range {v20 .. v21}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->icon(I)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v20

    new-instance v21, Lcom/ecareme/pixwe/media/HudLayer$38;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer$38;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-virtual/range {v20 .. v21}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->onSingleTapUp(Ljava/lang/Runnable;)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v20

    .line 648
    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->options([Lcom/ecareme/pixwe/media/PopupMenu$Option;)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->build()Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->moreOptionsMenuForImage:Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    .line 634
    invoke-virtual/range {v17 .. v18}, Lcom/ecareme/pixwe/media/MenuBar;->setMenus([Lcom/ecareme/pixwe/media/MenuBar$Menu;)V

    .line 650
    new-instance v17, Lcom/ecareme/pixwe/media/MenuBar;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/MenuBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/HudLayer;->mSmartFullscreenMenu:Lcom/ecareme/pixwe/media/MenuBar;

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mSmartFullscreenMenu:Lcom/ecareme/pixwe/media/MenuBar;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f060022

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;-><init>(Ljava/lang/String;)V

    const v21, 0x7f020056

    invoke-virtual/range {v20 .. v21}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->icon(I)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v20

    new-instance v21, Lcom/ecareme/pixwe/media/HudLayer$39;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer$39;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-virtual/range {v20 .. v21}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->onSingleTapUp(Ljava/lang/Runnable;)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v20

    .line 658
    invoke-virtual/range {v20 .. v20}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->build()Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->moreOptionsMenuForImage:Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    .line 651
    invoke-virtual/range {v17 .. v18}, Lcom/ecareme/pixwe/media/MenuBar;->setMenus([Lcom/ecareme/pixwe/media/MenuBar$Menu;)V

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mCopyMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f060062

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;-><init>(Ljava/lang/String;)V

    const v21, 0x7f020024

    invoke-virtual/range {v20 .. v21}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->icon(I)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v20

    new-instance v21, Lcom/ecareme/pixwe/media/HudLayer$40;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer$40;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-virtual/range {v20 .. v21}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->onSingleTapUp(Ljava/lang/Runnable;)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v20

    .line 754
    invoke-virtual/range {v20 .. v20}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->build()Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    new-instance v20, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f060063

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;-><init>(Ljava/lang/String;)V

    const v21, 0x7f020045

    invoke-virtual/range {v20 .. v21}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->icon(I)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v20

    new-instance v21, Lcom/ecareme/pixwe/media/HudLayer$41;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer$41;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-virtual/range {v20 .. v21}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->onSingleTapUp(Ljava/lang/Runnable;)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v20

    .line 766
    invoke-virtual/range {v20 .. v20}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->build()Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-result-object v20

    aput-object v20, v18, v19

    .line 662
    invoke-virtual/range {v17 .. v18}, Lcom/ecareme/pixwe/media/MenuBar;->setMenus([Lcom/ecareme/pixwe/media/MenuBar$Menu;)V

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mMoveMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f060062

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;-><init>(Ljava/lang/String;)V

    const v21, 0x7f020024

    invoke-virtual/range {v20 .. v21}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->icon(I)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v20

    new-instance v21, Lcom/ecareme/pixwe/media/HudLayer$42;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer$42;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-virtual/range {v20 .. v21}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->onSingleTapUp(Ljava/lang/Runnable;)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v20

    .line 873
    invoke-virtual/range {v20 .. v20}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->build()Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    new-instance v20, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f060063

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;-><init>(Ljava/lang/String;)V

    const v21, 0x7f020045

    invoke-virtual/range {v20 .. v21}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->icon(I)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v20

    new-instance v21, Lcom/ecareme/pixwe/media/HudLayer$43;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer$43;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-virtual/range {v20 .. v21}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->onSingleTapUp(Ljava/lang/Runnable;)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v20

    .line 885
    invoke-virtual/range {v20 .. v20}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->build()Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-result-object v20

    aput-object v20, v18, v19

    .line 768
    invoke-virtual/range {v17 .. v18}, Lcom/ecareme/pixwe/media/MenuBar;->setMenus([Lcom/ecareme/pixwe/media/MenuBar$Menu;)V

    .line 887
    return-void
.end method

.method static synthetic access$0(Lcom/ecareme/pixwe/media/HudLayer;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/GridLayer;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    return-object v0
.end method

.method static synthetic access$10(Lcom/ecareme/pixwe/media/HudLayer;)V
    .locals 0
    .parameter

    .prologue
    .line 889
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/HudLayer;->editComment()V

    return-void
.end method

.method static synthetic access$11(Lcom/ecareme/pixwe/media/HudLayer;)V
    .locals 0
    .parameter

    .prologue
    .line 1364
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/HudLayer;->rename()V

    return-void
.end method

.method static synthetic access$12(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/MediaItem;
    .locals 1
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->selectedItem:Lcom/ecareme/pixwe/media/MediaItem;

    return-object v0
.end method

.method static synthetic access$13(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/facebook/android/Facebook;
    .locals 1
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->facebook:Lcom/facebook/android/Facebook;

    return-object v0
.end method

.method static synthetic access$14(Lcom/ecareme/pixwe/media/HudLayer;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->messageToPost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lcom/ecareme/pixwe/media/HudLayer;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->link:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/PathBarLayer;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mPathBar:Lcom/ecareme/pixwe/media/PathBarLayer;

    return-object v0
.end method

.method static synthetic access$17(Lcom/ecareme/pixwe/media/HudLayer;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1943
    invoke-direct {p0, p1, p2}, Lcom/ecareme/pixwe/media/HudLayer;->startResolvedActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    return-void
.end method

.method static synthetic access$2(Lcom/ecareme/pixwe/media/HudLayer;)V
    .locals 0
    .parameter

    .prologue
    .line 1279
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/HudLayer;->search()V

    return-void
.end method

.method static synthetic access$3(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/RenderView;
    .locals 1
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mView:Lcom/ecareme/pixwe/media/RenderView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ecareme/pixwe/media/HudLayer;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 125
    iput p1, p0, Lcom/ecareme/pixwe/media/HudLayer;->mMode:I

    return-void
.end method

.method static synthetic access$5(Lcom/ecareme/pixwe/media/HudLayer;)Z
    .locals 1
    .parameter

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->isMoving:Z

    return v0
.end method

.method static synthetic access$6(Lcom/ecareme/pixwe/media/HudLayer;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/ecareme/pixwe/media/HudLayer;->isMoving:Z

    return-void
.end method

.method static synthetic access$7(Lcom/ecareme/pixwe/media/HudLayer;Lcom/ecareme/pixwe/media/MediaItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/ecareme/pixwe/media/HudLayer;->selectedItem:Lcom/ecareme/pixwe/media/MediaItem;

    return-void
.end method

.method static synthetic access$8(Lcom/ecareme/pixwe/media/HudLayer;)Z
    .locals 1
    .parameter

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->isCopying:Z

    return v0
.end method

.method static synthetic access$9(Lcom/ecareme/pixwe/media/HudLayer;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/ecareme/pixwe/media/HudLayer;->isCopying:Z

    return-void
.end method

.method private buildMoreOptions()V
    .locals 25

    .prologue
    .line 1060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/ecareme/pixwe/media/GridLayer;->getSelectedBuckets()Ljava/util/ArrayList;

    move-result-object v4

    .line 1062
    .local v4, buckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1063
    .local v12, numBuckets:I
    const/4 v2, 0x0

    .line 1064
    .local v2, albumMode:Z
    const/16 v19, 0x0

    .line 1065
    .local v19, singleItem:Z
    const/4 v6, 0x0

    .line 1066
    .local v6, isPicasa:Z
    const/4 v11, 0x0

    .line 1067
    .local v11, mediaType:I
    const/16 v20, 0x1

    move v0, v12

    move/from16 v1, v20

    if-le v0, v1, :cond_0

    .line 1068
    const/4 v2, 0x1

    .line 1070
    :cond_0
    const/16 v20, 0x1

    move v0, v12

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 1071
    const/16 v20, 0x0

    move-object v0, v4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ecareme/pixwe/media/MediaBucket;

    .line 1072
    .local v3, bucket:Lcom/ecareme/pixwe/media/MediaBucket;
    iget-object v10, v3, Lcom/ecareme/pixwe/media/MediaBucket;->mediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    .line 1073
    .local v10, mediaSet:Lcom/ecareme/pixwe/media/MediaSet;
    if-nez v10, :cond_1

    .line 1227
    .end local v3           #bucket:Lcom/ecareme/pixwe/media/MediaBucket;
    .end local v10           #mediaSet:Lcom/ecareme/pixwe/media/MediaSet;
    :goto_0
    return-void

    .line 1076
    .restart local v3       #bucket:Lcom/ecareme/pixwe/media/MediaBucket;
    .restart local v10       #mediaSet:Lcom/ecareme/pixwe/media/MediaSet;
    :cond_1
    move-object v0, v10

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mPicasaAlbumId:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x1

    cmp-long v20, v20, v22

    if-eqz v20, :cond_6

    const/16 v20, 0x1

    move/from16 v6, v20

    .line 1077
    :goto_1
    move-object v0, v3

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    move-object v0, v3

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-nez v20, :cond_7

    .line 1078
    :cond_2
    const/4 v2, 0x1

    .line 1096
    .end local v3           #bucket:Lcom/ecareme/pixwe/media/MediaBucket;
    .end local v10           #mediaSet:Lcom/ecareme/pixwe/media/MediaSet;
    :cond_3
    :goto_2
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lcom/ecareme/pixwe/media/PopupMenu$Option;

    move-object v14, v0

    const/16 v20, 0x0

    new-instance v21, Lcom/ecareme/pixwe/media/PopupMenu$Option;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f060024

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f020038

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    new-instance v24, Lcom/ecareme/pixwe/media/HudLayer$47;

    invoke-direct/range {v24 .. v25}, Lcom/ecareme/pixwe/media/HudLayer$47;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-direct/range {v21 .. v24}, Lcom/ecareme/pixwe/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    aput-object v21, v14, v20

    .line 1126
    .local v14, optionAll:[Lcom/ecareme/pixwe/media/PopupMenu$Option;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lcom/ecareme/pixwe/media/PopupMenu$Option;

    move-object/from16 v17, v0

    const/16 v20, 0x0

    new-instance v21, Lcom/ecareme/pixwe/media/PopupMenu$Option;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f060032

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f02002a

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    new-instance v24, Lcom/ecareme/pixwe/media/HudLayer$48;

    invoke-direct/range {v24 .. v25}, Lcom/ecareme/pixwe/media/HudLayer$48;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-direct/range {v21 .. v24}, Lcom/ecareme/pixwe/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    aput-object v21, v17, v20

    .line 1138
    .local v17, optionSingle:[Lcom/ecareme/pixwe/media/PopupMenu$Option;
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Lcom/ecareme/pixwe/media/PopupMenu$Option;

    move-object v15, v0

    const/16 v20, 0x0

    new-instance v21, Lcom/ecareme/pixwe/media/PopupMenu$Option;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f060033

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f02002d

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    new-instance v24, Lcom/ecareme/pixwe/media/HudLayer$49;

    invoke-direct/range {v24 .. v25}, Lcom/ecareme/pixwe/media/HudLayer$49;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-direct/range {v21 .. v24}, Lcom/ecareme/pixwe/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    aput-object v21, v15, v20

    const/16 v20, 0x1

    .line 1142
    new-instance v21, Lcom/ecareme/pixwe/media/PopupMenu$Option;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f060034

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f02002e

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    new-instance v24, Lcom/ecareme/pixwe/media/HudLayer$50;

    invoke-direct/range {v24 .. v25}, Lcom/ecareme/pixwe/media/HudLayer$50;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-direct/range {v21 .. v24}, Lcom/ecareme/pixwe/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    aput-object v21, v15, v20

    .line 1148
    .local v15, optionImageMultiple:[Lcom/ecareme/pixwe/media/PopupMenu$Option;
    if-eqz v6, :cond_4

    .line 1149
    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Lcom/ecareme/pixwe/media/PopupMenu$Option;

    move-object v15, v0

    .line 1152
    :cond_4
    if-eqz v6, :cond_a

    .line 1153
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lcom/ecareme/pixwe/media/PopupMenu$Option;

    move-object/from16 v16, v0

    const/16 v20, 0x0

    new-instance v21, Lcom/ecareme/pixwe/media/PopupMenu$Option;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f060037

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f02002f

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    new-instance v24, Lcom/ecareme/pixwe/media/HudLayer$51;

    invoke-direct/range {v24 .. v25}, Lcom/ecareme/pixwe/media/HudLayer$51;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-direct/range {v21 .. v24}, Lcom/ecareme/pixwe/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    aput-object v21, v16, v20

    .line 1206
    .local v16, optionImageSingle:[Lcom/ecareme/pixwe/media/PopupMenu$Option;
    :goto_3
    move-object/from16 v18, v14

    .line 1207
    .local v18, options:[Lcom/ecareme/pixwe/media/PopupMenu$Option;
    if-nez v2, :cond_5

    .line 1208
    if-nez v19, :cond_c

    .line 1209
    if-nez v11, :cond_5

    .line 1210
    move-object/from16 v0, v18

    move-object v1, v15

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer;->concat([Lcom/ecareme/pixwe/media/PopupMenu$Option;[Lcom/ecareme/pixwe/media/PopupMenu$Option;)[Lcom/ecareme/pixwe/media/PopupMenu$Option;

    move-result-object v18

    .line 1225
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mSelectionMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/ecareme/pixwe/media/MenuBar;->getMenus()[Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-result-object v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x1

    sub-int v9, v20, v21

    .line 1226
    .local v9, lastIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mSelectionMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/ecareme/pixwe/media/MenuBar;->getMenus()[Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-result-object v20

    aget-object v20, v20, v9

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/ecareme/pixwe/media/MenuBar$Menu;->options:[Lcom/ecareme/pixwe/media/PopupMenu$Option;

    goto/16 :goto_0

    .line 1076
    .end local v9           #lastIndex:I
    .end local v14           #optionAll:[Lcom/ecareme/pixwe/media/PopupMenu$Option;
    .end local v15           #optionImageMultiple:[Lcom/ecareme/pixwe/media/PopupMenu$Option;
    .end local v16           #optionImageSingle:[Lcom/ecareme/pixwe/media/PopupMenu$Option;
    .end local v17           #optionSingle:[Lcom/ecareme/pixwe/media/PopupMenu$Option;
    .end local v18           #options:[Lcom/ecareme/pixwe/media/PopupMenu$Option;
    .restart local v3       #bucket:Lcom/ecareme/pixwe/media/MediaBucket;
    .restart local v10       #mediaSet:Lcom/ecareme/pixwe/media/MediaSet;
    :cond_6
    const/16 v20, 0x0

    move/from16 v6, v20

    goto/16 :goto_1

    .line 1080
    :cond_7
    iget-object v8, v3, Lcom/ecareme/pixwe/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    .line 1081
    .local v8, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 1082
    .local v13, numItems:I
    const/16 v20, 0x0

    move-object v0, v8

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #bucket:Lcom/ecareme/pixwe/media/MediaBucket;
    check-cast v3, Lcom/ecareme/pixwe/media/MediaItem;

    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/MediaItem;->getMediaType()I

    move-result v11

    .line 1083
    const/16 v20, 0x1

    move v0, v13

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 1084
    const/16 v19, 0x1

    goto/16 :goto_2

    .line 1086
    :cond_8
    const/4 v5, 0x1

    .local v5, i:I
    :goto_5
    if-ge v5, v13, :cond_3

    .line 1087
    const/16 v20, 0x0

    move-object v0, v8

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ecareme/pixwe/media/MediaItem;

    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/MediaItem;->getMediaType()I

    move-result v20

    move/from16 v0, v20

    move v1, v11

    if-eq v0, v1, :cond_9

    .line 1088
    const/4 v2, 0x1

    .line 1089
    goto/16 :goto_2

    .line 1086
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1171
    .end local v5           #i:I
    .end local v8           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    .end local v10           #mediaSet:Lcom/ecareme/pixwe/media/MediaSet;
    .end local v13           #numItems:I
    .restart local v14       #optionAll:[Lcom/ecareme/pixwe/media/PopupMenu$Option;
    .restart local v15       #optionImageMultiple:[Lcom/ecareme/pixwe/media/PopupMenu$Option;
    .restart local v17       #optionSingle:[Lcom/ecareme/pixwe/media/PopupMenu$Option;
    :cond_a
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Lcom/ecareme/pixwe/media/PopupMenu$Option;

    move-object/from16 v16, v0

    const/16 v20, 0x0

    new-instance v21, Lcom/ecareme/pixwe/media/PopupMenu$Option;

    if-eqz v6, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f060037

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f02002f

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    new-instance v24, Lcom/ecareme/pixwe/media/HudLayer$52;

    invoke-direct/range {v24 .. v25}, Lcom/ecareme/pixwe/media/HudLayer$52;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-direct/range {v21 .. v24}, Lcom/ecareme/pixwe/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    aput-object v21, v16, v20

    const/16 v20, 0x1

    .line 1191
    new-instance v21, Lcom/ecareme/pixwe/media/PopupMenu$Option;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f060035

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f020025

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    new-instance v24, Lcom/ecareme/pixwe/media/HudLayer$53;

    invoke-direct/range {v24 .. v25}, Lcom/ecareme/pixwe/media/HudLayer$53;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-direct/range {v21 .. v24}, Lcom/ecareme/pixwe/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    aput-object v21, v16, v20

    .line 1171
    .restart local v16       #optionImageSingle:[Lcom/ecareme/pixwe/media/PopupMenu$Option;
    goto/16 :goto_3

    .end local v16           #optionImageSingle:[Lcom/ecareme/pixwe/media/PopupMenu$Option;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f060036

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto :goto_6

    .line 1212
    .restart local v16       #optionImageSingle:[Lcom/ecareme/pixwe/media/PopupMenu$Option;
    .restart local v18       #options:[Lcom/ecareme/pixwe/media/PopupMenu$Option;
    :cond_c
    invoke-static {v4}, Lcom/ecareme/pixwe/media/MediaBucketList;->getFirstItemSelection(Ljava/util/ArrayList;)Lcom/ecareme/pixwe/media/MediaItem;

    move-result-object v7

    .line 1213
    .local v7, item:Lcom/ecareme/pixwe/media/MediaItem;
    move-object v0, v7

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mLatitude:D

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-eqz v20, :cond_d

    move-object v0, v7

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mLongitude:D

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-eqz v20, :cond_d

    .line 1214
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer;->concat([Lcom/ecareme/pixwe/media/PopupMenu$Option;[Lcom/ecareme/pixwe/media/PopupMenu$Option;)[Lcom/ecareme/pixwe/media/PopupMenu$Option;

    move-result-object v18

    .line 1216
    :cond_d
    if-nez v11, :cond_5

    .line 1217
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer;->concat([Lcom/ecareme/pixwe/media/PopupMenu$Option;[Lcom/ecareme/pixwe/media/PopupMenu$Option;)[Lcom/ecareme/pixwe/media/PopupMenu$Option;

    move-result-object v18

    .line 1218
    move-object/from16 v0, v18

    move-object v1, v15

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer;->concat([Lcom/ecareme/pixwe/media/PopupMenu$Option;[Lcom/ecareme/pixwe/media/PopupMenu$Option;)[Lcom/ecareme/pixwe/media/PopupMenu$Option;

    move-result-object v18

    goto/16 :goto_4
.end method

.method private computeSizeForPathbar()V
    .locals 4

    .prologue
    .line 1537
    iget v1, p0, Lcom/ecareme/pixwe/media/HudLayer;->mWidth:F

    iget-object v2, p0, Lcom/ecareme/pixwe/media/HudLayer;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/GridLayer;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/high16 v2, 0x4200

    sget v3, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v2, v3

    :goto_0
    sub-float v0, v1, v2

    .line 1538
    .local v0, pathBarWidth:F
    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer;->mPathBar:Lcom/ecareme/pixwe/media/PathBarLayer;

    const/high16 v2, 0x421c

    sget v3, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->ceil(F)F

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/ecareme/pixwe/media/PathBarLayer;->setSize(FF)V

    .line 1539
    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer;->mPathBar:Lcom/ecareme/pixwe/media/PathBarLayer;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/PathBarLayer;->recomputeComponents()V

    .line 1544
    return-void

    .line 1537
    .end local v0           #pathBarWidth:F
    :cond_0
    const/high16 v2, 0x42f0

    sget v3, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v2, v3

    goto :goto_0
.end method

.method private static final concat([Lcom/ecareme/pixwe/media/PopupMenu$Option;[Lcom/ecareme/pixwe/media/PopupMenu$Option;)[Lcom/ecareme/pixwe/media/PopupMenu$Option;
    .locals 4
    .parameter "A"
    .parameter "B"

    .prologue
    const/4 v3, 0x0

    .line 1230
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [Lcom/ecareme/pixwe/media/PopupMenu$Option;

    .line 1231
    .local v0, C:[Lcom/ecareme/pixwe/media/PopupMenu$Option;
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1232
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1233
    return-object v0
.end method

.method private editComment()V
    .locals 2

    .prologue
    .line 891
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ecareme/pixwe/media/HudLayer$44;

    invoke-direct {v1, p0}, Lcom/ecareme/pixwe/media/HudLayer$44;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 953
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 955
    return-void
.end method

.method private rename()V
    .locals 2

    .prologue
    .line 1365
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ecareme/pixwe/media/HudLayer$56;

    invoke-direct {v1, p0}, Lcom/ecareme/pixwe/media/HudLayer$56;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1459
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1460
    return-void
.end method

.method private search()V
    .locals 2

    .prologue
    .line 1280
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ecareme/pixwe/media/HudLayer$54;

    invoke-direct {v1, p0}, Lcom/ecareme/pixwe/media/HudLayer$54;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1330
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1331
    return-void
.end method

.method private share()V
    .locals 2

    .prologue
    .line 958
    new-instance v0, Lcom/facebook/android/Facebook;

    const-string v1, "153786151325263"

    invoke-direct {v0, v1}, Lcom/facebook/android/Facebook;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->facebook:Lcom/facebook/android/Facebook;

    .line 959
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/media/HudLayer;->restoreCredentials(Lcom/facebook/android/Facebook;)Z

    .line 961
    const-string v0, "test"

    iput-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->messageToPost:Ljava/lang/String;

    .line 962
    const-string v0, "http//www.google.com"

    iput-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->link:Ljava/lang/String;

    .line 964
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v0}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 965
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/HudLayer;->loginAndPostToWall()V

    .line 969
    :goto_0
    return-void

    .line 967
    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->messageToPost:Ljava/lang/String;

    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer;->link:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ecareme/pixwe/media/HudLayer;->postToWall(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startResolvedActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
    .locals 5
    .parameter "intent"
    .parameter "info"

    .prologue
    .line 1944
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1945
    .local v1, resolvedIntent:Landroid/content/Intent;
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1946
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1947
    iget-object v2, p0, Lcom/ecareme/pixwe/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/ecareme/pixwe/app/App;->get(Landroid/content/Context;)Lcom/ecareme/pixwe/app/App;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ecareme/pixwe/app/App;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/ecareme/pixwe/media/HudLayer$59;

    invoke-direct {v3, p0, v1}, Lcom/ecareme/pixwe/media/HudLayer$59;-><init>(Lcom/ecareme/pixwe/media/HudLayer;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1952
    return-void
.end method

.method private updateShareMenu()V
    .locals 30

    .prologue
    .line 1849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/ecareme/pixwe/media/GridLayer;->getSelectedBuckets()Ljava/util/ArrayList;

    move-result-object v22

    .line 1850
    .local v22, selection:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 1851
    .local v25, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v15, 0x0

    .line 1852
    .local v15, mimeType:Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_0

    .line 1853
    const/4 v14, -0x1

    .line 1854
    .local v14, mediaType:I
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 1855
    .local v17, numBuckets:I
    const/4 v12, 0x0

    .local v12, j:I
    :goto_0
    move v0, v12

    move/from16 v1, v17

    if-lt v0, v1, :cond_3

    .line 1894
    .end local v12           #j:I
    .end local v14           #mediaType:I
    .end local v17           #numBuckets:I
    :cond_0
    const/16 v19, 0x0

    check-cast v19, [Lcom/ecareme/pixwe/media/PopupMenu$Option;

    .line 1895
    .local v19, options:[Lcom/ecareme/pixwe/media/PopupMenu$Option;
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-eqz v26, :cond_2

    .line 1896
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 1897
    .local v9, intent:Landroid/content/Intent;
    if-nez v15, :cond_1

    .line 1898
    const-string v15, "image/jpeg"

    .line 1899
    :cond_1
    const-string v26, "text"

    move-object v0, v15

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_c

    .line 1901
    const-string v26, "android.intent.action.SEND"

    move-object v0, v9

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1902
    invoke-virtual {v9, v15}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1905
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1906
    .local v6, builder:Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .local v7, i:I
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v23

    .local v23, size:I
    :goto_1
    move v0, v7

    move/from16 v1, v23

    if-lt v0, v1, :cond_a

    .line 1912
    const-string v26, "android.intent.extra.TEXT"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object v0, v9

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1923
    .end local v6           #builder:Ljava/lang/StringBuilder;
    .end local v7           #i:I
    .end local v23           #size:I
    :goto_2
    const/16 v26, 0x1

    move-object v0, v9

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    .line 1927
    .local v20, packageManager:Landroid/content/pm/PackageManager;
    const/16 v26, 0x0

    move-object/from16 v0, v20

    move-object v1, v9

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 1928
    .local v4, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v16

    .line 1929
    .local v16, numActivities:I
    move/from16 v0, v16

    new-array v0, v0, [Lcom/ecareme/pixwe/media/PopupMenu$Option;

    move-object/from16 v19, v0

    .line 1930
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_3
    move v0, v7

    move/from16 v1, v16

    if-ne v0, v1, :cond_e

    .line 1940
    .end local v4           #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7           #i:I
    .end local v9           #intent:Landroid/content/Intent;
    .end local v16           #numActivities:I
    .end local v20           #packageManager:Landroid/content/pm/PackageManager;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mSelectionMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/ecareme/pixwe/media/MenuBar;->getMenus()[Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-result-object v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/ecareme/pixwe/media/MenuBar$Menu;->options:[Lcom/ecareme/pixwe/media/PopupMenu$Option;

    .line 1941
    return-void

    .line 1856
    .end local v19           #options:[Lcom/ecareme/pixwe/media/PopupMenu$Option;
    .restart local v12       #j:I
    .restart local v14       #mediaType:I
    .restart local v17       #numBuckets:I
    :cond_3
    move-object/from16 v0, v22

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ecareme/pixwe/media/MediaBucket;

    .line 1857
    .local v5, bucket:Lcom/ecareme/pixwe/media/MediaBucket;
    const/4 v11, 0x0

    .line 1858
    .local v11, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    const/16 v18, 0x0

    .line 1859
    .local v18, numItems:I
    move-object v0, v5

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    if-eqz v26, :cond_5

    move-object v0, v5

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_5

    .line 1860
    iget-object v11, v5, Lcom/ecareme/pixwe/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    .line 1861
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 1867
    :cond_4
    :goto_4
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_5
    move v0, v7

    move/from16 v1, v18

    if-lt v0, v1, :cond_6

    .line 1855
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 1862
    .end local v7           #i:I
    :cond_5
    move-object v0, v5

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaBucket;->mediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    move-object/from16 v26, v0

    if-eqz v26, :cond_4

    .line 1864
    move-object v0, v5

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaBucket;->mediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/ecareme/pixwe/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v11

    .line 1865
    move-object v0, v5

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaBucket;->mediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/ecareme/pixwe/media/MediaSet;->getNumItems()I

    move-result v18

    goto :goto_4

    .line 1868
    .restart local v7       #i:I
    :cond_6
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ecareme/pixwe/media/MediaItem;

    .line 1869
    .local v10, item:Lcom/ecareme/pixwe/media/MediaItem;
    if-nez v15, :cond_7

    .line 1870
    iget-object v15, v10, Lcom/ecareme/pixwe/media/MediaItem;->mMimeType:Ljava/lang/String;

    .line 1871
    invoke-virtual {v10}, Lcom/ecareme/pixwe/media/MediaItem;->getMediaType()I

    move-result v14

    .line 1872
    move-object v0, v10

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mParentMediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    move-object/from16 v21, v0

    .line 1873
    .local v21, parentMediaSet:Lcom/ecareme/pixwe/media/MediaSet;
    if-eqz v21, :cond_7

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mPicasaAlbumId:J

    move-wide/from16 v26, v0

    const-wide/16 v28, -0x1

    cmp-long v26, v26, v28

    if-eqz v26, :cond_7

    .line 1878
    const-string v15, "text/plain"

    .line 1882
    .end local v21           #parentMediaSet:Lcom/ecareme/pixwe/media/MediaSet;
    :cond_7
    invoke-virtual {v10}, Lcom/ecareme/pixwe/media/MediaItem;->getMediaType()I

    move-result v26

    move v0, v14

    move/from16 v1, v26

    if-eq v0, v1, :cond_8

    .line 1883
    const-string v26, "text"

    move-object v0, v15

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_8

    .line 1884
    const-string v15, "*/*"

    .line 1887
    :cond_8
    move-object v0, v10

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mContentUri:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_9

    .line 1888
    move-object v0, v10

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mContentUri:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    .line 1889
    .local v24, uri:Landroid/net/Uri;
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1867
    .end local v24           #uri:Landroid/net/Uri;
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 1907
    .end local v5           #bucket:Lcom/ecareme/pixwe/media/MediaBucket;
    .end local v10           #item:Lcom/ecareme/pixwe/media/MediaItem;
    .end local v11           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    .end local v12           #j:I
    .end local v14           #mediaType:I
    .end local v17           #numBuckets:I
    .end local v18           #numItems:I
    .restart local v6       #builder:Ljava/lang/StringBuilder;
    .restart local v9       #intent:Landroid/content/Intent;
    .restart local v19       #options:[Lcom/ecareme/pixwe/media/PopupMenu$Option;
    .restart local v23       #size:I
    :cond_a
    move-object/from16 v0, v25

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    move-object v0, v6

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1908
    const/16 v26, 0x1

    sub-int v26, v23, v26

    move v0, v7

    move/from16 v1, v26

    if-eq v0, v1, :cond_b

    .line 1909
    const/16 v26, 0xa

    move-object v0, v6

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1906
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 1914
    .end local v6           #builder:Ljava/lang/StringBuilder;
    .end local v7           #i:I
    .end local v23           #size:I
    :cond_c
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_d

    .line 1915
    const-string v26, "android.intent.action.SEND"

    move-object v0, v9

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1916
    const-string v26, "android.intent.extra.STREAM"

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    move-object v0, v9

    move-object/from16 v1, v26

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1921
    :goto_6
    invoke-virtual {v9, v15}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 1918
    :cond_d
    const-string v26, "android.intent.action.SEND_MULTIPLE"

    move-object v0, v9

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1919
    const-string v26, "android.intent.extra.STREAM"

    move-object v0, v9

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_6

    .line 1931
    .restart local v4       #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v7       #i:I
    .restart local v16       #numActivities:I
    .restart local v20       #packageManager:Landroid/content/pm/PackageManager;
    :cond_e
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 1932
    .local v8, info:Landroid/content/pm/ResolveInfo;
    move-object v0, v8

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1933
    .local v13, label:Ljava/lang/String;
    new-instance v26, Lcom/ecareme/pixwe/media/PopupMenu$Option;

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v27

    new-instance v28, Lcom/ecareme/pixwe/media/HudLayer$58;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object v2, v9

    move-object v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/ecareme/pixwe/media/HudLayer$58;-><init>(Lcom/ecareme/pixwe/media/HudLayer;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    move-object/from16 v0, v26

    move-object v1, v13

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/ecareme/pixwe/media/PopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    aput-object v26, v19, v7

    .line 1930
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3
.end method

.method private updateViews()V
    .locals 22

    .prologue
    .line 1555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 1657
    :goto_0
    return-void

    .line 1557
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/ecareme/pixwe/media/GridLayer;->getState()I

    move-result v16

    .line 1559
    .local v16, state:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mMode:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    const/16 v18, 0x1

    move/from16 v13, v18

    .line 1560
    .local v13, selectionMode:Z
    :goto_1
    const/16 v18, 0x2

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    const/16 v18, 0x1

    move/from16 v5, v18

    .line 1561
    .local v5, fullscreenMode:Z
    :goto_2
    if-eqz v16, :cond_8

    const/16 v18, 0x3

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    const/16 v18, 0x0

    move/from16 v15, v18

    .line 1562
    .local v15, stackMode:Z
    :goto_3
    const/4 v8, 0x0

    .line 1563
    .local v8, isSmart:Z
    const/4 v9, 0x0

    .line 1564
    .local v9, isSmartSet:Z
    if-eqz v16, :cond_2

    .line 1565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/ecareme/pixwe/media/GridLayer;->getCurrentSelectedSlot()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/ecareme/pixwe/media/GridLayer;->getDisplayItemForSlotId(I)Lcom/ecareme/pixwe/media/DisplayItem;

    move-result-object v4

    .line 1566
    .local v4, displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    if-eqz v4, :cond_1

    .line 1567
    iget-object v10, v4, Lcom/ecareme/pixwe/media/DisplayItem;->mItemRef:Lcom/ecareme/pixwe/media/MediaItem;

    .line 1568
    .local v10, item:Lcom/ecareme/pixwe/media/MediaItem;
    move-object v0, v10

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mParentMediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-nez v18, :cond_9

    const/16 v18, 0x1

    move/from16 v8, v18

    .line 1571
    .end local v10           #item:Lcom/ecareme/pixwe/media/MediaItem;
    :cond_1
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/ecareme/pixwe/media/GridLayer;->getCurrentFocusSlot()I

    move-result v14

    .line 1572
    .local v14, slotId:I
    const/16 v18, -0x1

    move v0, v14

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 1573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/GridLayer;->getDisplayItemForSlotId(I)Lcom/ecareme/pixwe/media/DisplayItem;

    move-result-object v4

    .line 1574
    if-eqz v4, :cond_2

    .line 1575
    move-object v0, v4

    iget-object v0, v0, Lcom/ecareme/pixwe/media/DisplayItem;->mItemRef:Lcom/ecareme/pixwe/media/MediaItem;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mParentMediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-nez v18, :cond_a

    const/16 v18, 0x1

    move/from16 v9, v18

    .line 1579
    .end local v4           #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    .end local v14           #slotId:I
    :cond_2
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mMainBottomMenu:Lcom/ecareme/pixwe/media/MenuBar;

    move-object/from16 v18, v0

    if-nez v13, :cond_b

    if-nez v16, :cond_b

    sget-boolean v19, Lcom/ecareme/pixwe/media/GridLayer;->UPLOAD_MODE:Z

    if-nez v19, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->isCopying:Z

    move/from16 v19, v0

    if-nez v19, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->isMoving:Z

    move/from16 v19, v0

    if-nez v19, :cond_b

    const/16 v19, 0x0

    :goto_6
    invoke-virtual/range {v18 .. v19}, Lcom/ecareme/pixwe/media/MenuBar;->setHidden(Z)V

    .line 1580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mItemSelectionMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    move-object/from16 v18, v0

    if-eqz v13, :cond_c

    const/16 v19, 0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    const/16 v19, 0x3

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    :cond_3
    sget-boolean v19, Lcom/ecareme/pixwe/media/GridLayer;->UPLOAD_MODE:Z

    if-nez v19, :cond_c

    if-nez v9, :cond_c

    const/16 v19, 0x0

    :goto_7
    invoke-virtual/range {v18 .. v19}, Lcom/ecareme/pixwe/media/MenuBar;->setHidden(Z)V

    .line 1581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mSmartItemSelectionMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    move-object/from16 v18, v0

    if-eqz v13, :cond_d

    const/16 v19, 0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    const/16 v19, 0x3

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    :cond_4
    sget-boolean v19, Lcom/ecareme/pixwe/media/GridLayer;->UPLOAD_MODE:Z

    if-nez v19, :cond_d

    if-eqz v9, :cond_d

    const/16 v19, 0x0

    :goto_8
    invoke-virtual/range {v18 .. v19}, Lcom/ecareme/pixwe/media/MenuBar;->setHidden(Z)V

    .line 1582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mCopyMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->isCopying:Z

    move/from16 v19, v0

    if-eqz v19, :cond_e

    if-nez v16, :cond_e

    const/16 v19, 0x0

    :goto_9
    invoke-virtual/range {v18 .. v19}, Lcom/ecareme/pixwe/media/MenuBar;->setHidden(Z)V

    .line 1583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mMoveMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->isMoving:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f

    if-nez v16, :cond_f

    const/16 v19, 0x0

    :goto_a
    invoke-virtual/range {v18 .. v19}, Lcom/ecareme/pixwe/media/MenuBar;->setHidden(Z)V

    .line 1587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mSelectionMenuTop:Lcom/ecareme/pixwe/media/MenuBar;

    move-object/from16 v18, v0

    if-eqz v13, :cond_10

    if-nez v5, :cond_10

    const/16 v19, 0x0

    :goto_b
    invoke-virtual/range {v18 .. v19}, Lcom/ecareme/pixwe/media/MenuBar;->setHidden(Z)V

    .line 1591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mSelectionMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    move-object/from16 v18, v0

    if-eqz v13, :cond_11

    if-nez v16, :cond_11

    sget-boolean v19, Lcom/ecareme/pixwe/media/GridLayer;->UPLOAD_MODE:Z

    if-nez v19, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->isCopying:Z

    move/from16 v19, v0

    if-nez v19, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->isMoving:Z

    move/from16 v19, v0

    if-nez v19, :cond_11

    const/16 v19, 0x0

    :goto_c
    invoke-virtual/range {v18 .. v19}, Lcom/ecareme/pixwe/media/MenuBar;->setHidden(Z)V

    .line 1592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mStartUploadMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    move-object/from16 v18, v0

    if-eqz v13, :cond_12

    sget-boolean v19, Lcom/ecareme/pixwe/media/GridLayer;->UPLOAD_MODE:Z

    if-eqz v19, :cond_12

    const/16 v19, 0x0

    :goto_d
    invoke-virtual/range {v18 .. v19}, Lcom/ecareme/pixwe/media/MenuBar;->setHidden(Z)V

    .line 1596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mFullscreenMenu:Lcom/ecareme/pixwe/media/MenuBar;

    move-object/from16 v18, v0

    if-eqz v5, :cond_13

    if-nez v13, :cond_13

    sget-boolean v19, Lcom/ecareme/pixwe/media/GridLayer;->UPLOAD_MODE:Z

    if-nez v19, :cond_13

    if-nez v8, :cond_13

    const/16 v19, 0x0

    :goto_e
    invoke-virtual/range {v18 .. v19}, Lcom/ecareme/pixwe/media/MenuBar;->setHidden(Z)V

    .line 1597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mSmartFullscreenMenu:Lcom/ecareme/pixwe/media/MenuBar;

    move-object/from16 v18, v0

    if-eqz v5, :cond_14

    if-nez v13, :cond_14

    sget-boolean v19, Lcom/ecareme/pixwe/media/GridLayer;->UPLOAD_MODE:Z

    if-nez v19, :cond_14

    if-eqz v8, :cond_14

    const/16 v19, 0x0

    :goto_f
    invoke-virtual/range {v18 .. v19}, Lcom/ecareme/pixwe/media/MenuBar;->setHidden(Z)V

    .line 1599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mZoomInButton:Lcom/ecareme/pixwe/media/ImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mFullscreenMenu:Lcom/ecareme/pixwe/media/MenuBar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/ecareme/pixwe/media/MenuBar;->isHidden()Z

    move-result v19

    if-eqz v19, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mSmartFullscreenMenu:Lcom/ecareme/pixwe/media/MenuBar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/ecareme/pixwe/media/MenuBar;->isHidden()Z

    move-result v19

    if-eqz v19, :cond_15

    const/16 v19, 0x1

    :goto_10
    invoke-virtual/range {v18 .. v19}, Lcom/ecareme/pixwe/media/ImageButton;->setHidden(Z)V

    .line 1600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mZoomOutButton:Lcom/ecareme/pixwe/media/ImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mFullscreenMenu:Lcom/ecareme/pixwe/media/MenuBar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/ecareme/pixwe/media/MenuBar;->isHidden()Z

    move-result v19

    if-eqz v19, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mSmartFullscreenMenu:Lcom/ecareme/pixwe/media/MenuBar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/ecareme/pixwe/media/MenuBar;->isHidden()Z

    move-result v19

    if-eqz v19, :cond_16

    const/16 v19, 0x1

    :goto_11
    invoke-virtual/range {v18 .. v19}, Lcom/ecareme/pixwe/media/ImageButton;->setHidden(Z)V

    .line 1603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mTimeBar:Lcom/ecareme/pixwe/media/TimeBar;

    move-object/from16 v18, v0

    if-nez v5, :cond_17

    if-nez v13, :cond_17

    if-nez v15, :cond_17

    const/16 v19, 0x0

    :goto_12
    invoke-virtual/range {v18 .. v19}, Lcom/ecareme/pixwe/media/TimeBar;->setHidden(Z)V

    .line 1608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mPathBar:Lcom/ecareme/pixwe/media/PathBarLayer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/PathBarLayer;->setHidden(Z)V

    .line 1609
    const/4 v11, 0x0

    .line 1610
    .local v11, keyword:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/ecareme/pixwe/media/GridLayer;->getDataSource()Lcom/ecareme/pixwe/media/DataSource;

    move-result-object v18

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/ecareme/pixwe/media/GridLayer;->getDataSource()Lcom/ecareme/pixwe/media/DataSource;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/ecareme/pixwe/aws/PixWeDataSource;

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 1611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/ecareme/pixwe/media/GridLayer;->getDataSource()Lcom/ecareme/pixwe/media/DataSource;

    move-result-object v3

    check-cast v3, Lcom/ecareme/pixwe/aws/PixWeDataSource;

    invoke-virtual {v3}, Lcom/ecareme/pixwe/aws/PixWeDataSource;->getKeyWord()Ljava/lang/String;

    move-result-object v11

    .line 1613
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mSearchBar:Lcom/ecareme/pixwe/media/PathBarLayer;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/ecareme/pixwe/media/PathBarLayer;->setHidden(Z)V

    .line 1615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mTopRightButton:Lcom/ecareme/pixwe/media/ImageButton;

    move-object/from16 v18, v0

    if-nez v13, :cond_18

    if-nez v5, :cond_18

    const/16 v19, 0x0

    :goto_13
    invoke-virtual/range {v18 .. v19}, Lcom/ecareme/pixwe/media/ImageButton;->setHidden(Z)V

    .line 1616
    invoke-direct/range {p0 .. p0}, Lcom/ecareme/pixwe/media/HudLayer;->computeSizeForPathbar()V

    .line 1619
    const/4 v7, 0x0

    .line 1620
    .local v7, image:I
    const/4 v12, 0x0

    .line 1621
    .local v12, pressedImage:I
    const/4 v3, 0x0

    .line 1622
    .local v3, action:Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mTopRightButton:Lcom/ecareme/pixwe/media/ImageButton;

    move-object/from16 v17, v0

    .line 1623
    .local v17, topRightButton:Lcom/ecareme/pixwe/media/ImageButton;
    const/high16 v18, 0x42bc

    sget v19, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move v6, v0

    .line 1624
    .local v6, height:I
    packed-switch v16, :pswitch_data_0

    .line 1654
    :goto_14
    :pswitch_0
    const/high16 v18, 0x42c8

    sget v19, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move v0, v6

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/ecareme/pixwe/media/ImageButton;->setSize(FF)V

    .line 1655
    move-object/from16 v0, v17

    move v1, v7

    move v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/ImageButton;->setImages(II)V

    .line 1656
    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/ImageButton;->setAction(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1559
    .end local v3           #action:Ljava/lang/Runnable;
    .end local v5           #fullscreenMode:Z
    .end local v6           #height:I
    .end local v7           #image:I
    .end local v8           #isSmart:Z
    .end local v9           #isSmartSet:Z
    .end local v11           #keyword:Ljava/lang/String;
    .end local v12           #pressedImage:I
    .end local v13           #selectionMode:Z
    .end local v15           #stackMode:Z
    .end local v17           #topRightButton:Lcom/ecareme/pixwe/media/ImageButton;
    :cond_6
    const/16 v18, 0x0

    move/from16 v13, v18

    goto/16 :goto_1

    .line 1560
    .restart local v13       #selectionMode:Z
    :cond_7
    const/16 v18, 0x0

    move/from16 v5, v18

    goto/16 :goto_2

    .line 1561
    .restart local v5       #fullscreenMode:Z
    :cond_8
    const/16 v18, 0x1

    move/from16 v15, v18

    goto/16 :goto_3

    .line 1568
    .restart local v4       #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    .restart local v8       #isSmart:Z
    .restart local v9       #isSmartSet:Z
    .restart local v10       #item:Lcom/ecareme/pixwe/media/MediaItem;
    .restart local v15       #stackMode:Z
    :cond_9
    const/16 v18, 0x0

    move/from16 v8, v18

    goto/16 :goto_4

    .line 1575
    .end local v10           #item:Lcom/ecareme/pixwe/media/MediaItem;
    .restart local v14       #slotId:I
    :cond_a
    const/16 v18, 0x0

    move/from16 v9, v18

    goto/16 :goto_5

    .line 1579
    .end local v4           #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    .end local v14           #slotId:I
    :cond_b
    const/16 v19, 0x1

    goto/16 :goto_6

    .line 1580
    :cond_c
    const/16 v19, 0x1

    goto/16 :goto_7

    .line 1581
    :cond_d
    const/16 v19, 0x1

    goto/16 :goto_8

    .line 1582
    :cond_e
    const/16 v19, 0x1

    goto/16 :goto_9

    .line 1583
    :cond_f
    const/16 v19, 0x1

    goto/16 :goto_a

    .line 1587
    :cond_10
    const/16 v19, 0x1

    goto/16 :goto_b

    .line 1591
    :cond_11
    const/16 v19, 0x1

    goto/16 :goto_c

    .line 1592
    :cond_12
    const/16 v19, 0x1

    goto/16 :goto_d

    .line 1596
    :cond_13
    const/16 v19, 0x1

    goto/16 :goto_e

    .line 1597
    :cond_14
    const/16 v19, 0x1

    goto/16 :goto_f

    .line 1599
    :cond_15
    const/16 v19, 0x0

    goto/16 :goto_10

    .line 1600
    :cond_16
    const/16 v19, 0x0

    goto/16 :goto_11

    .line 1603
    :cond_17
    const/16 v19, 0x1

    goto/16 :goto_12

    .line 1615
    .restart local v11       #keyword:Ljava/lang/String;
    :cond_18
    const/16 v19, 0x1

    goto/16 :goto_13

    .line 1627
    .restart local v3       #action:Ljava/lang/Runnable;
    .restart local v6       #height:I
    .restart local v7       #image:I
    .restart local v12       #pressedImage:I
    .restart local v17       #topRightButton:Lcom/ecareme/pixwe/media/ImageButton;
    :pswitch_1
    sget v12, Lcom/ecareme/pixwe/media/HudLayer;->CAMERA_BUTTON_ICON_PRESSED:I

    .line 1628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mCameraButtonAction:Ljava/lang/Runnable;

    move-object v3, v0

    .line 1629
    goto/16 :goto_14

    .line 1631
    :pswitch_2
    div-int/lit8 v6, v6, 0x2

    .line 1632
    sget v7, Lcom/ecareme/pixwe/media/HudLayer;->STACK_MODE_ICON:I

    .line 1633
    sget v12, Lcom/ecareme/pixwe/media/HudLayer;->STACK_MODE_PRESSED_ICON:I

    .line 1634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mStackModeButtonAction:Ljava/lang/Runnable;

    move-object v3, v0

    .line 1635
    goto/16 :goto_14

    .line 1637
    :pswitch_3
    sget v7, Lcom/ecareme/pixwe/media/HudLayer;->GRID_MODE_ICON:I

    .line 1638
    sget v12, Lcom/ecareme/pixwe/media/HudLayer;->GRID_MODE_PRESSED_ICON:I

    .line 1639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer;->mGridModeButtonAction:Ljava/lang/Runnable;

    move-object v3, v0

    .line 1640
    goto/16 :goto_14

    .line 1624
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public autoHide(Z)V
    .locals 0
    .parameter "hide"

    .prologue
    .line 1955
    iput-boolean p1, p0, Lcom/ecareme/pixwe/media/HudLayer;->mAutoHide:Z

    .line 1956
    return-void
.end method

.method public cancelSelection()V
    .locals 1

    .prologue
    .line 1794
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mSelectionMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/MenuBar;->close()V

    .line 1795
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/HudLayer;->closeSelectionMenu()V

    .line 1796
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/media/HudLayer;->setMode(I)V

    .line 1797
    return-void
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 1965
    return-void
.end method

.method public closeSelectionMenu()V
    .locals 1

    .prologue
    .line 1800
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mSelectionMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/MenuBar;->close()V

    .line 1801
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mMainBottomMenu:Lcom/ecareme/pixwe/media/MenuBar;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/MenuBar;->close()V

    .line 1802
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mFullscreenMenu:Lcom/ecareme/pixwe/media/MenuBar;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/MenuBar;->close()V

    .line 1803
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mSmartFullscreenMenu:Lcom/ecareme/pixwe/media/MenuBar;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/MenuBar;->close()V

    .line 1804
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mItemSelectionMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/MenuBar;->close()V

    .line 1805
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mSmartItemSelectionMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/MenuBar;->close()V

    .line 1806
    return-void
.end method

.method public computeBottomMenu()V
    .locals 9

    .prologue
    .line 1985
    iget-object v5, p0, Lcom/ecareme/pixwe/media/HudLayer;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v5}, Lcom/ecareme/pixwe/media/GridLayer;->getSelectedBuckets()Ljava/util/ArrayList;

    move-result-object v4

    .line 1986
    .local v4, selection:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    iget-object v5, p0, Lcom/ecareme/pixwe/media/HudLayer;->mSelectionMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    invoke-virtual {v5}, Lcom/ecareme/pixwe/media/MenuBar;->getMenus()[Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-result-object v2

    .line 1987
    .local v2, menus:[Lcom/ecareme/pixwe/media/MenuBar$Menu;
    iget-object v5, p0, Lcom/ecareme/pixwe/media/HudLayer;->mSingleViewIntentBottomMenu:[Lcom/ecareme/pixwe/media/MenuBar$Menu;

    if-ne v2, v5, :cond_1

    .line 1999
    :cond_0
    :goto_0
    return-void

    .line 1989
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1990
    .local v3, numBuckets:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 1991
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecareme/pixwe/media/MediaBucket;

    .line 1992
    .local v0, bucket:Lcom/ecareme/pixwe/media/MediaBucket;
    if-eqz v0, :cond_2

    iget-object v5, v0, Lcom/ecareme/pixwe/media/MediaBucket;->mediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    if-nez v5, :cond_3

    .line 1990
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1994
    :cond_3
    iget-object v5, v0, Lcom/ecareme/pixwe/media/MediaBucket;->mediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    iget-wide v5, v5, Lcom/ecareme/pixwe/media/MediaSet;->mPicasaAlbumId:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    .line 1995
    iget-object v5, p0, Lcom/ecareme/pixwe/media/HudLayer;->mSelectionMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    iget-object v6, p0, Lcom/ecareme/pixwe/media/HudLayer;->mSingleViewIntentBottomMenu:[Lcom/ecareme/pixwe/media/MenuBar$Menu;

    invoke-virtual {v5, v6}, Lcom/ecareme/pixwe/media/MenuBar;->setMenus([Lcom/ecareme/pixwe/media/MenuBar$Menu;)V

    goto :goto_0
.end method

.method public containsPoint(FF)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1790
    const/4 v0, 0x0

    return v0
.end method

.method protected deleteInFullscreenMode()V
    .locals 4

    .prologue
    .line 1248
    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    .line 1249
    .local v1, gridLayer:Lcom/ecareme/pixwe/media/GridLayer;
    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/GridLayer;->getCurrentSelectedSlot()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/ecareme/pixwe/media/GridLayer;->getDisplayItemForSlotId(I)Lcom/ecareme/pixwe/media/DisplayItem;

    move-result-object v0

    .line 1250
    .local v0, displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    iget-object v2, v0, Lcom/ecareme/pixwe/media/DisplayItem;->mItemRef:Lcom/ecareme/pixwe/media/MediaItem;

    .line 1251
    .local v2, item:Lcom/ecareme/pixwe/media/MediaItem;
    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v3, v2}, Lcom/ecareme/pixwe/media/GridLayer;->deleteInFullscreenMode(Lcom/ecareme/pixwe/media/MediaItem;)V

    .line 1252
    return-void
.end method

.method protected deleteSelection()V
    .locals 1

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/GridLayer;->deleteSelection()V

    .line 1244
    return-void
.end method

.method public enterSelectionMode()V
    .locals 2

    .prologue
    .line 1969
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/GridLayer;->feedAboutToChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1981
    :goto_0
    return-void

    .line 1972
    :cond_0
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/media/HudLayer;->setAlpha(F)V

    .line 1973
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/media/HudLayer;->setMode(I)V

    .line 1976
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/GridLayer;->noDeleteMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1977
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mSelectionMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer;->mSingleViewIntentBottomMenu:[Lcom/ecareme/pixwe/media/MenuBar$Menu;

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/MenuBar;->setMenus([Lcom/ecareme/pixwe/media/MenuBar$Menu;)V

    goto :goto_0

    .line 1979
    :cond_1
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mSelectionMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer;->mNormalBottomMenu:[Lcom/ecareme/pixwe/media/MenuBar$Menu;

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/MenuBar;->setMenus([Lcom/ecareme/pixwe/media/MenuBar$Menu;)V

    goto :goto_0
.end method

.method public fullscreenSelectionChanged(Lcom/ecareme/pixwe/media/MediaItem;II)V
    .locals 3
    .parameter "item"
    .parameter "index"
    .parameter "count"

    .prologue
    .line 1836
    if-nez p1, :cond_0

    .line 1843
    :goto_0
    return-void

    .line 1838
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1839
    .local v0, location:Ljava/lang/String;
    iget-object v1, p1, Lcom/ecareme/pixwe/media/MediaItem;->mCaption:Ljava/lang/String;

    iput-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer;->mCachedCaption:Ljava/lang/String;

    .line 1840
    iput-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mCachedPosition:Ljava/lang/String;

    .line 1841
    iput-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mCachedCurrentLabel:Ljava/lang/String;

    .line 1842
    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer;->mPathBar:Lcom/ecareme/pixwe/media/PathBarLayer;

    invoke-virtual {v1, v0}, Lcom/ecareme/pixwe/media/PathBarLayer;->changeLabel(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public generate(Lcom/ecareme/pixwe/media/RenderView;Lcom/ecareme/pixwe/media/RenderView$Lists;)V
    .locals 1
    .parameter "view"
    .parameter "lists"

    .prologue
    .line 1760
    iget-object v0, p2, Lcom/ecareme/pixwe/media/RenderView$Lists;->opaqueList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1761
    iget-object v0, p2, Lcom/ecareme/pixwe/media/RenderView$Lists;->blendedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1762
    iget-object v0, p2, Lcom/ecareme/pixwe/media/RenderView$Lists;->hitTestList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1763
    iget-object v0, p2, Lcom/ecareme/pixwe/media/RenderView$Lists;->updateList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1764
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mTopRightButton:Lcom/ecareme/pixwe/media/ImageButton;

    invoke-virtual {v0, p1, p2}, Lcom/ecareme/pixwe/media/ImageButton;->generate(Lcom/ecareme/pixwe/media/RenderView;Lcom/ecareme/pixwe/media/RenderView$Lists;)V

    .line 1765
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mZoomInButton:Lcom/ecareme/pixwe/media/ImageButton;

    invoke-virtual {v0, p1, p2}, Lcom/ecareme/pixwe/media/ImageButton;->generate(Lcom/ecareme/pixwe/media/RenderView;Lcom/ecareme/pixwe/media/RenderView$Lists;)V

    .line 1766
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mZoomOutButton:Lcom/ecareme/pixwe/media/ImageButton;

    invoke-virtual {v0, p1, p2}, Lcom/ecareme/pixwe/media/ImageButton;->generate(Lcom/ecareme/pixwe/media/RenderView;Lcom/ecareme/pixwe/media/RenderView$Lists;)V

    .line 1767
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mTimeBar:Lcom/ecareme/pixwe/media/TimeBar;

    invoke-virtual {v0, p1, p2}, Lcom/ecareme/pixwe/media/TimeBar;->generate(Lcom/ecareme/pixwe/media/RenderView;Lcom/ecareme/pixwe/media/RenderView$Lists;)V

    .line 1770
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mMainBottomMenu:Lcom/ecareme/pixwe/media/MenuBar;

    invoke-virtual {v0, p1, p2}, Lcom/ecareme/pixwe/media/MenuBar;->generate(Lcom/ecareme/pixwe/media/RenderView;Lcom/ecareme/pixwe/media/RenderView$Lists;)V

    .line 1771
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mItemSelectionMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    invoke-virtual {v0, p1, p2}, Lcom/ecareme/pixwe/media/MenuBar;->generate(Lcom/ecareme/pixwe/media/RenderView;Lcom/ecareme/pixwe/media/RenderView$Lists;)V

    .line 1772
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mSmartItemSelectionMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    invoke-virtual {v0, p1, p2}, Lcom/ecareme/pixwe/media/MenuBar;->generate(Lcom/ecareme/pixwe/media/RenderView;Lcom/ecareme/pixwe/media/RenderView$Lists;)V

    .line 1773
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mStartUploadMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    invoke-virtual {v0, p1, p2}, Lcom/ecareme/pixwe/media/MenuBar;->generate(Lcom/ecareme/pixwe/media/RenderView;Lcom/ecareme/pixwe/media/RenderView$Lists;)V

    .line 1775
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mCopyMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    invoke-virtual {v0, p1, p2}, Lcom/ecareme/pixwe/media/MenuBar;->generate(Lcom/ecareme/pixwe/media/RenderView;Lcom/ecareme/pixwe/media/RenderView$Lists;)V

    .line 1776
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mMoveMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    invoke-virtual {v0, p1, p2}, Lcom/ecareme/pixwe/media/MenuBar;->generate(Lcom/ecareme/pixwe/media/RenderView;Lcom/ecareme/pixwe/media/RenderView$Lists;)V

    .line 1779
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mSelectionMenuTop:Lcom/ecareme/pixwe/media/MenuBar;

    invoke-virtual {v0, p1, p2}, Lcom/ecareme/pixwe/media/MenuBar;->generate(Lcom/ecareme/pixwe/media/RenderView;Lcom/ecareme/pixwe/media/RenderView$Lists;)V

    .line 1780
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mSelectionMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    invoke-virtual {v0, p1, p2}, Lcom/ecareme/pixwe/media/MenuBar;->generate(Lcom/ecareme/pixwe/media/RenderView;Lcom/ecareme/pixwe/media/RenderView$Lists;)V

    .line 1781
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mFullscreenMenu:Lcom/ecareme/pixwe/media/MenuBar;

    invoke-virtual {v0, p1, p2}, Lcom/ecareme/pixwe/media/MenuBar;->generate(Lcom/ecareme/pixwe/media/RenderView;Lcom/ecareme/pixwe/media/RenderView$Lists;)V

    .line 1782
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mSmartFullscreenMenu:Lcom/ecareme/pixwe/media/MenuBar;

    invoke-virtual {v0, p1, p2}, Lcom/ecareme/pixwe/media/MenuBar;->generate(Lcom/ecareme/pixwe/media/RenderView;Lcom/ecareme/pixwe/media/RenderView$Lists;)V

    .line 1783
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mPathBar:Lcom/ecareme/pixwe/media/PathBarLayer;

    invoke-virtual {v0, p1, p2}, Lcom/ecareme/pixwe/media/PathBarLayer;->generate(Lcom/ecareme/pixwe/media/RenderView;Lcom/ecareme/pixwe/media/RenderView$Lists;)V

    .line 1785
    iput-object p1, p0, Lcom/ecareme/pixwe/media/HudLayer;->mView:Lcom/ecareme/pixwe/media/RenderView;

    .line 1786
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 1751
    iget v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mAlpha:F

    return v0
.end method

.method public getGridLayer()Lcom/ecareme/pixwe/media/GridLayer;
    .locals 1

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    return-object v0
.end method

.method public getMenuBar()Lcom/ecareme/pixwe/media/Layer;
    .locals 7

    .prologue
    .line 2002
    const/4 v1, 0x0

    .line 2003
    .local v1, isSmart:Z
    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/GridLayer;->getState()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2004
    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    iget-object v4, p0, Lcom/ecareme/pixwe/media/HudLayer;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v4}, Lcom/ecareme/pixwe/media/GridLayer;->getCurrentSelectedSlot()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ecareme/pixwe/media/GridLayer;->getDisplayItemForSlotId(I)Lcom/ecareme/pixwe/media/DisplayItem;

    move-result-object v0

    .line 2005
    .local v0, displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    if-eqz v0, :cond_0

    .line 2006
    iget-object v2, v0, Lcom/ecareme/pixwe/media/DisplayItem;->mItemRef:Lcom/ecareme/pixwe/media/MediaItem;

    .line 2007
    .local v2, item:Lcom/ecareme/pixwe/media/MediaItem;
    iget-object v3, v2, Lcom/ecareme/pixwe/media/MediaItem;->mParentMediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    iget-wide v3, v3, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    const/4 v3, 0x1

    move v1, v3

    .line 2010
    .end local v0           #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    .end local v2           #item:Lcom/ecareme/pixwe/media/MediaItem;
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 2011
    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer;->mFullscreenMenu:Lcom/ecareme/pixwe/media/MenuBar;

    .line 2014
    :goto_1
    return-object v3

    .line 2007
    .restart local v0       #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    .restart local v2       #item:Lcom/ecareme/pixwe/media/MediaItem;
    :cond_1
    const/4 v3, 0x0

    move v1, v3

    goto :goto_0

    .line 2014
    .end local v0           #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    .end local v2           #item:Lcom/ecareme/pixwe/media/MediaItem;
    :cond_2
    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer;->mSmartFullscreenMenu:Lcom/ecareme/pixwe/media/MenuBar;

    goto :goto_1
.end method

.method getMode()I
    .locals 1

    .prologue
    .line 1470
    iget v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mMode:I

    return v0
.end method

.method public getPathBar()Lcom/ecareme/pixwe/media/PathBarLayer;
    .locals 1

    .prologue
    .line 1664
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mPathBar:Lcom/ecareme/pixwe/media/PathBarLayer;

    return-object v0
.end method

.method public getTimeBar()Lcom/ecareme/pixwe/media/TimeBar;
    .locals 1

    .prologue
    .line 1660
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mTimeBar:Lcom/ecareme/pixwe/media/TimeBar;

    return-object v0
.end method

.method public hideZoomButtons(Z)V
    .locals 1
    .parameter "hide"

    .prologue
    .line 2019
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mZoomInButton:Lcom/ecareme/pixwe/media/ImageButton;

    invoke-virtual {v0, p1}, Lcom/ecareme/pixwe/media/ImageButton;->setHidden(Z)V

    .line 2020
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mZoomOutButton:Lcom/ecareme/pixwe/media/ImageButton;

    invoke-virtual {v0, p1}, Lcom/ecareme/pixwe/media/ImageButton;->setHidden(Z)V

    .line 2021
    return-void
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 1823
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mLoadingLayer:Lcom/ecareme/pixwe/media/LoadingLayer;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/LoadingLayer;->isLoaded()Z

    move-result v0

    return v0
.end method

.method public loginAndPostToWall()V
    .locals 5

    .prologue
    .line 972
    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer;->facebook:Lcom/facebook/android/Facebook;

    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "publish_stream"

    aput-object v4, v2, v3

    const/4 v3, -0x1

    new-instance v4, Lcom/ecareme/pixwe/media/HudLayer$45;

    invoke-direct {v4, p0}, Lcom/ecareme/pixwe/media/HudLayer$45;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/facebook/android/Facebook;->authorize(Landroid/app/Activity;[Ljava/lang/String;ILcom/facebook/android/Facebook$DialogListener;)V

    .line 995
    return-void
.end method

.method public onGridStateChanged()V
    .locals 0

    .prologue
    .line 1551
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/HudLayer;->updateViews()V

    .line 1552
    return-void
.end method

.method protected onSizeChanged()V
    .locals 8

    .prologue
    const/high16 v5, 0x4240

    const/4 v7, 0x0

    const/high16 v6, 0x4234

    .line 1482
    iget v1, p0, Lcom/ecareme/pixwe/media/HudLayer;->mWidth:F

    .line 1483
    .local v1, width:F
    iget v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mHeight:F

    .line 1484
    .local v0, height:F
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/HudLayer;->closeSelectionMenu()V

    .line 1486
    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer;->mTimeBar:Lcom/ecareme/pixwe/media/TimeBar;

    sget v4, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v4, v5

    sub-float v4, v0, v4

    invoke-virtual {v3, v7, v4}, Lcom/ecareme/pixwe/media/TimeBar;->setPosition(FF)V

    .line 1487
    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer;->mTimeBar:Lcom/ecareme/pixwe/media/TimeBar;

    sget v4, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v4, v5

    invoke-virtual {v3, v1, v4}, Lcom/ecareme/pixwe/media/TimeBar;->setSize(FF)V

    .line 1488
    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer;->mSelectionMenuTop:Lcom/ecareme/pixwe/media/MenuBar;

    invoke-virtual {v3, v7, v7}, Lcom/ecareme/pixwe/media/MenuBar;->setPosition(FF)V

    .line 1490
    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer;->mSelectionMenuTop:Lcom/ecareme/pixwe/media/MenuBar;

    const/high16 v4, 0x424c

    sget v5, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v4, v5

    invoke-virtual {v3, v1, v4}, Lcom/ecareme/pixwe/media/MenuBar;->setSize(FF)V

    .line 1493
    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer;->mMainBottomMenu:Lcom/ecareme/pixwe/media/MenuBar;

    sget v4, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v4, v6

    sub-float v4, v0, v4

    invoke-virtual {v3, v7, v4}, Lcom/ecareme/pixwe/media/MenuBar;->setPosition(FF)V

    .line 1494
    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer;->mMainBottomMenu:Lcom/ecareme/pixwe/media/MenuBar;

    sget v4, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v4, v6

    invoke-virtual {v3, v1, v4}, Lcom/ecareme/pixwe/media/MenuBar;->setSize(FF)V

    .line 1495
    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer;->mItemSelectionMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    sget v4, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v4, v6

    sub-float v4, v0, v4

    invoke-virtual {v3, v7, v4}, Lcom/ecareme/pixwe/media/MenuBar;->setPosition(FF)V

    .line 1496
    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer;->mItemSelectionMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    sget v4, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v4, v6

    invoke-virtual {v3, v1, v4}, Lcom/ecareme/pixwe/media/MenuBar;->setSize(FF)V

    .line 1497
    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer;->mSmartItemSelectionMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    sget v4, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v4, v6

    sub-float v4, v0, v4

    invoke-virtual {v3, v7, v4}, Lcom/ecareme/pixwe/media/MenuBar;->setPosition(FF)V

    .line 1498
    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer;->mSmartItemSelectionMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    sget v4, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v4, v6

    invoke-virtual {v3, v1, v4}, Lcom/ecareme/pixwe/media/MenuBar;->setSize(FF)V

    .line 1499
    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer;->mStartUploadMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    sget v4, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v4, v6

    sub-float v4, v0, v4

    invoke-virtual {v3, v7, v4}, Lcom/ecareme/pixwe/media/MenuBar;->setPosition(FF)V

    .line 1500
    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer;->mStartUploadMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    sget v4, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v4, v6

    invoke-virtual {v3, v1, v4}, Lcom/ecareme/pixwe/media/MenuBar;->setSize(FF)V

    .line 1501
    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer;->mMoveMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    sget v4, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v4, v6

    sub-float v4, v0, v4

    invoke-virtual {v3, v7, v4}, Lcom/ecareme/pixwe/media/MenuBar;->setPosition(FF)V

    .line 1502
    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer;->mMoveMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    sget v4, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v4, v6

    invoke-virtual {v3, v1, v4}, Lcom/ecareme/pixwe/media/MenuBar;->setSize(FF)V

    .line 1503
    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer;->mCopyMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    sget v4, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v4, v6

    sub-float v4, v0, v4

    invoke-virtual {v3, v7, v4}, Lcom/ecareme/pixwe/media/MenuBar;->setPosition(FF)V

    .line 1504
    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer;->mCopyMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    sget v4, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v4, v6

    invoke-virtual {v3, v1, v4}, Lcom/ecareme/pixwe/media/MenuBar;->setSize(FF)V

    .line 1507
    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer;->mComment:Lcom/ecareme/pixwe/media/CommentLayer;

    const/high16 v4, 0x4220

    sget v5, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v4, v5

    invoke-virtual {v3, v1, v4}, Lcom/ecareme/pixwe/media/CommentLayer;->setSize(FF)V

    .line 1510
    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer;->mSelectionMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    sget v4, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v4, v6

    sub-float v4, v0, v4

    invoke-virtual {v3, v7, v4}, Lcom/ecareme/pixwe/media/MenuBar;->setPosition(FF)V

    .line 1511
    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer;->mSelectionMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    sget v4, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v4, v6

    invoke-virtual {v3, v1, v4}, Lcom/ecareme/pixwe/media/MenuBar;->setSize(FF)V

    .line 1513
    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer;->mFullscreenMenu:Lcom/ecareme/pixwe/media/MenuBar;

    sget v4, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v4, v6

    sub-float v4, v0, v4

    invoke-virtual {v3, v7, v4}, Lcom/ecareme/pixwe/media/MenuBar;->setPosition(FF)V

    .line 1514
    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer;->mFullscreenMenu:Lcom/ecareme/pixwe/media/MenuBar;

    sget v4, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v4, v6

    invoke-virtual {v3, v1, v4}, Lcom/ecareme/pixwe/media/MenuBar;->setSize(FF)V

    .line 1516
    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer;->mSmartFullscreenMenu:Lcom/ecareme/pixwe/media/MenuBar;

    sget v4, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v4, v6

    sub-float v4, v0, v4

    invoke-virtual {v3, v7, v4}, Lcom/ecareme/pixwe/media/MenuBar;->setPosition(FF)V

    .line 1517
    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer;->mSmartFullscreenMenu:Lcom/ecareme/pixwe/media/MenuBar;

    sget v4, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v4, v6

    invoke-virtual {v3, v1, v4}, Lcom/ecareme/pixwe/media/MenuBar;->setSize(FF)V

    .line 1519
    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer;->mPathBar:Lcom/ecareme/pixwe/media/PathBarLayer;

    const/high16 v4, -0x3f80

    sget v5, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v4, v5

    invoke-virtual {v3, v7, v4}, Lcom/ecareme/pixwe/media/PathBarLayer;->setPosition(FF)V

    .line 1520
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/HudLayer;->computeSizeForPathbar()V

    .line 1524
    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer;->mTopRightButton:Lcom/ecareme/pixwe/media/ImageButton;

    iget-object v4, p0, Lcom/ecareme/pixwe/media/HudLayer;->mTopRightButton:Lcom/ecareme/pixwe/media/ImageButton;

    invoke-virtual {v4}, Lcom/ecareme/pixwe/media/ImageButton;->getWidth()F

    move-result v4

    sub-float v4, v1, v4

    invoke-virtual {v3, v4, v7}, Lcom/ecareme/pixwe/media/ImageButton;->setPosition(FF)V

    .line 1531
    const/high16 v3, 0x4120

    sget v4, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float v2, v3, v4

    .line 1532
    .local v2, zoomY:F
    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer;->mZoomInButton:Lcom/ecareme/pixwe/media/ImageButton;

    iget-object v4, p0, Lcom/ecareme/pixwe/media/HudLayer;->mZoomInButton:Lcom/ecareme/pixwe/media/ImageButton;

    invoke-virtual {v4}, Lcom/ecareme/pixwe/media/ImageButton;->getWidth()F

    move-result v4

    sub-float v4, v1, v4

    invoke-virtual {v3, v4, v2}, Lcom/ecareme/pixwe/media/ImageButton;->setPosition(FF)V

    .line 1533
    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer;->mZoomOutButton:Lcom/ecareme/pixwe/media/ImageButton;

    iget-object v4, p0, Lcom/ecareme/pixwe/media/HudLayer;->mZoomInButton:Lcom/ecareme/pixwe/media/ImageButton;

    invoke-virtual {v4}, Lcom/ecareme/pixwe/media/ImageButton;->getWidth()F

    move-result v4

    sub-float v4, v1, v4

    iget-object v5, p0, Lcom/ecareme/pixwe/media/HudLayer;->mZoomInButton:Lcom/ecareme/pixwe/media/ImageButton;

    invoke-virtual {v5}, Lcom/ecareme/pixwe/media/ImageButton;->getHeight()F

    move-result v5

    add-float/2addr v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/ecareme/pixwe/media/ImageButton;->setPosition(FF)V

    .line 1534
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 1810
    iget v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    .line 1818
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public postToWall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "message"
    .parameter "link"

    .prologue
    .line 998
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1001
    .local v0, parameters:Landroid/os/Bundle;
    const-string v1, "message"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f06

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    const-string v1, "link"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1004
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1006
    :cond_0
    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer;->facebook:Lcom/facebook/android/Facebook;

    iget-object v2, p0, Lcom/ecareme/pixwe/media/HudLayer;->mContext:Landroid/content/Context;

    const-string v3, "stream.publish"

    new-instance v4, Lcom/ecareme/pixwe/media/HudLayer$46;

    invoke-direct {v4, p0}, Lcom/ecareme/pixwe/media/HudLayer$46;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/facebook/android/Facebook;->dialog(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/android/Facebook$DialogListener;)V

    .line 1034
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1035
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 1036
    return-void
.end method

.method public renderBlended(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 1
    .parameter "view"
    .parameter "gl"

    .prologue
    .line 1697
    iget v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mAnimAlpha:F

    invoke-virtual {p1, v0}, Lcom/ecareme/pixwe/media/RenderView;->setAlpha(F)V

    .line 1698
    return-void
.end method

.method public renderOpaque(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 0
    .parameter "view"
    .parameter "gl"

    .prologue
    .line 1694
    return-void
.end method

.method reset()V
    .locals 2

    .prologue
    .line 1827
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mLoadingLayer:Lcom/ecareme/pixwe/media/LoadingLayer;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/LoadingLayer;->reset()V

    .line 1828
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mTimeBar:Lcom/ecareme/pixwe/media/TimeBar;

    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/TimeBar;->regenerateStringsForContext(Landroid/content/Context;)V

    .line 1829
    return-void
.end method

.method public restoreCredentials(Lcom/facebook/android/Facebook;)Z
    .locals 4
    .parameter "facebook"

    .prologue
    .line 1046
    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer;->mContext:Landroid/content/Context;

    const-string v2, "facebook-credentials"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1047
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v1, "access_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/facebook/android/Facebook;->setAccessToken(Ljava/lang/String;)V

    .line 1048
    const-string v1, "expires_in"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/facebook/android/Facebook;->setAccessExpires(J)V

    .line 1049
    invoke-virtual {p1}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    move-result v1

    return v1
.end method

.method public saveCredentials(Lcom/facebook/android/Facebook;)Z
    .locals 4
    .parameter "facebook"

    .prologue
    .line 1039
    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer;->mContext:Landroid/content/Context;

    const-string v2, "facebook-credentials"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1040
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "access_token"

    invoke-virtual {p1}, Lcom/facebook/android/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1041
    const-string v1, "expires_in"

    invoke-virtual {p1}, Lcom/facebook/android/Facebook;->getAccessExpires()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1042
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public setAlpha(F)V
    .locals 7
    .parameter "alpha"

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f80

    .line 1702
    float-to-double v1, p1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_3

    .line 1703
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/HudLayer;->closeSelectionMenu()V

    .line 1704
    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer;->mSelectionMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    invoke-virtual {v1, v6}, Lcom/ecareme/pixwe/media/MenuBar;->setAlpha(F)V

    .line 1705
    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer;->mMainBottomMenu:Lcom/ecareme/pixwe/media/MenuBar;

    invoke-virtual {v1, v6}, Lcom/ecareme/pixwe/media/MenuBar;->setAlpha(F)V

    .line 1706
    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer;->mFullscreenMenu:Lcom/ecareme/pixwe/media/MenuBar;

    invoke-virtual {v1, v6}, Lcom/ecareme/pixwe/media/MenuBar;->setAlpha(F)V

    .line 1707
    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer;->mSmartFullscreenMenu:Lcom/ecareme/pixwe/media/MenuBar;

    invoke-virtual {v1, v6}, Lcom/ecareme/pixwe/media/MenuBar;->setAlpha(F)V

    .line 1708
    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer;->mItemSelectionMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    invoke-virtual {v1, v6}, Lcom/ecareme/pixwe/media/MenuBar;->setAlpha(F)V

    .line 1709
    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer;->mSmartItemSelectionMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    invoke-virtual {v1, v6}, Lcom/ecareme/pixwe/media/MenuBar;->setAlpha(F)V

    .line 1710
    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer;->mStartUploadMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    invoke-virtual {v1, v6}, Lcom/ecareme/pixwe/media/MenuBar;->setAlpha(F)V

    .line 1711
    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer;->mCopyMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    invoke-virtual {v1, v6}, Lcom/ecareme/pixwe/media/MenuBar;->setAlpha(F)V

    .line 1712
    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer;->mMoveMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    invoke-virtual {v1, v6}, Lcom/ecareme/pixwe/media/MenuBar;->setAlpha(F)V

    .line 1726
    :cond_0
    :goto_0
    iget v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mAlpha:F

    .line 1727
    .local v0, oldAlpha:F
    iput p1, p0, Lcom/ecareme/pixwe/media/HudLayer;->mAlpha:F

    .line 1728
    cmpl-float v1, v0, p1

    if-eqz v1, :cond_1

    .line 1729
    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer;->mView:Lcom/ecareme/pixwe/media/RenderView;

    if-eqz v1, :cond_1

    .line 1730
    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer;->mView:Lcom/ecareme/pixwe/media/RenderView;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/RenderView;->requestRender()V

    .line 1735
    :cond_1
    cmpl-float v1, p1, v5

    if-nez v1, :cond_2

    .line 1739
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ecareme/pixwe/media/HudLayer;->mLastTimeFullOpacity:J

    .line 1740
    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/ecareme/pixwe/app/App;->get(Landroid/content/Context;)Lcom/ecareme/pixwe/app/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ecareme/pixwe/app/App;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/ecareme/pixwe/media/HudLayer$57;

    invoke-direct {v2, p0}, Lcom/ecareme/pixwe/media/HudLayer$57;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    .line 1746
    const-wide/16 v3, 0x1388

    .line 1740
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1748
    :cond_2
    return-void

    .line 1714
    .end local v0           #oldAlpha:F
    :cond_3
    cmpl-float v1, p1, v5

    if-nez v1, :cond_0

    .line 1715
    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer;->mMainBottomMenu:Lcom/ecareme/pixwe/media/MenuBar;

    invoke-virtual {v1, v5}, Lcom/ecareme/pixwe/media/MenuBar;->setAlpha(F)V

    .line 1716
    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer;->mFullscreenMenu:Lcom/ecareme/pixwe/media/MenuBar;

    invoke-virtual {v1, v5}, Lcom/ecareme/pixwe/media/MenuBar;->setAlpha(F)V

    .line 1717
    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer;->mSmartFullscreenMenu:Lcom/ecareme/pixwe/media/MenuBar;

    invoke-virtual {v1, v5}, Lcom/ecareme/pixwe/media/MenuBar;->setAlpha(F)V

    .line 1718
    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer;->mSelectionMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    invoke-virtual {v1, v5}, Lcom/ecareme/pixwe/media/MenuBar;->setAlpha(F)V

    .line 1719
    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer;->mItemSelectionMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    invoke-virtual {v1, v5}, Lcom/ecareme/pixwe/media/MenuBar;->setAlpha(F)V

    .line 1720
    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer;->mSmartItemSelectionMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    invoke-virtual {v1, v5}, Lcom/ecareme/pixwe/media/MenuBar;->setAlpha(F)V

    .line 1721
    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer;->mStartUploadMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    invoke-virtual {v1, v5}, Lcom/ecareme/pixwe/media/MenuBar;->setAlpha(F)V

    .line 1722
    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer;->mCopyMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    invoke-virtual {v1, v5}, Lcom/ecareme/pixwe/media/MenuBar;->setAlpha(F)V

    .line 1723
    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer;->mMoveMenuBottom:Lcom/ecareme/pixwe/media/MenuBar;

    invoke-virtual {v1, v5}, Lcom/ecareme/pixwe/media/MenuBar;->setAlpha(F)V

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mContext:Landroid/content/Context;

    if-eq v0, p1, :cond_0

    .line 1054
    iput-object p1, p0, Lcom/ecareme/pixwe/media/HudLayer;->mContext:Landroid/content/Context;

    .line 1055
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mTimeBar:Lcom/ecareme/pixwe/media/TimeBar;

    invoke-virtual {v0, p1}, Lcom/ecareme/pixwe/media/TimeBar;->regenerateStringsForContext(Landroid/content/Context;)V

    .line 1057
    :cond_0
    return-void
.end method

.method public setFeed(Lcom/ecareme/pixwe/media/MediaFeed;IZ)V
    .locals 1
    .parameter "feed"
    .parameter "state"
    .parameter "needsLayout"

    .prologue
    .line 1547
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mTimeBar:Lcom/ecareme/pixwe/media/TimeBar;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ecareme/pixwe/media/TimeBar;->setFeed(Lcom/ecareme/pixwe/media/MediaFeed;IZ)V

    .line 1548
    return-void
.end method

.method setGridLayer(Lcom/ecareme/pixwe/media/GridLayer;)V
    .locals 0
    .parameter "layer"

    .prologue
    .line 1465
    iput-object p1, p0, Lcom/ecareme/pixwe/media/HudLayer;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    .line 1466
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/HudLayer;->updateViews()V

    .line 1467
    return-void
.end method

.method setMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1474
    iget v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mMode:I

    if-eq v0, p1, :cond_0

    .line 1475
    iput p1, p0, Lcom/ecareme/pixwe/media/HudLayer;->mMode:I

    .line 1476
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/HudLayer;->updateViews()V

    .line 1478
    :cond_0
    return-void
.end method

.method public setTimeBarTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 1756
    return-void
.end method

.method public showHint()V
    .locals 2

    .prologue
    .line 1334
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ecareme/pixwe/media/HudLayer$55;

    invoke-direct {v1, p0}, Lcom/ecareme/pixwe/media/HudLayer$55;-><init>(Lcom/ecareme/pixwe/media/HudLayer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1361
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1362
    return-void
.end method

.method public swapFullscreenLabel()V
    .locals 2

    .prologue
    .line 1959
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mCachedCurrentLabel:Ljava/lang/String;

    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer;->mCachedCaption:Ljava/lang/String;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mCachedCaption:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mCachedPosition:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mCachedCurrentLabel:Ljava/lang/String;

    .line 1960
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mPathBar:Lcom/ecareme/pixwe/media/PathBarLayer;

    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer;->mCachedCurrentLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/PathBarLayer;->changeLabel(Ljava/lang/String;)V

    .line 1961
    return-void

    .line 1959
    :cond_1
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer;->mCachedCaption:Ljava/lang/String;

    goto :goto_0
.end method

.method public update(Lcom/ecareme/pixwe/media/RenderView;F)Z
    .locals 8
    .parameter "view"
    .parameter "frameInterval"

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x3f80

    .line 1673
    const/high16 v0, 0x3f80

    .line 1674
    .local v0, factor:F
    iget v3, p0, Lcom/ecareme/pixwe/media/HudLayer;->mAlpha:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_0

    .line 1676
    const/high16 v0, 0x4080

    .line 1678
    :cond_0
    iget v3, p0, Lcom/ecareme/pixwe/media/HudLayer;->mAnimAlpha:F

    iget v4, p0, Lcom/ecareme/pixwe/media/HudLayer;->mAlpha:F

    mul-float v5, p2, v0

    invoke-static {v3, v4, v5}, Lcom/ecareme/pixwe/media/FloatUtils;->animate(FFF)F

    move-result v3

    iput v3, p0, Lcom/ecareme/pixwe/media/HudLayer;->mAnimAlpha:F

    .line 1680
    iget-boolean v3, p0, Lcom/ecareme/pixwe/media/HudLayer;->mAutoHide:Z

    if-eqz v3, :cond_1

    .line 1681
    iget v3, p0, Lcom/ecareme/pixwe/media/HudLayer;->mAlpha:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_1

    iget v3, p0, Lcom/ecareme/pixwe/media/HudLayer;->mMode:I

    if-eq v3, v7, :cond_1

    .line 1682
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1683
    .local v1, now:J
    iget-wide v3, p0, Lcom/ecareme/pixwe/media/HudLayer;->mLastTimeFullOpacity:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x1388

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    .line 1684
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/ecareme/pixwe/media/HudLayer;->setAlpha(F)V

    .line 1689
    .end local v1           #now:J
    :cond_1
    iget v3, p0, Lcom/ecareme/pixwe/media/HudLayer;->mAnimAlpha:F

    iget v4, p0, Lcom/ecareme/pixwe/media/HudLayer;->mAlpha:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2

    move v3, v7

    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public updateNumItemsSelected(I)V
    .locals 5
    .parameter "numItems"

    .prologue
    .line 1237
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer;->mContext:Landroid/content/Context;

    const v4, 0x7f060038

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1238
    .local v0, items:Ljava/lang/String;
    new-instance v2, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/ecareme/pixwe/media/MenuBar;->MENU_TITLE_STYLE_TEXT:Lcom/ecareme/pixwe/media/StringTexture$Config;

    invoke-virtual {v2, v3}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->config(Lcom/ecareme/pixwe/media/StringTexture$Config;)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->build()Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-result-object v1

    .line 1239
    .local v1, menu:Lcom/ecareme/pixwe/media/MenuBar$Menu;
    iget-object v2, p0, Lcom/ecareme/pixwe/media/HudLayer;->mSelectionMenuTop:Lcom/ecareme/pixwe/media/MenuBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/ecareme/pixwe/media/MenuBar;->updateMenu(Lcom/ecareme/pixwe/media/MenuBar$Menu;I)V

    .line 1240
    return-void

    .line 1237
    .end local v0           #items:Ljava/lang/String;
    .end local v1           #menu:Lcom/ecareme/pixwe/media/MenuBar$Menu;
    :cond_0
    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer;->mContext:Landroid/content/Context;

    const v4, 0x7f060039

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
