.class public Lcom/nuance/xt9/input/KeyboardEx;
.super Ljava/lang/Object;
.source "KeyboardEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/xt9/input/KeyboardEx$HardwareKey;,
        Lcom/nuance/xt9/input/KeyboardEx$WritingPad;,
        Lcom/nuance/xt9/input/KeyboardEx$Key;,
        Lcom/nuance/xt9/input/KeyboardEx$Row;
    }
.end annotation


# static fields
.field public static final EDGE_BOTTOM:I = 0x8

.field public static final EDGE_LEFT:I = 0x1

.field public static final EDGE_RIGHT:I = 0x2

.field public static final EDGE_TOP:I = 0x4

.field private static final GRID_HEIGHT:I = 0x5

.field private static final GRID_SIZE:I = 0x32

.field private static final GRID_WIDTH:I = 0xa

.field public static final KEYCODE_ALT:I = -0x6

.field public static final KEYCODE_BACK:I = 0x8

.field public static final KEYCODE_CANCEL:I = -0x3

.field public static final KEYCODE_DELETE:I = -0x5

.field public static final KEYCODE_DONE:I = -0x4

.field public static final KEYCODE_ENTER:I = 0xa

.field public static final KEYCODE_MODE_CHANGE:I = -0x2

.field public static final KEYCODE_MULTITAP_DEADKEY:I = -0x15

.field public static final KEYCODE_MULTITAP_TOGGLE:I = -0x13

.field public static final KEYCODE_NOTHING:I = -0x3e7

.field public static final KEYCODE_PHONE_PAUSE:I = -0x16

.field public static final KEYCODE_PHONE_WAIT:I = -0x17

.field public static final KEYCODE_SHIFT:I = -0x1

.field public static final KEYCODE_SPACE:I = 0x20

.field public static final KEYCODE_SYMBOL_TABLE_NEXT_PAGE:I = -0x20

.field public static final KEYCODE_SYMBOL_TABLE_PREV_PAGE:I = -0x1f

.field public static final KEYCODE_TOGGLE_ALPHA:I = -0xc

.field public static final KEYCODE_TOGGLE_PRE_INPUTMODE:I = -0xd

.field public static final KEYCODE_Tone1:I = -0x7

.field public static final KEYCODE_Tone2:I = -0x8

.field public static final KEYCODE_Tone3:I = -0x9

.field public static final KEYCODE_Tone4:I = -0xa

.field public static final KEYCODE_Tone5:I = -0xb

.field public static final KEYCODE_XT9_LANGUAGE_CYCLING:I = -0x14

.field private static SEARCH_DISTANCE:F = 0.0f

.field static final TAG:Ljava/lang/String; = "KeyboardEx"

.field private static final TAG_HARDWARE_KEY:Ljava/lang/String; = "HardwareKey"

.field private static final TAG_KEY:Ljava/lang/String; = "Key"

.field private static final TAG_KEYBOARD:Ljava/lang/String; = "KeyboardEx"

.field private static final TAG_ROW:Ljava/lang/String; = "Row"

.field private static final TAG_WRITING_PAD:Ljava/lang/String; = "WritingPad"


# instance fields
.field private mCellHeight:I

.field private mCellWidth:I

.field private mDefaultHeight:I

.field private mDefaultHorizontalGap:I

.field private mDefaultVerticalGap:I

.field private mDefaultWidth:I

.field private final mDisplayHeight:I

.field private final mDisplayWidth:I

.field private mGridNeighbors:[[I

.field private final mHardwareKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nuance/xt9/input/KeyboardEx$HardwareKey;",
            ">;"
        }
    .end annotation
.end field

.field private mKdbId:I

.field public mKeyBackground:Landroid/graphics/drawable/Drawable;

.field private mKeyHeight:I

.field private mKeyTextColor:I

.field private mKeyTextSize:I

.field private mKeyWidth:I

.field private final mKeyboardMode:I

.field private final mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/xt9/input/KeyboardEx$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mLabel:Ljava/lang/CharSequence;

.field private final mModifierKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/xt9/input/KeyboardEx$Key;",
            ">;"
        }
    .end annotation
.end field

.field public mPaddingBottom:I

.field public mPaddingLeft:I

.field public mPaddingRight:I

.field public mPaddingTop:I

.field private mProximityThreshold:I

.field private mShiftKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

.field private mShiftKeyIndex:I

.field private mShifted:Z

.field private final mSubstitutionKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/xt9/input/KeyboardEx$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalHeight:I

.field private mTotalWidth:I

