.class public Lcom/android/internal/view/menu/MenuBuilder;
.super Ljava/lang/Object;
.source "MenuBuilder.java"

# interfaces
.implements Landroid/view/Menu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/MenuBuilder$OverflowMenuAdapter;,
        Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;,
        Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;,
        Lcom/android/internal/view/menu/MenuBuilder$Callback;,
        Lcom/android/internal/view/menu/MenuBuilder$MenuType;
    }
.end annotation


# static fields
.field static final ITEM_LAYOUT_RES_FOR_TYPE:[I = null

.field static final LAYOUT_RES_FOR_TYPE:[I = null

.field private static final LOGTAG:Ljava/lang/String; = "MenuBuilder"

.field public static final NUM_TYPES:I = 0x5

.field private static final THEME_ALERT_DIALOG:I = -0x2

.field private static final THEME_APPLICATION:I = -0x1

.field static final THEME_RES_FOR_TYPE:[I = null

.field private static final THEME_SYSTEM_DEFAULT:I = 0x0

.field public static final TYPE_ACTION_BUTTON:I = 0x3

.field public static final TYPE_DIALOG:I = 0x2

.field public static final TYPE_EXPANDED:I = 0x1

.field public static final TYPE_ICON:I = 0x0

.field public static final TYPE_POPUP:I = 0x4

.field private static final VIEWS_TAG:Ljava/lang/String; = "android:views"

.field private static final sCategoryToOrder:[I


# instance fields
.field private final mActionButtonGroups:Landroid/util/SparseBooleanArray;

.field private mActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mActionWidthLimit:I

.field private final mAdapterCache:[Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mDefaultShowAsAction:I

.field private mFrozenViewStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderIcon:Landroid/graphics/drawable/Drawable;

.field mHeaderTitle:Ljava/lang/CharSequence;

.field mHeaderView:Landroid/view/View;

.field private mIsActionItemsStale:Z

.field private mIsVisibleItemsStale:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxActionItems:I

.field private mMeasureActionButtonParent:Landroid/view/ViewGroup;

.field private mMenuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;

.field private mNonActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionalIconsVisible:Z

.field private final mOverflowAdapterCache:[Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/internal/view/menu/MenuBuilder$OverflowMenuAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mPreventDispatchingItemsChanged:Z

.field private mQwertyMode:Z

.field private mReserveActionOverflow:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mShortcutsVisible:Z

.field private mVisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x5

    .line 87
    new-array v0, v1, [I

    fill-array-data v0, :array_20

    sput-object v0, Lcom/android/internal/view/menu/MenuBuilder;->THEME_RES_FOR_TYPE:[I

    .line 96
    new-array v0, v1, [I

    fill-array-data v0, :array_2e

    sput-object v0, Lcom/android/internal/view/menu/MenuBuilder;->LAYOUT_RES_FOR_TYPE:[I

    .line 105
    new-array v0, v1, [I

    fill-array-data v0, :array_3c

    sput-object v0, Lcom/android/internal/view/menu/MenuBuilder;->ITEM_LAYOUT_RES_FOR_TYPE:[I

    .line 113
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_4a

    sput-object v0, Lcom/android/internal/view/menu/MenuBuilder;->sCategoryToOrder:[I

    return-void

    .line 87
    nop

    :array_20
    .array-data 0x4
        0xd5t 0x1t 0x3t 0x1t
        0xd6t 0x1t 0x3t 0x1t
        0xfet 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 96
    :array_2e
    .array-data 0x4
        0x40t 0x0t 0x9t 0x1t
        0x39t 0x0t 0x9t 0x1t
        0x0t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x9t 0x1t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 105
    :array_3c
    .array-data 0x4
        0x3ft 0x0t 0x9t 0x1t
        0x58t 0x0t 0x9t 0x1t
        0x58t 0x0t 0x9t 0x1t
        0x1at 0x0t 0x9t 0x1t
        0x60t 0x0t 0x9t 0x1t
    .end array-data

    .line 113
    :array_4a
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    .line 212
    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 214
    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 218
    new-array v0, v2, [Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mAdapterCache:[Ljava/lang/ref/WeakReference;

    .line 220
    new-array v0, v2, [Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mOverflowAdapterCache:[Ljava/lang/ref/WeakReference;

    .line 224
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 357
    new-array v0, v2, [Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mMenuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    .line 359
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 360
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 364
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 365
    iput-boolean v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 369
    iput-boolean v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 371
    invoke-direct {p0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 372
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/view/menu/MenuBuilder;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    invoke-static {p0}, Lcom/android/internal/view/menu/MenuBuilder;->getAlertDialogTheme(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/view/menu/MenuBuilder;)Landroid/util/SparseArray;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mFrozenViewStates:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/view/menu/MenuBuilder;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuBuilder;->getNumIconMenuItemsShown()I

    move-result v0

    return v0
.end method

.method private addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 13
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "title"

    .prologue
    .line 460
    invoke-static {p3}, Lcom/android/internal/view/menu/MenuBuilder;->getOrdering(I)I

    move-result v5

    .line 462
    .local v5, ordering:I
    new-instance v0, Lcom/android/internal/view/menu/MenuItemImpl;

    iget v7, p0, Lcom/android/internal/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/view/menu/MenuItemImpl;-><init>(Lcom/android/internal/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V

    .line 465
    .local v0, item:Lcom/android/internal/view/menu/MenuItemImpl;
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz v1, :cond_19

    .line 467
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuItemImpl;->setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 470
    :cond_19
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-static {v2, v5}, Lcom/android/internal/view/menu/MenuBuilder;->findInsertIndex(Ljava/util/ArrayList;I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 471
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 473
    return-object v0
.end method

.method private static findInsertIndex(Ljava/util/ArrayList;I)I
    .registers 6
    .parameter
    .parameter "ordering"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 831
    .local p0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_7
    if-ltz v0, :cond_1b

    .line 832
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 833
    .local v1, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getOrdering()I

    move-result v2

    if-gt v2, p1, :cond_18

    .line 834
    add-int/lit8 v2, v0, 0x1

    .line 838
    .end local v1           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :goto_17
    return v2

    .line 831
    .restart local v1       #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 838
    .end local v1           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1b
    const/4 v2, 0x0

    goto :goto_17
.end method

.method private flagActionItems(Z)V
    .registers 27
    .parameter "reserveActionOverflow"

    .prologue
    .line 1098
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/MenuBuilder;->mReserveActionOverflow:Z

    move/from16 v23, v0

    move/from16 v0, p1

    move/from16 v1, v23

    if-eq v0, v1, :cond_1a

    .line 1099
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/view/menu/MenuBuilder;->mReserveActionOverflow:Z

    .line 1100
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1103
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    move/from16 v23, v0

    if-nez v23, :cond_23

    .line 1213
    :goto_22
    return-void

    .line 1107
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v21

    .line 1108
    .local v21, visibleItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 1109
    .local v11, itemsSize:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/MenuBuilder;->mMaxActionItems:I

    move v13, v0

    .line 1110
    .local v13, maxActions:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/MenuBuilder;->mActionWidthLimit:I

    move/from16 v22, v0

    .line 1111
    .local v22, widthLimit:I
    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 1112
    .local v16, querySpec:I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/view/menu/MenuBuilder;->getMeasureActionButtonParent()Landroid/view/ViewGroup;

    move-result-object v15

    .line 1114
    .local v15, parent:Landroid/view/ViewGroup;
    const/16 v18, 0x0

    .line 1115
    .local v18, requiredItems:I
    const/16 v17, 0x0

    .line 1116
    .local v17, requestedItems:I
    const/4 v4, 0x0

    .line 1117
    .local v4, firstActionWidth:I
    const/4 v6, 0x0

    .line 1118
    .local v6, hasOverflow:Z
    const/4 v7, 0x0

    .local v7, i:I
    :goto_49
    if-ge v7, v11, :cond_6a

    .line 1119
    move-object/from16 v0, v21

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 1120
    .local v10, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v10}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v23

    if-eqz v23, :cond_5f

    .line 1121
    add-int/lit8 v18, v18, 0x1

    .line 1118
    :goto_5c
    add-int/lit8 v7, v7, 0x1

    goto :goto_49

    .line 1122
    :cond_5f
    invoke-virtual {v10}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v23

    if-eqz v23, :cond_68

    .line 1123
    add-int/lit8 v17, v17, 0x1

    goto :goto_5c

    .line 1125
    :cond_68
    const/4 v6, 0x1

    goto :goto_5c

    .line 1130
    .end local v10           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_6a
    if-eqz p1, :cond_77

    if-nez v6, :cond_75

    add-int v23, v18, v17

    move/from16 v0, v23

    move v1, v13

    if-le v0, v1, :cond_77

    .line 1132
    :cond_75
    add-int/lit8 v13, v13, -0x1

    .line 1134
    :cond_77
    sub-int v13, v13, v18

    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/MenuBuilder;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    move-object/from16 v19, v0

    .line 1137
    .local v19, seenGroups:Landroid/util/SparseBooleanArray;
    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1140
    const/4 v7, 0x0

    :goto_83
    if-ge v7, v11, :cond_152

    .line 1141
    move-object/from16 v0, v21

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 1143
    .restart local v10       #item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v10}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v23

    if-eqz v23, :cond_c9

    .line 1144
    invoke-virtual {v10}, Lcom/android/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v20

    .line 1145
    .local v20, v:Landroid/view/View;
    if-nez v20, :cond_a4

    .line 1146
    const/16 v23, 0x3

    move-object v0, v10

    move/from16 v1, v23

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 1148
    :cond_a4
    move-object/from16 v0, v20

    move/from16 v1, v16

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1149
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 1150
    .local v14, measuredWidth:I
    sub-int v22, v22, v14

    .line 1151
    if-nez v4, :cond_b6

    .line 1152
    move v4, v14

    .line 1154
    :cond_b6
    invoke-virtual {v10}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v5

    .line 1155
    .local v5, groupId:I
    if-eqz v5, :cond_c6

    .line 1156
    const/16 v23, 0x1

    move-object/from16 v0, v19

    move v1, v5

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1140
    .end local v5           #groupId:I
    .end local v14           #measuredWidth:I
    .end local v20           #v:Landroid/view/View;
    :cond_c6
    :goto_c6
    add-int/lit8 v7, v7, 0x1

    goto :goto_83

    .line 1158
    :cond_c9
    invoke-virtual {v10}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v23

    if-eqz v23, :cond_c6

    .line 1161
    invoke-virtual {v10}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v5

    .line 1162
    .restart local v5       #groupId:I
    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    .line 1163
    .local v8, inGroup:Z
    if-gtz v13, :cond_de

    if-eqz v8, :cond_121

    :cond_de
    if-lez v22, :cond_121

    const/16 v23, 0x1

    move/from16 v9, v23

    .line 1164
    .local v9, isAction:Z
    :goto_e4
    add-int/lit8 v13, v13, -0x1

    .line 1166
    if-eqz v9, :cond_10f

    .line 1167
    invoke-virtual {v10}, Lcom/android/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v20

    .line 1168
    .restart local v20       #v:Landroid/view/View;
    if-nez v20, :cond_f8

    .line 1169
    const/16 v23, 0x3

    move-object v0, v10

    move/from16 v1, v23

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 1171
    :cond_f8
    move-object/from16 v0, v20

    move/from16 v1, v16

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1172
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 1173
    .restart local v14       #measuredWidth:I
    sub-int v22, v22, v14

    .line 1174
    if-nez v4, :cond_10a

    .line 1175
    move v4, v14

    .line 1179
    :cond_10a
    add-int v23, v22, v4

    if-gtz v23, :cond_10f

    .line 1180
    const/4 v9, 0x0

    .line 1184
    .end local v14           #measuredWidth:I
    .end local v20           #v:Landroid/view/View;
    :cond_10f
    if-eqz v9, :cond_126

    if-eqz v5, :cond_126

    .line 1185
    const/16 v23, 0x1

    move-object/from16 v0, v19

    move v1, v5

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1197
    :cond_11d
    invoke-virtual {v10, v9}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    goto :goto_c6

    .line 1163
    .end local v9           #isAction:Z
    :cond_121
    const/16 v23, 0x0

    move/from16 v9, v23

    goto :goto_e4

    .line 1186
    .restart local v9       #isAction:Z
    :cond_126
    if-eqz v8, :cond_11d

    .line 1188
    const/16 v23, 0x0

    move-object/from16 v0, v19

    move v1, v5

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1189
    const/4 v12, 0x0

    .local v12, j:I
    :goto_133
    if-ge v12, v7, :cond_11d

    .line 1190
    move-object/from16 v0, v21

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 1191
    .local v3, areYouMyGroupie:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v23

    move/from16 v0, v23

    move v1, v5

    if-ne v0, v1, :cond_14f

    .line 1192
    const/16 v23, 0x0

    move-object v0, v3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 1189
    :cond_14f
    add-int/lit8 v12, v12, 0x1

    goto :goto_133

    .line 1201
    .end local v3           #areYouMyGroupie:Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v5           #groupId:I
    .end local v8           #inGroup:Z
    .end local v9           #isAction:Z
    .end local v10           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v12           #j:I
    :cond_152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    .line 1202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    .line 1203
    const/4 v7, 0x0

    :goto_165
    if-ge v7, v11, :cond_192

    .line 1204
    move-object/from16 v0, v21

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 1205
    .restart local v10       #item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v10}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v23

    if-eqz v23, :cond_185

    .line 1206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1203
    :goto_182
    add-int/lit8 v7, v7, 0x1

    goto :goto_165

    .line 1208
    :cond_185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_182

    .line 1212
    .end local v10           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_192
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    goto/16 :goto_22
.end method

.method private static getAlertDialogTheme(Landroid/content/Context;)I
    .registers 5
    .parameter "context"

    .prologue
    .line 227
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 228
    .local v0, outValue:Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010309

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 230
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method private getMeasureActionButtonParent()Landroid/view/ViewGroup;
    .registers 5

    .prologue
    const/4 v2, 0x3

    .line 1063
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mMeasureActionButtonParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1b

    .line 1064
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/MenuBuilder;->getMenuType(I)Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget-object v1, Lcom/android/internal/view/menu/MenuBuilder;->LAYOUT_RES_FOR_TYPE:[I

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mMeasureActionButtonParent:Landroid/view/ViewGroup;

    .line 1067
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mMeasureActionButtonParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private getNumIconMenuItemsShown()I
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 418
    const/4 v1, 0x0

    .line 420
    .local v1, parent:Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mMenuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->hasMenuView()Z

    move-result v2

    if-nez v2, :cond_28

    .line 427
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mMenuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->hasMenuView()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 428
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mMenuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 429
    .local v0, expandedMenuView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .end local v1           #parent:Landroid/view/ViewGroup;
    check-cast v1, Landroid/view/ViewGroup;

    .line 433
    .end local v0           #expandedMenuView:Landroid/view/View;
    .restart local v1       #parent:Landroid/view/ViewGroup;
    :cond_28
    invoke-virtual {p0, v4, v1}, Lcom/android/internal/view/menu/MenuBuilder;->getMenuView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/view/menu/IconMenuView;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getNumActualItemsShown()I

    move-result v2

    return v2
.end method

.method private static getOrdering(I)I
    .registers 4
    .parameter "categoryOrder"

    .prologue
    .line 756
    const/high16 v1, -0x1

    and-int/2addr v1, p0

    shr-int/lit8 v0, v1, 0x10

    .line 758
    .local v0, index:I
    if-ltz v0, :cond_c

    sget-object v1, Lcom/android/internal/view/menu/MenuBuilder;->sCategoryToOrder:[I

    array-length v1, v1

    if-lt v0, v1, :cond_14

    .line 759
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "order does not contain a valid category."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 762
    :cond_14
    sget-object v1, Lcom/android/internal/view/menu/MenuBuilder;->sCategoryToOrder:[I

    aget v1, v1, v0

    shl-int/lit8 v1, v1, 0x10

    const v2, 0xffff

    and-int/2addr v2, p0

    or-int/2addr v1, v2

    return v1
.end method

.method private onItemsChanged(Z)V
    .registers 9
    .parameter "cleared"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1002
    iget-boolean v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v4, :cond_66

    .line 1003
    iget-boolean v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    if-nez v4, :cond_c

    iput-boolean v5, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1004
    :cond_c
    iget-boolean v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    if-nez v4, :cond_12

    iput-boolean v5, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1006
    :cond_12
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mMenuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    .line 1007
    .local v2, menuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_15
    const/4 v4, 0x5

    if-ge v1, v4, :cond_66

    .line 1008
    aget-object v4, v2, v1

    if-eqz v4, :cond_33

    aget-object v4, v2, v1

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->hasMenuView()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 1009
    aget-object v4, v2, v1

    #getter for: Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mMenuView:Ljava/lang/ref/WeakReference;
    invoke-static {v4}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->access$300(Lcom/android/internal/view/menu/MenuBuilder$MenuType;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuView;

    .line 1010
    .local v3, menuView:Lcom/android/internal/view/menu/MenuView;
    invoke-interface {v3, p1}, Lcom/android/internal/view/menu/MenuView;->updateChildren(Z)V

    .line 1013
    .end local v3           #menuView:Lcom/android/internal/view/menu/MenuView;
    :cond_33
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mAdapterCache:[Ljava/lang/ref/WeakReference;

    aget-object v4, v4, v1

    if-nez v4, :cond_4e

    move-object v0, v6

    .line 1014
    .local v0, adapter:Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;
    :goto_3a
    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;->notifyDataSetChanged()V

    .line 1016
    :cond_3f
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mOverflowAdapterCache:[Ljava/lang/ref/WeakReference;

    aget-object v4, v4, v1

    if-nez v4, :cond_5a

    move-object v0, v6

    .line 1017
    :goto_46
    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;->notifyDataSetChanged()V

    .line 1007
    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 1013
    .end local v0           #adapter:Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;
    :cond_4e
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mAdapterCache:[Ljava/lang/ref/WeakReference;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;

    move-object v0, v4

    goto :goto_3a

    .line 1016
    .restart local v0       #adapter:Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;
    :cond_5a
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mOverflowAdapterCache:[Ljava/lang/ref/WeakReference;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/view/menu/MenuBuilder$OverflowMenuAdapter;

    move-object v0, v4

    goto :goto_46

    .line 1020
    .end local v0           #adapter:Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;
    .end local v1           #i:I
    .end local v2           #menuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;
    :cond_66
    return-void
.end method

.method private refreshShortcuts(ZZ)V
    .registers 7
    .parameter "shortcutsVisible"
    .parameter "qwertyMode"

    .prologue
    .line 778
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_9
    if-ltz v0, :cond_28

    .line 779
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 781
    .local v1, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 782
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v2, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->refreshShortcuts(ZZ)V

    .line 785
    :cond_22
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/view/menu/MenuItemImpl;->refreshShortcutOnItemViews(ZZ)V

    .line 778
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 787
    .end local v1           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_28
    return-void
.end method

.method private removeItemAtInt(IZ)V
    .registers 4
    .parameter "index"
    .parameter "updateChildrenOnMenuViews"

    .prologue
    .line 572
    if-ltz p1, :cond_a

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    .line 577
    :cond_a
    :goto_a
    return-void

    .line 574
    :cond_b
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 576
    if-eqz p2, :cond_a

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_a
.end method

.method private setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .registers 9
    .parameter "titleRes"
    .parameter "title"
    .parameter "iconRes"
    .parameter "icon"
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 1245
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1247
    .local v0, r:Landroid/content/res/Resources;
    if-eqz p5, :cond_12

    .line 1248
    iput-object p5, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1251
    iput-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1252
    iput-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1271
    :goto_d
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1272
    return-void

    .line 1254
    :cond_12
    if-lez p1, :cond_25

    .line 1255
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1260
    :cond_1a
    :goto_1a
    if-lez p3, :cond_2a

    .line 1261
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1267
    :cond_22
    :goto_22
    iput-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    goto :goto_d

    .line 1256
    :cond_25
    if-eqz p2, :cond_1a

    .line 1257
    iput-object p2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    goto :goto_1a

    .line 1262
    :cond_2a
    if-eqz p4, :cond_22

    .line 1263
    iput-object p4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_22
.end method

.method private setShortcutsVisibleInner(Z)V
    .registers 5
    .parameter "shortcutsVisible"

    .prologue
    const/4 v2, 0x1

    .line 805
    if-eqz p1, :cond_1c

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, v2, :cond_1c

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    const v1, 0x111001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v2

    :goto_19
    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    .line 809
    return-void

    .line 805
    :cond_1c
    const/4 v0, 0x0

    goto :goto_19
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .registers 4
    .parameter "titleRes"

    .prologue
    const/4 v1, 0x0

    .line 481
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v1, v1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .registers 6
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "title"

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 6
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "title"

    .prologue
    .line 485
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3
    .parameter "title"

    .prologue
    const/4 v0, 0x0

    .line 477
    invoke-direct {p0, v0, v0, v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .registers 24
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "caller"
    .parameter "specifics"
    .parameter "intent"
    .parameter "flags"
    .parameter "outSpecificItems"

    .prologue
    .line 514
    iget-object v12, p0, Lcom/android/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 515
    .local v9, pm:Landroid/content/pm/PackageManager;
    const/4 v12, 0x0

    move-object v0, v9

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 517
    .local v8, lri:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v8, :cond_70

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    move v5, v12

    .line 519
    .local v5, N:I
    :goto_1a
    and-int/lit8 v12, p7, 0x1

    if-nez v12, :cond_21

    .line 520
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/view/menu/MenuBuilder;->removeGroup(I)V

    .line 523
    :cond_21
    const/4 v6, 0x0

    .local v6, i:I
    :goto_22
    if-ge v6, v5, :cond_78

    .line 524
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 525
    .local v10, ri:Landroid/content/pm/ResolveInfo;
    new-instance v11, Landroid/content/Intent;

    iget v12, v10, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v12, :cond_73

    move-object/from16 v12, p6

    :goto_32
    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 527
    .local v11, rintent:Landroid/content/Intent;
    new-instance v12, Landroid/content/ComponentName;

    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v14, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v12, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 530
    invoke-virtual {v10, v9}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v12

    invoke-virtual {v10, v9}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v12

    invoke-interface {v12, v11}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v7

    .line 533
    .local v7, item:Landroid/view/MenuItem;
    if-eqz p8, :cond_6d

    iget v12, v10, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz v12, :cond_6d

    .line 534
    iget v12, v10, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aput-object v7, p8, v12

    .line 523
    :cond_6d
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 517
    .end local v5           #N:I
    .end local v6           #i:I
    .end local v7           #item:Landroid/view/MenuItem;
    .end local v10           #ri:Landroid/content/pm/ResolveInfo;
    .end local v11           #rintent:Landroid/content/Intent;
    :cond_70
    const/4 v12, 0x0

    move v5, v12

    goto :goto_1a

    .line 525
    .restart local v5       #N:I
    .restart local v6       #i:I
    .restart local v10       #ri:Landroid/content/pm/ResolveInfo;
    :cond_73
    iget v12, v10, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aget-object v12, p5, v12

    goto :goto_32

    .line 538
    .end local v10           #ri:Landroid/content/pm/ResolveInfo;
    :cond_78
    return v5
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .registers 4
    .parameter "titleRes"

    .prologue
    const/4 v1, 0x0

    .line 497
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .registers 6
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "title"

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 8
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "title"

    .prologue
    .line 501
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 502
    .local v0, item:Lcom/android/internal/view/menu/MenuItemImpl;
    new-instance v1, Lcom/android/internal/view/menu/SubMenuBuilder;

    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0, v0}, Lcom/android/internal/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)V

    .line 503
    .local v1, subMenu:Lcom/android/internal/view/menu/SubMenuBuilder;
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuItemImpl;->setSubMenu(Lcom/android/internal/view/menu/SubMenuBuilder;)V

    .line 505
    return-object v1
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 3
    .parameter "title"

    .prologue
    const/4 v0, 0x0

    .line 493
    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 594
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 595
    return-void
.end method

.method public clearAll()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 584
    iput-boolean v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 585
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->clear()V

    .line 586
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->clearHeader()V

    .line 587
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 588
    invoke-direct {p0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 589
    return-void
.end method

.method public clearHeader()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1236
    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1237
    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1238
    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1240
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1241
    return-void
.end method

.method public clearMenuViews()V
    .registers 5

    .prologue
    .line 441
    const/4 v0, 0x4

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_14

    .line 442
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mMenuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    aget-object v2, v2, v0

    if-eqz v2, :cond_11

    .line 443
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mMenuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    #setter for: Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mMenuView:Ljava/lang/ref/WeakReference;
    invoke-static {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->access$302(Lcom/android/internal/view/menu/MenuBuilder$MenuType;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 441
    :cond_11
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 447
    :cond_14
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    :goto_1d
    if-ltz v0, :cond_3c

    .line 448
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 449
    .local v1, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 450
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/SubMenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/SubMenuBuilder;->clearMenuViews()V

    .line 452
    :cond_36
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->clearItemViews()V

    .line 447
    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    .line 454
    .end local v1           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_3c
    return-void
.end method

.method public close()V
    .registers 2

    .prologue
    .line 993
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 994
    return-void
.end method

.method final close(Z)V
    .registers 3
    .parameter "allMenusAreClosing"

    .prologue
    .line 985
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->getCallback()Lcom/android/internal/view/menu/MenuBuilder$Callback;

    move-result-object v0

    .line 986
    .local v0, callback:Lcom/android/internal/view/menu/MenuBuilder$Callback;
    if-eqz v0, :cond_9

    .line 987
    invoke-interface {v0, p0, p1}, Lcom/android/internal/view/menu/MenuBuilder$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 989
    :cond_9
    return-void
.end method

.method public findGroupIndex(I)I
    .registers 3
    .parameter "group"

    .prologue
    .line 698
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->findGroupIndex(II)I

    move-result v0

    return v0
.end method

.method public findGroupIndex(II)I
    .registers 7
    .parameter "group"
    .parameter "start"

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 704
    .local v2, size:I
    if-gez p2, :cond_7

    .line 705
    const/4 p2, 0x0

    .line 708
    :cond_7
    move v0, p2

    .local v0, i:I
    :goto_8
    if-ge v0, v2, :cond_1d

    .line 709
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 711
    .local v1, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_1a

    move v3, v0

    .line 716
    .end local v1           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :goto_19
    return v3

    .line 708
    .restart local v1       #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 716
    .end local v1           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1d
    const/4 v3, -0x1

    goto :goto_19
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .registers 7
    .parameter "id"

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v3

    .line 668
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v3, :cond_2c

    .line 669
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 670
    .local v1, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v4

    if-ne v4, p1, :cond_17

    move-object v4, v1

    .line 681
    .end local v1           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :goto_16
    return-object v4

    .line 672
    .restart local v1       #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_17
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 673
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 675
    .local v2, possibleItem:Landroid/view/MenuItem;
    if-eqz v2, :cond_29

    move-object v4, v2

    .line 676
    goto :goto_16

    .line 668
    .end local v2           #possibleItem:Landroid/view/MenuItem;
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 681
    .end local v1           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_2c
    const/4 v4, 0x0

    goto :goto_16
.end method

.method public findItemIndex(I)I
    .registers 6
    .parameter "id"

    .prologue
    .line 685
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 687
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v2, :cond_1a

    .line 688
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 689
    .local v1, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_17

    move v3, v0

    .line 694
    .end local v1           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :goto_16
    return v3

    .line 687
    .restart local v1       #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 694
    .end local v1           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1a
    const/4 v3, -0x1

    goto :goto_16
.end method

.method findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/android/internal/view/menu/MenuItemImpl;
    .registers 14
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 911
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->findItemsWithShortcutForKey(ILandroid/view/KeyEvent;)Ljava/util/List;

    move-result-object v2

    .line 913
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    if-nez v2, :cond_a

    move-object v7, v10

    .line 941
    .end local p0
    :goto_9
    return-object v7

    .line 917
    .restart local p0
    :cond_a
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    .line 918
    .local v3, metaState:I
    new-instance v4, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v4}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 920
    .local v4, possibleChars:Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {p2, v4}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    .line 923
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_25

    .line 924
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/view/menu/MenuItemImpl;

    move-object v7, p0

    goto :goto_9

    .line 927
    .restart local p0
    :cond_25
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v5

    .line 930
    .local v5, qwerty:Z
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 931
    .local v1, item:Lcom/android/internal/view/menu/MenuItemImpl;
    if-eqz v5, :cond_61

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v7

    move v6, v7

    .line 932
    .local v6, shortcutChar:C
    :goto_40
    iget-object v7, v4, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v7, v7, v9

    if-ne v6, v7, :cond_4a

    and-int/lit8 v7, v3, 0x2

    if-eqz v7, :cond_5f

    :cond_4a
    iget-object v7, v4, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v8, 0x2

    aget-char v7, v7, v8

    if-ne v6, v7, :cond_55

    and-int/lit8 v7, v3, 0x2

    if-nez v7, :cond_5f

    :cond_55
    if-eqz v5, :cond_2d

    const/16 v7, 0x8

    if-ne v6, v7, :cond_2d

    const/16 v7, 0x43

    if-ne p1, v7, :cond_2d

    :cond_5f
    move-object v7, v1

    .line 938
    goto :goto_9

    .line 931
    .end local v6           #shortcutChar:C
    :cond_61
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v7

    move v6, v7

    goto :goto_40

    .end local v1           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_67
    move-object v7, v10

    .line 941
    goto :goto_9
.end method

.method findItemsWithShortcutForKey(ILandroid/view/KeyEvent;)Ljava/util/List;
    .registers 16
    .parameter "keyCode"
    .parameter "event"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/KeyEvent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v12, 0x43

    .line 864
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v7

    .line 865
    .local v7, qwerty:Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    .line 866
    .local v5, metaState:I
    new-instance v6, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v6}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 868
    .local v6, possibleChars:Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {p2, v6}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v2

    .line 870
    .local v2, isKeyCodeMapped:Z
    if-nez v2, :cond_19

    if-eq p1, v12, :cond_19

    .line 871
    const/4 v10, 0x0

    .line 895
    :goto_18
    return-object v10

    .line 874
    :cond_19
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 876
    .local v4, items:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    iget-object v10, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 877
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_25
    if-ge v1, v0, :cond_77

    .line 878
    iget-object v10, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 879
    .local v3, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v10

    if-eqz v10, :cond_42

    .line 880
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v10

    check-cast v10, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v10, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->findItemsWithShortcutForKey(ILandroid/view/KeyEvent;)Ljava/util/List;

    move-result-object v9

    .line 882
    .local v9, subMenuItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v4, v9}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 884
    .end local v9           #subMenuItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_42
    if-eqz v7, :cond_71

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v10

    move v8, v10

    .line 885
    .local v8, shortcutChar:C
    :goto_49
    and-int/lit8 v10, v5, 0x5

    if-nez v10, :cond_6e

    if-eqz v8, :cond_6e

    iget-object v10, v6, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v11, 0x0

    aget-char v10, v10, v11

    if-eq v8, v10, :cond_65

    iget-object v10, v6, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v11, 0x2

    aget-char v10, v10, v11

    if-eq v8, v10, :cond_65

    if-eqz v7, :cond_6e

    const/16 v10, 0x8

    if-ne v8, v10, :cond_6e

    if-ne p1, v12, :cond_6e

    :cond_65
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_6e

    .line 892
    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 877
    :cond_6e
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 884
    .end local v8           #shortcutChar:C
    :cond_71
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v10

    move v8, v10

    goto :goto_49

    .end local v3           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_77
    move-object v10, v4

    .line 895
    goto :goto_18
.end method

.method getActionItems(Z)Ljava/util/ArrayList;
    .registers 3
    .parameter "reserveActionOverflow"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1216
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->flagActionItems(Z)V

    .line 1217
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCallback()Lcom/android/internal/view/menu/MenuBuilder$Callback;
    .registers 2

    .prologue
    .line 823
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 827
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getHeaderIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .registers 2

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .registers 3
    .parameter "index"

    .prologue
    .line 725
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/MenuItem;

    return-object p0
.end method

.method public getMenuAdapter(I)Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;
    .registers 6
    .parameter "menuType"

    .prologue
    .line 1372
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mAdapterCache:[Ljava/lang/ref/WeakReference;

    aget-object v2, v2, p1

    if-nez v2, :cond_c

    const/4 v2, 0x0

    move-object v0, v2

    .line 1374
    .local v0, adapter:Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;
    :goto_8
    if-eqz v0, :cond_18

    move-object v1, v0

    .line 1378
    .end local v0           #adapter:Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;
    .local v1, adapter:Ljava/lang/Object;
    :goto_b
    return-object v1

    .line 1372
    .end local v1           #adapter:Ljava/lang/Object;
    :cond_c
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mAdapterCache:[Ljava/lang/ref/WeakReference;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;

    move-object v0, v2

    goto :goto_8

    .line 1376
    .restart local v0       #adapter:Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;
    :cond_18
    new-instance v0, Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;

    .end local v0           #adapter:Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;
    invoke-direct {v0, p0, p1}, Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;-><init>(Lcom/android/internal/view/menu/MenuBuilder;I)V

    .line 1377
    .restart local v0       #adapter:Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mAdapterCache:[Ljava/lang/ref/WeakReference;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    aput-object v3, v2, p1

    move-object v1, v0

    .line 1378
    .restart local v1       #adapter:Ljava/lang/Object;
    goto :goto_b
.end method

.method getMenuType(I)Lcom/android/internal/view/menu/MenuBuilder$MenuType;
    .registers 4
    .parameter "menuType"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mMenuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    aget-object v0, v0, p1

    if-nez v0, :cond_f

    .line 385
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mMenuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    new-instance v1, Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;-><init>(Lcom/android/internal/view/menu/MenuBuilder;I)V

    aput-object v1, v0, p1

    .line 388
    :cond_f
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mMenuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getMenuView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "menuType"
    .parameter "parent"

    .prologue
    const/4 v1, 0x0

    .line 409
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1b

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mMenuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    aget-object v0, v0, v1

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mMenuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->hasMenuView()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 411
    :cond_14
    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->getMenuType(I)Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    .line 414
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->getMenuType(I)Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method getNonActionItems(Z)Ljava/util/ArrayList;
    .registers 3
    .parameter "reserveActionOverflow"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1221
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->flagActionItems(Z)V

    .line 1222
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method getOptionalIconsVisible()Z
    .registers 2

    .prologue
    .line 1402
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    return v0
.end method

.method public getOverflowItem(I)Landroid/view/MenuItem;
    .registers 3
    .parameter "index"

    .prologue
    .line 729
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->flagActionItems(Z)V

    .line 730
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/MenuItem;

    return-object p0
.end method

.method public getOverflowMenuAdapter(I)Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;
    .registers 6
    .parameter "menuType"

    .prologue
    .line 1388
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mOverflowAdapterCache:[Ljava/lang/ref/WeakReference;

    aget-object v2, v2, p1

    if-nez v2, :cond_c

    const/4 v2, 0x0

    move-object v0, v2

    .line 1390
    .local v0, adapter:Lcom/android/internal/view/menu/MenuBuilder$OverflowMenuAdapter;
    :goto_8
    if-eqz v0, :cond_18

    move-object v1, v0

    .line 1394
    .end local v0           #adapter:Lcom/android/internal/view/menu/MenuBuilder$OverflowMenuAdapter;
    .local v1, adapter:Ljava/lang/Object;
    :goto_b
    return-object v1

    .line 1388
    .end local v1           #adapter:Ljava/lang/Object;
    :cond_c
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mOverflowAdapterCache:[Ljava/lang/ref/WeakReference;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuBuilder$OverflowMenuAdapter;

    move-object v0, v2

    goto :goto_8

    .line 1392
    .restart local v0       #adapter:Lcom/android/internal/view/menu/MenuBuilder$OverflowMenuAdapter;
    :cond_18
    new-instance v0, Lcom/android/internal/view/menu/MenuBuilder$OverflowMenuAdapter;

    .end local v0           #adapter:Lcom/android/internal/view/menu/MenuBuilder$OverflowMenuAdapter;
    invoke-direct {v0, p0, p1}, Lcom/android/internal/view/menu/MenuBuilder$OverflowMenuAdapter;-><init>(Lcom/android/internal/view/menu/MenuBuilder;I)V

    .line 1393
    .restart local v0       #adapter:Lcom/android/internal/view/menu/MenuBuilder$OverflowMenuAdapter;
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mOverflowAdapterCache:[Ljava/lang/ref/WeakReference;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    aput-object v3, v2, p1

    move-object v1, v0

    .line 1394
    .restart local v1       #adapter:Ljava/lang/Object;
    goto :goto_b
.end method

.method getResources()Landroid/content/res/Resources;
    .registers 2

    .prologue
    .line 819
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;
    .registers 1

    .prologue
    .line 1351
    return-object p0
.end method

.method getVisibleItems()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1041
    iget-boolean v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 1056
    :goto_6
    return-object v3

    .line 1044
    :cond_7
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1046
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1048
    .local v2, itemsSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_13
    if-ge v0, v2, :cond_2b

    .line 1049
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 1050
    .local v1, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_28

    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1048
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 1053
    .end local v1           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_2b
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1054
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1056
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    goto :goto_6
.end method

.method public hasVisibleItems()Z
    .registers 5

    .prologue
    .line 654
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 656
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v2, :cond_1a

    .line 657
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 658
    .local v1, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 659
    const/4 v3, 0x1

    .line 663
    .end local v1           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :goto_16
    return v3

    .line 656
    .restart local v1       #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 663
    .end local v1           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1a
    const/4 v3, 0x0

    goto :goto_16
.end method

.method isQwertyMode()Z
    .registers 2

    .prologue
    .line 769
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mQwertyMode:Z

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 734
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isShortcutsVisible()Z
    .registers 2

    .prologue
    .line 815
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    return v0
.end method

.method onItemActionRequestChanged(Lcom/android/internal/view/menu/MenuItemImpl;)V
    .registers 3
    .parameter "item"

    .prologue
    .line 1037
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1038
    return-void
.end method

.method onItemVisibleChanged(Lcom/android/internal/view/menu/MenuItemImpl;)V
    .registers 3
    .parameter "item"

    .prologue
    .line 1028
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1029
    return-void
.end method

.method public performIdentifierAction(II)Z
    .registers 4
    .parameter "id"
    .parameter "flags"

    .prologue
    .line 946
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public performItemAction(Landroid/view/MenuItem;I)Z
    .registers 9
    .parameter "item"
    .parameter "flags"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 950
    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/menu/MenuItemImpl;

    move-object v2, v0

    .line 952
    .local v2, itemImpl:Lcom/android/internal/view/menu/MenuItemImpl;
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_10

    :cond_e
    move v3, v4

    .line 972
    .end local p0
    :goto_f
    return v3

    .line 956
    .restart local p0
    :cond_10
    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->invoke()Z

    move-result v1

    .line 958
    .local v1, invoked:Z
    invoke-interface {p1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 959
    invoke-virtual {p0, v4}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 961
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    if-eqz v3, :cond_32

    .line 963
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/view/menu/SubMenuBuilder;

    invoke-interface {v3, p0}, Lcom/android/internal/view/menu/MenuBuilder$Callback;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    move-result v3

    if-nez v3, :cond_31

    if-eqz v1, :cond_34

    :cond_31
    move v1, v5

    :cond_32
    :goto_32
    move v3, v1

    .line 972
    goto :goto_f

    :cond_34
    move v1, v4

    .line 963
    goto :goto_32

    .line 967
    .restart local p0
    :cond_36
    and-int/lit8 v3, p2, 0x1

    if-nez v3, :cond_32

    .line 968
    invoke-virtual {p0, v5}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    goto :goto_32
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"
    .parameter "flags"

    .prologue
    .line 842
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v1

    .line 844
    .local v1, item:Lcom/android/internal/view/menu/MenuItemImpl;
    const/4 v0, 0x0

    .line 846
    .local v0, handled:Z
    if-eqz v1, :cond_b

    .line 847
    invoke-virtual {p0, v1, p3}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    .line 850
    :cond_b
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_13

    .line 851
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 854
    :cond_13
    return v0
.end method

.method public removeGroup(I)V
    .registers 8
    .parameter "group"

    .prologue
    const/4 v5, 0x0

    .line 546
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->findGroupIndex(I)I

    move-result v0

    .line 548
    .local v0, i:I
    if-ltz v0, :cond_2b

    .line 549
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int v1, v4, v0

    .line 550
    .local v1, maxRemovable:I
    const/4 v2, 0x0

    .local v2, numRemoved:I
    move v3, v2

    .line 551
    .end local v2           #numRemoved:I
    .local v3, numRemoved:I
    :goto_11
    add-int/lit8 v2, v3, 0x1

    .end local v3           #numRemoved:I
    .restart local v2       #numRemoved:I
    if-ge v3, v1, :cond_28

    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_28

    .line 553
    invoke-direct {p0, v0, v5}, Lcom/android/internal/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    move v3, v2

    .end local v2           #numRemoved:I
    .restart local v3       #numRemoved:I
    goto :goto_11

    .line 557
    .end local v3           #numRemoved:I
    .restart local v2       #numRemoved:I
    :cond_28
    invoke-direct {p0, v5}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 559
    .end local v1           #maxRemovable:I
    .end local v2           #numRemoved:I
    :cond_2b
    return-void
.end method

.method public removeItem(I)V
    .registers 4
    .parameter "id"

    .prologue
    .line 542
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->findItemIndex(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    .line 543
    return-void
.end method

.method public removeItemAt(I)V
    .registers 3
    .parameter "index"

    .prologue
    .line 580
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    .line 581
    return-void
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .registers 7
    .parameter "inState"

    .prologue
    .line 1424
    const-string v3, "android:views"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mFrozenViewStates:Landroid/util/SparseArray;

    .line 1428
    .local v2, viewStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mMenuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    .line 1429
    .local v1, menuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;
    const/4 v0, 0x4

    .end local p0
    .local v0, i:I
    :goto_b
    if-ltz v0, :cond_29

    .line 1430
    aget-object v3, v1, v0

    if-nez v3, :cond_14

    .line 1429
    :cond_11
    :goto_11
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 1434
    :cond_14
    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->hasMenuView()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1435
    aget-object v3, v1, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    goto :goto_11

    .line 1438
    :cond_29
    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .registers 7
    .parameter "outState"

    .prologue
    .line 1406
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 1408
    .local v2, viewStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mMenuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    .line 1409
    .local v1, menuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;
    const/4 v0, 0x4

    .end local p0
    .local v0, i:I
    :goto_8
    if-ltz v0, :cond_26

    .line 1410
    aget-object v3, v1, v0

    if-nez v3, :cond_11

    .line 1409
    :cond_e
    :goto_e
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1414
    :cond_11
    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->hasMenuView()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1415
    aget-object v3, v1, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    goto :goto_e

    .line 1419
    :cond_26
    const-string v3, "android:views"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1420
    return-void
.end method

.method setActionWidthLimit(I)V
    .registers 3
    .parameter "widthLimit"

    .prologue
    .line 1231
    iput p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mActionWidthLimit:I

    .line 1232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1233
    return-void
.end method

.method public setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .line 381
    return-void
.end method

.method public setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 2
    .parameter "menuInfo"

    .prologue
    .line 1362
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1363
    return-void
.end method

.method public setDefaultShowAsAction(I)Lcom/android/internal/view/menu/MenuBuilder;
    .registers 2
    .parameter "defaultShowAsAction"

    .prologue
    .line 375
    iput p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    .line 376
    return-object p0
.end method

.method setExclusiveItemChecked(Landroid/view/MenuItem;)V
    .registers 7
    .parameter "item"

    .prologue
    .line 598
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    .line 600
    .local v2, group:I
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 601
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_b
    if-ge v3, v0, :cond_33

    .line 602
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 603
    .local v1, curItem:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, v2, :cond_21

    .line 604
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v4

    if-nez v4, :cond_24

    .line 601
    :cond_21
    :goto_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 605
    :cond_24
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 608
    if-ne v1, p1, :cond_31

    const/4 v4, 0x1

    :goto_2d
    invoke-virtual {v1, v4}, Lcom/android/internal/view/menu/MenuItemImpl;->setCheckedInt(Z)V

    goto :goto_21

    :cond_31
    const/4 v4, 0x0

    goto :goto_2d

    .line 611
    .end local v1           #curItem:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_33
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .registers 8
    .parameter "group"
    .parameter "checkable"
    .parameter "exclusive"

    .prologue
    .line 614
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 616
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_20

    .line 617
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 618
    .local v2, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_1d

    .line 619
    invoke-virtual {v2, p3}, Lcom/android/internal/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 620
    invoke-virtual {v2, p2}, Lcom/android/internal/view/menu/MenuItemImpl;->setCheckable(Z)Landroid/view/MenuItem;

    .line 616
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 623
    .end local v2           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_20
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .registers 7
    .parameter "group"
    .parameter "enabled"

    .prologue
    .line 643
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 645
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_1d

    .line 646
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 647
    .local v2, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_1a

    .line 648
    invoke-virtual {v2, p2}, Lcom/android/internal/view/menu/MenuItemImpl;->setEnabled(Z)Landroid/view/MenuItem;

    .line 645
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 651
    .end local v2           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1d
    return-void
.end method

.method public setGroupVisible(IZ)V
    .registers 8
    .parameter "group"
    .parameter "visible"

    .prologue
    .line 626
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 631
    .local v0, N:I
    const/4 v1, 0x0

    .line 632
    .local v1, changedAtLeastOneItem:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v0, :cond_22

    .line 633
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 634
    .local v3, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_1f

    .line 635
    invoke-virtual {v3, p2}, Lcom/android/internal/view/menu/MenuItemImpl;->setVisibleInt(Z)Z

    move-result v4

    if-eqz v4, :cond_1f

    const/4 v1, 0x1

    .line 632
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 639
    .end local v3           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_22
    if-eqz v1, :cond_28

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 640
    :cond_28
    return-void
.end method

.method protected setHeaderIconInt(I)Lcom/android/internal/view/menu/MenuBuilder;
    .registers 8
    .parameter "iconRes"

    .prologue
    const/4 v2, 0x0

    .line 1318
    const/4 v1, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1319
    return-object p0
.end method

.method protected setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/android/internal/view/menu/MenuBuilder;
    .registers 8
    .parameter "icon"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1306
    move-object v0, p0

    move v3, v1

    move-object v4, p1

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1307
    return-object p0
.end method

.method protected setHeaderTitleInt(I)Lcom/android/internal/view/menu/MenuBuilder;
    .registers 8
    .parameter "titleRes"

    .prologue
    const/4 v2, 0x0

    .line 1294
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1295
    return-object p0
.end method

.method protected setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/android/internal/view/menu/MenuBuilder;
    .registers 8
    .parameter "title"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 1282
    move-object v0, p0

    move-object v2, p1

    move v3, v1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1283
    return-object p0
.end method

.method protected setHeaderViewInt(Landroid/view/View;)Lcom/android/internal/view/menu/MenuBuilder;
    .registers 8
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1330
    move-object v0, p0

    move v3, v1

    move-object v4, v2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1331
    return-object p0
.end method

.method setMaxActionItems(I)V
    .registers 3
    .parameter "maxActionItems"

    .prologue
    .line 1226
    iput p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mMaxActionItems:I

    .line 1227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1228
    return-void
.end method

.method setOptionalIconsVisible(Z)V
    .registers 2
    .parameter "visible"

    .prologue
    .line 1398
    iput-boolean p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 1399
    return-void
.end method

.method public setQwertyMode(Z)V
    .registers 3
    .parameter "isQwerty"

    .prologue
    .line 738
    iput-boolean p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mQwertyMode:Z

    .line 740
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->refreshShortcuts(ZZ)V

    .line 741
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .registers 4
    .parameter "shortcutsVisible"

    .prologue
    .line 798
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    if-ne v0, p1, :cond_5

    .line 802
    :goto_4
    return-void

    .line 800
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 801
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->refreshShortcuts(ZZ)V

    goto :goto_4
.end method

.method public size()I
    .registers 2

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
