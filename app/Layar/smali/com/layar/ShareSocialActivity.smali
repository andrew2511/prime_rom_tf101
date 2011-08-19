.class public Lcom/layar/ShareSocialActivity;
.super Lcom/layar/OurActivity;
.source "ShareSocialActivity.java"

# interfaces
.implements Lcom/layar/adapters/SocialsAdapter$SocialAdapterChangeLister;
.implements Lcom/layar/util/SensorHelper$LocationChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/ShareSocialActivity$ShareSocialTask;
    }
.end annotation


# static fields
.field public static final BUNDLE_CHECKED_SOCIALS:Ljava/lang/String; = "share:checkedSocials"

.field public static final BUNDLE_CHECK_LOCATION:Ljava/lang/String; = "share:checkedLocation"

.field public static final BUNDLE_LOCATION:Ljava/lang/String; = "share:location"

.field public static final BUNDLE_MESSAGE:Ljava/lang/String; = "share:message"

.field public static final EXTRAS_HOSTED_SHARE_TEXT:Ljava/lang/String; = "hosted:text"

.field public static final EXTRAS_HOSTED_SHARE_URL:Ljava/lang/String; = "hosted:url"

.field public static final EXTRAS_LAYER_IMAGE_PATH:Ljava/lang/String; = "layer:imagePath"

.field public static final EXTRAS_LAYER_IMAGE_URI:Ljava/lang/String; = "layer:imageUri"

.field public static final EXTRAS_LAYER_NAME:Ljava/lang/String; = "layer:name"

.field public static final EXTRAS_LAYER_TITLE:Ljava/lang/String; = "layer:title"

.field public static final EXTRAS_SCREEN_TITLE_ID:Ljava/lang/String; = "screen:titleId"

.field public static final EXTRAS_SHARE_DESCRIPTION:Ljava/lang/String; = "share:description"

.field public static final EXTRAS_SHARE_IMAGE_URL:Ljava/lang/String; = "share:imageURL"

.field public static final EXTRAS_SHARE_LINK:Ljava/lang/String; = "share:link"

.field public static final EXTRAS_SHARE_TITLE:Ljava/lang/String; = "share:title"

.field public static final EXTRAS_SHARE_TYPE:Ljava/lang/String; = "share:type"

.field public static final LAYAR_USER_LOGIN:Ljava/lang/String; = "share:layarLogin"

.field private static final MESSAGE_TEXT_LIMIT:I = 0x6e

.field private static final SUBACTIVITY_LOGIN:I = 0x67

.field private static final SUBACTIVITY_PICK_EMAIL:I = 0xc9

.field private static final SUBACTIVITY_REQUEST_LINK:I = 0x65

.field private static final SUBACTIVITY_REQUEST_LOGIN:I = 0x66

.field private static final TAG:Ljava/lang/String; = null

.field private static final USER_LOGIN:I = 0x68


# instance fields
.field private emailsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isLocationSet:Z

.field private mAdapter:Lcom/layar/adapters/SocialsAdapter;

.field private mExifInterface:Lcom/layar/reflect/ExifWrapper;

.field private mLayer:Lcom/layar/data/layer/Layer20;

.field private mLayerName:Ljava/lang/String;

.field private mLocation:Landroid/location/Location;

.field private mPath:Ljava/lang/String;

.field private mShareDescription:Ljava/lang/String;

.field private mShareIconUrl:Ljava/lang/String;

.field private mShareLink:Ljava/lang/String;

.field private mShareTitle:Ljava/lang/String;

.field private mShareType:Ljava/lang/String;

.field private mSocial:Ljava/lang/String;

.field private viewCharsLeft:Landroid/widget/TextView;

.field private viewCheckLocation:Landroid/widget/CheckBox;

.field private viewImage:Landroid/widget/ImageView;

.field private viewList:Landroid/widget/LinearLayout;

.field private viewLocationText:Landroid/widget/TextView;

.field private viewMessageText:Landroid/widget/EditText;

.field private viewPinLocation:Landroid/widget/ImageView;

.field private viewShareButton:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/layar/ShareSocialActivity;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/ShareSocialActivity;->TAG:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/layar/OurActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/layar/ShareSocialActivity;)Lcom/layar/adapters/SocialsAdapter;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/layar/ShareSocialActivity;->mAdapter:Lcom/layar/adapters/SocialsAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/layar/ShareSocialActivity;)Lcom/layar/data/layer/Layer20;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/layar/ShareSocialActivity;->mLayer:Lcom/layar/data/layer/Layer20;

    return-object v0
.end method

