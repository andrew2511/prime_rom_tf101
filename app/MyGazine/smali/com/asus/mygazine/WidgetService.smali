.class public Lcom/asus/mygazine/WidgetService;
.super Landroid/app/Service;
.source "WidgetService.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static DATE_FORMAT:Ljava/lang/String;

.field private static final DBG:Z

.field private static mIsShowDateTag:Z

.field private static mIsShowEventTag:Z

.field private static mIsShowLogo:Z

.field private static mIsShowPhotoDateTag:Z

.field private static mIsShowWeatherTag:Z

.field private static mScaleType:Ljava/lang/String;

.field private static mSlideShowInterval:I

.field private static mTransitionEffect:Z


# instance fields
.field private final FIRST_CROSS:I

.field private final INITIAL_STATE:I

.field private final MSG_CHANGE_VIEW:[I

.field private final MSG_CHANGE_VIEW1:I

.field private final MSG_CHANGE_VIEW2:I

.field private final SECOND_CROSS:I

.field private final WIDGET_SIZE_PROJECTIONS:[Ljava/lang/String;

.field private mAlbum:Ljava/lang/String;

.field private mAlbumURI:Landroid/net/Uri;

.field private mArtist:Ljava/lang/String;

.field private mBookMIME:Ljava/lang/String;

.field private mBookNumber:I

.field private mBookPath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDBHelper:Lcom/asus/mygazine/WidgetSizeDBHelper;

.field private mDate:Ljava/lang/String;

.field private mEmailCnt:I

.field private mEventTime:Ljava/lang/String;

.field private mEventTitle:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIsEventView:Z

.field private mIsFlippingAtFirstTime:[Z

.field public mIsGoogleGallery:Z

.field private mIsPlaying:Z

.field private mIsUpdating:[Z

.field private mIsWeatherView:Z

.field private mLastPhoto:[Ljava/lang/String;

.field private mLocation:[I

.field public mLock:Ljava/lang/Integer;

.field private mNext:[I

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSong:Ljava/lang/String;

.field private mTodayEventCount:I

.field private mVisibility:Z

.field private mWeatherCityName:Ljava/lang/String;

.field private mWeatherContent:Ljava/lang/String;

.field private mWeatherHumidity:Ljava/lang/String;

.field private mWeatherIconId:I

.field private mWeatherSpeedUnit:Ljava/lang/String;

.field private mWeatherTemperature:Ljava/lang/String;

.field private mWeatherTemperature2:Ljava/lang/String;

.field private mWeatherText:Ljava/lang/String;

.field private mWeatherTypes:Ljava/lang/String;

.field private mWeatherUnit:Ljava/lang/String;

.field private mWeatherWindSpeed:Ljava/lang/String;

.field private mWebThumbNail:Landroid/graphics/Bitmap;

.field private mWebTitle:Ljava/lang/String;

.field private mWebUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 37
    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/asus/mygazine/WidgetService;->DBG:Z

    .line 94
    const/16 v0, 0x2710

    sput v0, Lcom/asus/mygazine/WidgetService;->mSlideShowInterval:I

    .line 95
    sput-boolean v1, Lcom/asus/mygazine/WidgetService;->mTransitionEffect:Z

    .line 96
    sput-boolean v1, Lcom/asus/mygazine/WidgetService;->mIsShowLogo:Z

    .line 97
    sput-boolean v1, Lcom/asus/mygazine/WidgetService;->mIsShowDateTag:Z

    .line 98
    sput-boolean v1, Lcom/asus/mygazine/WidgetService;->mIsShowPhotoDateTag:Z

    .line 99
    sput-boolean v1, Lcom/asus/mygazine/WidgetService;->mIsShowEventTag:Z

    .line 100
    sput-boolean v1, Lcom/asus/mygazine/WidgetService;->mIsShowWeatherTag:Z

    .line 101
    const-string v0, "centerCrop"

    sput-object v0, Lcom/asus/mygazine/WidgetService;->mScaleType:Ljava/lang/String;

    .line 102
    const-string v0, "MMMM dd,yyyy"

    sput-object v0, Lcom/asus/mygazine/WidgetService;->DATE_FORMAT:Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 37
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 63
    iput v3, p0, Lcom/asus/mygazine/WidgetService;->mEmailCnt:I

    .line 65
    iput v3, p0, Lcom/asus/mygazine/WidgetService;->mBookNumber:I

    .line 68
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/asus/mygazine/WidgetService;->mLocation:[I

    .line 70
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/asus/mygazine/WidgetService;->MSG_CHANGE_VIEW:[I

    .line 71
    const/16 v0, 0x64

    iput v0, p0, Lcom/asus/mygazine/WidgetService;->MSG_CHANGE_VIEW1:I

    .line 72
    const/16 v0, 0x65

    iput v0, p0, Lcom/asus/mygazine/WidgetService;->MSG_CHANGE_VIEW2:I

    .line 74
    iput-object v1, p0, Lcom/asus/mygazine/WidgetService;->mAlbumURI:Landroid/net/Uri;

    .line 81
    new-array v0, v2, [Z

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/asus/mygazine/WidgetService;->mIsUpdating:[Z

    .line 83
    iput-boolean v3, p0, Lcom/asus/mygazine/WidgetService;->mIsPlaying:Z

    .line 86
    iput v4, p0, Lcom/asus/mygazine/WidgetService;->SECOND_CROSS:I

    .line 87
    iput v3, p0, Lcom/asus/mygazine/WidgetService;->FIRST_CROSS:I

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lcom/asus/mygazine/WidgetService;->INITIAL_STATE:I

    .line 89
    new-array v0, v2, [Z

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/asus/mygazine/WidgetService;->mIsFlippingAtFirstTime:[Z

    .line 90
    new-array v0, v2, [I

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/asus/mygazine/WidgetService;->mNext:[I

    .line 91
    new-array v0, v2, [Ljava/lang/String;

    aput-object v1, v0, v3

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/asus/mygazine/WidgetService;->mLastPhoto:[Ljava/lang/String;

    .line 106
    iput-boolean v4, p0, Lcom/asus/mygazine/WidgetService;->mIsGoogleGallery:Z

    .line 107
    iput-boolean v4, p0, Lcom/asus/mygazine/WidgetService;->mVisibility:Z

    .line 109
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "widgetId"

    aput-object v1, v0, v3

    const-string v1, "widgetType"

    aput-object v1, v0, v4

    const-string v1, "width"

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v2, "height"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/asus/mygazine/WidgetService;->WIDGET_SIZE_PROJECTIONS:[Ljava/lang/String;

    .line 140
    new-instance v0, Lcom/asus/mygazine/WidgetService$1;

    invoke-direct {v0, p0}, Lcom/asus/mygazine/WidgetService$1;-><init>(Lcom/asus/mygazine/WidgetService;)V

    iput-object v0, p0, Lcom/asus/mygazine/WidgetService;->mHandler:Landroid/os/Handler;

    return-void

    .line 68
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 70
    :array_1
    .array-data 0x4
        0x64t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
    .end array-data

    .line 81
    :array_2
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 89
    nop

    :array_3
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 90
    nop

    :array_4
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method static synthetic access$000(Lcom/asus/mygazine/WidgetService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mLocation:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/asus/mygazine/WidgetService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/asus/mygazine/WidgetService;->getSlideshowIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/asus/mygazine/WidgetService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/asus/mygazine/WidgetService;Landroid/content/Context;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/asus/mygazine/WidgetService;->performCommonUpdate(Landroid/content/Context;IZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/asus/mygazine/WidgetService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/asus/mygazine/WidgetService;->doTransition()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/asus/mygazine/WidgetService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->MSG_CHANGE_VIEW:[I

    return-object v0
.end method

.method static synthetic access$600(Lcom/asus/mygazine/WidgetService;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mIsUpdating:[Z

    return-object v0
.end method

.method static synthetic access$700(Lcom/asus/mygazine/WidgetService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/asus/mygazine/WidgetService;->mVisibility:Z

    return v0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/asus/mygazine/WidgetService;->mSlideShowInterval:I

    return v0
.end method

.method private defineViewsSize(Landroid/widget/RemoteViews;III)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, 0x7f080006

    const v0, 0x7f080002

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 692
    if-nez p4, :cond_2

    .line 693
    if-ge p2, v1, :cond_1

    if-eq p2, v3, :cond_1

    .line 694
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 695
    invoke-virtual {p1, v4, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 696
    const v0, 0x7f080007

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 697
    const v0, 0x7f080011

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 698
    const v0, 0x7f080009

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 699
    const v0, 0x7f080008

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 726
    :cond_0
    :goto_0
    return-void

    .line 701
    :cond_1
    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 702
    invoke-virtual {p1, v4, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 703
    const v0, 0x7f080007

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 704
    const v0, 0x7f080011

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 705
    const v0, 0x7f080009

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 706
    const v0, 0x7f080008

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 709
    :cond_2
    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    .line 710
    const/4 v0, 0x6

    if-gt p2, v0, :cond_3

    if-eq p2, v3, :cond_3

    .line 711
    const v0, 0x7f08000c

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 712
    const v0, 0x7f080034

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 713
    const v0, 0x7f080023

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 714
    const v0, 0x7f080027

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 715
    const v0, 0x7f08002b

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 716
    const v0, 0x7f08002f

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 718
    :cond_3
    const v0, 0x7f08000c

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 719
    const v0, 0x7f080034

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 720
    const v0, 0x7f080023

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 721
    const v0, 0x7f080027

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 722
    const v0, 0x7f08002b

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 723
    const v0, 0x7f08002f

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0
.end method

.method private doCommonUpdate(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const v5, 0x7f080004

    const v4, 0x7f080003

    const/4 v3, 0x4

    const/4 v2, 0x0

    const v1, 0x7f080019

    .line 728
    sget-boolean v0, Lcom/asus/mygazine/WidgetService;->mIsShowLogo:Z

    if-eqz v0, :cond_6

    .line 729
    const v0, 0x7f08001a

    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 733
    :goto_0
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mDate:Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 734
    sget-boolean v0, Lcom/asus/mygazine/WidgetService;->mIsShowDateTag:Z

    if-eqz v0, :cond_7

    .line 735
    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 739
    :goto_1
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mAlbum:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mAlbum:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mAlbum:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 740
    :cond_0
    const v0, 0x7f070003

    invoke-virtual {p0, v0}, Lcom/asus/mygazine/WidgetService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/mygazine/WidgetService;->mAlbum:Ljava/lang/String;

    .line 742
    :cond_1
    const v0, 0x7f08000d

    iget-object v1, p0, Lcom/asus/mygazine/WidgetService;->mAlbum:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 743
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mSong:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mSong:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mSong:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 744
    :cond_2
    const v0, 0x7f070004

    invoke-virtual {p0, v0}, Lcom/asus/mygazine/WidgetService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/mygazine/WidgetService;->mSong:Ljava/lang/String;

    .line 746
    :cond_3
    const v0, 0x7f08000e

    iget-object v1, p0, Lcom/asus/mygazine/WidgetService;->mSong:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 747
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mArtist:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mArtist:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mArtist:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 748
    :cond_4
    const v0, 0x7f070005

    invoke-virtual {p0, v0}, Lcom/asus/mygazine/WidgetService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/mygazine/WidgetService;->mArtist:Ljava/lang/String;

    .line 750
    :cond_5
    const v0, 0x7f08000f

    iget-object v1, p0, Lcom/asus/mygazine/WidgetService;->mArtist:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 751
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mAlbumURI:Landroid/net/Uri;

    if-eqz v0, :cond_8

    .line 753
    const v0, 0x7f08000b

    iget-object v1, p0, Lcom/asus/mygazine/WidgetService;->mAlbumURI:Landroid/net/Uri;

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setImageViewUri(ILandroid/net/Uri;)V

    .line 761
    :goto_2
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mWebTitle:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 762
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mWebTitle:Ljava/lang/String;

    invoke-virtual {p2, v5, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 768
    :goto_3
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mWebThumbNail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    .line 769
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mWebThumbNail:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v4, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 775
    :goto_4
    return-void

    .line 731
    :cond_6
    const v0, 0x7f08001a

    invoke-virtual {p2, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_0

    .line 737
    :cond_7
    invoke-virtual {p2, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_1

    .line 757
    :cond_8
    const v0, 0x7f08000b

    const/high16 v1, 0x7f02

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_2

    .line 765
    :cond_9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v5, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_3

    .line 772
    :cond_a
    const v0, 0x7f020056

    invoke-virtual {p2, v4, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_4
.end method

.method private doResize(Landroid/content/Intent;)V
    .locals 11
    .parameter "intent"

    .prologue
    const/4 v8, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 301
    const-string v7, "widget_id"

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 302
    .local v6, widgetId:I
    const-string v7, "size"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 303
    .local v1, newSize:[I
    const-string v7, "widget_type"

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 304
    .local v2, type:I
    if-le v6, v8, :cond_0

    .line 305
    iget-object v7, p0, Lcom/asus/mygazine/WidgetService;->mDBHelper:Lcom/asus/mygazine/WidgetSizeDBHelper;

    invoke-virtual {v7}, Lcom/asus/mygazine/WidgetSizeDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 306
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 307
    .local v3, values:Landroid/content/ContentValues;
    new-array v5, v10, [Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v9

    .line 308
    .local v5, whereArgs:[Ljava/lang/String;
    const-string v7, "width"

    aget v8, v1, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 309
    const-string v7, "height"

    aget v8, v1, v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 310
    const-string v7, "widgetsize"

    const-string v8, "widgetId=?"

    invoke-virtual {v0, v7, v3, v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 313
    if-nez v2, :cond_1

    .line 315
    new-instance v4, Landroid/widget/RemoteViews;

    const-string v7, "com.asus.mygazine"

    const v8, 0x7f030001

    invoke-direct {v4, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 316
    .local v4, views:Landroid/widget/RemoteViews;
    invoke-direct {p0, p0, v4, v9}, Lcom/asus/mygazine/WidgetService;->performUpdate(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 317
    invoke-direct {p0, p0, v4}, Lcom/asus/mygazine/WidgetService;->setOnClickListener(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 328
    :goto_0
    aget v7, v1, v9

    aget v8, v1, v10

    invoke-direct {p0, v4, v7, v8, v2}, Lcom/asus/mygazine/WidgetService;->defineViewsSize(Landroid/widget/RemoteViews;III)V

    .line 329
    invoke-direct {p0, p0, v4}, Lcom/asus/mygazine/WidgetService;->doCommonUpdate(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 330
    invoke-direct {p0, p0, v4, v2}, Lcom/asus/mygazine/WidgetService;->setCommonOnClickListener(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    .line 331
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v7

    invoke-virtual {v7, v6, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 334
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #values:Landroid/content/ContentValues;
    .end local v4           #views:Landroid/widget/RemoteViews;
    .end local v5           #whereArgs:[Ljava/lang/String;
    :cond_0
    return-void

    .line 318
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3       #values:Landroid/content/ContentValues;
    .restart local v5       #whereArgs:[Ljava/lang/String;
    :cond_1
    if-ne v2, v10, :cond_0

    .line 320
    new-instance v4, Landroid/widget/RemoteViews;

    const-string v7, "com.asus.mygazine"

    const v8, 0x7f030002

    invoke-direct {v4, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 321
    .restart local v4       #views:Landroid/widget/RemoteViews;
    invoke-direct {p0, p0, v4, v9}, Lcom/asus/mygazine/WidgetService;->performUpdate2(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 322
    invoke-direct {p0, p0, v4}, Lcom/asus/mygazine/WidgetService;->setOnClickListener2(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    goto :goto_0
.end method

.method private doSlideShow(Landroid/content/Context;II)V
    .locals 4
    .parameter "context"
    .parameter "widget"
    .parameter "operation"

    .prologue
    .line 337
    iput-object p1, p0, Lcom/asus/mygazine/WidgetService;->mContext:Landroid/content/Context;

    .line 338
    packed-switch p3, :pswitch_data_0

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 345
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/asus/mygazine/WidgetService;->updateImmediate(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    const-string v0, "WidgetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playSlideShow mLocation1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/mygazine/WidgetService;->mLocation:[I

    aget v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PhotoMonitor.sSnaps.size()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/asus/mygazine/PhotoMonitor;->sSnaps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/mygazine/WidgetService;->MSG_CHANGE_VIEW:[I

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/mygazine/WidgetService;->MSG_CHANGE_VIEW:[I

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mIsUpdating:[Z

    aget-boolean v0, v0, p2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/asus/mygazine/WidgetService;->mVisibility:Z

    if-eqz v0, :cond_0

    .line 350
    sget-boolean v0, Lcom/asus/mygazine/WidgetService;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "WidgetService"

    const-string v1, "=== playSlideShow ==="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_2
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/mygazine/WidgetService;->MSG_CHANGE_VIEW:[I

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 355
    :pswitch_1
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/mygazine/WidgetService;->MSG_CHANGE_VIEW:[I

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 356
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mLocation:[I

    const/4 v1, -0x1

    aput v1, v0, p2

    .line 357
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/asus/mygazine/WidgetService;->performCommonUpdate(Landroid/content/Context;IZ)V

    goto :goto_0

    .line 360
    :pswitch_2
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/mygazine/WidgetService;->MSG_CHANGE_VIEW:[I

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 363
    :pswitch_3
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/mygazine/WidgetService;->MSG_CHANGE_VIEW:[I

    aget v1, v1, p2

    sget v2, Lcom/asus/mygazine/WidgetService;->mSlideShowInterval:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 338
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private doTransition()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 114
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mLock:Ljava/lang/Integer;

    monitor-enter v0

    .line 115
    :try_start_0
    sget-object v1, Lcom/asus/mygazine/PhotoMonitor;->sSnaps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 116
    monitor-exit v0

    move v0, v2

    .line 118
    :goto_0
    return v0

    .line 117
    :cond_0
    monitor-exit v0

    .line 118
    const/4 v0, 0x0

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getPendingIntentForSettings(Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1195
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.asus.mygazine.launchSetting"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1196
    const-string v1, "com.asus.mygazine"

    const-string v2, "com.asus.mygazine.MyGazineSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1198
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1199
    const/4 v1, 0x0

    invoke-static {p0, p2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1200
    return-object v0
.end method

.method private getPhotoDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "date"

    .prologue
    .line 370
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v4, Lcom/asus/mygazine/WidgetService;->DATE_FORMAT:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 371
    .local v0, dateFormatter:Ljava/text/SimpleDateFormat;
    const-wide/16 v2, 0x0

    .line 373
    .local v2, snap_date:J
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 381
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    return-object v4

    .line 374
    :catch_0
    move-exception v1

    .line 378
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v4, "WidgetService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPhotoDate - date = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual {p0}, Lcom/asus/mygazine/WidgetService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private getSlideshowIndex(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mLock:Ljava/lang/Integer;

    monitor-enter v0

    .line 123
    :try_start_0
    sget-object v1, Lcom/asus/mygazine/PhotoMonitor;->sSnaps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 124
    add-int/lit8 p1, p1, 0x1

    .line 125
    sget-object v1, Lcom/asus/mygazine/PhotoMonitor;->sSnaps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, p1, v1

    monitor-exit v0

    move v0, v1

    .line 128
    :goto_0
    return v0

    .line 127
    :cond_0
    monitor-exit v0

    .line 128
    const/4 v0, -0x1

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isGalleryPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "pkgName"

    .prologue
    const/4 v5, 0x0

    .line 215
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 216
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 217
    .local v1, pi:Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    .line 218
    const/4 v3, 0x1

    .line 225
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return v3

    .line 221
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 222
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v3, Lcom/asus/mygazine/WidgetService;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "WidgetService"

    const-string v4, "isGalleryPackage CreatePackageContext error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v3, v5

    .line 223
    goto :goto_0

    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #pi:Landroid/content/pm/PackageInfo;
    .restart local v2       #pm:Landroid/content/pm/PackageManager;
    :cond_1
    move v3, v5

    .line 225
    goto :goto_0
.end method

.method private performCommonUpdate(Landroid/content/Context;IZ)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 653
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mDBHelper:Lcom/asus/mygazine/WidgetSizeDBHelper;

    invoke-virtual {v0}, Lcom/asus/mygazine/WidgetSizeDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 654
    new-array v4, v9, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    .line 655
    const-string v1, "widgetsize"

    iget-object v2, p0, Lcom/asus/mygazine/WidgetService;->WIDGET_SIZE_PROJECTIONS:[Ljava/lang/String;

    const-string v3, "widgetType=?"

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 657
    const-string v1, "WidgetService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performCommonUpdate- cur="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    if-eqz v0, :cond_3

    .line 661
    if-nez p2, :cond_1

    .line 663
    :try_start_0
    new-instance v1, Landroid/widget/RemoteViews;

    const-string v2, "com.asus.mygazine"

    const v3, 0x7f030001

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 664
    invoke-direct {p0, p1, v1, p3}, Lcom/asus/mygazine/WidgetService;->performUpdate(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 665
    invoke-direct {p0, p1, v1}, Lcom/asus/mygazine/WidgetService;->setOnClickListener(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 676
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/asus/mygazine/WidgetService;->doCommonUpdate(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 677
    invoke-direct {p0, p1, v1, p2}, Lcom/asus/mygazine/WidgetService;->setCommonOnClickListener(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    .line 679
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 680
    sget-boolean v2, Lcom/asus/mygazine/WidgetService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "WidgetService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "performCommonUpdate- type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " widgetId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " height="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_0
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-direct {p0, v1, v2, v3, p2}, Lcom/asus/mygazine/WidgetService;->defineViewsSize(Landroid/widget/RemoteViews;III)V

    .line 683
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 686
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 666
    :cond_1
    if-ne p2, v9, :cond_2

    .line 668
    :try_start_1
    new-instance v1, Landroid/widget/RemoteViews;

    const-string v2, "com.asus.mygazine"

    const v3, 0x7f030002

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 669
    invoke-direct {p0, p1, v1, p3}, Lcom/asus/mygazine/WidgetService;->performUpdate2(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 670
    invoke-direct {p0, p1, v1}, Lcom/asus/mygazine/WidgetService;->setOnClickListener2(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 686
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 689
    :cond_3
    :goto_2
    return-void

    .line 686
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method private performUpdate(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 1097
    iget-object v1, p0, Lcom/asus/mygazine/WidgetService;->mLock:Ljava/lang/Integer;

    monitor-enter v1

    .line 1099
    :try_start_0
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mLocation:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    if-le v0, v8, :cond_5

    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mIsUpdating:[Z

    const/4 v2, 0x0

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_5

    sget-object v0, Lcom/asus/mygazine/PhotoMonitor;->sSnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 1101
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/asus/mygazine/WidgetService;->updateImmediate(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1102
    const-string v0, "WidgetService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performUpdate- mLocation1 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/mygazine/WidgetService;->mLocation:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " PhotoMonitor.sSnaps.size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/asus/mygazine/PhotoMonitor;->sSnaps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mLocation:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/asus/mygazine/WidgetService;->mLocation:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-direct {p0, v3}, Lcom/asus/mygazine/WidgetService;->getSlideshowIndex(I)I

    move-result v3

    aput v3, v0, v2

    .line 1105
    :cond_0
    const v0, 0x7f080014

    const-string v2, "setChildScaleType"

    sget-object v3, Lcom/asus/mygazine/WidgetService;->mScaleType:Ljava/lang/String;

    invoke-virtual {p2, v0, v2, v3}, Landroid/widget/RemoteViews;->setString(ILjava/lang/String;Ljava/lang/String;)V

    .line 1106
    sget-boolean v0, Lcom/asus/mygazine/WidgetService;->DBG:Z

    if-eqz v0, :cond_1

    const-string v2, "WidgetService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performUpdate - show "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/asus/mygazine/WidgetService;->mLocation:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " snapshot="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v0, Lcom/asus/mygazine/PhotoMonitor;->sSnaps:Ljava/util/List;

    iget-object v4, p0, Lcom/asus/mygazine/WidgetService;->mLocation:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/mygazine/PhotoMonitor$Snapshot;

    invoke-virtual {v0}, Lcom/asus/mygazine/PhotoMonitor$Snapshot;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " photo date="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v0, Lcom/asus/mygazine/PhotoMonitor;->sSnaps:Ljava/util/List;

    iget-object v4, p0, Lcom/asus/mygazine/WidgetService;->mLocation:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/mygazine/PhotoMonitor$Snapshot;

    invoke-virtual {v0}, Lcom/asus/mygazine/PhotoMonitor$Snapshot;->getDate()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/asus/mygazine/WidgetService;->getPhotoDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    :cond_1
    const v2, 0x7f080018

    sget-object v0, Lcom/asus/mygazine/PhotoMonitor;->sSnaps:Ljava/util/List;

    iget-object v3, p0, Lcom/asus/mygazine/WidgetService;->mLocation:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/mygazine/PhotoMonitor$Snapshot;

    invoke-virtual {v0}, Lcom/asus/mygazine/PhotoMonitor$Snapshot;->getDate()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/asus/mygazine/WidgetService;->getPhotoDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1108
    const v0, 0x7f080018

    sget-boolean v2, Lcom/asus/mygazine/WidgetService;->mIsShowPhotoDateTag:Z

    if-eqz v2, :cond_3

    move v2, v6

    :goto_0
    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1109
    sget-boolean v0, Lcom/asus/mygazine/WidgetService;->mTransitionEffect:Z

    if-eqz v0, :cond_4

    .line 1111
    invoke-direct {p0, p2, p3}, Lcom/asus/mygazine/WidgetService;->showAnimationLocked1(Landroid/widget/RemoteViews;Z)V

    .line 1139
    :cond_2
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1141
    iget-boolean v0, p0, Lcom/asus/mygazine/WidgetService;->mIsEventView:Z

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/asus/mygazine/WidgetService;->mIsShowEventTag:Z

    if-eqz v0, :cond_7

    .line 1143
    const v0, 0x7f08001b

    invoke-virtual {p2, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1144
    const v0, 0x7f08001c

    iget-object v1, p0, Lcom/asus/mygazine/WidgetService;->mEventTime:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1145
    const v0, 0x7f08001d

    iget-object v1, p0, Lcom/asus/mygazine/WidgetService;->mEventTitle:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1151
    :goto_2
    const v0, 0x7f02001e

    .line 1153
    iget v1, p0, Lcom/asus/mygazine/WidgetService;->mWeatherIconId:I

    if-lez v1, :cond_9

    iget v1, p0, Lcom/asus/mygazine/WidgetService;->mWeatherIconId:I

    sget-object v2, Lcom/asus/mygazine/WeatherUtils;->ICON_TABLE:[I

    array-length v2, v2

    if-gt v1, v2, :cond_9

    .line 1154
    sget-object v0, Lcom/asus/mygazine/WeatherUtils;->ICON_TABLE:[I

    iget v1, p0, Lcom/asus/mygazine/WidgetService;->mWeatherIconId:I

    sub-int/2addr v1, v9

    aget v0, v0, v1

    .line 1155
    if-lez v0, :cond_8

    move v1, v0

    move v0, v9

    .line 1162
    :goto_3
    const v2, 0x7f080020

    iget-object v3, p0, Lcom/asus/mygazine/WidgetService;->mWeatherText:Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1163
    const v2, 0x7f080021

    iget-object v3, p0, Lcom/asus/mygazine/WidgetService;->mWeatherContent:Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1164
    if-eqz v0, :cond_a

    .line 1166
    const v0, 0x7f08001f

    invoke-virtual {p2, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1167
    const v0, 0x7f08001f

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1171
    :goto_4
    iget-boolean v0, p0, Lcom/asus/mygazine/WidgetService;->mIsWeatherView:Z

    if-eqz v0, :cond_b

    sget-boolean v0, Lcom/asus/mygazine/WidgetService;->mIsShowWeatherTag:Z

    if-eqz v0, :cond_b

    .line 1172
    const v0, 0x7f08001e

    invoke-virtual {p2, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1175
    :goto_5
    return-void

    :cond_3
    move v2, v7

    .line 1108
    goto :goto_0

    .line 1116
    :cond_4
    const v2, 0x7f080016

    :try_start_1
    sget-object v0, Lcom/asus/mygazine/PhotoMonitor;->sSnaps:Ljava/util/List;

    iget-object v3, p0, Lcom/asus/mygazine/WidgetService;->mLocation:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/mygazine/PhotoMonitor$Snapshot;

    invoke-virtual {v0}, Lcom/asus/mygazine/PhotoMonitor$Snapshot;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroid/widget/RemoteViews;->setImageViewUri(ILandroid/net/Uri;)V

    .line 1117
    const v0, 0x7f080016

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1119
    iget-object v2, p0, Lcom/asus/mygazine/WidgetService;->mLastPhoto:[Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v0, Lcom/asus/mygazine/PhotoMonitor;->sSnaps:Ljava/util/List;

    iget-object v4, p0, Lcom/asus/mygazine/WidgetService;->mLocation:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/mygazine/PhotoMonitor$Snapshot;

    invoke-virtual {v0}, Lcom/asus/mygazine/PhotoMonitor$Snapshot;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 1120
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mIsFlippingAtFirstTime:[Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 1121
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mNext:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    if-ne v0, v8, :cond_2

    .line 1122
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mNext:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v0, v2

    goto/16 :goto_1

    .line 1139
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1127
    :cond_5
    const v0, 0x7f080014

    :try_start_2
    const-string v2, "setChildScaleType"

    const-string v3, "centerCrop"

    invoke-virtual {p2, v0, v2, v3}, Landroid/widget/RemoteViews;->setString(ILjava/lang/String;Ljava/lang/String;)V

    .line 1128
    sget-boolean v0, Lcom/asus/mygazine/WidgetService;->DBG:Z

    if-eqz v0, :cond_6

    const-string v0, "WidgetService"

    const-string v2, "performUpdate - show default photo"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    :cond_6
    const v0, 0x7f080018

    const/4 v2, 0x4

    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1130
    const v0, 0x7f080016

    const v2, 0x7f02005a

    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1131
    const v0, 0x7f080015

    const v2, 0x7f02005a

    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1133
    const v0, 0x7f080015

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1134
    const v0, 0x7f080016

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1136
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mNext:[I

    const/4 v2, 0x0

    const/4 v3, -0x1

    aput v3, v0, v2

    .line 1137
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mIsFlippingAtFirstTime:[Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-boolean v3, v0, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 1148
    :cond_7
    const v0, 0x7f08001b

    invoke-virtual {p2, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_2

    :cond_8
    move v1, v0

    move v0, v6

    .line 1158
    goto/16 :goto_3

    :cond_9
    move v1, v0

    move v0, v6

    .line 1160
    goto/16 :goto_3

    .line 1170
    :cond_a
    const v0, 0x7f08001f

    invoke-virtual {p2, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_4

    .line 1174
    :cond_b
    const v0, 0x7f08001e

    invoke-virtual {p2, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_5
.end method

.method private performUpdate2(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const v9, 0x7f08001f

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 955
    iget-object v1, p0, Lcom/asus/mygazine/WidgetService;->mLock:Ljava/lang/Integer;

    monitor-enter v1

    .line 957
    :try_start_0
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mLocation:[I

    const/4 v2, 0x1

    aget v0, v0, v2

    const/4 v2, -0x1

    if-le v0, v2, :cond_5

    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mIsUpdating:[Z

    const/4 v2, 0x1

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_5

    sget-object v0, Lcom/asus/mygazine/PhotoMonitor;->sSnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 958
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/asus/mygazine/WidgetService;->updateImmediate(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 959
    const-string v0, "WidgetService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performUpdate2- mLocation2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/mygazine/WidgetService;->mLocation:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " PhotoMonitor.sSnaps.size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/asus/mygazine/PhotoMonitor;->sSnaps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mLocation:[I

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/asus/mygazine/WidgetService;->mLocation:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-direct {p0, v3}, Lcom/asus/mygazine/WidgetService;->getSlideshowIndex(I)I

    move-result v3

    aput v3, v0, v2

    .line 962
    :cond_0
    const v0, 0x7f080014

    const-string v2, "setChildScaleType"

    sget-object v3, Lcom/asus/mygazine/WidgetService;->mScaleType:Ljava/lang/String;

    invoke-virtual {p2, v0, v2, v3}, Landroid/widget/RemoteViews;->setString(ILjava/lang/String;Ljava/lang/String;)V

    .line 963
    sget-boolean v0, Lcom/asus/mygazine/WidgetService;->DBG:Z

    if-eqz v0, :cond_1

    const-string v2, "WidgetService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performUpdate2 - show "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/asus/mygazine/WidgetService;->mLocation:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " snapshot="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v0, Lcom/asus/mygazine/PhotoMonitor;->sSnaps:Ljava/util/List;

    iget-object v4, p0, Lcom/asus/mygazine/WidgetService;->mLocation:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/mygazine/PhotoMonitor$Snapshot;

    invoke-virtual {v0}, Lcom/asus/mygazine/PhotoMonitor$Snapshot;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " photo date="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v0, Lcom/asus/mygazine/PhotoMonitor;->sSnaps:Ljava/util/List;

    iget-object v4, p0, Lcom/asus/mygazine/WidgetService;->mLocation:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/mygazine/PhotoMonitor$Snapshot;

    invoke-virtual {v0}, Lcom/asus/mygazine/PhotoMonitor$Snapshot;->getDate()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/asus/mygazine/WidgetService;->getPhotoDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    :cond_1
    const v2, 0x7f080018

    sget-object v0, Lcom/asus/mygazine/PhotoMonitor;->sSnaps:Ljava/util/List;

    iget-object v3, p0, Lcom/asus/mygazine/WidgetService;->mLocation:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/mygazine/PhotoMonitor$Snapshot;

    invoke-virtual {v0}, Lcom/asus/mygazine/PhotoMonitor$Snapshot;->getDate()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/asus/mygazine/WidgetService;->getPhotoDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 965
    const v0, 0x7f080018

    sget-boolean v2, Lcom/asus/mygazine/WidgetService;->mIsShowPhotoDateTag:Z

    if-eqz v2, :cond_3

    move v2, v7

    :goto_0
    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 966
    sget-boolean v0, Lcom/asus/mygazine/WidgetService;->mTransitionEffect:Z

    if-eqz v0, :cond_4

    .line 968
    invoke-direct {p0, p2, p3}, Lcom/asus/mygazine/WidgetService;->showAnimationLocked2(Landroid/widget/RemoteViews;Z)V

    .line 994
    :cond_2
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 996
    const v0, 0x7f02001f

    .line 998
    iget v1, p0, Lcom/asus/mygazine/WidgetService;->mWeatherIconId:I

    if-lez v1, :cond_8

    iget v1, p0, Lcom/asus/mygazine/WidgetService;->mWeatherIconId:I

    sget-object v2, Lcom/asus/mygazine/WeatherUtils;->ICON_TABLE:[I

    array-length v2, v2

    if-gt v1, v2, :cond_8

    .line 999
    sget-object v0, Lcom/asus/mygazine/WeatherUtils;->ICON_TABLE2:[I

    iget v1, p0, Lcom/asus/mygazine/WidgetService;->mWeatherIconId:I

    sub-int/2addr v1, v6

    aget v0, v0, v1

    .line 1000
    if-lez v0, :cond_7

    move v1, v0

    move v0, v6

    .line 1006
    :goto_2
    iget-boolean v2, p0, Lcom/asus/mygazine/WidgetService;->mIsWeatherView:Z

    if-eqz v2, :cond_a

    .line 1007
    const v2, 0x7f080024

    iget-object v3, p0, Lcom/asus/mygazine/WidgetService;->mWeatherCityName:Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1008
    const v2, 0x7f080025

    iget-object v3, p0, Lcom/asus/mygazine/WidgetService;->mWeatherTemperature2:Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1009
    const v2, 0x7f080020

    iget-object v3, p0, Lcom/asus/mygazine/WidgetService;->mWeatherTypes:Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1010
    const v2, 0x7f080024

    invoke-virtual {p2, v2, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1011
    const v2, 0x7f080025

    invoke-virtual {p2, v2, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1012
    const v2, 0x7f080020

    invoke-virtual {p2, v2, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1013
    const v2, 0x7f080026

    invoke-virtual {p2, v2, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1014
    if-eqz v0, :cond_9

    .line 1015
    invoke-virtual {p2, v9, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1016
    invoke-virtual {p2, v9, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1028
    :goto_3
    iget v0, p0, Lcom/asus/mygazine/WidgetService;->mEmailCnt:I

    const/16 v1, 0x3e7

    if-le v0, v1, :cond_b

    const-string v0, "999+"

    .line 1029
    :goto_4
    const v1, 0x7f080029

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1030
    iget v0, p0, Lcom/asus/mygazine/WidgetService;->mEmailCnt:I

    if-ne v0, v6, :cond_c

    .line 1031
    const v0, 0x7f08002a

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1036
    :goto_5
    iget v0, p0, Lcom/asus/mygazine/WidgetService;->mTodayEventCount:I

    const/16 v1, 0x3e7

    if-le v0, v1, :cond_d

    const-string v0, "999+"

    .line 1037
    :goto_6
    const v1, 0x7f08002d

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1038
    iget v0, p0, Lcom/asus/mygazine/WidgetService;->mTodayEventCount:I

    if-ne v0, v6, :cond_e

    .line 1039
    const v0, 0x7f08002e

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1044
    :goto_7
    iget v0, p0, Lcom/asus/mygazine/WidgetService;->mBookNumber:I

    const/16 v1, 0x3e7

    if-le v0, v1, :cond_f

    const-string v0, "999+"

    .line 1045
    :goto_8
    const v1, 0x7f080031

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1046
    iget v0, p0, Lcom/asus/mygazine/WidgetService;->mBookNumber:I

    if-ne v0, v6, :cond_10

    .line 1047
    const v0, 0x7f080032

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1051
    :goto_9
    return-void

    :cond_3
    move v2, v8

    .line 965
    goto/16 :goto_0

    .line 971
    :cond_4
    const v2, 0x7f080016

    :try_start_1
    sget-object v0, Lcom/asus/mygazine/PhotoMonitor;->sSnaps:Ljava/util/List;

    iget-object v3, p0, Lcom/asus/mygazine/WidgetService;->mLocation:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/mygazine/PhotoMonitor$Snapshot;

    invoke-virtual {v0}, Lcom/asus/mygazine/PhotoMonitor$Snapshot;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroid/widget/RemoteViews;->setImageViewUri(ILandroid/net/Uri;)V

    .line 972
    const v0, 0x7f080016

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 973
    const v0, 0x7f080015

    const/4 v2, 0x4

    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 975
    iget-object v2, p0, Lcom/asus/mygazine/WidgetService;->mLastPhoto:[Ljava/lang/String;

    const/4 v3, 0x1

    sget-object v0, Lcom/asus/mygazine/PhotoMonitor;->sSnaps:Ljava/util/List;

    iget-object v4, p0, Lcom/asus/mygazine/WidgetService;->mLocation:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/mygazine/PhotoMonitor$Snapshot;

    invoke-virtual {v0}, Lcom/asus/mygazine/PhotoMonitor$Snapshot;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 976
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mIsFlippingAtFirstTime:[Z

    const/4 v2, 0x1

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 977
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mNext:[I

    const/4 v2, 0x1

    aget v0, v0, v2

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 978
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mNext:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v0, v2

    goto/16 :goto_1

    .line 994
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 982
    :cond_5
    :try_start_2
    sget-boolean v0, Lcom/asus/mygazine/WidgetService;->DBG:Z

    if-eqz v0, :cond_6

    const-string v0, "WidgetService"

    const-string v2, "performUpdate2 - show default photo"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    :cond_6
    const v0, 0x7f080014

    const-string v2, "setChildScaleType"

    const-string v3, "centerCrop"

    invoke-virtual {p2, v0, v2, v3}, Landroid/widget/RemoteViews;->setString(ILjava/lang/String;Ljava/lang/String;)V

    .line 984
    const v0, 0x7f080018

    const/4 v2, 0x4

    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 985
    const v0, 0x7f080016

    const v2, 0x7f02005a

    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 986
    const v0, 0x7f080015

    const v2, 0x7f02005a

    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 988
    const v0, 0x7f080015

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 989
    const v0, 0x7f080016

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 991
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mNext:[I

    const/4 v2, 0x1

    const/4 v3, -0x1

    aput v3, v0, v2

    .line 992
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mIsFlippingAtFirstTime:[Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-boolean v3, v0, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :cond_7
    move v1, v0

    move v0, v7

    .line 1003
    goto/16 :goto_2

    :cond_8
    move v1, v0

    move v0, v7

    .line 1005
    goto/16 :goto_2

    .line 1018
    :cond_9
    invoke-virtual {p2, v9, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_3

    .line 1021
    :cond_a
    const v0, 0x7f080024

    invoke-virtual {p2, v0, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1022
    const v0, 0x7f080025

    invoke-virtual {p2, v0, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1023
    const v0, 0x7f080020

    invoke-virtual {p2, v0, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1024
    invoke-virtual {p2, v9, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1025
    const v0, 0x7f080026

    invoke-virtual {p2, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_3

    .line 1028
    :cond_b
    iget v0, p0, Lcom/asus/mygazine/WidgetService;->mEmailCnt:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 1033
    :cond_c
    const v0, 0x7f08002a

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 1036
    :cond_d
    iget v0, p0, Lcom/asus/mygazine/WidgetService;->mTodayEventCount:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 1041
    :cond_e
    const v0, 0x7f08002e

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 1044
    :cond_f
    iget v0, p0, Lcom/asus/mygazine/WidgetService;->mBookNumber:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    .line 1049
    :cond_10
    const v0, 0x7f080032

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_9
.end method

.method private queryDate(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x2

    .line 638
    invoke-static {}, Lcom/asus/mygazine/CalendarUtils;->getNextMidnightTimeMillis()J

    move-result-wide v0

    .line 639
    sget-boolean v2, Lcom/asus/mygazine/WidgetService;->DBG:Z

    if-eqz v2, :cond_0

    .line 641
    const/4 v2, 0x3

    invoke-static {v6, v2}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v2

    .line 642
    const-string v3, "WidgetService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryDate - next update midnight time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_0
    invoke-static {p1, v0, v1, v6}, Lcom/asus/mygazine/CalendarUtils;->startAlarm(Landroid/content/Context;JI)V

    .line 646
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 647
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Lcom/asus/mygazine/WidgetService;->DATE_FORMAT:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 648
    iput-object v0, p0, Lcom/asus/mygazine/WidgetService;->mDate:Ljava/lang/String;

    .line 649
    return-void
.end method

.method private queryEmailCount(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 574
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/asus/mygazine/EmailUtils;->getUnreadCountByMailboxType(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/asus/mygazine/WidgetService;->mEmailCnt:I

    .line 575
    sget-boolean v0, Lcom/asus/mygazine/WidgetService;->DBG:Z

    if-eqz v0, :cond_0

    .line 576
    const-string v0, "WidgetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryEmailCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/asus/mygazine/WidgetService;->mEmailCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_0
    return-void
.end method

.method private queryEvent(Landroid/content/Context;)V
    .locals 12
    .parameter

    .prologue
    .line 582
    const/4 v0, 0x2

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    .line 583
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 584
    const-wide/32 v2, 0x240c8400

    .line 585
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 586
    const-wide/16 v6, 0x0

    .line 587
    invoke-static {v1, v2, v3, v4, v5}, Lcom/asus/mygazine/CalendarUtils;->getUpcomingInstancesCursor(Landroid/content/ContentResolver;JJ)Landroid/database/Cursor;

    move-result-object v2

    .line 589
    invoke-static {}, Lcom/asus/mygazine/CalendarUtils;->getMidnightTimeMillis()J

    move-result-wide v8

    invoke-static {}, Lcom/asus/mygazine/CalendarUtils;->getNextMidnightTimeMillis()J

    move-result-wide v10

    invoke-static {v1, v8, v9, v10, v11}, Lcom/asus/mygazine/CalendarUtils;->getEventNumber(Landroid/content/ContentResolver;JJ)I

    move-result v1

    iput v1, p0, Lcom/asus/mygazine/WidgetService;->mTodayEventCount:I

    .line 590
    sget-boolean v1, Lcom/asus/mygazine/WidgetService;->DBG:Z

    if-eqz v1, :cond_0

    .line 591
    const-string v1, "WidgetService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "queryEvent today event number="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v8, p0, Lcom/asus/mygazine/WidgetService;->mTodayEventCount:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_0
    if-eqz v2, :cond_9

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_9

    .line 596
    invoke-static {v2, v4, v5}, Lcom/asus/mygazine/CalendarUtils;->buildMarkedEvents(Landroid/database/Cursor;J)Lcom/asus/mygazine/MarkedEvents;

    move-result-object v1

    .line 598
    sget-boolean v3, Lcom/asus/mygazine/WidgetService;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "WidgetService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "queryEvent Count="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_1
    iget v3, v1, Lcom/asus/mygazine/MarkedEvents;->primaryCount:I

    if-lez v3, :cond_7

    .line 602
    invoke-static {v2, v1}, Lcom/asus/mygazine/CalendarUtils;->calculateUpdateTime(Landroid/database/Cursor;Lcom/asus/mygazine/MarkedEvents;)J

    move-result-wide v6

    .line 603
    invoke-static {v2}, Lcom/asus/mygazine/CalendarUtils;->getNearestEventInfo(Landroid/database/Cursor;)V

    .line 604
    sget-object v1, Lcom/asus/mygazine/CalendarUtils;->mEventTime:Ljava/lang/String;

    iput-object v1, p0, Lcom/asus/mygazine/WidgetService;->mEventTime:Ljava/lang/String;

    .line 605
    sget-object v1, Lcom/asus/mygazine/CalendarUtils;->mEventTitle:Ljava/lang/String;

    iput-object v1, p0, Lcom/asus/mygazine/WidgetService;->mEventTitle:Ljava/lang/String;

    .line 606
    sget-boolean v1, Lcom/asus/mygazine/WidgetService;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "WidgetService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "trigger time="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/asus/mygazine/WidgetService;->mIsEventView:Z

    .line 615
    :goto_0
    const-wide/16 v8, -0x1

    cmp-long v1, v6, v8

    if-eqz v1, :cond_3

    cmp-long v1, v6, v4

    if-gez v1, :cond_c

    .line 617
    :cond_3
    sget-boolean v1, Lcom/asus/mygazine/WidgetService;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "WidgetService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Encountered bad trigger time "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_4
    const-wide/32 v6, 0x1499700

    add-long v3, v4, v6

    .line 620
    :goto_1
    const/4 v1, 0x1

    invoke-static {p1, v3, v4, v1}, Lcom/asus/mygazine/CalendarUtils;->startAlarm(Landroid/content/Context;JI)V

    .line 621
    sget-boolean v1, Lcom/asus/mygazine/WidgetService;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "WidgetService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Scheduled next update at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 632
    :cond_5
    :goto_2
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 633
    :cond_6
    return-void

    .line 611
    :cond_7
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/asus/mygazine/WidgetService;->mIsEventView:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 632
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_8

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    .line 625
    :cond_9
    if-nez v2, :cond_b

    .line 626
    :try_start_2
    sget-boolean v0, Lcom/asus/mygazine/WidgetService;->DBG:Z

    if-eqz v0, :cond_a

    const-string v0, "WidgetService"

    const-string v1, "queryEvent - cur=null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_a
    :goto_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/mygazine/WidgetService;->mIsEventView:Z

    goto :goto_2

    .line 628
    :cond_b
    sget-boolean v0, Lcom/asus/mygazine/WidgetService;->DBG:Z

    if-eqz v0, :cond_a

    const-string v0, "WidgetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryEvent - cur count="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_c
    move-wide v3, v6

    goto :goto_1
.end method

.method private queryMusic(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 435
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.music."

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 436
    const-string v5, "album"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/asus/mygazine/WidgetService;->mAlbum:Ljava/lang/String;

    .line 437
    const-string v5, "artist"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/asus/mygazine/WidgetService;->mArtist:Ljava/lang/String;

    .line 438
    const-string v5, "track"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/asus/mygazine/WidgetService;->mSong:Ljava/lang/String;

    .line 439
    const-string v5, "playing"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/asus/mygazine/WidgetService;->mIsPlaying:Z

    .line 440
    sget-boolean v5, Lcom/asus/mygazine/WidgetService;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "WidgetService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "queryMusic playstatechanged action - curArtist="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/asus/mygazine/WidgetService;->mArtist:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,curalbum="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/asus/mygazine/WidgetService;->mAlbum:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,curtitle="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/asus/mygazine/WidgetService;->mSong:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,playing="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/asus/mygazine/WidgetService;->mIsPlaying:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/asus/mygazine/WidgetService;->mSong:Ljava/lang/String;

    iget-object v6, p0, Lcom/asus/mygazine/WidgetService;->mAlbum:Ljava/lang/String;

    iget-object v7, p0, Lcom/asus/mygazine/WidgetService;->mArtist:Ljava/lang/String;

    invoke-static {p1, v5, v6, v7}, Lcom/asus/mygazine/MusicUtils;->getAlbumId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    .line 454
    .local v1, albumid:J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-lez v5, :cond_4

    .line 455
    const-wide/16 v5, -0x1

    invoke-static {p1, v5, v6, v1, v2}, Lcom/asus/mygazine/MusicUtils;->isAlbumURI(Landroid/content/Context;JJ)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 456
    sget-object v5, Lcom/asus/mygazine/MusicUtils;->sUri:Landroid/net/Uri;

    iput-object v5, p0, Lcom/asus/mygazine/WidgetService;->mAlbumURI:Landroid/net/Uri;

    .line 468
    :goto_1
    sget-boolean v5, Lcom/asus/mygazine/WidgetService;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "WidgetService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "queryMusic curArtist="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/asus/mygazine/WidgetService;->mArtist:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,curalbum="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/asus/mygazine/WidgetService;->mAlbum:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,curtitle="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/asus/mygazine/WidgetService;->mSong:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,mAlbumURI="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/asus/mygazine/WidgetService;->mAlbumURI:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    .end local v1           #albumid:J
    :cond_1
    :goto_2
    return-void

    .line 442
    :cond_2
    sget-boolean v5, Lcom/asus/mygazine/MusicUtils;->sIsGoogleMusic:Z

    if-eqz v5, :cond_0

    .line 443
    const-string v5, "com.google.android.music"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 444
    .local v0, MusicContext:Landroid/content/Context;
    const-string v5, "Music"

    const/4 v6, 0x4

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 445
    .local v4, prefs:Landroid/content/SharedPreferences;
    const-string v5, "curartist"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/asus/mygazine/WidgetService;->mArtist:Ljava/lang/String;

    .line 446
    const-string v5, "curalbum"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/asus/mygazine/WidgetService;->mAlbum:Ljava/lang/String;

    .line 447
    const-string v5, "curtitle"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/asus/mygazine/WidgetService;->mSong:Ljava/lang/String;

    .line 448
    sget-boolean v5, Lcom/asus/mygazine/WidgetService;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "WidgetService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "queryMusic prefs - curArtist="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/asus/mygazine/WidgetService;->mArtist:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,curalbum="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/asus/mygazine/WidgetService;->mAlbum:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,curtitle="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/asus/mygazine/WidgetService;->mSong:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 469
    .end local v0           #MusicContext:Landroid/content/Context;
    .end local v4           #prefs:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 470
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "WidgetService"

    const-string v6, "CreatePackageContext error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 459
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #albumid:J
    :cond_3
    const/4 v5, 0x0

    :try_start_1
    iput-object v5, p0, Lcom/asus/mygazine/WidgetService;->mAlbumURI:Landroid/net/Uri;

    goto/16 :goto_1

    .line 463
    :cond_4
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/asus/mygazine/WidgetService;->mArtist:Ljava/lang/String;

    .line 464
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/asus/mygazine/WidgetService;->mAlbum:Ljava/lang/String;

    .line 465
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/asus/mygazine/WidgetService;->mSong:Ljava/lang/String;

    .line 466
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/asus/mygazine/WidgetService;->mAlbumURI:Landroid/net/Uri;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private queryReader(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 499
    invoke-static {p1}, Lcom/asus/mygazine/ReaderUtils;->getBookNumber(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/asus/mygazine/WidgetService;->mBookNumber:I

    .line 500
    sget-boolean v0, Lcom/asus/mygazine/WidgetService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WidgetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryReader Book Number = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/asus/mygazine/WidgetService;->mBookNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_0
    return-void
.end method

.method private queryReaderPath(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 477
    const/4 v0, 0x0

    .line 479
    .local v0, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-static {p1}, Lcom/asus/mygazine/ReaderUtils;->getPath(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 480
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 481
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/asus/mygazine/WidgetService;->mBookPath:Ljava/lang/String;

    .line 482
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/asus/mygazine/WidgetService;->mBookMIME:Ljava/lang/String;

    .line 483
    sget-boolean v2, Lcom/asus/mygazine/WidgetService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "WidgetService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryReaderPath mBookPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/mygazine/WidgetService;->mBookPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mBookMIME = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/mygazine/WidgetService;->mBookMIME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    :cond_0
    if-eqz v0, :cond_1

    .line 492
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 494
    :cond_1
    :goto_0
    return-void

    .line 485
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 486
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    const-string v2, "WidgetService"

    const-string v3, "Catch exception when querying reader path"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 488
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/asus/mygazine/WidgetService;->mBookPath:Ljava/lang/String;

    .line 489
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/asus/mygazine/WidgetService;->mBookMIME:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 491
    if-eqz v0, :cond_1

    .line 492
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 491
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    .line 492
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method private queryWeather(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    .line 506
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 507
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/asus/mygazine/WeatherUtils;->getUpcomingInstancesCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v0

    .line 509
    .local v0, cur:Landroid/database/Cursor;
    if-eqz v0, :cond_4

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 510
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/asus/mygazine/WidgetService;->mIsWeatherView:Z

    .line 511
    sget-object v7, Lcom/asus/mygazine/WeatherUtils;->WEATHER_QUERY_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/asus/mygazine/WidgetService;->mWeatherCityName:Ljava/lang/String;

    .line 513
    sget-object v7, Lcom/asus/mygazine/WeatherUtils;->WEATHER_QUERY_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/asus/mygazine/WidgetService;->mWeatherTypes:Ljava/lang/String;

    .line 515
    sget-object v7, Lcom/asus/mygazine/WeatherUtils;->WEATHER_QUERY_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x4

    aget-object v7, v7, v8

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/asus/mygazine/WidgetService;->mWeatherTemperature:Ljava/lang/String;

    .line 517
    sget-object v7, Lcom/asus/mygazine/WeatherUtils;->WEATHER_QUERY_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x3

    aget-object v7, v7, v8

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/asus/mygazine/WidgetService;->mWeatherUnit:Ljava/lang/String;

    .line 519
    sget-object v7, Lcom/asus/mygazine/WeatherUtils;->WEATHER_QUERY_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x5

    aget-object v7, v7, v8

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/asus/mygazine/WidgetService;->mWeatherHumidity:Ljava/lang/String;

    .line 521
    sget-object v7, Lcom/asus/mygazine/WeatherUtils;->WEATHER_QUERY_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x6

    aget-object v7, v7, v8

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/asus/mygazine/WidgetService;->mWeatherWindSpeed:Ljava/lang/String;

    .line 523
    sget-object v7, Lcom/asus/mygazine/WeatherUtils;->WEATHER_QUERY_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x7

    aget-object v7, v7, v8

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/asus/mygazine/WidgetService;->mWeatherSpeedUnit:Ljava/lang/String;

    .line 525
    sget-object v7, Lcom/asus/mygazine/WeatherUtils;->WEATHER_QUERY_PROJECTION:[Ljava/lang/String;

    const/16 v8, 0x8

    aget-object v7, v7, v8

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 527
    .local v6, weatherIconId:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/asus/mygazine/WidgetService;->mWeatherIconId:I

    .line 528
    sget-boolean v7, Lcom/asus/mygazine/WidgetService;->DBG:Z

    if-eqz v7, :cond_0

    .line 529
    const-string v7, "WidgetService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "queryWeather - cityname= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/asus/mygazine/WidgetService;->mWeatherCityName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " types= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/asus/mygazine/WidgetService;->mWeatherTypes:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " temprautre= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/asus/mygazine/WidgetService;->mWeatherTemperature:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/asus/mygazine/WidgetService;->mWeatherUnit:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " humidity= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/asus/mygazine/WidgetService;->mWeatherHumidity:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " windspeed="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/asus/mygazine/WidgetService;->mWeatherWindSpeed:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/asus/mygazine/WidgetService;->mWeatherSpeedUnit:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mWeatherIconId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/asus/mygazine/WidgetService;->mWeatherIconId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 534
    .local v3, sb1:Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 535
    .local v4, sb2:Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 536
    .local v5, sb3:Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/asus/mygazine/WidgetService;->mWeatherCityName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/asus/mygazine/WidgetService;->mWeatherTypes:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/asus/mygazine/WidgetService;->mWeatherTemperature:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070030

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/asus/mygazine/WidgetService;->mWeatherUnit:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/asus/mygazine/WidgetService;->mWeatherText:Ljava/lang/String;

    .line 538
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07000c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/asus/mygazine/WidgetService;->mWeatherWindSpeed:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/asus/mygazine/WidgetService;->mWeatherSpeedUnit:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07000d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/asus/mygazine/WidgetService;->mWeatherHumidity:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/asus/mygazine/WidgetService;->mWeatherContent:Ljava/lang/String;

    .line 542
    iget-object v7, p0, Lcom/asus/mygazine/WidgetService;->mWeatherTemperature:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070030

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/asus/mygazine/WidgetService;->mWeatherUnit:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/asus/mygazine/WidgetService;->mWeatherTemperature2:Ljava/lang/String;

    .line 544
    iget-object v7, p0, Lcom/asus/mygazine/WidgetService;->mWeatherCityName:Ljava/lang/String;

    const-string v8, "null"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/asus/mygazine/WidgetService;->mWeatherTypes:Ljava/lang/String;

    const-string v8, "null"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/asus/mygazine/WidgetService;->mWeatherSpeedUnit:Ljava/lang/String;

    const-string v8, "null"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/asus/mygazine/WidgetService;->mWeatherUnit:Ljava/lang/String;

    const-string v8, "null"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/asus/mygazine/WidgetService;->mWeatherHumidity:Ljava/lang/String;

    const-string v8, "null"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 547
    :cond_1
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/asus/mygazine/WidgetService;->mIsWeatherView:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    .end local v3           #sb1:Ljava/lang/StringBuilder;
    .end local v4           #sb2:Ljava/lang/StringBuilder;
    .end local v5           #sb3:Ljava/lang/StringBuilder;
    .end local v6           #weatherIconId:Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 557
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 559
    :cond_3
    :goto_1
    return-void

    .line 550
    :cond_4
    const/4 v7, 0x0

    :try_start_1
    iput-boolean v7, p0, Lcom/asus/mygazine/WidgetService;->mIsWeatherView:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 551
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 552
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v7, "WidgetService"

    const-string v8, "queryWeather - catch exception"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 554
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/asus/mygazine/WidgetService;->mIsWeatherView:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 556
    if-eqz v0, :cond_3

    .line 557
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 556
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    if-eqz v0, :cond_5

    .line 557
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v7
.end method

.method private queryWeb(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 564
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 565
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/asus/mygazine/BrowserUtils;->getVisitedDate(Landroid/content/ContentResolver;)Lcom/asus/mygazine/BrowserUtils$VisitedDate;

    move-result-object v1

    iget-object v1, v1, Lcom/asus/mygazine/BrowserUtils$VisitedDate;->thumbnail:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/asus/mygazine/WidgetService;->mWebThumbNail:Landroid/graphics/Bitmap;

    .line 566
    invoke-static {v0}, Lcom/asus/mygazine/BrowserUtils;->getVisitedDate(Landroid/content/ContentResolver;)Lcom/asus/mygazine/BrowserUtils$VisitedDate;

    move-result-object v1

    iget-object v1, v1, Lcom/asus/mygazine/BrowserUtils$VisitedDate;->title:Ljava/lang/String;

    iput-object v1, p0, Lcom/asus/mygazine/WidgetService;->mWebTitle:Ljava/lang/String;

    .line 567
    invoke-static {v0}, Lcom/asus/mygazine/BrowserUtils;->getVisitedDate(Landroid/content/ContentResolver;)Lcom/asus/mygazine/BrowserUtils$VisitedDate;

    move-result-object v1

    iget-object v1, v1, Lcom/asus/mygazine/BrowserUtils$VisitedDate;->url:Ljava/lang/String;

    iput-object v1, p0, Lcom/asus/mygazine/WidgetService;->mWebUrl:Ljava/lang/String;

    .line 568
    sget-boolean v1, Lcom/asus/mygazine/WidgetService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "WidgetService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryWeb -title="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/mygazine/WidgetService;->mWebTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/mygazine/WidgetService;->mWebUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,mWebThumbNail="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/mygazine/WidgetService;->mWebThumbNail:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_0
    return-void
.end method

.method private setCommonOnClickListener(Landroid/content/Context;Landroid/widget/RemoteViews;I)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const v5, 0x7f080012

    const/4 v4, 0x0

    .line 873
    const/4 v0, 0x0

    .line 874
    iget-object v1, p0, Lcom/asus/mygazine/WidgetService;->mLocation:[I

    aget v1, v1, p3

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    sget-object v1, Lcom/asus/mygazine/PhotoMonitor;->sSnaps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 875
    iget-object v1, p0, Lcom/asus/mygazine/WidgetService;->mLock:Ljava/lang/Integer;

    monitor-enter v1

    .line 876
    :try_start_0
    sget-object v0, Lcom/asus/mygazine/PhotoMonitor;->sSnaps:Ljava/util/List;

    iget-object v2, p0, Lcom/asus/mygazine/WidgetService;->mLocation:[I

    aget v2, v2, p3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/mygazine/PhotoMonitor$Snapshot;

    invoke-virtual {v0}, Lcom/asus/mygazine/PhotoMonitor$Snapshot;->getOriName()Ljava/lang/String;

    move-result-object v0

    .line 877
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 880
    :cond_0
    if-eqz v0, :cond_1

    .line 881
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 882
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 883
    invoke-static {v0}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 885
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 886
    invoke-static {p1, v4, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 887
    invoke-virtual {p2, v5, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 907
    :goto_0
    sget-boolean v0, Lcom/asus/mygazine/MusicUtils;->sIsGoogleMusic:Z

    if-eqz v0, :cond_4

    .line 908
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mArtist:Ljava/lang/String;

    const v1, 0x7f070005

    invoke-virtual {p0, v1}, Lcom/asus/mygazine/WidgetService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mAlbum:Ljava/lang/String;

    const v1, 0x7f070003

    invoke-virtual {p0, v1}, Lcom/asus/mygazine/WidgetService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mSong:Ljava/lang/String;

    const v1, 0x7f070004

    invoke-virtual {p0, v1}, Lcom/asus/mygazine/WidgetService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mAlbumURI:Landroid/net/Uri;

    if-nez v0, :cond_3

    .line 909
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 910
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 919
    :goto_1
    const-string v1, "com.google.android.music"

    const-string v2, "com.android.music.activitymanagement.TopLevelActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 934
    :goto_2
    invoke-static {p1, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 935
    const v1, 0x7f08000b

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 940
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mWebUrl:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 941
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/asus/mygazine/WidgetService;->mWebUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 942
    invoke-static {p1, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 949
    :goto_3
    const v1, 0x7f080003

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 950
    return-void

    .line 877
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 891
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 892
    iget-boolean v1, p0, Lcom/asus/mygazine/WidgetService;->mIsGoogleGallery:Z

    if-eqz v1, :cond_2

    .line 894
    const-string v1, "com.google.android.gallery3d"

    const-string v2, "com.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 900
    :goto_4
    invoke-static {p1, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 901
    invoke-virtual {p2, v5, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 898
    :cond_2
    const-string v1, "com.android.gallery3d"

    const-string v2, "com.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 914
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.PLAYBACK_VIEWER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 916
    const/high16 v1, 0x1c00

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 922
    :cond_4
    iget-boolean v0, p0, Lcom/asus/mygazine/WidgetService;->mIsPlaying:Z

    if-eqz v0, :cond_5

    .line 923
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 924
    const-string v1, "com.android.music"

    const-string v2, "com.android.music.MediaPlaybackActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 928
    :cond_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 929
    const-string v1, "com.android.music"

    const-string v2, "com.android.music.MusicBrowserActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 945
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 946
    const-string v1, "com.android.browser"

    const-string v2, "com.android.browser.BrowserActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 947
    invoke-static {p1, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_3
.end method

.method private setData(Landroid/content/Context;ILandroid/content/Intent;I)Z
    .locals 1
    .parameter "context"
    .parameter "type"
    .parameter "intent"
    .parameter "widget"

    .prologue
    const/4 v0, 0x1

    .line 387
    packed-switch p2, :pswitch_data_0

    .line 427
    :cond_0
    :goto_0
    return v0

    .line 390
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/asus/mygazine/WidgetService;->queryDate(Landroid/content/Context;)V

    .line 391
    invoke-direct {p0, p1}, Lcom/asus/mygazine/WidgetService;->queryEvent(Landroid/content/Context;)V

    goto :goto_0

    .line 394
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/asus/mygazine/WidgetService;->queryEvent(Landroid/content/Context;)V

    goto :goto_0

    .line 397
    :pswitch_2
    invoke-direct {p0, p1, p3}, Lcom/asus/mygazine/WidgetService;->queryMusic(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 400
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/asus/mygazine/WidgetService;->queryWeb(Landroid/content/Context;)V

    goto :goto_0

    .line 403
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/asus/mygazine/WidgetService;->queryWeather(Landroid/content/Context;)V

    goto :goto_0

    .line 406
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/asus/mygazine/WidgetService;->queryEmailCount(Landroid/content/Context;)V

    goto :goto_0

    .line 409
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/asus/mygazine/WidgetService;->queryReader(Landroid/content/Context;)V

    goto :goto_0

    .line 412
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/asus/mygazine/WidgetService;->queryReaderPath(Landroid/content/Context;)V

    goto :goto_0

    .line 415
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/asus/mygazine/WidgetService;->queryDate(Landroid/content/Context;)V

    .line 416
    invoke-direct {p0, p1}, Lcom/asus/mygazine/WidgetService;->queryEvent(Landroid/content/Context;)V

    .line 417
    invoke-direct {p0, p1}, Lcom/asus/mygazine/WidgetService;->queryWeb(Landroid/content/Context;)V

    .line 418
    invoke-direct {p0, p1}, Lcom/asus/mygazine/WidgetService;->queryWeather(Landroid/content/Context;)V

    .line 419
    invoke-direct {p0, p1, p3}, Lcom/asus/mygazine/WidgetService;->queryMusic(Landroid/content/Context;Landroid/content/Intent;)V

    .line 420
    if-ne p4, v0, :cond_0

    .line 421
    invoke-direct {p0, p1}, Lcom/asus/mygazine/WidgetService;->queryEmailCount(Landroid/content/Context;)V

    .line 422
    invoke-direct {p0, p1}, Lcom/asus/mygazine/WidgetService;->queryReader(Landroid/content/Context;)V

    .line 423
    invoke-direct {p0, p1}, Lcom/asus/mygazine/WidgetService;->queryReaderPath(Landroid/content/Context;)V

    goto :goto_0

    .line 387
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private setOnClickListener(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1181
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.asus.weather.launchSetting"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1182
    const-string v1, "com.asus.weather"

    const-string v2, "com.asus.weather.WeatherFragmentSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1183
    invoke-static {p1, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1184
    const v1, 0x7f08001e

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1186
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1187
    const-string v1, "com.android.calendar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1188
    invoke-static {p1, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1189
    const v1, 0x7f08001b

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1191
    const v0, 0x7f080017

    const-string v1, "MyZine"

    invoke-direct {p0, v1, v3}, Lcom/asus/mygazine/WidgetService;->getPendingIntentForSettings(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1192
    return-void
.end method

.method private setOnClickListener2(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1057
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.asus.weather.launchSetting"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1058
    const-string v1, "com.asus.weather"

    const-string v2, "com.asus.weather.WeatherFragmentSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1059
    invoke-static {p1, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1060
    const v1, 0x7f080023

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1063
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1064
    const-string v1, "com.android.email"

    const-string v2, "com.android.email.activity.Welcome"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1065
    invoke-static {p1, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1066
    const v1, 0x7f080027

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1069
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1070
    const-string v1, "com.android.calendar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1071
    invoke-static {p1, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1072
    const v1, 0x7f08002b

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1077
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mBookPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mBookMIME:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mBookPath:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mBookMIME:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1079
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1080
    const-string v1, "com.asus.reader"

    const-string v2, "com.asus.reader.ProgressActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1081
    iget-object v1, p0, Lcom/asus/mygazine/WidgetService;->mBookPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/mygazine/WidgetService;->mBookMIME:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1087
    :goto_0
    invoke-static {p1, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1088
    const v1, 0x7f08002f

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1090
    const v0, 0x7f080017

    const-string v1, "MyZine2"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/asus/mygazine/WidgetService;->getPendingIntentForSettings(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1092
    return-void

    .line 1084
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1085
    const-string v1, "com.asus.reader"

    const-string v2, "com.asus.reader.BookListActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private showAnimationLocked1(Landroid/widget/RemoteViews;Z)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const v7, 0x7f080015

    const v6, 0x7f080014

    const v5, 0x7f080016

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 780
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mIsFlippingAtFirstTime:[Z

    aget-boolean v0, v0, v3

    if-nez v0, :cond_1

    .line 783
    invoke-virtual {p1, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 784
    const v0, 0x7f02005a

    invoke-virtual {p1, v7, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 785
    iget-object v1, p0, Lcom/asus/mygazine/WidgetService;->mLastPhoto:[Ljava/lang/String;

    sget-object v0, Lcom/asus/mygazine/PhotoMonitor;->sSnaps:Ljava/util/List;

    iget-object v2, p0, Lcom/asus/mygazine/WidgetService;->mLocation:[I

    aget v2, v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/mygazine/PhotoMonitor$Snapshot;

    invoke-virtual {v0}, Lcom/asus/mygazine/PhotoMonitor$Snapshot;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    .line 786
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mLastPhoto:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Landroid/widget/RemoteViews;->setImageViewUri(ILandroid/net/Uri;)V

    .line 787
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mIsFlippingAtFirstTime:[Z

    aput-boolean v4, v0, v3

    .line 788
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mNext:[I

    aput v3, v0, v3

    .line 789
    const-string v0, "showOnly"

    invoke-virtual {p1, v6, v0, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 824
    :cond_0
    :goto_0
    return-void

    .line 793
    :cond_1
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mNext:[I

    aget v0, v0, v3

    if-nez v0, :cond_2

    .line 796
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mLastPhoto:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Landroid/widget/RemoteViews;->setImageViewUri(ILandroid/net/Uri;)V

    .line 797
    iget-object v1, p0, Lcom/asus/mygazine/WidgetService;->mLastPhoto:[Ljava/lang/String;

    sget-object v0, Lcom/asus/mygazine/PhotoMonitor;->sSnaps:Ljava/util/List;

    iget-object v2, p0, Lcom/asus/mygazine/WidgetService;->mLocation:[I

    aget v2, v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/mygazine/PhotoMonitor$Snapshot;

    invoke-virtual {v0}, Lcom/asus/mygazine/PhotoMonitor$Snapshot;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    .line 798
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mLastPhoto:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v7, v0}, Landroid/widget/RemoteViews;->setImageViewUri(ILandroid/net/Uri;)V

    .line 803
    if-eqz p2, :cond_0

    .line 804
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mNext:[I

    aput v4, v0, v3

    .line 805
    const-string v0, "showOnly"

    invoke-virtual {p1, v6, v0, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_0

    .line 808
    :cond_2
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mNext:[I

    aget v0, v0, v3

    if-ne v0, v4, :cond_0

    .line 811
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mLastPhoto:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v7, v0}, Landroid/widget/RemoteViews;->setImageViewUri(ILandroid/net/Uri;)V

    .line 812
    iget-object v1, p0, Lcom/asus/mygazine/WidgetService;->mLastPhoto:[Ljava/lang/String;

    sget-object v0, Lcom/asus/mygazine/PhotoMonitor;->sSnaps:Ljava/util/List;

    iget-object v2, p0, Lcom/asus/mygazine/WidgetService;->mLocation:[I

    aget v2, v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/mygazine/PhotoMonitor$Snapshot;

    invoke-virtual {v0}, Lcom/asus/mygazine/PhotoMonitor$Snapshot;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    .line 813
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mLastPhoto:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Landroid/widget/RemoteViews;->setImageViewUri(ILandroid/net/Uri;)V

    .line 818
    if-eqz p2, :cond_0

    .line 819
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mNext:[I

    aput v3, v0, v3

    .line 820
    const-string v0, "showOnly"

    invoke-virtual {p1, v6, v0, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method private showAnimationLocked2(Landroid/widget/RemoteViews;Z)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const v7, 0x7f080015

    const v6, 0x7f080014

    const v5, 0x7f080016

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 830
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mIsFlippingAtFirstTime:[Z

    aget-boolean v0, v0, v3

    if-nez v0, :cond_1

    .line 833
    invoke-virtual {p1, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 834
    const v0, 0x7f02005a

    invoke-virtual {p1, v7, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 835
    iget-object v1, p0, Lcom/asus/mygazine/WidgetService;->mLastPhoto:[Ljava/lang/String;

    sget-object v0, Lcom/asus/mygazine/PhotoMonitor;->sSnaps:Ljava/util/List;

    iget-object v2, p0, Lcom/asus/mygazine/WidgetService;->mLocation:[I

    aget v2, v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/mygazine/PhotoMonitor$Snapshot;

    invoke-virtual {v0}, Lcom/asus/mygazine/PhotoMonitor$Snapshot;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    .line 836
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mLastPhoto:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Landroid/widget/RemoteViews;->setImageViewUri(ILandroid/net/Uri;)V

    .line 837
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mIsFlippingAtFirstTime:[Z

    aput-boolean v3, v0, v3

    .line 838
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mNext:[I

    aput v4, v0, v3

    .line 839
    const-string v0, "showOnly"

    invoke-virtual {p1, v6, v0, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 867
    :cond_0
    :goto_0
    return-void

    .line 843
    :cond_1
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mNext:[I

    aget v0, v0, v3

    if-nez v0, :cond_2

    .line 846
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mLastPhoto:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Landroid/widget/RemoteViews;->setImageViewUri(ILandroid/net/Uri;)V

    .line 847
    iget-object v1, p0, Lcom/asus/mygazine/WidgetService;->mLastPhoto:[Ljava/lang/String;

    sget-object v0, Lcom/asus/mygazine/PhotoMonitor;->sSnaps:Ljava/util/List;

    iget-object v2, p0, Lcom/asus/mygazine/WidgetService;->mLocation:[I

    aget v2, v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/mygazine/PhotoMonitor$Snapshot;

    invoke-virtual {v0}, Lcom/asus/mygazine/PhotoMonitor$Snapshot;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    .line 848
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mLastPhoto:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v7, v0}, Landroid/widget/RemoteViews;->setImageViewUri(ILandroid/net/Uri;)V

    .line 850
    if-eqz p2, :cond_0

    .line 851
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mNext:[I

    aput v3, v0, v3

    .line 852
    const-string v0, "showOnly"

    invoke-virtual {p1, v6, v0, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_0

    .line 855
    :cond_2
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mNext:[I

    aget v0, v0, v3

    if-ne v0, v3, :cond_0

    .line 858
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mLastPhoto:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v7, v0}, Landroid/widget/RemoteViews;->setImageViewUri(ILandroid/net/Uri;)V

    .line 859
    iget-object v1, p0, Lcom/asus/mygazine/WidgetService;->mLastPhoto:[Ljava/lang/String;

    sget-object v0, Lcom/asus/mygazine/PhotoMonitor;->sSnaps:Ljava/util/List;

    iget-object v2, p0, Lcom/asus/mygazine/WidgetService;->mLocation:[I

    aget v2, v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/mygazine/PhotoMonitor$Snapshot;

    invoke-virtual {v0}, Lcom/asus/mygazine/PhotoMonitor$Snapshot;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    .line 860
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mLastPhoto:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Landroid/widget/RemoteViews;->setImageViewUri(ILandroid/net/Uri;)V

    .line 861
    if-eqz p2, :cond_0

    .line 862
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mNext:[I

    aput v4, v0, v3

    .line 863
    const-string v0, "showOnly"

    invoke-virtual {p1, v6, v0, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method private updateImmediate(I)Z
    .locals 3
    .parameter "type"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mLock:Ljava/lang/Integer;

    monitor-enter v0

    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/asus/mygazine/WidgetService;->mLocation:[I

    aget v1, v1, p1

    sget-object v2, Lcom/asus/mygazine/PhotoMonitor;->sSnaps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 1206
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 173
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 174
    sget-boolean v0, Lcom/asus/mygazine/WidgetService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WidgetService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_0
    const-string v0, "MyzinePrefs"

    invoke-virtual {p0, v0, v5}, Lcom/asus/mygazine/WidgetService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/mygazine/WidgetService;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 176
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 177
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "slide_show_interval"

    sget v2, Lcom/asus/mygazine/WidgetService;->mSlideShowInterval:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/asus/mygazine/WidgetService;->mSlideShowInterval:I

    .line 178
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "transition_effect"

    sget-boolean v2, Lcom/asus/mygazine/WidgetService;->mTransitionEffect:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/asus/mygazine/WidgetService;->mTransitionEffect:Z

    .line 179
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "scale_type"

    sget-object v2, Lcom/asus/mygazine/WidgetService;->mScaleType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/asus/mygazine/WidgetService;->mScaleType:Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "logo_display"

    sget-boolean v2, Lcom/asus/mygazine/WidgetService;->mIsShowLogo:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/asus/mygazine/WidgetService;->mIsShowLogo:Z

    .line 181
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "date_display"

    sget-boolean v2, Lcom/asus/mygazine/WidgetService;->mIsShowDateTag:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/asus/mygazine/WidgetService;->mIsShowDateTag:Z

    .line 182
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "photo_date_display"

    sget-boolean v2, Lcom/asus/mygazine/WidgetService;->mIsShowPhotoDateTag:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/asus/mygazine/WidgetService;->mIsShowPhotoDateTag:Z

    .line 183
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "event_display"

    sget-boolean v2, Lcom/asus/mygazine/WidgetService;->mIsShowEventTag:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/asus/mygazine/WidgetService;->mIsShowEventTag:Z

    .line 184
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "weather_display"

    sget-boolean v2, Lcom/asus/mygazine/WidgetService;->mIsShowWeatherTag:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/asus/mygazine/WidgetService;->mIsShowWeatherTag:Z

    .line 185
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "date_format"

    sget-object v2, Lcom/asus/mygazine/WidgetService;->DATE_FORMAT:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/asus/mygazine/WidgetService;->DATE_FORMAT:Ljava/lang/String;

    .line 186
    invoke-static {p0}, Lcom/asus/mygazine/WidgetSizeDBHelper;->getInstance(Landroid/content/Context;)Lcom/asus/mygazine/WidgetSizeDBHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/mygazine/WidgetService;->mDBHelper:Lcom/asus/mygazine/WidgetSizeDBHelper;

    .line 191
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/asus/mygazine/MyGazineWidget;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 193
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/asus/mygazine/MyGazineWidget2;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v3

    .line 195
    array-length v1, v1

    if-lez v1, :cond_1

    .line 196
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.asus.mygazine.APPWIDGET_UPDATE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 198
    invoke-virtual {p0, v1}, Lcom/asus/mygazine/WidgetService;->sendBroadcast(Landroid/content/Intent;)V

    .line 200
    :cond_1
    array-length v0, v3

    if-lez v0, :cond_2

    .line 201
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.asus.mygazine.APPWIDGET_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 203
    invoke-virtual {p0, v0}, Lcom/asus/mygazine/WidgetService;->sendBroadcast(Landroid/content/Intent;)V

    .line 206
    :cond_2
    const-string v0, "com.android.music"

    invoke-static {p0, v0}, Lcom/asus/mygazine/MusicUtils;->isMusicPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v6

    :goto_0
    sput-boolean v0, Lcom/asus/mygazine/MusicUtils;->sIsGoogleMusic:Z

    .line 208
    const-string v0, "com.android.gallery3d"

    invoke-direct {p0, p0, v0}, Lcom/asus/mygazine/WidgetService;->isGalleryPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v6

    :goto_1
    iput-boolean v0, p0, Lcom/asus/mygazine/WidgetService;->mIsGoogleGallery:Z

    .line 209
    invoke-static {p0}, Lcom/asus/mygazine/PhotoMonitor;->getInstance(Landroid/content/Context;)Lcom/asus/mygazine/PhotoMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/mygazine/PhotoMonitor;->getSyncLock()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/mygazine/WidgetService;->mLock:Ljava/lang/Integer;

    .line 210
    return-void

    :cond_3
    move v0, v5

    .line 206
    goto :goto_0

    :cond_4
    move v0, v5

    .line 208
    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1212
    sget-boolean v0, Lcom/asus/mygazine/WidgetService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WidgetService"

    const-string v1, "service onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    :cond_0
    invoke-static {p0}, Lcom/asus/mygazine/PhotoMonitor;->getInstance(Landroid/content/Context;)Lcom/asus/mygazine/PhotoMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/mygazine/PhotoMonitor;->unregisterContentObserver()V

    .line 1215
    invoke-static {}, Lcom/asus/mygazine/BrowserUtils;->getInstance()Lcom/asus/mygazine/BrowserUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/asus/mygazine/WidgetService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/mygazine/BrowserUtils;->unregisterCallback(Landroid/content/ContentResolver;)V

    .line 1216
    sput-object v2, Lcom/asus/mygazine/CalendarUtils;->sCalendarUitls:Lcom/asus/mygazine/CalendarUtils;

    .line 1217
    invoke-static {}, Lcom/asus/mygazine/MusicUtils;->getInstance()Lcom/asus/mygazine/MusicUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/asus/mygazine/WidgetService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/mygazine/MusicUtils;->unregisterCallback(Landroid/content/ContentResolver;)V

    .line 1218
    invoke-static {}, Lcom/asus/mygazine/EmailUtils;->getInstance()Lcom/asus/mygazine/EmailUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/asus/mygazine/WidgetService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/mygazine/EmailUtils;->unregisterCallback(Landroid/content/ContentResolver;)V

    .line 1219
    invoke-static {}, Lcom/asus/mygazine/ReaderUtils;->getInstance()Lcom/asus/mygazine/ReaderUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/asus/mygazine/WidgetService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/mygazine/ReaderUtils;->unregisterCallback(Landroid/content/ContentResolver;)V

    .line 1220
    sget-object v0, Lcom/asus/mygazine/MusicUtils;->sBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/asus/mygazine/MusicUtils;->sBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1221
    sget-object v0, Lcom/asus/mygazine/MusicUtils;->sBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1222
    sput-object v2, Lcom/asus/mygazine/MusicUtils;->sBitmap:Landroid/graphics/Bitmap;

    .line 1224
    :cond_1
    sput-object v2, Lcom/asus/mygazine/MusicUtils;->sUri:Landroid/net/Uri;

    .line 1225
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1226
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1227
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1232
    const-string v0, "slide_show_interval"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1233
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget v1, Lcom/asus/mygazine/WidgetService;->mSlideShowInterval:I

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/asus/mygazine/WidgetService;->mSlideShowInterval:I

    .line 1234
    invoke-static {}, Lcom/asus/mygazine/MyGazineWidget;->getInstance()Lcom/asus/mygazine/MyGazineWidget;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1235
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/mygazine/WidgetService;->MSG_CHANGE_VIEW:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1236
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/mygazine/WidgetService;->MSG_CHANGE_VIEW:[I

    aget v1, v1, v3

    sget v2, Lcom/asus/mygazine/WidgetService;->mSlideShowInterval:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1238
    :cond_0
    invoke-static {}, Lcom/asus/mygazine/MyGazineWidget2;->getInstance()Lcom/asus/mygazine/MyGazineWidget2;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1239
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/mygazine/WidgetService;->MSG_CHANGE_VIEW:[I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1240
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/mygazine/WidgetService;->MSG_CHANGE_VIEW:[I

    aget v1, v1, v4

    sget v2, Lcom/asus/mygazine/WidgetService;->mSlideShowInterval:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1242
    :cond_1
    sget-boolean v0, Lcom/asus/mygazine/WidgetService;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "WidgetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSharedPreferenceChanged - get interval = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/asus/mygazine/WidgetService;->mSlideShowInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    :cond_2
    :goto_0
    return-void

    .line 1243
    :cond_3
    const-string v0, "transition_effect"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1244
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-boolean v1, Lcom/asus/mygazine/WidgetService;->mTransitionEffect:Z

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/asus/mygazine/WidgetService;->mTransitionEffect:Z

    .line 1246
    sget-boolean v0, Lcom/asus/mygazine/WidgetService;->mTransitionEffect:Z

    if-nez v0, :cond_5

    .line 1247
    invoke-static {}, Lcom/asus/mygazine/MyGazineWidget;->getInstance()Lcom/asus/mygazine/MyGazineWidget;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1248
    invoke-direct {p0, p0, v3, v3}, Lcom/asus/mygazine/WidgetService;->performCommonUpdate(Landroid/content/Context;IZ)V

    .line 1250
    :cond_4
    invoke-static {}, Lcom/asus/mygazine/MyGazineWidget2;->getInstance()Lcom/asus/mygazine/MyGazineWidget2;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1251
    invoke-direct {p0, p0, v4, v3}, Lcom/asus/mygazine/WidgetService;->performCommonUpdate(Landroid/content/Context;IZ)V

    .line 1254
    :cond_5
    sget-boolean v0, Lcom/asus/mygazine/WidgetService;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "WidgetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSharedPreferenceChanged - transition effect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/asus/mygazine/WidgetService;->mTransitionEffect:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1255
    :cond_6
    const-string v0, "scale_type"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1256
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/asus/mygazine/WidgetService;->mScaleType:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/asus/mygazine/WidgetService;->mScaleType:Ljava/lang/String;

    .line 1257
    invoke-static {}, Lcom/asus/mygazine/MyGazineWidget;->getInstance()Lcom/asus/mygazine/MyGazineWidget;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1258
    invoke-direct {p0, p0, v3, v3}, Lcom/asus/mygazine/WidgetService;->performCommonUpdate(Landroid/content/Context;IZ)V

    .line 1259
    :cond_7
    invoke-static {}, Lcom/asus/mygazine/MyGazineWidget2;->getInstance()Lcom/asus/mygazine/MyGazineWidget2;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1260
    invoke-direct {p0, p0, v4, v3}, Lcom/asus/mygazine/WidgetService;->performCommonUpdate(Landroid/content/Context;IZ)V

    .line 1261
    :cond_8
    sget-boolean v0, Lcom/asus/mygazine/WidgetService;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "WidgetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSharedPreferenceChanged - scale type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/asus/mygazine/WidgetService;->mScaleType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1263
    :cond_9
    const-string v0, "logo_display"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1264
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-boolean v1, Lcom/asus/mygazine/WidgetService;->mIsShowLogo:Z

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/asus/mygazine/WidgetService;->mIsShowLogo:Z

    .line 1265
    sget-boolean v0, Lcom/asus/mygazine/WidgetService;->DBG:Z

    if-eqz v0, :cond_a

    const-string v0, "WidgetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSharedPreferenceChanged - show logo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/asus/mygazine/WidgetService;->mIsShowLogo:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    :cond_a
    const-string v0, "date_display"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1268
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-boolean v1, Lcom/asus/mygazine/WidgetService;->mIsShowDateTag:Z

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/asus/mygazine/WidgetService;->mIsShowDateTag:Z

    .line 1269
    sget-boolean v0, Lcom/asus/mygazine/WidgetService;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "WidgetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSharedPreferenceChanged - show date = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/asus/mygazine/WidgetService;->mIsShowDateTag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    :cond_b
    const-string v0, "photo_date_display"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1272
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-boolean v1, Lcom/asus/mygazine/WidgetService;->mIsShowPhotoDateTag:Z

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/asus/mygazine/WidgetService;->mIsShowPhotoDateTag:Z

    .line 1273
    sget-boolean v0, Lcom/asus/mygazine/WidgetService;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "WidgetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSharedPreferenceChanged - show photo date = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/asus/mygazine/WidgetService;->mIsShowPhotoDateTag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    :cond_c
    const-string v0, "event_display"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1276
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-boolean v1, Lcom/asus/mygazine/WidgetService;->mIsShowEventTag:Z

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/asus/mygazine/WidgetService;->mIsShowEventTag:Z

    .line 1277
    sget-boolean v0, Lcom/asus/mygazine/WidgetService;->DBG:Z

    if-eqz v0, :cond_d

    const-string v0, "WidgetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSharedPreferenceChanged - show event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/asus/mygazine/WidgetService;->mIsShowEventTag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    :cond_d
    const-string v0, "weather_display"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1280
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-boolean v1, Lcom/asus/mygazine/WidgetService;->mIsShowWeatherTag:Z

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/asus/mygazine/WidgetService;->mIsShowWeatherTag:Z

    .line 1281
    sget-boolean v0, Lcom/asus/mygazine/WidgetService;->DBG:Z

    if-eqz v0, :cond_e

    const-string v0, "WidgetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSharedPreferenceChanged - show weather = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/asus/mygazine/WidgetService;->mIsShowWeatherTag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    :cond_e
    const-string v0, "date_format"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1284
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/asus/mygazine/WidgetService;->DATE_FORMAT:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/asus/mygazine/WidgetService;->DATE_FORMAT:Ljava/lang/String;

    .line 1285
    sget-boolean v0, Lcom/asus/mygazine/WidgetService;->DBG:Z

    if-eqz v0, :cond_f

    const-string v0, "WidgetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSharedPreferenceChanged - date format = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/asus/mygazine/WidgetService;->DATE_FORMAT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    :cond_f
    invoke-direct {p0, p0}, Lcom/asus/mygazine/WidgetService;->queryDate(Landroid/content/Context;)V

    .line 1289
    :cond_10
    const-string v0, "event_display"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "weather_display"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1290
    :cond_11
    invoke-static {}, Lcom/asus/mygazine/MyGazineWidget;->getInstance()Lcom/asus/mygazine/MyGazineWidget;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1291
    invoke-direct {p0, p0, v3, v3}, Lcom/asus/mygazine/WidgetService;->performCommonUpdate(Landroid/content/Context;IZ)V

    goto/16 :goto_0

    .line 1293
    :cond_12
    invoke-static {}, Lcom/asus/mygazine/MyGazineWidget;->getInstance()Lcom/asus/mygazine/MyGazineWidget;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1294
    invoke-direct {p0, p0, v3, v3}, Lcom/asus/mygazine/WidgetService;->performCommonUpdate(Landroid/content/Context;IZ)V

    .line 1295
    :cond_13
    invoke-static {}, Lcom/asus/mygazine/MyGazineWidget2;->getInstance()Lcom/asus/mygazine/MyGazineWidget2;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1296
    invoke-direct {p0, p0, v4, v3}, Lcom/asus/mygazine/WidgetService;->performCommonUpdate(Landroid/content/Context;IZ)V

    goto/16 :goto_0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 11
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/4 v10, 0x2

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 231
    sget-boolean v5, Lcom/asus/mygazine/WidgetService;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "WidgetService"

    const-string v6, "==== onStart is called ===="

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_0
    if-nez p1, :cond_2

    .line 234
    invoke-virtual {p0}, Lcom/asus/mygazine/WidgetService;->stopSelf()V

    .line 297
    :cond_1
    :goto_0
    return-void

    .line 236
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v5, "com.asus.myzine.resize"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 238
    invoke-direct {p0, p1}, Lcom/asus/mygazine/WidgetService;->doResize(Landroid/content/Intent;)V

    goto :goto_0

    .line 240
    :cond_3
    const-string v5, "operation"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 241
    .local v1, operation:I
    const-string v5, "update_type"

    invoke-virtual {p1, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 242
    .local v2, type:I
    const-string v5, "widget_type"

    invoke-virtual {p1, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 243
    .local v4, widget:I
    const-string v5, "updating"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 246
    .local v3, updating:Z
    const/4 v5, 0x3

    if-ne v1, v5, :cond_6

    .line 247
    iput-boolean v7, p0, Lcom/asus/mygazine/WidgetService;->mVisibility:Z

    .line 266
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/asus/mygazine/WidgetService;->mIsUpdating:[Z

    aput-boolean v3, v5, v4

    .line 267
    packed-switch v4, :pswitch_data_0

    .line 290
    :cond_5
    :goto_2
    if-eqz v1, :cond_7

    .line 291
    invoke-direct {p0, p0, v4, v1}, Lcom/asus/mygazine/WidgetService;->doSlideShow(Landroid/content/Context;II)V

    goto :goto_0

    .line 248
    :cond_6
    const/4 v5, 0x4

    if-ne v1, v5, :cond_4

    .line 249
    iput-boolean v8, p0, Lcom/asus/mygazine/WidgetService;->mVisibility:Z

    goto :goto_1

    .line 271
    :pswitch_0
    sget-boolean v5, Lcom/asus/mygazine/MusicUtils;->sIsGoogleMusic:Z

    if-nez v5, :cond_5

    sget-boolean v5, Lcom/asus/mygazine/MyGazineWidget;->sSendToMusic:Z

    if-nez v5, :cond_5

    if-eq v1, v10, :cond_5

    .line 272
    invoke-static {p0}, Lcom/asus/mygazine/MusicUtils;->sendToMediaService(Landroid/content/Context;)V

    .line 273
    sput-boolean v8, Lcom/asus/mygazine/MyGazineWidget;->sSendToMusic:Z

    goto :goto_2

    .line 281
    :pswitch_1
    sget-boolean v5, Lcom/asus/mygazine/MusicUtils;->sIsGoogleMusic:Z

    if-nez v5, :cond_5

    sget-boolean v5, Lcom/asus/mygazine/MyGazineWidget2;->sSendToMusic:Z

    if-nez v5, :cond_5

    if-eq v1, v10, :cond_5

    .line 282
    invoke-static {p0}, Lcom/asus/mygazine/MusicUtils;->sendToMediaService(Landroid/content/Context;)V

    .line 283
    sput-boolean v8, Lcom/asus/mygazine/MyGazineWidget2;->sSendToMusic:Z

    goto :goto_2

    .line 292
    :cond_7
    invoke-direct {p0, p0, v2, p1, v4}, Lcom/asus/mygazine/WidgetService;->setData(Landroid/content/Context;ILandroid/content/Intent;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 293
    invoke-direct {p0, p0, v4, v7}, Lcom/asus/mygazine/WidgetService;->performCommonUpdate(Landroid/content/Context;IZ)V

    goto :goto_0

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
