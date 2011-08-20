.class public Lcom/android/internal/widget/ActionBarView;
.super Landroid/view/ViewGroup;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ActionBarView$HomeView;,
        Lcom/android/internal/widget/ActionBarView$TabClickListener;,
        Lcom/android/internal/widget/ActionBarView$TabView;
    }
.end annotation


# static fields
.field private static final DEFAULT_CUSTOM_GRAVITY:I = 0x13

.field public static final DISPLAY_DEFAULT:I = 0x0

.field private static final DISPLAY_RELAYOUT_MASK:I = 0x1f

.field private static final TAG:Ljava/lang/String; = "ActionBarView"


# instance fields
.field private mCallback:Landroid/app/ActionBar$OnNavigationListener;

.field private final mContentHeight:I

.field private mContextView:Lcom/android/internal/widget/ActionBarContextView;

.field private mCustomNavView:Landroid/view/View;

.field private mDisplayOptions:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mHomeAsUpView:Landroid/view/View;

.field private mHomeLayout:Landroid/view/View;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconView:Landroid/widget/ImageView;

.field private mIndeterminateProgressStyle:I

.field private mIndeterminateProgressView:Landroid/widget/ProgressBar;

.field private mItemPadding:I

.field private mListNavLayout:Landroid/widget/LinearLayout;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field private mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

.field private mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

.field private final mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mNavigationMode:I

.field private mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mProgressBarPadding:I

.field private mProgressStyle:I

.field private mProgressView:Landroid/widget/ProgressBar;

.field private mShowMenu:Z

.field private mSpinner:Landroid/widget/Spinner;

.field private mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTabClickListener:Landroid/view/View$OnClickListener;

.field private mTabLayout:Landroid/widget/LinearLayout;

.field private mTabScrollView:Landroid/widget/HorizontalScrollView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleStyleRes:I

.field private mTitleView:Landroid/widget/TextView;

