.class Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;
.super Landroid/widget/ArrayAdapter;
.source "WebsiteSettingsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/preferences/WebsiteSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SiteAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$UpdateFromBookmarksDbTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private mCurrentSite:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

.field private mDefaultIcon:Landroid/graphics/Bitmap;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLocationAllowedIcon:Landroid/graphics/Bitmap;

.field private mLocationDisallowedIcon:Landroid/graphics/Bitmap;

.field private mResource:I

.field private mUsageEmptyIcon:Landroid/graphics/Bitmap;

.field private mUsageHighIcon:Landroid/graphics/Bitmap;

.field private mUsageLowIcon:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/android/browser/preferences/WebsiteSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/android/browser/preferences/WebsiteSettingsFragment;Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "rsc"

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;-><init>(Lcom/android/browser/preferences/WebsiteSettingsFragment;Landroid/content/Context;ILcom/android/browser/preferences/WebsiteSettingsFragment$Site;)V

    .line 179
    return-void
.end method

.method public constructor <init>(Lcom/android/browser/preferences/WebsiteSettingsFragment;Landroid/content/Context;ILcom/android/browser/preferences/WebsiteSettingsFragment$Site;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "rsc"
    .parameter "site"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->this$0:Lcom/android/browser/preferences/WebsiteSettingsFragment;

    .line 182
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 183
    iput p3, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mResource:I

    .line 184
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 185
    invoke-virtual {p1}, Lcom/android/browser/preferences/WebsiteSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020001

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 187
    invoke-virtual {p1}, Lcom/android/browser/preferences/WebsiteSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020043

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mUsageEmptyIcon:Landroid/graphics/Bitmap;

    .line 189
    invoke-virtual {p1}, Lcom/android/browser/preferences/WebsiteSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020044

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mUsageLowIcon:Landroid/graphics/Bitmap;

    .line 191
    invoke-virtual {p1}, Lcom/android/browser/preferences/WebsiteSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020042

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mUsageHighIcon:Landroid/graphics/Bitmap;

    .line 193
    invoke-virtual {p1}, Lcom/android/browser/preferences/WebsiteSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mLocationAllowedIcon:Landroid/graphics/Bitmap;

    .line 195
    invoke-virtual {p1}, Lcom/android/browser/preferences/WebsiteSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mLocationDisallowedIcon:Landroid/graphics/Bitmap;

    .line 197
    iput-object p4, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mCurrentSite:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    .line 198
    iget-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mCurrentSite:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    if-nez v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->askForOrigins()V

    .line 201
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;Ljava/util/Map;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 165
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->addFeatureToSite(Ljava/util/Map;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mLocationAllowedIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mLocationDisallowedIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;)Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mCurrentSite:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;)Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mCurrentSite:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    return-object p1
.end method