.method static synthetic access$10(Lcom/layar/ShareSocialActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/layar/ShareSocialActivity;->mShareLink:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/layar/ShareSocialActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/layar/ShareSocialActivity;->mShareType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lcom/layar/ShareSocialActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 268
    invoke-direct {p0, p1}, Lcom/layar/ShareSocialActivity;->setLocationString(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13(Lcom/layar/ShareSocialActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 372
    invoke-direct {p0, p1}, Lcom/layar/ShareSocialActivity;->unGeotagImage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14(Lcom/layar/ShareSocialActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/layar/ShareSocialActivity;->setLocation()V

    return-void
.end method

.method static synthetic access$15(Lcom/layar/ShareSocialActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/layar/ShareSocialActivity;->viewCharsLeft:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$16(Lcom/layar/ShareSocialActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/layar/ShareSocialActivity;->mSocial:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/layar/ShareSocialActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/layar/ShareSocialActivity;->viewMessageText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lcom/layar/ShareSocialActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/layar/ShareSocialActivity;->isLocationSet:Z

    return v0
.end method

.method static synthetic access$4(Lcom/layar/ShareSocialActivity;)Landroid/location/Location;
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/layar/ShareSocialActivity;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$5(Lcom/layar/ShareSocialActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/layar/ShareSocialActivity;->viewLocationText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/layar/ShareSocialActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/layar/ShareSocialActivity;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/layar/ShareSocialActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/layar/ShareSocialActivity;->mShareTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/layar/ShareSocialActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/layar/ShareSocialActivity;->mShareDescription:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/layar/ShareSocialActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/layar/ShareSocialActivity;->mShareIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method private getLocationString(Landroid/location/Location;)Ljava/lang/String;
    .locals 3
    .parameter "location"

    .prologue
    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 322
    .local v0, resultBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 323
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getShareListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 260
    new-instance v0, Lcom/layar/ShareSocialActivity$2;

    invoke-direct {v0, p0}, Lcom/layar/ShareSocialActivity$2;-><init>(Lcom/layar/ShareSocialActivity;)V

    return-object v0
.end method

.method private messageTextListener()Landroid/text/TextWatcher;
    .locals 1

    .prologue
    .line 329
    new-instance v0, Lcom/layar/ShareSocialActivity$3;

    invoke-direct {v0, p0}, Lcom/layar/ShareSocialActivity$3;-><init>(Lcom/layar/ShareSocialActivity;)V

    return-object v0
.end method

.method private reGeotagImage()V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/layar/ShareSocialActivity;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/ShareSocialActivity;->mExifInterface:Lcom/layar/reflect/ExifWrapper;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/layar/ShareSocialActivity;->mExifInterface:Lcom/layar/reflect/ExifWrapper;

    invoke-virtual {v0}, Lcom/layar/reflect/ExifWrapper;->saveAttributes()Z

    .line 399
    :cond_0
    return-void
.end method

.method private setLocation()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 284
    invoke-static {}, Lcom/layar/App;->getSensorHelper()Lcom/layar/util/SensorHelper;

    move-result-object v11

    .line 285
    .local v11, sensorHelper:Lcom/layar/util/SensorHelper;
    invoke-virtual {v11}, Lcom/layar/util/SensorHelper;->getCurrentLocation()Landroid/location/Location;

    move-result-object v9

    .line 286
    .local v9, location:Landroid/location/Location;
    iput-object v9, p0, Lcom/layar/ShareSocialActivity;->mLocation:Landroid/location/Location;

    .line 287
    iget-object v1, p0, Lcom/layar/ShareSocialActivity;->mLocation:Landroid/location/Location;

    if-nez v1, :cond_0

    .line 288
    invoke-static {}, Lcom/layar/App;->getLayerManager()Lcom/layar/data/layer/LayerManager;

    move-result-object v1

    sget-object v2, Lcom/layar/data/layer/LayerManager$LayarView;->SHARE:Lcom/layar/data/layer/LayerManager$LayarView;

    invoke-virtual {v1, v2}, Lcom/layar/data/layer/LayerManager;->registerView(Lcom/layar/data/layer/LayerManager$LayarView;)V

    .line 289
    invoke-virtual {v11, p0}, Lcom/layar/util/SensorHelper;->registerLocationListener(Lcom/layar/util/SensorHelper$LocationChangeListener;)V

    .line 290
    invoke-virtual {p0}, Lcom/layar/ShareSocialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 291
    const v2, 0x7f0900f8

    .line 290
    invoke-static {v1, v2, v3}, Lcom/layar/ui/SmartToast;->makeText(Landroid/content/Context;II)Lcom/layar/ui/SmartToast;

    move-result-object v1

    .line 291
    invoke-virtual {v1}, Lcom/layar/ui/SmartToast;->show()V

    .line 292
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/layar/ShareSocialActivity;->setLocationString(Ljava/lang/String;)V

    .line 318
    :goto_0
    return-void

    .line 296
    :cond_0
    invoke-static {}, Lcom/layar/App;->getLayerManager()Lcom/layar/data/layer/LayerManager;

    move-result-object v1

    sget-object v2, Lcom/layar/data/layer/LayerManager$LayarView;->SHARE:Lcom/layar/data/layer/LayerManager$LayarView;

    invoke-virtual {v1, v2}, Lcom/layar/data/layer/LayerManager;->unregisterView(Lcom/layar/data/layer/LayerManager$LayarView;)V

    .line 297
    invoke-virtual {v11, p0}, Lcom/layar/util/SensorHelper;->unRegisterLocationListener(Lcom/layar/util/SensorHelper$LocationChangeListener;)V

    .line 298
    invoke-direct {p0}, Lcom/layar/ShareSocialActivity;->reGeotagImage()V

    .line 301
    new-instance v0, Landroid/location/Geocoder;

    invoke-direct {v0, p0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 304
    .local v0, geoCoder:Landroid/location/Geocoder;
    :try_start_0
    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    const/4 v5, 0x1

    .line 303
    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v7

    .line 305
    .local v7, addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 306
    :cond_1
    invoke-direct {p0, v9}, Lcom/layar/ShareSocialActivity;->getLocationString(Landroid/location/Location;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 317
    .end local v7           #addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .local v10, locationText:Ljava/lang/String;
    :goto_1
    invoke-direct {p0, v10}, Lcom/layar/ShareSocialActivity;->setLocationString(Ljava/lang/String;)V

    goto :goto_0

    .line 308
    .end local v10           #locationText:Ljava/lang/String;
    .restart local v7       #addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Address;

    .line 309
    .local v6, address:Landroid/location/Address;
    invoke-virtual {v6}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 310
    invoke-direct {p0, v9}, Lcom/layar/ShareSocialActivity;->getLocationString(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v10

    .restart local v10       #locationText:Ljava/lang/String;
    goto :goto_1

    .line 312
    .end local v10           #locationText:Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    .restart local v10       #locationText:Ljava/lang/String;
    goto :goto_1

    .line 314
    .end local v6           #address:Landroid/location/Address;
    .end local v7           #addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v10           #locationText:Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 315
    .local v8, e:Ljava/io/IOException;
    invoke-direct {p0, v9}, Lcom/layar/ShareSocialActivity;->getLocationString(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v10

    .restart local v10       #locationText:Ljava/lang/String;
    goto :goto_1
.end method

.method private setLocationString(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 271
    if-nez p1, :cond_0

    .line 272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layar/ShareSocialActivity;->isLocationSet:Z

    .line 273
    iget-object v0, p0, Lcom/layar/ShareSocialActivity;->viewLocationText:Landroid/widget/TextView;

    const v1, 0x7f09009f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 274
    iget-object v0, p0, Lcom/layar/ShareSocialActivity;->viewPinLocation:Landroid/widget/ImageView;

    const v1, 0x7f0200c1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 280
    :goto_0
    iget-object v0, p0, Lcom/layar/ShareSocialActivity;->viewCheckLocation:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/layar/ShareSocialActivity;->isLocationSet:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 281
    return-void

    .line 276
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/layar/ShareSocialActivity;->isLocationSet:Z

    .line 277
    iget-object v0, p0, Lcom/layar/ShareSocialActivity;->viewLocationText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, p0, Lcom/layar/ShareSocialActivity;->viewPinLocation:Landroid/widget/ImageView;

    const v1, 0x7f0200c3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private unGeotagImage(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 373
    sget-boolean v2, Lcom/layar/util/MyConfig;->USE_EXIF:Z

    if-nez v2, :cond_0

    .line 390
    :goto_0
    return-void

    .line 378
    :cond_0
    new-instance v2, Lcom/layar/reflect/ExifWrapper;

    invoke-direct {v2, p1}, Lcom/layar/reflect/ExifWrapper;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/layar/ShareSocialActivity;->mExifInterface:Lcom/layar/reflect/ExifWrapper;

    .line 379
    new-instance v0, Lcom/layar/reflect/ExifWrapper;

    invoke-direct {v0, p1}, Lcom/layar/reflect/ExifWrapper;-><init>(Ljava/lang/String;)V

    .line 380
    .local v0, exif:Lcom/layar/reflect/ExifWrapper;
    const-string v2, "GPSLatitude"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/layar/reflect/ExifWrapper;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v2, "GPSLongitude"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/layar/reflect/ExifWrapper;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v2, "GPSLatitudeRef"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/layar/reflect/ExifWrapper;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v2, "GPSLongitudeRef"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/layar/reflect/ExifWrapper;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-virtual {v0}, Lcom/layar/reflect/ExifWrapper;->saveAttributes()Z

    move-result v1

    .line 390
    .local v1, result:Z
    goto :goto_0
.end method


# virtual methods
.method public locationChanged(Landroid/location/Location;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 616
    invoke-direct {p0}, Lcom/layar/ShareSocialActivity;->setLocation()V

    .line 617
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v7, 0x65

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 451
    invoke-super {p0, p1, p2, p3}, Lcom/layar/OurActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 453
    const/16 v2, 0xc9

    if-ne p1, v2, :cond_0

    .line 454
    if-ne p2, v4, :cond_0

    if-eqz p3, :cond_0

    .line 456
    const-string v2, "email:choosed"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 455
    iput-object v2, p0, Lcom/layar/ShareSocialActivity;->emailsList:Ljava/util/ArrayList;

    .line 458
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/layar/ShareSocialActivity;->emailsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f09012f

    invoke-virtual {p0, v3}, Lcom/layar/ShareSocialActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 457
    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 459
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 460
    iget-object v2, p0, Lcom/layar/ShareSocialActivity;->mAdapter:Lcom/layar/adapters/SocialsAdapter;

    invoke-virtual {v2, v6}, Lcom/layar/adapters/SocialsAdapter;->setEmailChecked(Z)V

    .line 461
    iget-object v2, p0, Lcom/layar/ShareSocialActivity;->mAdapter:Lcom/layar/adapters/SocialsAdapter;

    invoke-virtual {v2}, Lcom/layar/adapters/SocialsAdapter;->refresh()V

    .line 462
    iget-object v2, p0, Lcom/layar/ShareSocialActivity;->mAdapter:Lcom/layar/adapters/SocialsAdapter;

    invoke-virtual {v2}, Lcom/layar/adapters/SocialsAdapter;->isAnyChecked()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/layar/ShareSocialActivity;->setShareEnable(Z)V

    .line 463
    iget-object v2, p0, Lcom/layar/ShareSocialActivity;->mAdapter:Lcom/layar/adapters/SocialsAdapter;

    iget-object v3, p0, Lcom/layar/ShareSocialActivity;->emailsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/layar/adapters/SocialsAdapter;->setEmailChoosedMessage(I)V

    .line 469
    :cond_0
    const/16 v2, 0x68

    if-ne p1, v2, :cond_1

    .line 470
    if-ne p2, v4, :cond_5

    .line 474
    iget-object v2, p0, Lcom/layar/ShareSocialActivity;->mSocial:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 475
    new-instance v1, Landroid/content/Intent;

    .line 476
    const-class v2, Lcom/layar/SocialActionActivity;

    .line 475
    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 477
    .local v1, i:Landroid/content/Intent;
    const-string v2, "ActionType"

    iget-object v3, p0, Lcom/layar/ShareSocialActivity;->mSocial:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    const-string v2, "fromShareScreen"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 480
    invoke-static {}, Lcom/layar/App;->getSocialManager()Lcom/layar/data/social/SocialManager;

    move-result-object v2

    iget-object v3, p0, Lcom/layar/ShareSocialActivity;->mSocial:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/layar/data/social/SocialManager;->isSocialLinked(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 481
    invoke-virtual {p0, v1, v7}, Lcom/layar/ShareSocialActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 488
    .end local v1           #i:Landroid/content/Intent;
    :cond_1
    :goto_0
    const/16 v2, 0xb

    if-eq p2, v2, :cond_2

    .line 489
    if-ne p2, v4, :cond_3

    .line 490
    :cond_2
    iget-object v2, p0, Lcom/layar/ShareSocialActivity;->mAdapter:Lcom/layar/adapters/SocialsAdapter;

    invoke-virtual {v2}, Lcom/layar/adapters/SocialsAdapter;->refresh()V

    .line 491
    iget-object v2, p0, Lcom/layar/ShareSocialActivity;->mAdapter:Lcom/layar/adapters/SocialsAdapter;

    invoke-virtual {v2}, Lcom/layar/adapters/SocialsAdapter;->isAnyChecked()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/layar/ShareSocialActivity;->setShareEnable(Z)V

    .line 494
    :cond_3
    if-ne p1, v7, :cond_6

    .line 495
    sparse-switch p2, :sswitch_data_0

    .line 547
    :cond_4
    :goto_1
    return-void

    .line 485
    :cond_5
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/layar/ShareSocialActivity;->mSocial:Ljava/lang/String;

    goto :goto_0

    .line 497
    :sswitch_0
    invoke-virtual {p0}, Lcom/layar/ShareSocialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 498
    const v3, 0x7f09012a

    invoke-virtual {p0, v3}, Lcom/layar/ShareSocialActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 497
    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 499
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 502
    :sswitch_1
    iget-object v2, p0, Lcom/layar/ShareSocialActivity;->mAdapter:Lcom/layar/adapters/SocialsAdapter;

    invoke-virtual {v2}, Lcom/layar/adapters/SocialsAdapter;->isAnyChecked()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/layar/ShareSocialActivity;->setShareEnable(Z)V

    .line 503
    iget-object v2, p0, Lcom/layar/ShareSocialActivity;->mAdapter:Lcom/layar/adapters/SocialsAdapter;

    invoke-virtual {v2}, Lcom/layar/adapters/SocialsAdapter;->refresh()V

    goto :goto_1

    .line 507
    :sswitch_2
    invoke-virtual {p0}, Lcom/layar/ShareSocialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 508
    new-instance v3, Ljava/lang/StringBuilder;

    const v4, 0x7f090124

    invoke-virtual {p0, v4}, Lcom/layar/ShareSocialActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "./n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 509
    const v4, 0x7f09012b

    invoke-virtual {p0, v4}, Lcom/layar/ShareSocialActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 508
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 506
    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 510
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 513
    :sswitch_3
    const-string v2, "Email"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, email:Ljava/lang/String;
    new-instance v2, Lcom/layar/ShareSocialActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/layar/ShareSocialActivity$4;-><init>(Lcom/layar/ShareSocialActivity;Ljava/lang/String;)V

    .line 514
    invoke-static {p0, v2}, Lcom/layar/util/UiUtils;->showTwitterLoginByEmailDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    .line 527
    .end local v0           #email:Ljava/lang/String;
    :cond_6
    const/16 v2, 0x66

    if-ne p1, v2, :cond_7

    .line 528
    const/16 v2, 0xd

    if-ne p2, v2, :cond_4

    .line 530
    const-string v2, "Email"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 532
    .restart local v0       #email:Ljava/lang/String;
    new-instance v2, Lcom/layar/ShareSocialActivity$5;

    invoke-direct {v2, p0, v0}, Lcom/layar/ShareSocialActivity$5;-><init>(Lcom/layar/ShareSocialActivity;Ljava/lang/String;)V

    .line 531
    invoke-static {p0, v2}, Lcom/layar/util/UiUtils;->showTwitterLoginByEmailDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    .line 542
    .end local v0           #email:Ljava/lang/String;
    :cond_7
    const/16 v2, 0x67

    if-ne p1, v2, :cond_4

    .line 543
    if-ne p2, v4, :cond_4

    .line 544
    const-string v2, "twitter"

    invoke-virtual {p0, v2}, Lcom/layar/ShareSocialActivity;->startAuthorization(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 495
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0xb -> :sswitch_0
        0xc -> :sswitch_2
        0xd -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 20
    .parameter "savedInstanceState"

    .prologue
    .line 141
    invoke-super/range {p0 .. p1}, Lcom/layar/OurActivity;->onCreate(Landroid/os/Bundle;)V

    .line 142
    const v17, 0x7f03004d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/layar/ShareSocialActivity;->setContentView(I)V

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/layar/ShareSocialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 146
    .local v9, intent:Landroid/content/Intent;
    const-string v17, "layer:name"

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layar/ShareSocialActivity;->mLayerName:Ljava/lang/String;

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ShareSocialActivity;->mLayerName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/layar/ShareSocialActivity;->finish()V

    .line 251
    .end local p1
    :goto_0
    return-void

    .line 154
    .restart local p1
    :cond_0
    invoke-static {}, Lcom/layar/App;->getLayerManager()Lcom/layar/data/layer/LayerManager;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/layar/data/layer/LayerHandler;->getCurrentLayer()Lcom/layar/data/layer/Layer20;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layar/ShareSocialActivity;->mLayer:Lcom/layar/data/layer/Layer20;

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ShareSocialActivity;->mLayer:Lcom/layar/data/layer/Layer20;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ShareSocialActivity;->mLayerName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ShareSocialActivity;->mLayer:Lcom/layar/data/layer/Layer20;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 158
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/layar/ShareSocialActivity;->finish()V

    goto :goto_0

    .line 162
    :cond_2
    const-string v17, "screen:titleId"

    .line 163
    const v18, 0x7f090095

    .line 162
    move-object v0, v9

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 164
    .local v13, titleId:I
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/layar/ShareSocialActivity;->setTitle(I)V

    .line 166
    const-string v17, "layer:imagePath"

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 167
    const-string v17, "layer:imagePath"

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layar/ShareSocialActivity;->mPath:Ljava/lang/String;

    .line 171
    :cond_3
    const-string v17, "share:type"

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layar/ShareSocialActivity;->mShareType:Ljava/lang/String;

    .line 173
    const-string v17, "hosted:url"

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 174
    .local v7, hostedUrl:Ljava/lang/String;
    if-nez v7, :cond_4

    const/16 v17, 0x0

    move-object/from16 v6, v17

    .line 177
    .local v6, hostedName:Ljava/lang/String;
    :goto_1
    const v17, 0x102000a

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/layar/ShareSocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layar/ShareSocialActivity;->viewList:Landroid/widget/LinearLayout;

    .line 178
    new-instance v17, Lcom/layar/adapters/SocialsAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ShareSocialActivity;->viewList:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/layar/adapters/SocialsAdapter;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layar/ShareSocialActivity;->mAdapter:Lcom/layar/adapters/SocialsAdapter;

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ShareSocialActivity;->mAdapter:Lcom/layar/adapters/SocialsAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/layar/adapters/SocialsAdapter;->setChangeLister(Lcom/layar/adapters/SocialsAdapter$SocialAdapterChangeLister;)V

    .line 181
    const v17, 0x7f070088

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/layar/ShareSocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layar/ShareSocialActivity;->viewShareButton:Landroid/view/View;

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ShareSocialActivity;->viewShareButton:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-direct/range {p0 .. p0}, Lcom/layar/ShareSocialActivity;->getShareListener()Landroid/view/View$OnClickListener;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    const v17, 0x7f0700bd

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/layar/ShareSocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layar/ShareSocialActivity;->viewImage:Landroid/widget/ImageView;

    .line 185
    const v17, 0x7f070040

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/layar/ShareSocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ProgressBar;

    .line 186
    .local v16, viewProgress:Landroid/widget/ProgressBar;
    invoke-static {}, Lcom/layar/App;->getImageCache()Lcom/layar/data/ImageCache;

    move-result-object v8

    .line 187
    .local v8, imageCache:Lcom/layar/data/ImageCache;
    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    const-string v18, "share:imageURL"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layar/ShareSocialActivity;->mShareIconUrl:Ljava/lang/String;

    .line 189
    const-string v17, "layer:imageUri"

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ShareSocialActivity;->viewImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    .line 191
    const-string v19, "layer:imageUri"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 190
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 192
    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 202
    :goto_2
    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    const-string v18, "share:title"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layar/ShareSocialActivity;->mShareTitle:Ljava/lang/String;

    .line 203
    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    const-string v18, "share:description"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layar/ShareSocialActivity;->mShareDescription:Ljava/lang/String;

    .line 204
    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    const-string v18, "share:link"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layar/ShareSocialActivity;->mShareLink:Ljava/lang/String;

    .line 206
    const v17, 0x7f070095

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/layar/ShareSocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layar/ShareSocialActivity;->viewCharsLeft:Landroid/widget/TextView;

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ShareSocialActivity;->viewCharsLeft:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x6e

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    const v17, 0x7f070094

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/layar/ShareSocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layar/ShareSocialActivity;->viewMessageText:Landroid/widget/EditText;

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ShareSocialActivity;->viewMessageText:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-direct/range {p0 .. p0}, Lcom/layar/ShareSocialActivity;->messageTextListener()Landroid/text/TextWatcher;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 211
    const v17, 0x7f07000f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/layar/ShareSocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 212
    .local v15, viewLayerTitle:Landroid/widget/TextView;
    const-string v17, "layer:title"

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 213
    .local v10, layerTitle:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ShareSocialActivity;->mShareType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "screenshot"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 214
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 215
    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    :goto_3
    const v17, 0x7f07009e

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/layar/ShareSocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 221
    .local v14, viewLayerDetails:Landroid/widget/TextView;
    const-string v17, "share:description"

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 222
    .local v5, description:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 223
    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    :goto_4
    const v17, 0x7f0700c1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/layar/ShareSocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layar/ShareSocialActivity;->viewLocationText:Landroid/widget/TextView;

    .line 233
    const v17, 0x7f0700c0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/layar/ShareSocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layar/ShareSocialActivity;->viewPinLocation:Landroid/widget/ImageView;

    .line 234
    const v17, 0x7f0700be

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/layar/ShareSocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    new-instance v18, Lcom/layar/ShareSocialActivity$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/layar/ShareSocialActivity$1;-><init>(Lcom/layar/ShareSocialActivity;)V

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    const v17, 0x7f0700bf

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/layar/ShareSocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layar/ShareSocialActivity;->viewCheckLocation:Landroid/widget/CheckBox;

    .line 248
    invoke-direct/range {p0 .. p0}, Lcom/layar/ShareSocialActivity;->setLocation()V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ShareSocialActivity;->mAdapter:Lcom/layar/adapters/SocialsAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/layar/adapters/SocialsAdapter;->refresh()V

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ShareSocialActivity;->mAdapter:Lcom/layar/adapters/SocialsAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/layar/adapters/SocialsAdapter;->isAnyChecked()Z

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/layar/ShareSocialActivity;->setShareEnable(Z)V

    goto/16 :goto_0

    .line 175
    .end local v5           #description:Ljava/lang/String;
    .end local v6           #hostedName:Ljava/lang/String;
    .end local v8           #imageCache:Lcom/layar/data/ImageCache;
    .end local v10           #layerTitle:Ljava/lang/String;
    .end local v14           #viewLayerDetails:Landroid/widget/TextView;
    .end local v15           #viewLayerTitle:Landroid/widget/TextView;
    .end local v16           #viewProgress:Landroid/widget/ProgressBar;
    .restart local p1
    :cond_4
    const-string v17, "hosted:text"

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v6, v17

    goto/16 :goto_1

    .line 193
    .end local p1
    .restart local v6       #hostedName:Ljava/lang/String;
    .restart local v8       #imageCache:Lcom/layar/data/ImageCache;
    .restart local v16       #viewProgress:Landroid/widget/ProgressBar;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ShareSocialActivity;->mShareIconUrl:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 194
    invoke-static {}, Lcom/layar/data/ImageCache;->getInstance()Lcom/layar/data/ImageCache;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ShareSocialActivity;->mShareIconUrl:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ShareSocialActivity;->viewImage:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/layar/data/ImageCache;->setActionImageBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)Ljava/lang/String;

    .line 196
    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_2

    .line 198
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ShareSocialActivity;->mLayerName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "icon"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ShareSocialActivity;->viewImage:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object v0, v8

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/layar/data/ImageCache;->setLayerImageBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    goto/16 :goto_2

    .line 217
    .restart local v10       #layerTitle:Ljava/lang/String;
    .restart local v15       #viewLayerTitle:Landroid/widget/TextView;
    :cond_7
    const/16 v17, 0x8

    move-object v0, v15

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 225
    .restart local v5       #description:Ljava/lang/String;
    .restart local v14       #viewLayerDetails:Landroid/widget/TextView;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ShareSocialActivity;->mShareType:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 226
    const-string v18, "layer"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    const v17, 0x7f09009d

    move/from16 v12, v17

    .line 228
    .local v12, messageTemplateId:I
    :goto_5
    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/layar/ShareSocialActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 229
    .local v11, message:Ljava/lang/String;
    const-string v17, "%layername%"

    move-object v0, v11

    move-object/from16 v1, v17

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 227
    .end local v11           #message:Ljava/lang/String;
    .end local v12           #messageTemplateId:I
    :cond_9
    const v17, 0x7f09009e

    move/from16 v12, v17

    goto :goto_5
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 403
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 404
    invoke-direct {p0}, Lcom/layar/ShareSocialActivity;->reGeotagImage()V

    .line 405
    invoke-super {p0, p1, p2}, Lcom/layar/OurActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 407
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/layar/OurActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 417
    invoke-super {p0, p1}, Lcom/layar/OurActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 418
    if-eqz p1, :cond_1

    .line 419
    iget-object v2, p0, Lcom/layar/ShareSocialActivity;->viewMessageText:Landroid/widget/EditText;

    const-string v3, "share:message"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v2, p0, Lcom/layar/ShareSocialActivity;->viewLocationText:Landroid/widget/TextView;

    const-string v3, "share:location"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    const-string v2, "share:checkedSocials"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    .line 423
    .local v0, checked:[Z
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 424
    iget-object v2, p0, Lcom/layar/ShareSocialActivity;->mAdapter:Lcom/layar/adapters/SocialsAdapter;

    invoke-virtual {v2, v0}, Lcom/layar/adapters/SocialsAdapter;->setChecked([Z)V

    .line 426
    :cond_0
    const-string v2, "share:checkedLocation"

    const/4 v3, 0x0

    .line 425
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 427
    .local v1, checkedLocation:Z
    iget-object v2, p0, Lcom/layar/ShareSocialActivity;->viewCheckLocation:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 428
    iget-object v2, p0, Lcom/layar/ShareSocialActivity;->viewPinLocation:Landroid/widget/ImageView;

    .line 429
    if-eqz v1, :cond_2

    const v3, 0x7f0200c3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 431
    const-string v2, "email:choosed"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/layar/ShareSocialActivity;->emailsList:Ljava/util/ArrayList;

    .line 432
    iget-object v2, p0, Lcom/layar/ShareSocialActivity;->emailsList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/layar/ShareSocialActivity;->emailsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 433
    iget-object v2, p0, Lcom/layar/ShareSocialActivity;->mAdapter:Lcom/layar/adapters/SocialsAdapter;

    iget-object v3, p0, Lcom/layar/ShareSocialActivity;->emailsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/layar/adapters/SocialsAdapter;->setEmailChoosedMessage(I)V

    .line 436
    .end local v0           #checked:[Z
    .end local v1           #checkedLocation:Z
    :cond_1
    return-void

    .line 430
    .restart local v0       #checked:[Z
    .restart local v1       #checkedLocation:Z
    :cond_2
    const v3, 0x7f0200c1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 412
    invoke-super {p0}, Lcom/layar/OurActivity;->onResume()V

    .line 413
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 440
    invoke-super {p0, p1}, Lcom/layar/OurActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 441
    const-string v0, "share:message"

    iget-object v1, p0, Lcom/layar/ShareSocialActivity;->viewMessageText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-string v0, "share:location"

    iget-object v1, p0, Lcom/layar/ShareSocialActivity;->viewLocationText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-string v0, "share:checkedSocials"

    iget-object v1, p0, Lcom/layar/ShareSocialActivity;->mAdapter:Lcom/layar/adapters/SocialsAdapter;

    invoke-virtual {v1}, Lcom/layar/adapters/SocialsAdapter;->getCheckedArray()[Z

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 445
    const-string v0, "share:checkedLocation"

    iget-boolean v1, p0, Lcom/layar/ShareSocialActivity;->isLocationSet:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 446
    const-string v0, "email:choosed"

    iget-object v1, p0, Lcom/layar/ShareSocialActivity;->emailsList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 447
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/layar/ShareSocialActivity;->reGeotagImage()V

    .line 256
    invoke-super {p0}, Lcom/layar/OurActivity;->onStop()V

    .line 257
    return-void
.end method

.method public setShareEnable(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const/4 v2, 0x0

    .line 358
    if-nez p1, :cond_0

    .line 359
    iget-object v0, p0, Lcom/layar/ShareSocialActivity;->viewShareButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 370
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/layar/ShareSocialActivity;->viewMessageText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 363
    const/16 v1, 0x6e

    .line 362
    invoke-static {v0, v1}, Lcom/layar/util/Util;->allowPostingByText(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/layar/ShareSocialActivity;->viewShareButton:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/layar/ShareSocialActivity;->viewShareButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method public startAuthorization(Ljava/lang/String;)V
    .locals 5
    .parameter "social"

    .prologue
    .line 552
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/layar/ShareSocialActivity;->mSocial:Ljava/lang/String;

    .line 553
    const-string v2, "email"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 554
    new-instance v1, Landroid/content/Intent;

    .line 555
    const-class v2, Lcom/layar/EmailContactChooserActivity;

    .line 554
    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 557
    .local v1, i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/layar/ShareSocialActivity;->emailsList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 559
    const-string v2, "email:choosed"

    iget-object v3, p0, Lcom/layar/ShareSocialActivity;->emailsList:Ljava/util/ArrayList;

    .line 558
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 564
    :cond_0
    const/16 v2, 0xc9

    invoke-virtual {p0, v1, v2}, Lcom/layar/ShareSocialActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 612
    .end local v1           #i:Landroid/content/Intent;
    :goto_0
    return-void

    .line 565
    :cond_1
    invoke-static {}, Lcom/layar/App;->getUserManager()Lcom/layar/data/user/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/layar/data/user/UserManager;->isLoggedIn()Z

    move-result v2

    if-nez v2, :cond_2

    .line 566
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 568
    .local v0, alertLoginDialog:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0900b1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 569
    const v3, 0x7f0900b2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 570
    const v3, 0x7f09002d

    new-instance v4, Lcom/layar/ShareSocialActivity$6;

    invoke-direct {v4, p0, p1}, Lcom/layar/ShareSocialActivity$6;-><init>(Lcom/layar/ShareSocialActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 584
    const v3, 0x7f09002e

    .line 585
    new-instance v4, Lcom/layar/ShareSocialActivity$7;

    invoke-direct {v4, p0, p1}, Lcom/layar/ShareSocialActivity$7;-><init>(Lcom/layar/ShareSocialActivity;Ljava/lang/String;)V

    .line 584
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 602
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 604
    .end local v0           #alertLoginDialog:Landroid/app/AlertDialog$Builder;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    .line 605
    const-class v2, Lcom/layar/SocialActionActivity;

    .line 604
    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 606
    .restart local v1       #i:Landroid/content/Intent;
    const-string v2, "ActionType"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 607
    const-string v2, "fromShareScreen"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 608
    const/16 v2, 0x65

    invoke-virtual {p0, v1, v2}, Lcom/layar/ShareSocialActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public useNavigationBar()Z
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method