.field private final mWritingPads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/xt9/input/KeyboardEx$WritingPad;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 210
    const v0, 0x3fb33333

    sput v0, Lcom/nuance/xt9/input/KeyboardEx;->SEARCH_DISTANCE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "xmlLayoutResId"

    .prologue
    .line 769
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/xt9/input/KeyboardEx;-><init>(Landroid/content/Context;II)V

    .line 770
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3
    .parameter "context"
    .parameter "xmlLayoutResId"
    .parameter "modeId"

    .prologue
    const/4 v2, 0x0

    .line 779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const/4 v1, -0x1

    iput v1, p0, Lcom/nuance/xt9/input/KeyboardEx;->mShiftKeyIndex:I

    .line 781
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 782
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/nuance/xt9/input/KeyboardEx;->mDisplayWidth:I

    .line 783
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/nuance/xt9/input/KeyboardEx;->mDisplayHeight:I

    .line 784
    iput v2, p0, Lcom/nuance/xt9/input/KeyboardEx;->mDefaultHorizontalGap:I

    .line 785
    iget v1, p0, Lcom/nuance/xt9/input/KeyboardEx;->mDisplayWidth:I

    div-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/nuance/xt9/input/KeyboardEx;->mDefaultWidth:I

    .line 786
    iput v2, p0, Lcom/nuance/xt9/input/KeyboardEx;->mDefaultVerticalGap:I

    .line 787
    iget v1, p0, Lcom/nuance/xt9/input/KeyboardEx;->mDefaultWidth:I

    iput v1, p0, Lcom/nuance/xt9/input/KeyboardEx;->mDefaultHeight:I

    .line 788
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nuance/xt9/input/KeyboardEx;->mKeys:Ljava/util/List;

    .line 789
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nuance/xt9/input/KeyboardEx;->mModifierKeys:Ljava/util/List;

    .line 790
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nuance/xt9/input/KeyboardEx;->mSubstitutionKeys:Ljava/util/List;

    .line 791
    iput p3, p0, Lcom/nuance/xt9/input/KeyboardEx;->mKeyboardMode:I

    .line 792
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nuance/xt9/input/KeyboardEx;->mWritingPads:Ljava/util/List;

    .line 794
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/nuance/xt9/input/KeyboardEx;->mHardwareKeys:Ljava/util/HashMap;

    .line 796
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/nuance/xt9/input/KeyboardEx;->loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 797
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V
    .locals 10
    .parameter "context"
    .parameter "layoutTemplateResId"
    .parameter "characters"
    .parameter "columns"
    .parameter "horizontalPadding"

    .prologue
    .line 815
    invoke-direct {p0, p1, p2}, Lcom/nuance/xt9/input/KeyboardEx;-><init>(Landroid/content/Context;I)V

    .line 816
    const/4 v6, 0x0

    .line 817
    .local v6, x:I
    const/4 v7, 0x0

    .line 818
    .local v7, y:I
    const/4 v1, 0x0

    .line 819
    .local v1, column:I
    const/4 v8, 0x0

    iput v8, p0, Lcom/nuance/xt9/input/KeyboardEx;->mTotalWidth:I

    .line 821
    new-instance v5, Lcom/nuance/xt9/input/KeyboardEx$Row;

    invoke-direct {v5, p0}, Lcom/nuance/xt9/input/KeyboardEx$Row;-><init>(Lcom/nuance/xt9/input/KeyboardEx;)V

    .line 822
    .local v5, row:Lcom/nuance/xt9/input/KeyboardEx$Row;
    iget v8, p0, Lcom/nuance/xt9/input/KeyboardEx;->mDefaultHeight:I

    iput v8, v5, Lcom/nuance/xt9/input/KeyboardEx$Row;->defaultHeight:I

    .line 823
    iget v8, p0, Lcom/nuance/xt9/input/KeyboardEx;->mDefaultWidth:I

    iput v8, v5, Lcom/nuance/xt9/input/KeyboardEx$Row;->defaultWidth:I

    .line 824
    iget v8, p0, Lcom/nuance/xt9/input/KeyboardEx;->mDefaultHorizontalGap:I

    iput v8, v5, Lcom/nuance/xt9/input/KeyboardEx$Row;->defaultHorizontalGap:I

    .line 825
    iget v8, p0, Lcom/nuance/xt9/input/KeyboardEx;->mDefaultVerticalGap:I

    iput v8, v5, Lcom/nuance/xt9/input/KeyboardEx$Row;->verticalGap:I

    .line 826
    const/16 v8, 0xc

    iput v8, v5, Lcom/nuance/xt9/input/KeyboardEx$Row;->rowEdgeFlags:I

    .line 827
    const/4 v8, -0x1

    if-ne p4, v8, :cond_3

    const v8, 0x7fffffff

    move v4, v8

    .line 828
    .local v4, maxColumns:I
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v2, v8, :cond_4

    .line 829
    invoke-interface {p3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 830
    .local v0, c:C
    if-ge v1, v4, :cond_0

    iget v8, p0, Lcom/nuance/xt9/input/KeyboardEx;->mDefaultWidth:I

    add-int/2addr v8, v6

    add-int/2addr v8, p5

    iget v9, p0, Lcom/nuance/xt9/input/KeyboardEx;->mDisplayWidth:I

    if-le v8, v9, :cond_1

    .line 832
    :cond_0
    const/4 v6, 0x0

    .line 833
    iget v8, p0, Lcom/nuance/xt9/input/KeyboardEx;->mDefaultVerticalGap:I

    iget v9, p0, Lcom/nuance/xt9/input/KeyboardEx;->mDefaultHeight:I

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    .line 834
    const/4 v1, 0x0

    .line 836
    :cond_1
    new-instance v3, Lcom/nuance/xt9/input/KeyboardEx$Key;

    invoke-direct {v3, v5}, Lcom/nuance/xt9/input/KeyboardEx$Key;-><init>(Lcom/nuance/xt9/input/KeyboardEx$Row;)V

    .line 837
    .local v3, key:Lcom/nuance/xt9/input/KeyboardEx$Key;
    iput v6, v3, Lcom/nuance/xt9/input/KeyboardEx$Key;->x:I

    .line 838
    iput v7, v3, Lcom/nuance/xt9/input/KeyboardEx$Key;->y:I

    .line 839
    iget v8, p0, Lcom/nuance/xt9/input/KeyboardEx;->mDefaultWidth:I

    iput v8, v3, Lcom/nuance/xt9/input/KeyboardEx$Key;->width:I

    .line 840
    iget v8, p0, Lcom/nuance/xt9/input/KeyboardEx;->mDefaultHeight:I

    iput v8, v3, Lcom/nuance/xt9/input/KeyboardEx$Key;->height:I

    .line 841
    iget v8, p0, Lcom/nuance/xt9/input/KeyboardEx;->mDefaultHorizontalGap:I

    iput v8, v3, Lcom/nuance/xt9/input/KeyboardEx$Key;->gap:I

    .line 842
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/nuance/xt9/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 843
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v0, v8, v9

    iput-object v8, v3, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    .line 844
    add-int/lit8 v1, v1, 0x1

    .line 845
    iget v8, v3, Lcom/nuance/xt9/input/KeyboardEx$Key;->width:I

    iget v9, v3, Lcom/nuance/xt9/input/KeyboardEx$Key;->gap:I

    add-int/2addr v8, v9

    add-int/2addr v6, v8

    .line 846
    iget-object v8, p0, Lcom/nuance/xt9/input/KeyboardEx;->mKeys:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 847
    iget v8, p0, Lcom/nuance/xt9/input/KeyboardEx;->mTotalWidth:I

    if-le v6, v8, :cond_2

    .line 848
    iput v6, p0, Lcom/nuance/xt9/input/KeyboardEx;->mTotalWidth:I

    .line 828
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #c:C
    .end local v2           #i:I
    .end local v3           #key:Lcom/nuance/xt9/input/KeyboardEx$Key;
    .end local v4           #maxColumns:I
    :cond_3
    move v4, p4

    .line 827
    goto :goto_0

    .line 851
    .restart local v2       #i:I
    .restart local v4       #maxColumns:I
    :cond_4
    iget v8, p0, Lcom/nuance/xt9/input/KeyboardEx;->mDefaultHeight:I

    add-int/2addr v8, v7

    iput v8, p0, Lcom/nuance/xt9/input/KeyboardEx;->mTotalHeight:I

    .line 855
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/xt9/input/KeyboardEx;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/nuance/xt9/input/KeyboardEx;->mDisplayWidth:I

    return v0
.end method

.method static synthetic access$100(Lcom/nuance/xt9/input/KeyboardEx;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/nuance/xt9/input/KeyboardEx;->mDefaultWidth:I

    return v0
.end method

.method static synthetic access$200(Lcom/nuance/xt9/input/KeyboardEx;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/nuance/xt9/input/KeyboardEx;->mDisplayHeight:I

    return v0
.end method

.method static synthetic access$300(Lcom/nuance/xt9/input/KeyboardEx;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/nuance/xt9/input/KeyboardEx;->mDefaultHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/nuance/xt9/input/KeyboardEx;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/nuance/xt9/input/KeyboardEx;->mDefaultHorizontalGap:I

    return v0
.end method

.method static synthetic access$500(Lcom/nuance/xt9/input/KeyboardEx;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/nuance/xt9/input/KeyboardEx;->mDefaultVerticalGap:I

    return v0
.end method

.method static synthetic access$600(Lcom/nuance/xt9/input/KeyboardEx;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/nuance/xt9/input/KeyboardEx;->mKeyTextSize:I

    return v0
.end method

.method static synthetic access$700(Lcom/nuance/xt9/input/KeyboardEx;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/nuance/xt9/input/KeyboardEx;->mKeyTextColor:I

    return v0
.end method

.method private computeNearestNeighbors()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x1

    .line 957
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardEx;->getMinWidth()I

    move-result v10

    add-int/lit8 v10, v10, 0xa

    sub-int/2addr v10, v13

    div-int/lit8 v10, v10, 0xa

    iput v10, p0, Lcom/nuance/xt9/input/KeyboardEx;->mCellWidth:I

    .line 958
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardEx;->getHeight()I

    move-result v10

    add-int/lit8 v10, v10, 0x5

    sub-int/2addr v10, v13

    div-int/lit8 v10, v10, 0x5

    iput v10, p0, Lcom/nuance/xt9/input/KeyboardEx;->mCellHeight:I

    .line 959
    const/16 v10, 0x32

    new-array v10, v10, [[I

    iput-object v10, p0, Lcom/nuance/xt9/input/KeyboardEx;->mGridNeighbors:[[I

    .line 960
    iget-object v10, p0, Lcom/nuance/xt9/input/KeyboardEx;->mKeys:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    new-array v6, v10, [I

    .line 961
    .local v6, indices:[I
    iget v10, p0, Lcom/nuance/xt9/input/KeyboardEx;->mCellWidth:I

    mul-int/lit8 v4, v10, 0xa

    .line 962
    .local v4, gridWidth:I
    iget v10, p0, Lcom/nuance/xt9/input/KeyboardEx;->mCellHeight:I

    mul-int/lit8 v3, v10, 0x5

    .line 963
    .local v3, gridHeight:I
    const/4 v8, 0x0

    .local v8, x:I
    :goto_0
    if-ge v8, v4, :cond_4

    .line 964
    const/4 v9, 0x0

    .local v9, y:I
    :goto_1
    if-ge v9, v3, :cond_3

    .line 965
    const/4 v1, 0x0

    .line 966
    .local v1, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    iget-object v10, p0, Lcom/nuance/xt9/input/KeyboardEx;->mKeys:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_2

    .line 967
    iget-object v10, p0, Lcom/nuance/xt9/input/KeyboardEx;->mKeys:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/xt9/input/KeyboardEx$Key;

    .line 968
    .local v7, key:Lcom/nuance/xt9/input/KeyboardEx$Key;
    invoke-virtual {v7, v8, v9}, Lcom/nuance/xt9/input/KeyboardEx$Key;->squaredDistanceFrom(II)I

    move-result v10

    iget v11, p0, Lcom/nuance/xt9/input/KeyboardEx;->mProximityThreshold:I

    if-lt v10, v11, :cond_0

    iget v10, p0, Lcom/nuance/xt9/input/KeyboardEx;->mCellWidth:I

    add-int/2addr v10, v8

    sub-int/2addr v10, v13

    invoke-virtual {v7, v10, v9}, Lcom/nuance/xt9/input/KeyboardEx$Key;->squaredDistanceFrom(II)I

    move-result v10

    iget v11, p0, Lcom/nuance/xt9/input/KeyboardEx;->mProximityThreshold:I

    if-lt v10, v11, :cond_0

    iget v10, p0, Lcom/nuance/xt9/input/KeyboardEx;->mCellWidth:I

    add-int/2addr v10, v8

    sub-int/2addr v10, v13

    iget v11, p0, Lcom/nuance/xt9/input/KeyboardEx;->mCellHeight:I

    add-int/2addr v11, v9

    sub-int/2addr v11, v13

    invoke-virtual {v7, v10, v11}, Lcom/nuance/xt9/input/KeyboardEx$Key;->squaredDistanceFrom(II)I

    move-result v10

    iget v11, p0, Lcom/nuance/xt9/input/KeyboardEx;->mProximityThreshold:I

    if-lt v10, v11, :cond_0

    iget v10, p0, Lcom/nuance/xt9/input/KeyboardEx;->mCellHeight:I

    add-int/2addr v10, v9

    sub-int/2addr v10, v13

    invoke-virtual {v7, v8, v10}, Lcom/nuance/xt9/input/KeyboardEx$Key;->squaredDistanceFrom(II)I

    move-result v10

    iget v11, p0, Lcom/nuance/xt9/input/KeyboardEx;->mProximityThreshold:I

    if-ge v10, v11, :cond_1

    .line 973
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .end local v1           #count:I
    .local v2, count:I
    aput v5, v6, v1

    move v1, v2

    .line 966
    .end local v2           #count:I
    .restart local v1       #count:I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 976
    .end local v7           #key:Lcom/nuance/xt9/input/KeyboardEx$Key;
    :cond_2
    new-array v0, v1, [I

    .line 977
    .local v0, cell:[I
    invoke-static {v6, v14, v0, v14, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 978
    iget-object v10, p0, Lcom/nuance/xt9/input/KeyboardEx;->mGridNeighbors:[[I

    iget v11, p0, Lcom/nuance/xt9/input/KeyboardEx;->mCellHeight:I

    div-int v11, v9, v11

    mul-int/lit8 v11, v11, 0xa

    iget v12, p0, Lcom/nuance/xt9/input/KeyboardEx;->mCellWidth:I

    div-int v12, v8, v12

    add-int/2addr v11, v12

    aput-object v0, v10, v11

    .line 964
    iget v10, p0, Lcom/nuance/xt9/input/KeyboardEx;->mCellHeight:I

    add-int/2addr v9, v10

    goto :goto_1

    .line 963
    .end local v0           #cell:[I
    .end local v1           #count:I
    .end local v5           #i:I
    :cond_3
    iget v10, p0, Lcom/nuance/xt9/input/KeyboardEx;->mCellWidth:I

    add-int/2addr v8, v10

    goto :goto_0

    .line 981
    .end local v9           #y:I
    :cond_4
    return-void
.end method

.method static getDimensionOrFraction(Landroid/content/res/TypedArray;III)I
    .locals 3
    .parameter "a"
    .parameter "index"
    .parameter "base"
    .parameter "defValue"

    .prologue
    .line 1213
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 1214
    .local v0, value:Landroid/util/TypedValue;
    if-nez v0, :cond_0

    move v1, p3

    .line 1221
    :goto_0
    return v1

    .line 1215
    :cond_0
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 1216
    invoke-virtual {p0, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    goto :goto_0

    .line 1217
    :cond_1
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 1219
    int-to-float v1, p3

    invoke-virtual {p0, p1, p2, p2, v1}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_0

    :cond_2
    move v1, p3

    .line 1221
    goto :goto_0
.end method

.method private loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 24
    .parameter "context"
    .parameter "parser"

    .prologue
    .line 1022
    const/4 v13, 0x0

    .line 1023
    .local v13, inHardwareKey:Z
    const/4 v12, 0x0

    .line 1025
    .local v12, hardwarekey:Lcom/nuance/xt9/input/KeyboardEx$HardwareKey;
    const/4 v14, 0x0

    .line 1026
    .local v14, inKey:Z
    const/4 v15, 0x0

    .line 1027
    .local v15, inRow:Z
    const/16 v17, 0x0

    .line 1028
    .local v17, inWritingPad:Z
    const/16 v19, 0x0

    .line 1030
    .local v19, leftMostKey:Z
    const/16 v16, 0x0

    .line 1032
    .local v16, inSubstitutionKey:Z
    const/16 v20, 0x0

    .line 1033
    .local v20, row:I
    const/4 v7, 0x0

    .line 1034
    .local v7, x:I
    const/4 v8, 0x0

    .line 1035
    .local v8, y:I
    const/16 v18, 0x0

    .line 1036
    .local v18, key:Lcom/nuance/xt9/input/KeyboardEx$Key;
    const/4 v6, 0x0

    .line 1037
    .local v6, currentRow:Lcom/nuance/xt9/input/KeyboardEx$Row;
    const/16 v23, 0x0

    .line 1038
    .local v23, writingPad:Lcom/nuance/xt9/input/KeyboardEx$WritingPad;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1039
    .local v5, res:Landroid/content/res/Resources;
    const/16 v21, 0x0

    .line 1043
    .local v21, skipRow:Z
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    .local v11, event:I
    const/4 v4, 0x1

    if-eq v11, v4, :cond_4

    .line 1044
    const/4 v4, 0x2

    if-ne v11, v4, :cond_a

    .line 1045
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v22

    .line 1046
    .local v22, tag:Ljava/lang/String;
    const-string v4, "Row"

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1047
    const/4 v15, 0x1

    .line 1048
    const/4 v7, 0x0

    .line 1049
    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/xt9/input/KeyboardEx;->createRowFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lcom/nuance/xt9/input/KeyboardEx$Row;

    move-result-object v6

    .line 1050
    iget v4, v6, Lcom/nuance/xt9/input/KeyboardEx$Row;->mode:I

    if-eqz v4, :cond_1

    iget v4, v6, Lcom/nuance/xt9/input/KeyboardEx$Row;->mode:I

    const v9, 0x7f09003e

    if-eq v4, v9, :cond_1

    iget v4, v6, Lcom/nuance/xt9/input/KeyboardEx$Row;->mode:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardEx;->mKeyboardMode:I

    move v9, v0

    if-eq v4, v9, :cond_1

    const/4 v4, 0x1

    move/from16 v21, v4

    .line 1052
    :goto_1
    if-eqz v21, :cond_2

    .line 1053
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/KeyboardEx;->skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V

    .line 1054
    const/4 v15, 0x0

    goto :goto_0

    .line 1050
    :cond_1
    const/4 v4, 0x0

    move/from16 v21, v4

    goto :goto_1

    .line 1056
    :cond_2
    iget v4, v6, Lcom/nuance/xt9/input/KeyboardEx$Row;->mode:I

    const v9, 0x7f09003e

    if-ne v4, v9, :cond_0

    .line 1058
    const/4 v15, 0x0

    goto :goto_0

    .line 1060
    :cond_3
    const-string v4, "Key"

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1061
    iget v4, v6, Lcom/nuance/xt9/input/KeyboardEx$Row;->mode:I

    const v9, 0x7f09003e

    if-ne v4, v9, :cond_5

    .line 1062
    const/4 v14, 0x0

    .line 1064
    const/16 v16, 0x1

    move-object/from16 v4, p0

    move-object/from16 v9, p2

    .line 1066
    invoke-virtual/range {v4 .. v9}, Lcom/nuance/xt9/input/KeyboardEx;->createKeyFromXml(Landroid/content/res/Resources;Lcom/nuance/xt9/input/KeyboardEx$Row;IILandroid/content/res/XmlResourceParser;)Lcom/nuance/xt9/input/KeyboardEx$Key;

    move-result-object v18

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardEx;->mSubstitutionKeys:Ljava/util/List;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1144
    .end local v11           #event:I
    .end local v22           #tag:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v10, v4

    .line 1145
    .local v10, e:Ljava/lang/Exception;
    const-string v4, "KeyboardEx"

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #res:Landroid/content/res/Resources;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Parse error:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 1148
    .end local v10           #e:Ljava/lang/Exception;
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardEx;->mDefaultVerticalGap:I

    move v4, v0

    sub-int v4, v8, v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/xt9/input/KeyboardEx;->mTotalHeight:I

    .line 1156
    return-void

    .line 1070
    .restart local v5       #res:Landroid/content/res/Resources;
    .restart local v11       #event:I
    .restart local v22       #tag:Ljava/lang/String;
    :cond_5
    const/4 v14, 0x1

    move-object/from16 v4, p0

    move-object/from16 v9, p2

    .line 1071
    :try_start_1
    invoke-virtual/range {v4 .. v9}, Lcom/nuance/xt9/input/KeyboardEx;->createKeyFromXml(Landroid/content/res/Resources;Lcom/nuance/xt9/input/KeyboardEx$Row;IILandroid/content/res/XmlResourceParser;)Lcom/nuance/xt9/input/KeyboardEx$Key;

    move-result-object v18

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardEx;->mKeys:Ljava/util/List;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1073
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    move-object v4, v0

    const/4 v9, 0x0

    aget v4, v4, v9

    const/4 v9, -0x1

    if-ne v4, v9, :cond_6

    .line 1074
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/xt9/input/KeyboardEx;->mShiftKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardEx;->mKeys:Ljava/util/List;

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v9, 0x1

    sub-int/2addr v4, v9

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/xt9/input/KeyboardEx;->mShiftKeyIndex:I

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardEx;->mModifierKeys:Ljava/util/List;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1077
    :cond_6
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    move-object v4, v0

    const/4 v9, 0x0

    aget v4, v4, v9

    const/4 v9, -0x6

    if-ne v4, v9, :cond_0

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardEx;->mModifierKeys:Ljava/util/List;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1082
    :cond_7
    const-string v4, "WritingPad"

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1083
    const/16 v17, 0x1

    move-object/from16 v4, p0

    move-object/from16 v9, p2

    .line 1084
    invoke-virtual/range {v4 .. v9}, Lcom/nuance/xt9/input/KeyboardEx;->createWritingPadFromXml(Landroid/content/res/Resources;Lcom/nuance/xt9/input/KeyboardEx$Row;IILandroid/content/res/XmlResourceParser;)Lcom/nuance/xt9/input/KeyboardEx$WritingPad;

    move-result-object v23

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardEx;->mWritingPads:Ljava/util/List;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1088
    move-object/from16 v0, v23

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardEx$WritingPad;->height:I

    move v4, v0

    iput v4, v6, Lcom/nuance/xt9/input/KeyboardEx$Row;->defaultHeight:I

    goto/16 :goto_0

    .line 1090
    :cond_8
    const-string v4, "KeyboardEx"

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1091
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/xt9/input/KeyboardEx;->parseKeyboardAttributes(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    goto/16 :goto_0

    .line 1094
    :cond_9
    const-string v4, "HardwareKey"

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1096
    const/4 v13, 0x1

    .line 1098
    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/xt9/input/KeyboardEx;->createHardwareKeyFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lcom/nuance/xt9/input/KeyboardEx$HardwareKey;

    move-result-object v12

    .line 1099
    if-eqz v12, :cond_0

    .line 1100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardEx;->mHardwareKeys:Ljava/util/HashMap;

    move-object v4, v0

    new-instance v9, Ljava/lang/Integer;

    iget v10, v12, Lcom/nuance/xt9/input/KeyboardEx$HardwareKey;->keyCode:I

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1105
    .end local v22           #tag:Ljava/lang/String;
    :cond_a
    const/4 v4, 0x3

    if-ne v11, v4, :cond_0

    .line 1106
    if-eqz v14, :cond_b

    .line 1107
    const/4 v14, 0x0

    .line 1108
    move-object/from16 v0, v18

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->gap:I

    move v4, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->width:I

    move v9, v0

    add-int/2addr v4, v9

    add-int/2addr v7, v4

    .line 1109
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardEx;->mTotalWidth:I

    move v4, v0

    if-le v7, v4, :cond_0

    .line 1110
    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/xt9/input/KeyboardEx;->mTotalWidth:I

    goto/16 :goto_0

    .line 1113
    :cond_b
    if-eqz v17, :cond_c

    .line 1114
    const/16 v17, 0x0

    .line 1115
    move-object/from16 v0, v23

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardEx$WritingPad;->gap:I

    move v4, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardEx$WritingPad;->width:I

    move v9, v0

    add-int/2addr v4, v9

    add-int/2addr v7, v4

    .line 1116
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardEx;->mTotalWidth:I

    move v4, v0

    if-le v7, v4, :cond_0

    .line 1117
    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/xt9/input/KeyboardEx;->mTotalWidth:I

    goto/16 :goto_0

    .line 1120
    :cond_c
    if-eqz v15, :cond_d

    .line 1121
    const/4 v15, 0x0

    .line 1122
    iget v4, v6, Lcom/nuance/xt9/input/KeyboardEx$Row;->verticalGap:I

    add-int/2addr v8, v4

    .line 1123
    iget v4, v6, Lcom/nuance/xt9/input/KeyboardEx$Row;->defaultHeight:I

    add-int/2addr v8, v4

    .line 1124
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    .line 1127
    :cond_d
    if-eqz v13, :cond_e

    .line 1130
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1135
    :cond_e
    if-eqz v16, :cond_f

    .line 1136
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 1140
    :cond_f
    const-string v4, "KeyboardEx"

    const-string v9, "loadKeyboard - non-fatal parsing problem"

    invoke-static {v4, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private parseKeyboardAttributes(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .locals 10
    .parameter "context"
    .parameter "res"
    .parameter "parser"

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 1170
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    sget-object v5, Lcom/nuance/xt9/input/R$styleable;->KeyboardEx:[I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1173
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v4, 0x3

    iget v5, p0, Lcom/nuance/xt9/input/KeyboardEx;->mDisplayWidth:I

    iget v6, p0, Lcom/nuance/xt9/input/KeyboardEx;->mDisplayWidth:I

    div-int/lit8 v6, v6, 0xa

    invoke-static {v0, v4, v5, v6}, Lcom/nuance/xt9/input/KeyboardEx;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v4

    iput v4, p0, Lcom/nuance/xt9/input/KeyboardEx;->mDefaultWidth:I

    .line 1176
    iget v4, p0, Lcom/nuance/xt9/input/KeyboardEx;->mDisplayHeight:I

    const/16 v5, 0x32

    invoke-static {v0, v8, v4, v5}, Lcom/nuance/xt9/input/KeyboardEx;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v4

    iput v4, p0, Lcom/nuance/xt9/input/KeyboardEx;->mDefaultHeight:I

    .line 1179
    iget v4, p0, Lcom/nuance/xt9/input/KeyboardEx;->mDisplayWidth:I

    invoke-static {v0, v9, v4, v7}, Lcom/nuance/xt9/input/KeyboardEx;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v4

    iput v4, p0, Lcom/nuance/xt9/input/KeyboardEx;->mDefaultHorizontalGap:I

    .line 1182
    const/4 v4, 0x6

    iget v5, p0, Lcom/nuance/xt9/input/KeyboardEx;->mDisplayHeight:I

    invoke-static {v0, v4, v5, v7}, Lcom/nuance/xt9/input/KeyboardEx;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v4

    iput v4, p0, Lcom/nuance/xt9/input/KeyboardEx;->mDefaultVerticalGap:I

    .line 1185
    iget v4, p0, Lcom/nuance/xt9/input/KeyboardEx;->mDefaultWidth:I

    int-to-float v4, v4

    sget v5, Lcom/nuance/xt9/input/KeyboardEx;->SEARCH_DISTANCE:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/nuance/xt9/input/KeyboardEx;->mProximityThreshold:I

    .line 1186
    iget v4, p0, Lcom/nuance/xt9/input/KeyboardEx;->mProximityThreshold:I

    iget v5, p0, Lcom/nuance/xt9/input/KeyboardEx;->mProximityThreshold:I

    mul-int/2addr v4, v5

    iput v4, p0, Lcom/nuance/xt9/input/KeyboardEx;->mProximityThreshold:I

    .line 1188
    const/4 v4, 0x7

    const v5, 0xffff

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/nuance/xt9/input/KeyboardEx;->mKdbId:I

    .line 1191
    const/16 v4, 0x8

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/nuance/xt9/input/KeyboardEx;->mPaddingLeft:I

    .line 1192
    const/16 v4, 0x9

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/nuance/xt9/input/KeyboardEx;->mPaddingTop:I

    .line 1193
    const/16 v4, 0xa

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/nuance/xt9/input/KeyboardEx;->mPaddingRight:I

    .line 1194
    const/16 v4, 0xb

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/nuance/xt9/input/KeyboardEx;->mPaddingBottom:I

    .line 1197
    const/high16 v4, 0x7f0e

    sget-object v5, Lcom/nuance/xt9/input/R$styleable;->KeyboardViewEx:[I

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1201
    .local v1, defaultAttr:Landroid/content/res/TypedArray;
    const/16 v4, 0x12

    invoke-virtual {v1, v8, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 1202
    .local v3, defaultKeyTextSize:I
    const/high16 v4, -0x100

    invoke-virtual {v1, v9, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 1203
    .local v2, defaultKeyTextColor:I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1205
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/nuance/xt9/input/KeyboardEx;->mKeyTextSize:I

    .line 1206
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/nuance/xt9/input/KeyboardEx;->mKeyTextColor:I

    .line 1207
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/xt9/input/KeyboardEx;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 1209
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1210
    return-void
.end method

.method private skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V
    .locals 3
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1161
    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    .local v0, event:I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1162
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Row"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1167
    :cond_1
    return-void
.end method


# virtual methods
.method protected createHardwareKeyFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lcom/nuance/xt9/input/KeyboardEx$HardwareKey;
    .locals 1
    .parameter "res"
    .parameter "parser"

    .prologue
    .line 1016
    new-instance v0, Lcom/nuance/xt9/input/KeyboardEx$HardwareKey;

    invoke-direct {v0, p1, p2}, Lcom/nuance/xt9/input/KeyboardEx$HardwareKey;-><init>(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method protected createKeyFromXml(Landroid/content/res/Resources;Lcom/nuance/xt9/input/KeyboardEx$Row;IILandroid/content/res/XmlResourceParser;)Lcom/nuance/xt9/input/KeyboardEx$Key;
    .locals 6
    .parameter "res"
    .parameter "parent"
    .parameter "x"
    .parameter "y"
    .parameter "parser"

    .prologue
    .line 1011
    new-instance v0, Lcom/nuance/xt9/input/KeyboardEx$Key;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/nuance/xt9/input/KeyboardEx$Key;-><init>(Landroid/content/res/Resources;Lcom/nuance/xt9/input/KeyboardEx$Row;IILandroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method protected createRowFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lcom/nuance/xt9/input/KeyboardEx$Row;
    .locals 1
    .parameter "res"
    .parameter "parser"

    .prologue
    .line 1006
    new-instance v0, Lcom/nuance/xt9/input/KeyboardEx$Row;

    invoke-direct {v0, p1, p0, p2}, Lcom/nuance/xt9/input/KeyboardEx$Row;-><init>(Landroid/content/res/Resources;Lcom/nuance/xt9/input/KeyboardEx;Landroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method protected createWritingPadFromXml(Landroid/content/res/Resources;Lcom/nuance/xt9/input/KeyboardEx$Row;IILandroid/content/res/XmlResourceParser;)Lcom/nuance/xt9/input/KeyboardEx$WritingPad;
    .locals 6
    .parameter "res"
    .parameter "parent"
    .parameter "x"
    .parameter "y"
    .parameter "parser"

    .prologue
    .line 1002
    new-instance v0, Lcom/nuance/xt9/input/KeyboardEx$WritingPad;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/nuance/xt9/input/KeyboardEx$WritingPad;-><init>(Landroid/content/res/Resources;Lcom/nuance/xt9/input/KeyboardEx$Row;IILandroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method public finalize()V
    .locals 2

    .prologue
    .line 1226
    const-string v0, "KeyboardEx"

    const-string v1, "KeyboardEx.finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    return-void
.end method

.method public getHardwareKeys()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nuance/xt9/input/KeyboardEx$HardwareKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 888
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardEx;->mHardwareKeys:Ljava/util/HashMap;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 929
    iget v0, p0, Lcom/nuance/xt9/input/KeyboardEx;->mTotalHeight:I

    return v0
.end method

.method protected getHorizontalGap()I
    .locals 1

    .prologue
    .line 893
    iget v0, p0, Lcom/nuance/xt9/input/KeyboardEx;->mDefaultHorizontalGap:I

    return v0
.end method

.method public getKdbId()I
    .locals 1

    .prologue
    .line 858
    iget v0, p0, Lcom/nuance/xt9/input/KeyboardEx;->mKdbId:I

    return v0
.end method

.method protected getKeyHeight()I
    .locals 1

    .prologue
    .line 909
    iget v0, p0, Lcom/nuance/xt9/input/KeyboardEx;->mDefaultHeight:I

    return v0
.end method

.method protected getKeyWidth()I
    .locals 1

    .prologue
    .line 917
    iget v0, p0, Lcom/nuance/xt9/input/KeyboardEx;->mDefaultWidth:I

    return v0
.end method

.method public getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/xt9/input/KeyboardEx$Key;",
            ">;"
        }
    .end annotation

    .prologue
    .line 862
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardEx;->mKeys:Ljava/util/List;

    return-object v0
.end method

.method public getMinWidth()I
    .locals 1

    .prologue
    .line 933
    iget v0, p0, Lcom/nuance/xt9/input/KeyboardEx;->mTotalWidth:I

    return v0
.end method

.method public getModifierKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/xt9/input/KeyboardEx$Key;",
            ">;"
        }
    .end annotation

    .prologue
    .line 870
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardEx;->mModifierKeys:Ljava/util/List;

    return-object v0
.end method

.method public getNearestKeys(II)[I
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 991
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardEx;->mGridNeighbors:[[I

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/nuance/xt9/input/KeyboardEx;->computeNearestNeighbors()V

    .line 992
    :cond_0
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardEx;->getMinWidth()I

    move-result v1

    if-ge p1, v1, :cond_1

    if-ltz p2, :cond_1

    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardEx;->getHeight()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 993
    iget v1, p0, Lcom/nuance/xt9/input/KeyboardEx;->mCellHeight:I

    div-int v1, p2, v1

    mul-int/lit8 v1, v1, 0xa

    iget v2, p0, Lcom/nuance/xt9/input/KeyboardEx;->mCellWidth:I

    div-int v2, p1, v2

    add-int v0, v1, v2

    .line 994
    .local v0, index:I
    const/16 v1, 0x32

    if-ge v0, v1, :cond_1

    .line 995
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardEx;->mGridNeighbors:[[I

    aget-object v1, v1, v0

    .line 998
    .end local v0           #index:I
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [I

    goto :goto_0
.end method

.method public getShiftKeyIndex()I
    .locals 1

    .prologue
    .line 952
    iget v0, p0, Lcom/nuance/xt9/input/KeyboardEx;->mShiftKeyIndex:I

    return v0
.end method

.method public getSubstitutionKey(I)Lcom/nuance/xt9/input/KeyboardEx$Key;
    .locals 5
    .parameter "keyCode"

    .prologue
    .line 874
    iget-object v3, p0, Lcom/nuance/xt9/input/KeyboardEx;->mSubstitutionKeys:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 875
    .local v2, len:I
    const/4 v1, 0x0

    .line 877
    .local v1, key:Lcom/nuance/xt9/input/KeyboardEx$Key;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 878
    iget-object v3, p0, Lcom/nuance/xt9/input/KeyboardEx;->mSubstitutionKeys:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #key:Lcom/nuance/xt9/input/KeyboardEx$Key;
    check-cast v1, Lcom/nuance/xt9/input/KeyboardEx$Key;

    .line 879
    .restart local v1       #key:Lcom/nuance/xt9/input/KeyboardEx$Key;
    iget-object v3, v1, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    if-ne v3, p1, :cond_1

    .line 883
    :cond_0
    return-object v1

    .line 877
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected getVerticalGap()I
    .locals 1

    .prologue
    .line 901
    iget v0, p0, Lcom/nuance/xt9/input/KeyboardEx;->mDefaultVerticalGap:I

    return v0
.end method

.method public getWritingPad()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/xt9/input/KeyboardEx$WritingPad;",
            ">;"
        }
    .end annotation

    .prologue
    .line 866
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardEx;->mWritingPads:Ljava/util/List;

    return-object v0
.end method

.method public isShifted()Z
    .locals 1

    .prologue
    .line 948
    iget-boolean v0, p0, Lcom/nuance/xt9/input/KeyboardEx;->mShifted:Z

    return v0
.end method

.method protected setHorizontalGap(I)V
    .locals 0
    .parameter "gap"

    .prologue
    .line 897
    iput p1, p0, Lcom/nuance/xt9/input/KeyboardEx;->mDefaultHorizontalGap:I

    .line 898
    return-void
.end method

.method protected setKeyHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 913
    iput p1, p0, Lcom/nuance/xt9/input/KeyboardEx;->mDefaultHeight:I

    .line 914
    return-void
.end method

.method protected setKeyWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 921
    iput p1, p0, Lcom/nuance/xt9/input/KeyboardEx;->mDefaultWidth:I

    .line 922
    return-void
.end method

.method public setShifted(Z)Z
    .locals 1
    .parameter "shiftState"

    .prologue
    .line 937
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardEx;->mShiftKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    if-eqz v0, :cond_0

    .line 938
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardEx;->mShiftKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iput-boolean p1, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->on:Z

    .line 940
    :cond_0
    iget-boolean v0, p0, Lcom/nuance/xt9/input/KeyboardEx;->mShifted:Z

    if-eq v0, p1, :cond_1

    .line 941
    iput-boolean p1, p0, Lcom/nuance/xt9/input/KeyboardEx;->mShifted:Z

    .line 942
    const/4 v0, 0x1

    .line 944
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setVerticalGap(I)V
    .locals 0
    .parameter "gap"

    .prologue
    .line 905
    iput p1, p0, Lcom/nuance/xt9/input/KeyboardEx;->mDefaultVerticalGap:I

    .line 906
    return-void
.end method