.method private addFeatureToSite(Ljava/util/Map;Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter "origin"
    .parameter "feature"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, sites:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;>;"
    const/4 v0, 0x0

    .line 209
    .local v0, site:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #site:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;
    check-cast v0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    .line 215
    .restart local v0       #site:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;
    :goto_0
    invoke-virtual {v0, p3}, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->addFeature(I)V

    .line 216
    return-void

    .line 212
    :cond_0
    new-instance v0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    .end local v0           #site:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;
    invoke-direct {v0, p2}, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;-><init>(Ljava/lang/String;)V

    .line 213
    .restart local v0       #site:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public askForGeolocation(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, sites:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;>;"
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    new-instance v1, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$2;-><init>(Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/webkit/GeolocationPermissions;->getOrigins(Landroid/webkit/ValueCallback;)V

    .line 255
    return-void
.end method

.method public askForOrigins()V
    .locals 2

    .prologue
    .line 228
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v0

    new-instance v1, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$1;-><init>(Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebStorage;->getOrigins(Landroid/webkit/ValueCallback;)V

    .line 240
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mCurrentSite:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    if-nez v0, :cond_0

    .line 372
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    .line 374
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mCurrentSite:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    invoke-virtual {v0}, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->getFeatureCount()I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 19
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 435
    if-nez p2, :cond_3

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mResource:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, p3

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    .line 441
    .local v15, view:Landroid/view/View;
    :goto_0
    const v16, 0x7f100002

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 442
    .local v13, title:Landroid/widget/TextView;
    const v16, 0x7f10009a

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 443
    .local v11, subtitle:Landroid/widget/TextView;
    const v16, 0x7f100059

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 444
    .local v7, icon:Landroid/widget/ImageView;
    const v16, 0x7f100099

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 445
    .local v6, featureIcon:Landroid/widget/ImageView;
    const v16, 0x7f100098

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 446
    .local v14, usageIcon:Landroid/widget/ImageView;
    const v16, 0x7f100097

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 447
    .local v8, locationIcon:Landroid/widget/ImageView;
    const/16 v16, 0x8

    move-object v0, v14

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 448
    const/16 v16, 0x8

    move-object v0, v8

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mCurrentSite:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    move-object/from16 v16, v0

    if-nez v16, :cond_5

    .line 452
    invoke-virtual/range {p0 .. p1}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    .line 453
    .local v10, site:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;
    invoke-virtual {v10}, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->getPrettyTitle()Ljava/lang/String;

    move-result-object v16

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    invoke-virtual {v10}, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->getPrettyOrigin()Ljava/lang/String;

    move-result-object v12

    .line 455
    .local v12, subtitleText:Ljava/lang/String;
    if-eqz v12, :cond_4

    .line 456
    const/16 v16, 0x1

    move-object v0, v13

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 457
    const/16 v16, 0x1

    move-object v0, v13

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 458
    const/16 v16, 0x0

    move-object v0, v11

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 459
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    :goto_1
    const/16 v16, 0x0

    move-object v0, v7

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 467
    const/16 v16, 0x4

    move-object v0, v14

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 468
    const/16 v16, 0x4

    move-object v0, v8

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 469
    const/16 v16, 0x8

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 470
    invoke-virtual {v10}, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 471
    .local v5, bmp:Landroid/graphics/Bitmap;
    if-nez v5, :cond_0

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mDefaultIcon:Landroid/graphics/Bitmap;

    move-object v5, v0

    .line 474
    :cond_0
    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 477
    invoke-virtual {v15, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 479
    invoke-virtual {v10}, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->getOrigin()Ljava/lang/String;

    move-result-object v9

    .line 480
    .local v9, origin:Ljava/lang/String;
    const/16 v16, 0x0

    move-object v0, v10

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->hasFeature(I)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 481
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v16

    new-instance v17, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$3;-><init>(Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;Landroid/widget/ImageView;)V

    move-object/from16 v0, v16

    move-object v1, v9

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebStorage;->getUsageForOrigin(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 491
    :cond_1
    const/16 v16, 0x1

    move-object v0, v10

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->hasFeature(I)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 492
    const/16 v16, 0x0

    move-object v0, v8

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 493
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v16

    new-instance v17, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$4;-><init>(Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;Landroid/widget/ImageView;)V

    move-object/from16 v0, v16

    move-object v1, v9

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/webkit/GeolocationPermissions;->getAllowed(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 545
    .end local v5           #bmp:Landroid/graphics/Bitmap;
    .end local v10           #site:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;
    .end local v12           #subtitleText:Ljava/lang/String;
    :cond_2
    :goto_2
    return-object v15

    .line 438
    .end local v6           #featureIcon:Landroid/widget/ImageView;
    .end local v7           #icon:Landroid/widget/ImageView;
    .end local v8           #locationIcon:Landroid/widget/ImageView;
    .end local v9           #origin:Ljava/lang/String;
    .end local v11           #subtitle:Landroid/widget/TextView;
    .end local v13           #title:Landroid/widget/TextView;
    .end local v14           #usageIcon:Landroid/widget/ImageView;
    .end local v15           #view:Landroid/view/View;
    :cond_3
    move-object/from16 v15, p2

    .restart local v15       #view:Landroid/view/View;
    goto/16 :goto_0

    .line 461
    .restart local v6       #featureIcon:Landroid/widget/ImageView;
    .restart local v7       #icon:Landroid/widget/ImageView;
    .restart local v8       #locationIcon:Landroid/widget/ImageView;
    .restart local v10       #site:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;
    .restart local v11       #subtitle:Landroid/widget/TextView;
    .restart local v12       #subtitleText:Ljava/lang/String;
    .restart local v13       #title:Landroid/widget/TextView;
    .restart local v14       #usageIcon:Landroid/widget/ImageView;
    :cond_4
    const/16 v16, 0x8

    move-object v0, v11

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 462
    const/16 v16, 0x2

    move-object v0, v13

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 463
    const/16 v16, 0x0

    move-object v0, v13

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto/16 :goto_1

    .line 506
    .end local v10           #site:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;
    .end local v12           #subtitleText:Ljava/lang/String;
    :cond_5
    const/16 v16, 0x8

    move-object v0, v7

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 507
    const/16 v16, 0x8

    move-object v0, v8

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 508
    const/16 v16, 0x8

    move-object v0, v14

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 509
    const/16 v16, 0x0

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mCurrentSite:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->getOrigin()Ljava/lang/String;

    move-result-object v9

    .line 511
    .restart local v9       #origin:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mCurrentSite:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->getFeatureByIndex(I)I

    move-result v16

    packed-switch v16, :pswitch_data_0

    goto :goto_2

    .line 513
    :pswitch_0
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v16

    new-instance v17, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$5;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v13

    move-object v3, v11

    move-object v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$5;-><init>(Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    move-object/from16 v0, v16

    move-object v1, v9

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebStorage;->getUsageForOrigin(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_2

    .line 526
    :pswitch_1
    const v16, 0x7f090146

    move-object v0, v13

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 527
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v16

    new-instance v17, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$6;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$6;-><init>(Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    move-object/from16 v0, v16

    move-object v1, v9

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/webkit/GeolocationPermissions;->getAllowed(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto/16 :goto_2

    .line 511
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const v5, 0x1080027

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 552
    iget-object v1, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mCurrentSite:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    if-eqz v1, :cond_1

    .line 553
    iget-object v1, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mCurrentSite:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    invoke-virtual {v1, p3}, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->getFeatureByIndex(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 555
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09013a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09013b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09013c

    new-instance v3, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$7;

    invoke-direct {v3, p0}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$7;-><init>(Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09013d

    invoke-virtual {v1, v2, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 576
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090149

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09014a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09014b

    new-instance v3, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$8;

    invoke-direct {v3, p0}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$8;-><init>(Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09014c

    invoke-virtual {v1, v2, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 596
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    move-object v5, v0

    .line 597
    iget-object v1, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->this$0:Lcom/android/browser/preferences/WebsiteSettingsFragment;

    invoke-virtual {v1}, Lcom/android/browser/preferences/WebsiteSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 598
    if-eqz v1, :cond_0

    .line 599
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 600
    const-string v2, "site"

    invoke-virtual {v3, v2, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 601
    const-class v2, Lcom/android/browser/preferences/WebsiteSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->getPrettyTitle()Ljava/lang/String;

    move-result-object v5

    move v7, v4

    invoke-virtual/range {v1 .. v7}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_0

    .line 553
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public populateIcons(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p1, sites:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;>;"
    new-instance v0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$UpdateFromBookmarksDbTask;

    invoke-virtual {p0}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$UpdateFromBookmarksDbTask;-><init>(Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;Landroid/content/Context;Ljava/util/Map;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$UpdateFromBookmarksDbTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 262
    return-void
.end method

.method public populateOrigins(Ljava/util/Map;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p1, sites:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;>;"
    invoke-virtual {p0}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->clear()V

    .line 355
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 356
    .local v0, elements:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 357
    .local v2, entryIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 358
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 359
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    .line 360
    .local v3, site:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;
    invoke-virtual {p0, v3}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 363
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;>;"
    .end local v3           #site:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->notifyDataSetChanged()V

    .line 365
    invoke-virtual {p0}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 366
    iget-object v4, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->this$0:Lcom/android/browser/preferences/WebsiteSettingsFragment;

    invoke-static {v4}, Lcom/android/browser/preferences/WebsiteSettingsFragment;->access$100(Lcom/android/browser/preferences/WebsiteSettingsFragment;)V

    .line 368
    :cond_1
    return-void
.end method

.method public setIconForUsage(Landroid/widget/ImageView;J)V
    .locals 6
    .parameter "usageIcon"
    .parameter "usageInBytes"

    .prologue
    const/high16 v5, 0x40a0

    const-wide v3, 0x3fb999999999999aL

    .line 411
    long-to-float v1, p2

    const/high16 v2, 0x4980

    div-float v0, v1, v2

    .line 416
    .local v0, usageInMegabytes:F
    float-to-double v1, v0

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_1

    .line 417
    iget-object v1, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mUsageEmptyIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    float-to-double v1, v0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    cmpg-float v1, v0, v5

    if-gtz v1, :cond_2

    .line 419
    iget-object v1, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mUsageLowIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 420
    :cond_2
    cmpl-float v1, v0, v5

    if-lez v1, :cond_0

    .line 421
    iget-object v1, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mUsageHighIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public sizeValueToString(J)Ljava/lang/String;
    .locals 6
    .parameter "bytes"

    .prologue
    const/high16 v5, 0x4120

    .line 380
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-gtz v3, :cond_0

    .line 381
    iget-object v3, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->this$0:Lcom/android/browser/preferences/WebsiteSettingsFragment;

    invoke-static {v3}, Lcom/android/browser/preferences/WebsiteSettingsFragment;->access$200(Lcom/android/browser/preferences/WebsiteSettingsFragment;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sizeValueToString called with non-positive value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const-string v3, "0"

    .line 387
    :goto_0
    return-object v3

    .line 384
    :cond_0
    long-to-float v3, p1

    const/high16 v4, 0x4980

    div-float v0, v3, v4

    .line 385
    .local v0, megabytes:F
    mul-float v3, v0, v5

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v2, v3

    .line 386
    .local v2, truncated:I
    int-to-float v3, v2

    div-float v1, v3, v5

    .line 387
    .local v1, result:F
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