.field private mUserTitle:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 21
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 140
    invoke-direct/range {p0 .. p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    const/4 v4, 0x6

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 125
    new-instance v4, Lcom/android/internal/widget/ActionBarView$1;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ActionBarView$1;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/widget/ActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 137
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/widget/ActionBarView;->mTabClickListener:Landroid/view/View$OnClickListener;

    .line 143
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->setBackgroundResource(I)V

    .line 145
    sget-object v4, Lcom/android/internal/R$styleable;->ActionBar:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 147
    .local v11, a:Landroid/content/res/TypedArray;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    .line 148
    .local v12, appInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 149
    .local v17, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-virtual {v11, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 151
    const/4 v4, 0x5

    invoke-virtual {v11, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 152
    const/16 v4, 0x9

    invoke-virtual {v11, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 154
    const/4 v4, 0x6

    invoke-virtual {v11, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    move-object v4, v0

    if-nez v4, :cond_97

    .line 156
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/app/Activity;

    move v4, v0

    if-eqz v4, :cond_84

    .line 158
    :try_start_6e
    move-object/from16 v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object/from16 p2, v0

    .end local p2
    invoke-virtual/range {p2 .. p2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;
    :try_end_84
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6e .. :try_end_84} :catch_1ec

    .line 163
    :cond_84
    :goto_84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    move-object v4, v0

    if-nez v4, :cond_97

    .line 164
    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 168
    :cond_97
    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    move-object v4, v0

    if-nez v4, :cond_d8

    .line 170
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/app/Activity;

    move v4, v0

    if-eqz v4, :cond_c5

    .line 172
    :try_start_af
    move-object/from16 v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object/from16 p2, v0

    invoke-virtual/range {p2 .. p2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;
    :try_end_c5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_af .. :try_end_c5} :catch_1f7

    .line 177
    :cond_c5
    :goto_c5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    move-object v4, v0

    if-nez v4, :cond_d8

    .line 178
    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 182
    :cond_d8
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v16

    .line 184
    .local v16, inflater:Landroid/view/LayoutInflater;
    const/16 v4, 0xf

    const v5, 0x1090018

    invoke-virtual {v11, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    .line 188
    .local v15, homeResId:I
    const/4 v4, 0x0

    move-object/from16 v0, v16

    move v1, v15

    move-object/from16 v2, p0

    move v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Landroid/view/View;

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Landroid/view/View;

    move-object v4, v0

    const v5, 0x10201fe

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/widget/ActionBarView;->mHomeAsUpView:Landroid/view/View;

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Landroid/view/View;

    move-object v4, v0

    const v5, 0x102002c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/widget/ActionBarView;->mIconView:Landroid/widget/ImageView;

    .line 193
    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-virtual {v11, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ActionBarView;->mTitleStyleRes:I

    .line 194
    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-virtual {v11, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    .line 195
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v11, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ActionBarView;->mProgressStyle:I

    .line 196
    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-virtual {v11, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressStyle:I

    .line 199
    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-virtual {v11, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    .line 200
    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-virtual {v11, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    .line 202
    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-virtual {v11, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 204
    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-virtual {v11, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 205
    .local v13, customNavId:I
    if-eqz v13, :cond_19a

    .line 206
    const/4 v4, 0x0

    move-object/from16 v0, v16

    move v1, v13

    move-object/from16 v2, p0

    move v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 207
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 208
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    move v4, v0

    or-int/lit8 v4, v4, 0x10

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 211
    :cond_19a
    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-virtual {v11, v4, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    .line 213
    const/4 v4, 0x3

    invoke-virtual {v11, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/widget/ActionBarView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 215
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 217
    new-instance v4, Lcom/android/internal/view/menu/ActionMenuItem;

    const/4 v6, 0x0

    const v7, 0x102002c

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Landroid/view/View;

    move-object v4, v0

    new-instance v5, Lcom/android/internal/widget/ActionBarView$2;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ActionBarView$2;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Landroid/view/View;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Landroid/view/View;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 229
    return-void

    .line 159
    .end local v13           #customNavId:I
    .end local v15           #homeResId:I
    .end local v16           #inflater:Landroid/view/LayoutInflater;
    :catch_1ec
    move-exception v4

    move-object v14, v4

    .line 160
    .local v14, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "ActionBarView"

    const-string v5, "Activity component name not found!"

    invoke-static {v4, v5, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_84

    .line 173
    .end local v14           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1f7
    move-exception v4

    move-object v14, v4

    .line 174
    .restart local v14       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "ActionBarView"

    const-string v5, "Activity component name not found!"

    invoke-static {v4, v5, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c5
.end method

.method static synthetic access$000(Lcom/android/internal/widget/ActionBarView;)Landroid/app/ActionBar$OnNavigationListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCallback:Landroid/app/ActionBar$OnNavigationListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/view/menu/ActionMenuItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private createTabView(Landroid/app/ActionBar$Tab;)Lcom/android/internal/widget/ActionBarView$TabView;
    .registers 5
    .parameter "tab"

    .prologue
    .line 506
    new-instance v0, Lcom/android/internal/widget/ActionBarView$TabView;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/ActionBarView$TabView;-><init>(Landroid/content/Context;Landroid/app/ActionBar$Tab;)V

    .line 507
    .local v0, tabView:Lcom/android/internal/widget/ActionBarView$TabView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView$TabView;->setFocusable(Z)V

    .line 509
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabClickListener:Landroid/view/View$OnClickListener;

    if-nez v1, :cond_19

    .line 510
    new-instance v1, Lcom/android/internal/widget/ActionBarView$TabClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/widget/ActionBarView$TabClickListener;-><init>(Lcom/android/internal/widget/ActionBarView;Lcom/android/internal/widget/ActionBarView$1;)V

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabClickListener:Landroid/view/View$OnClickListener;

    .line 512
    :cond_19
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    return-object v0
.end method

.method private ensureTabsExist()V
    .registers 5

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Landroid/widget/HorizontalScrollView;

    if-nez v0, :cond_2b

    .line 466
    new-instance v0, Landroid/widget/HorizontalScrollView;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Landroid/widget/HorizontalScrollView;

    .line 467
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Landroid/widget/HorizontalScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 468
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102f4

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 470
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 472
    :cond_2b
    return-void
.end method

.method private initTitle()V
    .registers 5

    .prologue
    .line 571
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 572
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x1090019

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 573
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v2, 0x1020201

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 574
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v2, 0x1020202

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 576
    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleStyleRes:I

    if-eqz v1, :cond_3b

    .line 577
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleStyleRes:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 579
    :cond_3b
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_46

    .line 580
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    :cond_46
    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    if-eqz v1, :cond_53

    .line 584
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 586
    :cond_53
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_64

    .line 587
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 591
    :cond_64
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 592
    return-void
.end method

.method private measureChildView(Landroid/view/View;III)I
    .registers 6
    .parameter "child"
    .parameter "availableWidth"
    .parameter "childSpecHeight"
    .parameter "spacing"

    .prologue
    .line 764
    const/high16 v0, -0x8000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, p3}, Landroid/view/View;->measure(II)V

    .line 767
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p2, v0

    .line 768
    sub-int/2addr p2, p4

    .line 770
    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private positionChild(Landroid/view/View;III)I
    .registers 10
    .parameter "child"
    .parameter "x"
    .parameter "y"
    .parameter "contentHeight"

    .prologue
    .line 886
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 887
    .local v2, childWidth:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 888
    .local v0, childHeight:I
    sub-int v3, p4, v0

    div-int/lit8 v3, v3, 0x2

    add-int v1, p3, v3

    .line 890
    .local v1, childTop:I
    add-int v3, p2, v2

    add-int v4, v1, v0

    invoke-virtual {p1, p2, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 892
    return v2
.end method

.method private positionChildInverse(Landroid/view/View;III)I
    .registers 10
    .parameter "child"
    .parameter "x"
    .parameter "y"
    .parameter "contentHeight"

    .prologue
    .line 896
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 897
    .local v2, childWidth:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 898
    .local v0, childHeight:I
    sub-int v3, p4, v0

    div-int/lit8 v3, v3, 0x2

    add-int v1, p3, v3

    .line 900
    .local v1, childTop:I
    sub-int v3, p2, v2

    add-int v4, v1, v0

    invoke-virtual {p1, v3, v1, p2, v4}, Landroid/view/View;->layout(IIII)V

    .line 902
    return v2
.end method

.method private setTitleImpl(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "title"

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 358
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_22

    .line 359
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const/16 v1, 0x8

    :goto_1f
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 363
    :cond_22
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    if-eqz v0, :cond_2b

    .line 364
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 366
    :cond_2b
    return-void

    .line 360
    :cond_2c
    const/4 v1, 0x0

    goto :goto_1f
.end method


# virtual methods
.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .registers 6
    .parameter "tab"
    .parameter "position"
    .parameter "setSelected"

    .prologue
    .line 526
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->ensureTabsExist()V

    .line 527
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->createTabView(Landroid/app/ActionBar$Tab;)Lcom/android/internal/widget/ActionBarView$TabView;

    move-result-object v0

    .line 528
    .local v0, tabView:Lcom/android/internal/widget/ActionBarView$TabView;
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 529
    if-eqz p3, :cond_12

    .line 530
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView$TabView;->setSelected(Z)V

    .line 532
    :cond_12
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .registers 5
    .parameter "tab"
    .parameter "setSelected"

    .prologue
    .line 517
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->ensureTabsExist()V

    .line 518
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->createTabView(Landroid/app/ActionBar$Tab;)Lcom/android/internal/widget/ActionBarView$TabView;

    move-result-object v0

    .line 519
    .local v0, tabView:Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 520
    if-eqz p2, :cond_12

    .line 521
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView$TabView;->setSelected(Z)V

    .line 523
    :cond_12
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    .line 550
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Landroid/app/ActionBar$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public getCustomNavigationView()Landroid/view/View;
    .registers 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayOptions()I
    .registers 2

    .prologue
    .line 502
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    return v0
.end method

.method public getDropdownAdapter()Landroid/widget/SpinnerAdapter;
    .registers 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method public getDropdownSelectedPosition()I
    .registers 2

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getNavigationMode()I
    .registers 2

    .prologue
    .line 498
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hideOverflowMenu()Z
    .registers 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v0, :cond_b

    .line 295
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuView;->hideOverflowMenu()Z

    move-result v0

    .line 297
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public initIndeterminateProgress()V
    .registers 6

    .prologue
    .line 239
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressStyle:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 241
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const v1, 0x10202aa

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 242
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 243
    return-void
.end method

.method public initProgress()V
    .registers 6

    .prologue
    .line 232
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/internal/widget/ActionBarView;->mProgressStyle:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    .line 233
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const v1, 0x10202ab

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 234
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 235
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 236
    return-void
.end method

.method public isOverflowMenuOpen()Z
    .registers 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v0, :cond_b

    .line 309
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuView;->isOverflowMenuOpen()Z

    move-result v0

    .line 311
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isOverflowMenuShowing()Z
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v0, :cond_b

    .line 302
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuView;->isOverflowMenuShowing()Z

    move-result v0

    .line 304
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isOverflowReserved()Z
    .registers 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 555
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 557
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 559
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_2a

    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2a

    .line 560
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 561
    .local v0, parent:Landroid/view/ViewParent;
    if-eq v0, p0, :cond_2a

    .line 562
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_25

    .line 563
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #parent:Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 565
    :cond_25
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 568
    :cond_2a
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 34
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 775
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v19

    .line 776
    .local v19, x:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v21

    .line 777
    .local v21, y:I
    sub-int v23, p5, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v24

    sub-int v23, v23, v24

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v24

    sub-int v8, v23, v24

    .line 779
    .local v8, contentHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getVisibility()I

    move-result v23

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3d

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v19

    move/from16 v3, v21

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v23

    add-int v19, v19, v23

    .line 783
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1ca

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v23

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1ca

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x8

    if-eqz v23, :cond_1ca

    const/16 v23, 0x1

    move/from16 v17, v23

    .line 785
    .local v17, showTitle:Z
    :goto_65
    if-eqz v17, :cond_7c

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v19

    move/from16 v3, v21

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v23

    add-int v19, v19, v23

    .line 789
    :cond_7c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_2b0

    .line 806
    :cond_85
    :goto_85
    :pswitch_85
    sub-int v23, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v24

    sub-int v13, v23, v24

    .line 807
    .local v13, menuLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v23, v0

    if-eqz v23, :cond_b2

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move v2, v13

    move/from16 v3, v21

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/ActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/view/menu/ActionMenuView;->getMeasuredWidth()I

    move-result v23

    sub-int v13, v13, v23

    .line 812
    :cond_b2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v23, v0

    if-eqz v23, :cond_e9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v23

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_e9

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move v2, v13

    move/from16 v3, v21

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/ActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v23

    sub-int v13, v13, v23

    .line 818
    :cond_e9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v23, v0

    if-eqz v23, :cond_17e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x10

    if-eqz v23, :cond_17e

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 820
    .local v12, lp:Landroid/view/ViewGroup$LayoutParams;
    move-object v0, v12

    instance-of v0, v0, Landroid/app/ActionBar$LayoutParams;

    move/from16 v23, v0

    if-eqz v23, :cond_232

    check-cast v12, Landroid/app/ActionBar$LayoutParams;

    .end local v12           #lp:Landroid/view/ViewGroup$LayoutParams;
    move-object v5, v12

    .line 823
    .local v5, ablp:Landroid/app/ActionBar$LayoutParams;
    :goto_10f
    if-eqz v5, :cond_238

    move-object v0, v5

    iget v0, v0, Landroid/app/ActionBar$LayoutParams;->gravity:I

    move/from16 v23, v0

    move/from16 v9, v23

    .line 824
    .local v9, gravity:I
    :goto_118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 826
    .local v14, navWidth:I
    const/16 v18, 0x0

    .line 827
    .local v18, topMargin:I
    const/4 v6, 0x0

    .line 828
    .local v6, bottomMargin:I
    if-eqz v5, :cond_13c

    .line 829
    move-object v0, v5

    iget v0, v0, Landroid/app/ActionBar$LayoutParams;->leftMargin:I

    move/from16 v23, v0

    add-int v19, v19, v23

    .line 830
    move-object v0, v5

    iget v0, v0, Landroid/app/ActionBar$LayoutParams;->rightMargin:I

    move/from16 v23, v0

    sub-int v13, v13, v23

    .line 831
    move-object v0, v5

    iget v0, v0, Landroid/app/ActionBar$LayoutParams;->topMargin:I

    move/from16 v18, v0

    .line 832
    iget v6, v5, Landroid/app/ActionBar$LayoutParams;->bottomMargin:I

    .line 835
    :cond_13c
    and-int/lit8 v11, v9, 0x7

    .line 837
    .local v11, hgravity:I
    const/16 v23, 0x1

    move v0, v11

    move/from16 v1, v23

    if-ne v0, v1, :cond_15d

    .line 838
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mRight:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mLeft:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    sub-int v23, v23, v14

    div-int/lit8 v7, v23, 0x2

    .line 839
    .local v7, centeredLeft:I
    move v0, v7

    move/from16 v1, v19

    if-ge v0, v1, :cond_23e

    .line 840
    const/4 v11, 0x3

    .line 846
    .end local v7           #centeredLeft:I
    :cond_15d
    :goto_15d
    const/16 v20, 0x0

    .line 847
    .local v20, xpos:I
    packed-switch v11, :pswitch_data_2ba

    .line 859
    :goto_162
    :pswitch_162
    const/16 v22, 0x0

    .line 860
    .local v22, ypos:I
    and-int/lit8 v23, v9, 0x70

    sparse-switch v23, :sswitch_data_2c8

    .line 874
    :goto_169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v20

    move/from16 v3, v22

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v23

    add-int v19, v19, v23

    .line 877
    .end local v5           #ablp:Landroid/app/ActionBar$LayoutParams;
    .end local v6           #bottomMargin:I
    .end local v9           #gravity:I
    .end local v11           #hgravity:I
    .end local v14           #navWidth:I
    .end local v18           #topMargin:I
    .end local v20           #xpos:I
    .end local v22           #ypos:I
    :cond_17e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1c9

    .line 878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v23

    div-int/lit8 v10, v23, 0x2

    .line 880
    .local v10, halfProgressHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    move/from16 v24, v0

    move v0, v10

    neg-int v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v27

    add-int v26, v26, v27

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ProgressBar;->layout(IIII)V

    .line 883
    .end local v10           #halfProgressHeight:I
    :cond_1c9
    return-void

    .line 783
    .end local v13           #menuLeft:I
    .end local v17           #showTitle:Z
    :cond_1ca
    const/16 v23, 0x0

    move/from16 v17, v23

    goto/16 :goto_65

    .line 793
    .restart local v17       #showTitle:Z
    :pswitch_1d0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    if-eqz v23, :cond_85

    .line 794
    if-eqz v17, :cond_1e2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v23, v0

    add-int v19, v19, v23

    .line 795
    :cond_1e2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v19

    move/from16 v3, v21

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v24, v0

    add-int v23, v23, v24

    add-int v19, v19, v23

    goto/16 :goto_85

    .line 799
    :pswitch_201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v23, v0

    if-eqz v23, :cond_85

    .line 800
    if-eqz v17, :cond_213

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v23, v0

    add-int v19, v19, v23

    .line 801
    :cond_213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v19

    move/from16 v3, v21

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v24, v0

    add-int v23, v23, v24

    add-int v19, v19, v23

    goto/16 :goto_85

    .line 820
    .restart local v12       #lp:Landroid/view/ViewGroup$LayoutParams;
    .restart local v13       #menuLeft:I
    :cond_232
    const/16 v23, 0x0

    move-object/from16 v5, v23

    goto/16 :goto_10f

    .line 823
    .end local v12           #lp:Landroid/view/ViewGroup$LayoutParams;
    .restart local v5       #ablp:Landroid/app/ActionBar$LayoutParams;
    :cond_238
    const/16 v23, 0x13

    move/from16 v9, v23

    goto/16 :goto_118

    .line 841
    .restart local v6       #bottomMargin:I
    .restart local v7       #centeredLeft:I
    .restart local v9       #gravity:I
    .restart local v11       #hgravity:I
    .restart local v14       #navWidth:I
    .restart local v18       #topMargin:I
    :cond_23e
    add-int v23, v7, v14

    move/from16 v0, v23

    move v1, v13

    if-le v0, v1, :cond_15d

    .line 842
    const/4 v11, 0x5

    goto/16 :goto_15d

    .line 849
    .end local v7           #centeredLeft:I
    .restart local v20       #xpos:I
    :pswitch_248
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mRight:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mLeft:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    sub-int v23, v23, v14

    div-int/lit8 v20, v23, 0x2

    .line 850
    goto/16 :goto_162

    .line 852
    :pswitch_25c
    move/from16 v20, v19

    .line 853
    goto/16 :goto_162

    .line 855
    :pswitch_260
    sub-int v20, v13, v14

    goto/16 :goto_162

    .line 862
    .restart local v22       #ypos:I
    :sswitch_264
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mTop:I

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v24

    add-int v16, v23, v24

    .line 863
    .local v16, paddedTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mBottom:I

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v24

    sub-int v15, v23, v24

    .line 864
    .local v15, paddedBottom:I
    sub-int v23, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    sub-int v23, v23, v24

    div-int/lit8 v22, v23, 0x2

    .line 865
    goto/16 :goto_169

    .line 867
    .end local v15           #paddedBottom:I
    .end local v16           #paddedTop:I
    :sswitch_28e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v23

    add-int v22, v23, v18

    .line 868
    goto/16 :goto_169

    .line 870
    :sswitch_296
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getHeight()I

    move-result v23

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v24

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    sub-int v23, v23, v24

    sub-int v22, v23, v6

    goto/16 :goto_169

    .line 789
    :pswitch_data_2b0
    .packed-switch 0x0
        :pswitch_85
        :pswitch_1d0
        :pswitch_201
    .end packed-switch

    .line 847
    :pswitch_data_2ba
    .packed-switch 0x1
        :pswitch_248
        :pswitch_162
        :pswitch_25c
        :pswitch_162
        :pswitch_260
    .end packed-switch

    .line 860
    :sswitch_data_2c8
    .sparse-switch
        0x10 -> :sswitch_264
        0x30 -> :sswitch_28e
        0x50 -> :sswitch_296
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .registers 43
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 609
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v35

    .line 610
    .local v35, widthMode:I
    const/high16 v36, 0x4000

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_34

    .line 611
    new-instance v36, Ljava/lang/IllegalStateException;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " can only be used "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, "with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v36

    .line 615
    :cond_34
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 616
    .local v15, heightMode:I
    const/high16 v36, -0x8000

    move v0, v15

    move/from16 v1, v36

    if-eq v0, v1, :cond_67

    .line 617
    new-instance v36, Ljava/lang/IllegalStateException;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " can only be used "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, "with android:layout_height=\"wrap_content\""

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v36

    .line 621
    :cond_67
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 623
    .local v8, contentWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v36, v0

    if-lez v36, :cond_2be

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v36, v0

    move/from16 v24, v36

    .line 626
    .local v24, maxHeight:I
    :goto_7b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v36

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v37

    add-int v34, v36, v37

    .line 627
    .local v34, verticalPadding:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v27

    .line 628
    .local v27, paddingLeft:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v28

    .line 629
    .local v28, paddingRight:I
    sub-int v14, v24, v34

    .line 630
    .local v14, height:I
    const/high16 v36, -0x8000

    move v0, v14

    move/from16 v1, v36

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 632
    .local v7, childSpecHeight:I
    sub-int v36, v8, v27

    sub-int v6, v36, v28

    .line 633
    .local v6, availableWidth:I
    div-int/lit8 v21, v6, 0x2

    .line 634
    .local v21, leftOfCenter:I
    move/from16 v29, v21

    .line 636
    .local v29, rightOfCenter:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Landroid/view/View;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getVisibility()I

    move-result v36

    const/16 v37, 0x8

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_e7

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Landroid/view/View;

    move-object/from16 v36, v0

    const/high16 v37, -0x8000

    move v0, v6

    move/from16 v1, v37

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v37

    const/high16 v38, 0x4000

    move v0, v14

    move/from16 v1, v38

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v38

    invoke-virtual/range {v36 .. v38}, Landroid/view/View;->measure(II)V

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Landroid/view/View;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    .line 640
    .local v17, homeWidth:I
    const/16 v36, 0x0

    sub-int v37, v6, v17

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 641
    const/16 v36, 0x0

    sub-int v37, v6, v17

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 644
    .end local v17           #homeWidth:I
    :cond_e7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v36, v0

    if-eqz v36, :cond_115

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move v2, v6

    move v3, v7

    move/from16 v4, v37

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v6

    .line 647
    const/16 v36, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/view/menu/ActionMenuView;->getMeasuredWidth()I

    move-result v37

    sub-int v37, v29, v37

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v29

    .line 650
    :cond_115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v36, v0

    if-eqz v36, :cond_2c6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v36

    const/16 v37, 0x8

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_2c6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    move/from16 v36, v0

    and-int/lit8 v36, v36, 0x8

    if-eqz v36, :cond_2c6

    const/16 v36, 0x1

    move/from16 v30, v36

    .line 652
    .local v30, showTitle:Z
    :goto_13d
    if-eqz v30, :cond_165

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move v2, v6

    move v3, v7

    move/from16 v4, v37

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v6

    .line 654
    const/16 v36, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v37

    sub-int v37, v21, v37

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 657
    :cond_165
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    move/from16 v36, v0

    packed-switch v36, :pswitch_data_42a

    .line 686
    :cond_16e
    :goto_16e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v36, v0

    if-eqz v36, :cond_1ae

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v36

    const/16 v37, 0x8

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_1ae

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move v2, v6

    move v3, v7

    move/from16 v4, v37

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v6

    .line 690
    const/16 v36, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v37

    sub-int v37, v29, v37

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v29

    .line 694
    :cond_1ae
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    move/from16 v36, v0

    and-int/lit8 v36, v36, 0x10

    if-eqz v36, :cond_290

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v36, v0

    if-eqz v36, :cond_290

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v36

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    .line 696
    .local v23, lp:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/app/ActionBar$LayoutParams;

    move/from16 v36, v0

    if-eqz v36, :cond_394

    move-object/from16 v0, v23

    check-cast v0, Landroid/app/ActionBar$LayoutParams;

    move-object/from16 v25, v0

    move-object/from16 v5, v25

    .line 699
    .local v5, ablp:Landroid/app/ActionBar$LayoutParams;
    :goto_1e2
    const/16 v18, 0x0

    .line 700
    .local v18, horizontalMargin:I
    const/16 v33, 0x0

    .line 701
    .local v33, verticalMargin:I
    if-eqz v5, :cond_200

    .line 702
    move-object v0, v5

    iget v0, v0, Landroid/app/ActionBar$LayoutParams;->leftMargin:I

    move/from16 v36, v0

    move-object v0, v5

    iget v0, v0, Landroid/app/ActionBar$LayoutParams;->rightMargin:I

    move/from16 v37, v0

    add-int v18, v36, v37

    .line 703
    move-object v0, v5

    iget v0, v0, Landroid/app/ActionBar$LayoutParams;->topMargin:I

    move/from16 v36, v0

    move-object v0, v5

    iget v0, v0, Landroid/app/ActionBar$LayoutParams;->bottomMargin:I

    move/from16 v37, v0

    add-int v33, v36, v37

    .line 709
    :cond_200
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v36, v0

    if-gtz v36, :cond_39a

    .line 710
    const/high16 v11, -0x8000

    .line 715
    .local v11, customNavHeightMode:I
    :goto_20a
    const/16 v36, 0x0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v37, v0

    if-ltz v37, :cond_3b3

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v37, v0

    move/from16 v0, v37

    move v1, v14

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v37

    :goto_221
    sub-int v37, v37, v33

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 718
    .local v10, customNavHeight:I
    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v36, v0

    const/16 v37, -0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_3b7

    const/high16 v36, 0x4000

    move/from16 v13, v36

    .line 720
    .local v13, customNavWidthMode:I
    :goto_239
    const/16 v36, 0x0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v37, v0

    if-ltz v37, :cond_3bd

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v37, v0

    move/from16 v0, v37

    move v1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v37

    :goto_250
    sub-int v37, v37, v18

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 723
    .local v12, customNavWidth:I
    if-eqz v5, :cond_3c1

    move-object v0, v5

    iget v0, v0, Landroid/app/ActionBar$LayoutParams;->gravity:I

    move/from16 v36, v0

    :goto_25d
    and-int/lit8 v16, v36, 0x7

    .line 728
    .local v16, hgrav:I
    const/16 v36, 0x1

    move/from16 v0, v16

    move/from16 v1, v36

    if-ne v0, v1, :cond_27f

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v36, v0

    const/16 v37, -0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_27f

    .line 729
    move/from16 v0, v21

    move/from16 v1, v29

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v36

    mul-int/lit8 v12, v36, 0x2

    .line 732
    :cond_27f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v36, v0

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v37

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v38

    invoke-virtual/range {v36 .. v38}, Landroid/view/View;->measure(II)V

    .line 737
    .end local v5           #ablp:Landroid/app/ActionBar$LayoutParams;
    .end local v10           #customNavHeight:I
    .end local v11           #customNavHeightMode:I
    .end local v12           #customNavWidth:I
    .end local v13           #customNavWidthMode:I
    .end local v16           #hgrav:I
    .end local v18           #horizontalMargin:I
    .end local v23           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v33           #verticalMargin:I
    :cond_290
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v36, v0

    if-gtz v36, :cond_420

    .line 738
    const/16 v25, 0x0

    .line 739
    .local v25, measuredHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getChildCount()I

    move-result v9

    .line 740
    .local v9, count:I
    const/16 v19, 0x0

    .local v19, i:I
    :goto_2a0
    move/from16 v0, v19

    move v1, v9

    if-ge v0, v1, :cond_3c5

    .line 741
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    .line 742
    .local v32, v:Landroid/view/View;
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredHeight()I

    move-result v36

    add-int v26, v36, v34

    .line 743
    .local v26, paddedViewHeight:I
    move/from16 v0, v26

    move/from16 v1, v25

    if-le v0, v1, :cond_2bb

    .line 744
    move/from16 v25, v26

    .line 740
    :cond_2bb
    add-int/lit8 v19, v19, 0x1

    goto :goto_2a0

    .line 623
    .end local v6           #availableWidth:I
    .end local v7           #childSpecHeight:I
    .end local v9           #count:I
    .end local v14           #height:I
    .end local v19           #i:I
    .end local v21           #leftOfCenter:I
    .end local v24           #maxHeight:I
    .end local v25           #measuredHeight:I
    .end local v26           #paddedViewHeight:I
    .end local v27           #paddingLeft:I
    .end local v28           #paddingRight:I
    .end local v29           #rightOfCenter:I
    .end local v30           #showTitle:Z
    .end local v32           #v:Landroid/view/View;
    .end local v34           #verticalPadding:I
    :cond_2be
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v36

    move/from16 v24, v36

    goto/16 :goto_7b

    .line 650
    .restart local v6       #availableWidth:I
    .restart local v7       #childSpecHeight:I
    .restart local v14       #height:I
    .restart local v21       #leftOfCenter:I
    .restart local v24       #maxHeight:I
    .restart local v27       #paddingLeft:I
    .restart local v28       #paddingRight:I
    .restart local v29       #rightOfCenter:I
    .restart local v34       #verticalPadding:I
    :cond_2c6
    const/16 v36, 0x0

    move/from16 v30, v36

    goto/16 :goto_13d

    .line 659
    .restart local v30       #showTitle:Z
    :pswitch_2cc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v36, v0

    if-eqz v36, :cond_16e

    .line 660
    if-eqz v30, :cond_327

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v36, v0

    mul-int/lit8 v36, v36, 0x2

    move/from16 v20, v36

    .line 661
    .local v20, itemPaddingSize:I
    :goto_2e0
    const/16 v36, 0x0

    sub-int v37, v6, v20

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 662
    const/16 v36, 0x0

    sub-int v37, v21, v20

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v36, v0

    const/high16 v37, -0x8000

    move v0, v6

    move/from16 v1, v37

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v37

    const/high16 v38, 0x4000

    move v0, v14

    move/from16 v1, v38

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v38

    invoke-virtual/range {v36 .. v38}, Landroid/widget/LinearLayout;->measure(II)V

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v22

    .line 667
    .local v22, listNavWidth:I
    const/16 v36, 0x0

    sub-int v37, v6, v22

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 668
    const/16 v36, 0x0

    sub-int v37, v21, v22

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 669
    goto/16 :goto_16e

    .line 660
    .end local v20           #itemPaddingSize:I
    .end local v22           #listNavWidth:I
    :cond_327
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v36, v0

    move/from16 v20, v36

    goto :goto_2e0

    .line 672
    :pswitch_330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v36, v0

    if-eqz v36, :cond_16e

    .line 673
    if-eqz v30, :cond_38b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v36, v0

    mul-int/lit8 v36, v36, 0x2

    move/from16 v20, v36

    .line 674
    .restart local v20       #itemPaddingSize:I
    :goto_344
    const/16 v36, 0x0

    sub-int v37, v6, v20

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 675
    const/16 v36, 0x0

    sub-int v37, v21, v20

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v36, v0

    const/high16 v37, -0x8000

    move v0, v6

    move/from16 v1, v37

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v37

    const/high16 v38, 0x4000

    move v0, v14

    move/from16 v1, v38

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v38

    invoke-virtual/range {v36 .. v38}, Landroid/widget/HorizontalScrollView;->measure(II)V

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v31

    .line 680
    .local v31, tabWidth:I
    const/16 v36, 0x0

    sub-int v37, v6, v31

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 681
    const/16 v36, 0x0

    sub-int v37, v21, v31

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v21

    goto/16 :goto_16e

    .line 673
    .end local v20           #itemPaddingSize:I
    .end local v31           #tabWidth:I
    :cond_38b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v36, v0

    move/from16 v20, v36

    goto :goto_344

    .line 696
    .restart local v23       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_394
    const/16 v36, 0x0

    move-object/from16 v5, v36

    goto/16 :goto_1e2

    .line 712
    .restart local v5       #ablp:Landroid/app/ActionBar$LayoutParams;
    .restart local v18       #horizontalMargin:I
    .restart local v33       #verticalMargin:I
    :cond_39a
    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v36, v0

    const/16 v37, -0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_3ae

    const/high16 v36, 0x4000

    move/from16 v11, v36

    .restart local v11       #customNavHeightMode:I
    :goto_3ac
    goto/16 :goto_20a

    .end local v11           #customNavHeightMode:I
    :cond_3ae
    const/high16 v36, -0x8000

    move/from16 v11, v36

    goto :goto_3ac

    .restart local v11       #customNavHeightMode:I
    :cond_3b3
    move/from16 v37, v14

    .line 715
    goto/16 :goto_221

    .line 718
    .restart local v10       #customNavHeight:I
    :cond_3b7
    const/high16 v36, -0x8000

    move/from16 v13, v36

    goto/16 :goto_239

    .restart local v13       #customNavWidthMode:I
    :cond_3bd
    move/from16 v37, v6

    .line 720
    goto/16 :goto_250

    .line 723
    .restart local v12       #customNavWidth:I
    :cond_3c1
    const/16 v36, 0x13

    goto/16 :goto_25d

    .line 747
    .end local v5           #ablp:Landroid/app/ActionBar$LayoutParams;
    .end local v10           #customNavHeight:I
    .end local v11           #customNavHeightMode:I
    .end local v12           #customNavWidth:I
    .end local v13           #customNavWidthMode:I
    .end local v18           #horizontalMargin:I
    .end local v23           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v33           #verticalMargin:I
    .restart local v9       #count:I
    .restart local v19       #i:I
    .restart local v25       #measuredHeight:I
    :cond_3c5
    move-object/from16 v0, p0

    move v1, v8

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 752
    .end local v9           #count:I
    .end local v19           #i:I
    .end local v25           #measuredHeight:I
    :goto_3cd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    move-object/from16 v36, v0

    if-eqz v36, :cond_3e2

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    move-object/from16 v36, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v37

    invoke-virtual/range {v36 .. v37}, Lcom/android/internal/widget/ActionBarContextView;->setHeight(I)V

    .line 756
    :cond_3e2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v36, v0

    if-eqz v36, :cond_41f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v36

    const/16 v37, 0x8

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_41f

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    move/from16 v37, v0

    mul-int/lit8 v37, v37, 0x2

    sub-int v37, v8, v37

    const/high16 v38, 0x4000

    invoke-static/range {v37 .. v38}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v37

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v38

    const/high16 v39, -0x8000

    invoke-static/range {v38 .. v39}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v38

    invoke-virtual/range {v36 .. v38}, Landroid/widget/ProgressBar;->measure(II)V

    .line 761
    :cond_41f
    return-void

    .line 749
    :cond_420
    move-object/from16 v0, p0

    move v1, v8

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    goto :goto_3cd

    .line 657
    nop

    :pswitch_data_42a
    .packed-switch 0x1
        :pswitch_2cc
        :pswitch_330
    .end packed-switch
.end method

.method public openOverflowMenu()V
    .registers 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v0, :cond_9

    .line 281
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuView;->openOverflowMenu()V

    .line 283
    :cond_9
    return-void
.end method

.method public postShowOverflowMenu()V
    .registers 2

    .prologue
    .line 286
    new-instance v0, Lcom/android/internal/widget/ActionBarView$3;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarView$3;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->post(Ljava/lang/Runnable;)Z

    .line 291
    return-void
.end method

.method public removeAllTabs()V
    .registers 2

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    .line 542
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 544
    :cond_9
    return-void
.end method

.method public removeTabAt(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    .line 536
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 538
    :cond_9
    return-void
.end method

.method public setCallback(Landroid/app/ActionBar$OnNavigationListener;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mCallback:Landroid/app/ActionBar$OnNavigationListener;

    .line 253
    return-void
.end method

.method public setContextView(Lcom/android/internal/widget/ActionBarContextView;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 604
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    .line 605
    return-void
.end method

.method public setCustomNavigationView(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 319
    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_21

    const/4 v1, 0x1

    move v0, v1

    .line 320
    .local v0, showCustom:Z
    :goto_8
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_13

    if-eqz v0, :cond_13

    .line 321
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 323
    :cond_13
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 324
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_20

    if-eqz v0, :cond_20

    .line 325
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 327
    :cond_20
    return-void

    .line 319
    .end local v0           #showCustom:Z
    :cond_21
    const/4 v1, 0x0

    move v0, v1

    goto :goto_8
.end method

.method public setDisplayOptions(I)V
    .registers 9
    .parameter "options"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 383
    iget v3, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    xor-int v0, p1, v3

    .line 384
    .local v0, flagsChanged:I
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 385
    and-int/lit8 v3, v0, 0x1f

    if-eqz v3, :cond_71

    .line 386
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_5c

    move v2, v5

    .line 387
    .local v2, vis:I
    :goto_12
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 389
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_25

    .line 390
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mHomeAsUpView:Landroid/view/View;

    and-int/lit8 v4, p1, 0x4

    if-eqz v4, :cond_5e

    move v4, v5

    :goto_22
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 394
    :cond_25
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_3c

    .line 395
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_60

    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_60

    const/4 v3, 0x1

    move v1, v3

    .line 396
    .local v1, logoVis:Z
    :goto_33
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_62

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    :goto_39
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 399
    .end local v1           #logoVis:Z
    :cond_3c
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_47

    .line 400
    and-int/lit8 v3, p1, 0x8

    if-eqz v3, :cond_65

    .line 401
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->initTitle()V

    .line 407
    :cond_47
    :goto_47
    and-int/lit8 v3, v0, 0x10

    if-eqz v3, :cond_58

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v3, :cond_58

    .line 408
    and-int/lit8 v3, p1, 0x10

    if-eqz v3, :cond_6b

    .line 409
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 415
    :cond_58
    :goto_58
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->requestLayout()V

    .line 419
    .end local v2           #vis:I
    :goto_5b
    return-void

    :cond_5c
    move v2, v6

    .line 386
    goto :goto_12

    .restart local v2       #vis:I
    :cond_5e
    move v4, v6

    .line 390
    goto :goto_22

    :cond_60
    move v1, v5

    .line 395
    goto :goto_33

    .line 396
    .restart local v1       #logoVis:Z
    :cond_62
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_39

    .line 403
    .end local v1           #logoVis:Z
    :cond_65
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_47

    .line 411
    :cond_6b
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_58

    .line 417
    .end local v2           #vis:I
    :cond_71
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->invalidate()V

    goto :goto_5b
.end method

.method public setDropdownAdapter(Landroid/widget/SpinnerAdapter;)V
    .registers 3
    .parameter "adapter"

    .prologue
    .line 475
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    .line 476
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_b

    .line 477
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 479
    :cond_b
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 487
    return-void
.end method

.method public setMenu(Landroid/view/Menu;)V
    .registers 8
    .parameter "menu"

    .prologue
    .line 256
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne p1, v4, :cond_5

    .line 270
    :goto_4
    return-void

    .line 258
    :cond_5
    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/menu/MenuBuilder;

    move-object v1, v0

    .line 259
    .local v1, builder:Lcom/android/internal/view/menu/MenuBuilder;
    iput-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 260
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v4, :cond_14

    .line 261
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 263
    :cond_14
    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/view/menu/MenuBuilder;->getMenuView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/ActionMenuView;

    .line 265
    .local v3, menuView:Lcom/android/internal/view/menu/ActionMenuView;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v2, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 267
    .local v2, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v3, v2}, Lcom/android/internal/view/menu/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 269
    iput-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    goto :goto_4
.end method

.method public setNavigationMode(I)V
    .registers 8
    .parameter "mode"

    .prologue
    const/4 v5, 0x0

    .line 422
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 423
    .local v0, oldMode:I
    if-eq p1, v0, :cond_10

    .line 424
    packed-switch v0, :pswitch_data_7a

    .line 436
    :cond_8
    :goto_8
    packed-switch p1, :pswitch_data_82

    .line 459
    :goto_b
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 460
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->requestLayout()V

    .line 462
    :cond_10
    return-void

    .line 426
    :pswitch_11
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_8

    .line 427
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_8

    .line 431
    :pswitch_1b
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_8

    .line 432
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_8

    .line 438
    :pswitch_25
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    if-nez v2, :cond_53

    .line 439
    new-instance v2, Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const v4, 0x10102d7

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    .line 441
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const v4, 0x10102f4

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    .line 443
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 445
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 446
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 448
    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_53
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    if-eq v2, v3, :cond_64

    .line 449
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 451
    :cond_64
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 452
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto :goto_b

    .line 455
    :pswitch_71
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->ensureTabsExist()V

    .line 456
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto :goto_b

    .line 424
    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_11
        :pswitch_1b
    .end packed-switch

    .line 436
    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_25
        :pswitch_71
    .end packed-switch
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 6
    .parameter "subtitle"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 373
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 374
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_2c

    .line 375
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_2d

    move v1, v2

    :goto_13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f

    move v1, v3

    :goto_29
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 380
    :cond_2c
    return-void

    :cond_2d
    move v1, v3

    .line 376
    goto :goto_13

    :cond_2f
    move v1, v2

    .line 377
    goto :goto_29
.end method

.method public setTabSelected(I)V
    .registers 6
    .parameter "position"

    .prologue
    .line 595
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->ensureTabsExist()V

    .line 596
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 597
    .local v2, tabCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v2, :cond_1d

    .line 598
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 599
    .local v0, child:Landroid/view/View;
    if-ne v1, p1, :cond_1b

    const/4 v3, 0x1

    :goto_15
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 597
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 599
    :cond_1b
    const/4 v3, 0x0

    goto :goto_15

    .line 601
    .end local v0           #child:Landroid/view/View;
    :cond_1d
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "title"

    .prologue
    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mUserTitle:Z

    .line 341
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 342
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "title"

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mUserTitle:Z

    if-nez v0, :cond_7

    .line 352
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 354
    :cond_7
    return-void
.end method

.method public showOverflowMenu()Z
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v0, :cond_b

    .line 274
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuView;->showOverflowMenu()Z

    move-result v0

    .line 276
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4
    .parameter "child"
    .parameter "callback"

    .prologue
    .line 248
    const/4 v0, 0x0

    return-object v0
.end method
