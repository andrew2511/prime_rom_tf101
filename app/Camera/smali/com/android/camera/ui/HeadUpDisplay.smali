.class public Lcom/android/camera/ui/HeadUpDisplay;
.super Lcom/android/camera/ui/GLView;
.source "HeadUpDisplay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/HeadUpDisplay$IndicatorBarListener;,
        Lcom/android/camera/ui/HeadUpDisplay$Listener;
    }
.end annotation


# static fields
.field private static sIndicatorBarRightMargin:I

.field private static sPopupTriangleOffset:I

.field private static sPopupWindowOverlap:I


# instance fields
.field private mAnchorView:Lcom/android/camera/ui/GLView;

.field private mEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field protected mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

.field protected mListener:Lcom/android/camera/ui/HeadUpDisplay$Listener;

.field private mOrientation:I

.field private mPopupWindow:Lcom/android/camera/ui/GLPopupWindow;

.field private mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

.field private final mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mSharedPrefs:Lcom/android/camera/ComboPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, -0x1

    sput v0, Lcom/android/camera/ui/HeadUpDisplay;->sIndicatorBarRightMargin:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/ui/GLView;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mOrientation:I

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mEnabled:Z

    .line 79
    new-instance v0, Lcom/android/camera/ui/HeadUpDisplay$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/HeadUpDisplay$1;-><init>(Lcom/android/camera/ui/HeadUpDisplay;)V

    iput-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mHandler:Landroid/os/Handler;

    .line 106
    new-instance v0, Lcom/android/camera/ui/HeadUpDisplay$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/HeadUpDisplay$2;-><init>(Lcom/android/camera/ui/HeadUpDisplay;)V

    iput-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 117
    invoke-static {p1}, Lcom/android/camera/ui/HeadUpDisplay;->initializeStaticVariables(Landroid/content/Context;)V

    .line 118
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ui/HeadUpDisplay;)Lcom/android/camera/ui/GLPopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPopupWindow:Lcom/android/camera/ui/GLPopupWindow;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/HeadUpDisplay;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HeadUpDisplay;->initializePopupWindow(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/ui/HeadUpDisplay;Lcom/android/camera/ui/GLView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HeadUpDisplay;->layoutPopupWindow(Lcom/android/camera/ui/GLView;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/ui/HeadUpDisplay;Lcom/android/camera/ui/GLView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HeadUpDisplay;->showPopupWindow(Lcom/android/camera/ui/GLView;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/ui/HeadUpDisplay;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/camera/ui/HeadUpDisplay;->hidePopupWindow()V

    return-void
.end method

.method protected static varargs getListPreferences(Lcom/android/camera/PreferenceGroup;[Ljava/lang/String;)[Lcom/android/camera/ListPreference;
    .locals 7
    .parameter "group"
    .parameter "prefKeys"

    .prologue
    .line 318
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/ListPreference;>;"
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 320
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v5

    .line 321
    .local v5, pref:Lcom/android/camera/ListPreference;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    array-length v6, v6

    if-lez v6, :cond_0

    .line 322
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 325
    .end local v2           #key:Ljava/lang/String;
    .end local v5           #pref:Lcom/android/camera/ListPreference;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lcom/android/camera/ListPreference;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lcom/android/camera/ListPreference;

    return-object p0
.end method

.method private hidePopupWindow()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPopupWindow:Lcom/android/camera/ui/GLPopupWindow;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLPopupWindow;->popoff()V

    .line 232
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mSharedPrefs:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/ui/HeadUpDisplay;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ComboPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 234
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mListener:Lcom/android/camera/ui/HeadUpDisplay$Listener;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mListener:Lcom/android/camera/ui/HeadUpDisplay$Listener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/ui/HeadUpDisplay$Listener;->onPopupWindowVisibilityChanged(I)V

    .line 237
    :cond_0
    return-void
.end method

.method private initializePopupWindow(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 273
    new-instance v0, Lcom/android/camera/ui/GLPopupWindow;

    invoke-direct {v0}, Lcom/android/camera/ui/GLPopupWindow;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPopupWindow:Lcom/android/camera/ui/GLPopupWindow;

    .line 274
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPopupWindow:Lcom/android/camera/ui/GLPopupWindow;

    new-instance v1, Lcom/android/camera/ui/NinePatchTexture;

    const v2, 0x7f02008d

    invoke-direct {v1, p1, v2}, Lcom/android/camera/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GLPopupWindow;->setBackground(Lcom/android/camera/ui/Texture;)V

    .line 276
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPopupWindow:Lcom/android/camera/ui/GLPopupWindow;

    new-instance v1, Lcom/android/camera/ui/ResourceTexture;

    const v2, 0x7f02008e

    invoke-direct {v1, p1, v2}, Lcom/android/camera/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    sget v2, Lcom/android/camera/ui/HeadUpDisplay;->sPopupTriangleOffset:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/GLPopupWindow;->setAnchor(Lcom/android/camera/ui/BitmapTexture;I)V

    .line 278
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPopupWindow:Lcom/android/camera/ui/GLPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GLPopupWindow;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPopupWindow:Lcom/android/camera/ui/GLPopupWindow;

    iget v1, p0, Lcom/android/camera/ui/HeadUpDisplay;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GLPopupWindow;->setOrientation(I)V

    .line 280
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPopupWindow:Lcom/android/camera/ui/GLPopupWindow;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/HeadUpDisplay;->addComponent(Lcom/android/camera/ui/GLView;)V

    .line 281
    return-void
.end method

.method private static initializeStaticVariables(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 121
    sget v0, Lcom/android/camera/ui/HeadUpDisplay;->sIndicatorBarRightMargin:I

    if-ltz v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 123
    :cond_0
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/android/camera/ui/GLRootView;->dpToPixel(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/HeadUpDisplay;->sIndicatorBarRightMargin:I

    .line 124
    const/16 v0, 0x14

    invoke-static {p0, v0}, Lcom/android/camera/ui/GLRootView;->dpToPixel(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/HeadUpDisplay;->sPopupWindowOverlap:I

    .line 125
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/android/camera/ui/GLRootView;->dpToPixel(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/HeadUpDisplay;->sPopupTriangleOffset:I

    goto :goto_0
.end method

.method private layoutPopupWindow(Lcom/android/camera/ui/GLView;)V
    .locals 13
    .parameter "anchorView"

    .prologue
    const/4 v12, 0x0

    const/high16 v11, -0x8000

    const-wide/high16 v9, 0x3fe0

    .line 190
    iput-object p1, p0, Lcom/android/camera/ui/HeadUpDisplay;->mAnchorView:Lcom/android/camera/ui/GLView;

    .line 191
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 192
    .local v3, rect:Landroid/graphics/Rect;
    invoke-virtual {p0, p1, v3}, Lcom/android/camera/ui/HeadUpDisplay;->getBoundsOf(Lcom/android/camera/ui/GLView;Landroid/graphics/Rect;)Z

    .line 194
    iget v7, v3, Landroid/graphics/Rect;->left:I

    sget v8, Lcom/android/camera/ui/HeadUpDisplay;->sPopupWindowOverlap:I

    add-int v0, v7, v8

    .line 195
    .local v0, anchorX:I
    iget v7, v3, Landroid/graphics/Rect;->top:I

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    div-int/lit8 v1, v7, 0x2

    .line 197
    .local v1, anchorY:I
    invoke-virtual {p0}, Lcom/android/camera/ui/HeadUpDisplay;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3f4ccccd

    mul-float/2addr v7, v8

    float-to-double v7, v7

    add-double/2addr v7, v9

    double-to-int v4, v7

    .line 198
    .local v4, width:I
    invoke-virtual {p0}, Lcom/android/camera/ui/HeadUpDisplay;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3f59999a

    mul-float/2addr v7, v8

    float-to-double v7, v7

    add-double/2addr v7, v9

    double-to-int v2, v7

    .line 200
    .local v2, height:I
    iget-object v7, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPopupWindow:Lcom/android/camera/ui/GLPopupWindow;

    invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/android/camera/ui/GLPopupWindow;->measure(II)V

    .line 204
    iget-object v7, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPopupWindow:Lcom/android/camera/ui/GLPopupWindow;

    invoke-virtual {v7}, Lcom/android/camera/ui/GLPopupWindow;->getMeasuredWidth()I

    move-result v4

    .line 205
    iget-object v7, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPopupWindow:Lcom/android/camera/ui/GLPopupWindow;

    invoke-virtual {v7}, Lcom/android/camera/ui/GLPopupWindow;->getMeasuredHeight()I

    move-result v2

    .line 207
    sub-int v7, v0, v4

    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 208
    .local v5, xoffset:I
    div-int/lit8 v7, v2, 0x2

    sub-int v7, v1, v7

    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 210
    .local v6, yoffset:I
    add-int v7, v6, v2

    invoke-virtual {p0}, Lcom/android/camera/ui/HeadUpDisplay;->getHeight()I

    move-result v8

    if-le v7, v8, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/android/camera/ui/HeadUpDisplay;->getHeight()I

    move-result v7

    sub-int v6, v7, v2

    .line 213
    :cond_0
    iget-object v7, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPopupWindow:Lcom/android/camera/ui/GLPopupWindow;

    sub-int v8, v1, v6

    invoke-virtual {v7, v8}, Lcom/android/camera/ui/GLPopupWindow;->setAnchorPosition(I)V

    .line 214
    iget-object v7, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPopupWindow:Lcom/android/camera/ui/GLPopupWindow;

    add-int v8, v5, v4

    add-int v9, v6, v2

    invoke-virtual {v7, v5, v6, v8, v9}, Lcom/android/camera/ui/GLPopupWindow;->layout(IIII)V

    .line 216
    return-void
.end method

.method private scheduleDeactiviateIndicatorBar()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 240
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 241
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 243
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 244
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x157c

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 246
    return-void
.end method

.method private setOrientationLocked(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 260
    iput p1, p0, Lcom/android/camera/ui/HeadUpDisplay;->mOrientation:I

    .line 261
    iget-object v1, p0, Lcom/android/camera/ui/HeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/IndicatorBar;->setOrientation(I)V

    .line 262
    iget-object v1, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPopupWindow:Lcom/android/camera/ui/GLPopupWindow;

    if-nez v1, :cond_0

    .line 270
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPopupWindow:Lcom/android/camera/ui/GLPopupWindow;

    invoke-virtual {v1}, Lcom/android/camera/ui/GLPopupWindow;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 264
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3e4ccccd

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 265
    .local v0, alpha:Landroid/view/animation/Animation;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 266
    iget-object v1, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPopupWindow:Lcom/android/camera/ui/GLPopupWindow;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/GLPopupWindow;->startAnimation(Landroid/view/animation/Animation;)V

    .line 267
    invoke-direct {p0}, Lcom/android/camera/ui/HeadUpDisplay;->scheduleDeactiviateIndicatorBar()V

    .line 269
    .end local v0           #alpha:Landroid/view/animation/Animation;
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPopupWindow:Lcom/android/camera/ui/GLPopupWindow;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/GLPopupWindow;->setOrientation(I)V

    goto :goto_0
.end method

.method private showPopupWindow(Lcom/android/camera/ui/GLView;)V
    .locals 2
    .parameter "anchorView"

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HeadUpDisplay;->layoutPopupWindow(Lcom/android/camera/ui/GLView;)V

    .line 220
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPopupWindow:Lcom/android/camera/ui/GLPopupWindow;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLPopupWindow;->popup()V

    .line 221
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mSharedPrefs:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/ui/HeadUpDisplay;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ComboPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 223
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mListener:Lcom/android/camera/ui/HeadUpDisplay$Listener;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mListener:Lcom/android/camera/ui/HeadUpDisplay$Listener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/ui/HeadUpDisplay$Listener;->onPopupWindowVisibilityChanged(I)V

    .line 226
    :cond_0
    return-void
.end method


# virtual methods
.method protected addIndicator(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Lcom/android/camera/ui/BasicIndicator;
    .locals 3
    .parameter "context"
    .parameter "group"
    .parameter "key"

    .prologue
    .line 330
    invoke-virtual {p2, p3}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 331
    .local v0, iconPref:Lcom/android/camera/ListPreference;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 334
    :goto_0
    return-object v2

    .line 332
    :cond_0
    new-instance v1, Lcom/android/camera/ui/BasicIndicator;

    invoke-direct {v1, p1, v0}, Lcom/android/camera/ui/BasicIndicator;-><init>(Landroid/content/Context;Lcom/android/camera/ListPreference;)V

    .line 333
    .local v1, indicator:Lcom/android/camera/ui/BasicIndicator;
    iget-object v2, p0, Lcom/android/camera/ui/HeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/IndicatorBar;->addComponent(Lcom/android/camera/ui/GLView;)V

    move-object v2, v1

    .line 334
    goto :goto_0
.end method

.method public collapse()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 375
    iget-object v1, p0, Lcom/android/camera/ui/HeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    invoke-virtual {v1}, Lcom/android/camera/ui/IndicatorBar;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 388
    :goto_0
    return v1

    .line 376
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/HeadUpDisplay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 377
    iget-object v1, p0, Lcom/android/camera/ui/HeadUpDisplay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 378
    invoke-virtual {p0}, Lcom/android/camera/ui/HeadUpDisplay;->getGLRootView()Lcom/android/camera/ui/GLRootView;

    move-result-object v0

    .line 379
    .local v0, root:Lcom/android/camera/ui/GLRootView;
    if-eqz v0, :cond_1

    .line 380
    monitor-enter v0

    .line 381
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/ui/HeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/IndicatorBar;->setSelectedIndex(I)V

    .line 382
    iget-object v1, p0, Lcom/android/camera/ui/HeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/IndicatorBar;->setActivated(Z)V

    .line 383
    monitor-exit v0

    :goto_1
    move v1, v4

    .line 388
    goto :goto_0

    .line 383
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 385
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/HeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/IndicatorBar;->setSelectedIndex(I)V

    .line 386
    iget-object v1, p0, Lcom/android/camera/ui/HeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/IndicatorBar;->setActivated(Z)V

    goto :goto_1
.end method

.method protected dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/camera/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-direct {p0}, Lcom/android/camera/ui/HeadUpDisplay;->scheduleDeactiviateIndicatorBar()V

    .line 287
    const/4 v0, 0x1

    .line 289
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;)V
    .locals 1
    .parameter "context"
    .parameter "preferenceGroup"

    .prologue
    .line 180
    iput-object p2, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 181
    invoke-static {p1}, Lcom/android/camera/ComboPreferences;->get(Landroid/content/Context;)Lcom/android/camera/ComboPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mSharedPrefs:Lcom/android/camera/ComboPreferences;

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPopupWindow:Lcom/android/camera/ui/GLPopupWindow;

    .line 183
    invoke-virtual {p0}, Lcom/android/camera/ui/HeadUpDisplay;->clearComponents()V

    .line 184
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/HeadUpDisplay;->initializeIndicatorBar(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;)V

    .line 185
    invoke-virtual {p0}, Lcom/android/camera/ui/HeadUpDisplay;->requestLayout()V

    .line 186
    return-void
.end method

.method protected initializeIndicatorBar(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;)V
    .locals 3
    .parameter "context"
    .parameter "group"

    .prologue
    .line 339
    new-instance v0, Lcom/android/camera/ui/IndicatorBar;

    invoke-direct {v0}, Lcom/android/camera/ui/IndicatorBar;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    .line 341
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    new-instance v1, Lcom/android/camera/ui/NinePatchTexture;

    const v2, 0x7f02007b

    invoke-direct {v1, p1, v2}, Lcom/android/camera/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/IndicatorBar;->setBackground(Lcom/android/camera/ui/NinePatchTexture;)V

    .line 343
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    new-instance v1, Lcom/android/camera/ui/ColorTexture;

    const v2, -0x65d4d4d5

    invoke-direct {v1, v2}, Lcom/android/camera/ui/ColorTexture;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/IndicatorBar;->setHighlight(Lcom/android/camera/ui/Texture;)V

    .line 344
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/HeadUpDisplay;->addComponent(Lcom/android/camera/ui/GLView;)V

    .line 345
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    new-instance v1, Lcom/android/camera/ui/HeadUpDisplay$IndicatorBarListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/ui/HeadUpDisplay$IndicatorBarListener;-><init>(Lcom/android/camera/ui/HeadUpDisplay;Lcom/android/camera/ui/HeadUpDisplay$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/IndicatorBar;->setOnItemSelectedListener(Lcom/android/camera/ui/IndicatorBar$OnItemSelectedListener;)V

    .line 346
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 161
    sub-int v3, p4, p2

    .line 162
    .local v3, width:I
    sub-int v0, p5, p3

    .line 163
    .local v0, height:I
    iget-object v4, p0, Lcom/android/camera/ui/HeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    div-int/lit8 v5, v3, 0x3

    const/high16 v6, -0x8000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    const/high16 v6, 0x4000

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/ui/IndicatorBar;->measure(II)V

    .line 166
    invoke-virtual {p0}, Lcom/android/camera/ui/HeadUpDisplay;->getGLRootView()Lcom/android/camera/ui/GLRootView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/GLRootView;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 167
    .local v1, metrics:Landroid/util/DisplayMetrics;
    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x4120

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 169
    .local v2, rightMargin:I
    iget-object v4, p0, Lcom/android/camera/ui/HeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    iget-object v5, p0, Lcom/android/camera/ui/HeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    invoke-virtual {v5}, Lcom/android/camera/ui/IndicatorBar;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v3, v5

    sub-int/2addr v5, v2

    const/4 v6, 0x0

    sub-int v7, v3, v2

    invoke-virtual {v4, v5, v6, v7, v0}, Lcom/android/camera/ui/IndicatorBar;->layout(IIII)V

    .line 173
    iget-object v4, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPopupWindow:Lcom/android/camera/ui/GLPopupWindow;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPopupWindow:Lcom/android/camera/ui/GLPopupWindow;

    invoke-virtual {v4}, Lcom/android/camera/ui/GLPopupWindow;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 175
    iget-object v4, p0, Lcom/android/camera/ui/HeadUpDisplay;->mAnchorView:Lcom/android/camera/ui/GLView;

    invoke-direct {p0, v4}, Lcom/android/camera/ui/HeadUpDisplay;->layoutPopupWindow(Lcom/android/camera/ui/GLView;)V

    .line 177
    :cond_0
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 301
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPopupWindow:Lcom/android/camera/ui/GLPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPopupWindow:Lcom/android/camera/ui/GLPopupWindow;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLPopupWindow;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v2

    .line 313
    :goto_0
    return v0

    .line 306
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    move v0, v3

    .line 313
    goto :goto_0

    .line 308
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/ui/HeadUpDisplay;->hidePopupWindow()V

    .line 309
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/IndicatorBar;->setSelectedIndex(I)V

    .line 310
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/IndicatorBar;->setActivated(Z)V

    goto :goto_1

    .line 306
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 2
    .parameter "keyvalues"

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/camera/ui/HeadUpDisplay;->getGLRootView()Lcom/android/camera/ui/GLRootView;

    move-result-object v0

    .line 140
    .local v0, root:Lcom/android/camera/ui/GLRootView;
    if-eqz v0, :cond_0

    .line 141
    monitor-enter v0

    .line 142
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HeadUpDisplay;->overrideSettingsLocked([Ljava/lang/String;)V

    .line 143
    monitor-exit v0

    .line 147
    :goto_0
    return-void

    .line 143
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 145
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HeadUpDisplay;->overrideSettingsLocked([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public varargs overrideSettingsLocked([Ljava/lang/String;)V
    .locals 5
    .parameter "keyvalues"

    .prologue
    .line 150
    array-length v2, p1

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 151
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 153
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    array-length v1, p1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 154
    iget-object v2, p0, Lcom/android/camera/ui/HeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    aget-object v3, p1, v0

    add-int/lit8 v4, v0, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ui/IndicatorBar;->overrideSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 156
    :cond_1
    return-void
.end method

.method public reloadPreferences()V
    .locals 2

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/android/camera/ui/HeadUpDisplay;->getGLRootView()Lcom/android/camera/ui/GLRootView;

    move-result-object v0

    .line 416
    .local v0, root:Lcom/android/camera/ui/GLRootView;
    if-eqz v0, :cond_0

    .line 417
    monitor-enter v0

    .line 418
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v1}, Lcom/android/camera/PreferenceGroup;->reloadValue()V

    .line 419
    iget-object v1, p0, Lcom/android/camera/ui/HeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    invoke-virtual {v1}, Lcom/android/camera/ui/IndicatorBar;->reloadPreferences()V

    .line 420
    monitor-exit v0

    .line 425
    :goto_0
    return-void

    .line 420
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 422
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v1}, Lcom/android/camera/PreferenceGroup;->reloadValue()V

    .line 423
    iget-object v1, p0, Lcom/android/camera/ui/HeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    invoke-virtual {v1}, Lcom/android/camera/ui/IndicatorBar;->reloadPreferences()V

    goto :goto_0
.end method

.method public restorePreferences(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .parameter "param"

    .prologue
    .line 399
    iget-object v1, p0, Lcom/android/camera/ui/HeadUpDisplay;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 404
    .local v1, l:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    iget-object v2, p0, Lcom/android/camera/ui/HeadUpDisplay;->mSharedPrefs:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2, v1}, Lcom/android/camera/ComboPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 405
    invoke-virtual {p0}, Lcom/android/camera/ui/HeadUpDisplay;->getGLRootView()Lcom/android/camera/ui/GLRootView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/GLRootView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 406
    .local v0, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/android/camera/ui/HeadUpDisplay;->mSharedPrefs:Lcom/android/camera/ComboPreferences;

    invoke-static {v0, v2, p1}, Lcom/android/camera/CameraSettings;->restorePreferences(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;)V

    .line 407
    invoke-virtual {p0}, Lcom/android/camera/ui/HeadUpDisplay;->reloadPreferences()V

    .line 408
    iget-object v2, p0, Lcom/android/camera/ui/HeadUpDisplay;->mListener:Lcom/android/camera/ui/HeadUpDisplay$Listener;

    if-eqz v2, :cond_0

    .line 409
    iget-object v2, p0, Lcom/android/camera/ui/HeadUpDisplay;->mListener:Lcom/android/camera/ui/HeadUpDisplay$Listener;

    invoke-interface {v2}, Lcom/android/camera/ui/HeadUpDisplay$Listener;->onSharedPreferenceChanged()V

    .line 411
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/HeadUpDisplay;->mSharedPrefs:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2, v1}, Lcom/android/camera/ComboPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 412
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mEnabled:Z

    if-ne v0, p1, :cond_0

    .line 297
    :goto_0
    return-void

    .line 296
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/ui/HeadUpDisplay;->mEnabled:Z

    goto :goto_0
.end method

.method public setListener(Lcom/android/camera/ui/HeadUpDisplay$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 393
    iput-object p1, p0, Lcom/android/camera/ui/HeadUpDisplay;->mListener:Lcom/android/camera/ui/HeadUpDisplay$Listener;

    .line 394
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/android/camera/ui/HeadUpDisplay;->getGLRootView()Lcom/android/camera/ui/GLRootView;

    move-result-object v0

    .line 250
    .local v0, root:Lcom/android/camera/ui/GLRootView;
    if-eqz v0, :cond_0

    .line 251
    monitor-enter v0

    .line 252
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HeadUpDisplay;->setOrientationLocked(I)V

    .line 253
    monitor-exit v0

    .line 257
    :goto_0
    return-void

    .line 253
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 255
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HeadUpDisplay;->setOrientationLocked(I)V

    goto :goto_0
.end method
