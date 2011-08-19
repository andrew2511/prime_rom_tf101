.class public Lcom/google/android/youtube/app/ui/WatchInfoHelper;
.super Ljava/lang/Object;
.source "WatchInfoHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/app/ui/WatchInfoHelper$ThumbnailCallback;,
        Lcom/google/android/youtube/app/ui/WatchInfoHelper$UserProfileCallback;
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final analytics:Lcom/google/android/youtube/core/Analytics;

.field private final avatarRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final brandingBannerRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final brandingImage:Landroid/widget/ImageView;

.field private final category:Landroid/widget/TextView;

.field private final channel:Landroid/widget/TextView;

.field private final channelAvatarImage:Landroid/widget/ImageView;

.field private final dateAdded:Landroid/widget/TextView;

.field private final description:Landroid/widget/TextView;

.field private final director:Lcom/google/android/youtube/app/player/Director;

.field private final layout:Landroid/view/View;

.field private final navigation:Lcom/google/android/youtube/app/Navigation;

.field private final status:Lcom/google/android/youtube/core/ui/StatusHelper;

.field private final tags:Landroid/widget/TextView;

.field private final thumbnailCallback:Lcom/google/android/youtube/app/ui/WatchInfoHelper$ThumbnailCallback;

.field private final title:Landroid/widget/TextView;

.field private final titleExtended:Landroid/widget/TextView;

.field private final toChannel:Landroid/view/View;

.field private final userProfileCallback:Lcom/google/android/youtube/app/ui/WatchInfoHelper$UserProfileCallback;

.field private final userProfileRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private video:Lcom/google/android/youtube/core/model/Video;

.field private final viewLikeDislikeCounts:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/app/Navigation;Lcom/google/android/youtube/app/player/Director;Lcom/google/android/youtube/app/Requesters;Lcom/google/android/youtube/core/ui/StatusHelper$OnRetryListener;)V
    .locals 2
    .parameter "activity"
    .parameter "watchView"
    .parameter "analytics"
    .parameter "navigation"
    .parameter "director"
    .parameter "requesters"
    .parameter "onRetryListener"

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->activity:Landroid/app/Activity;

    .line 80
    iput-object p3, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->analytics:Lcom/google/android/youtube/core/Analytics;

    .line 81
    iput-object p4, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->navigation:Lcom/google/android/youtube/app/Navigation;

    .line 82
    iput-object p5, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->director:Lcom/google/android/youtube/app/player/Director;

    .line 84
    invoke-interface {p6}, Lcom/google/android/youtube/app/Requesters;->getBrandingBannerRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->brandingBannerRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 85
    invoke-interface {p6}, Lcom/google/android/youtube/app/Requesters;->getUserProfileRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->userProfileRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 86
    invoke-interface {p6}, Lcom/google/android/youtube/app/Requesters;->getAvatarRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->avatarRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 88
    new-instance v0, Lcom/google/android/youtube/app/ui/WatchInfoHelper$UserProfileCallback;

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/app/ui/WatchInfoHelper$UserProfileCallback;-><init>(Lcom/google/android/youtube/app/ui/WatchInfoHelper;Lcom/google/android/youtube/app/ui/WatchInfoHelper$1;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->userProfileCallback:Lcom/google/android/youtube/app/ui/WatchInfoHelper$UserProfileCallback;

    .line 89
    new-instance v0, Lcom/google/android/youtube/app/ui/WatchInfoHelper$ThumbnailCallback;

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/app/ui/WatchInfoHelper$ThumbnailCallback;-><init>(Lcom/google/android/youtube/app/ui/WatchInfoHelper;Lcom/google/android/youtube/app/ui/WatchInfoHelper$1;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->thumbnailCallback:Lcom/google/android/youtube/app/ui/WatchInfoHelper$ThumbnailCallback;

    .line 91
    const v0, 0x7f08005b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0, p7}, Lcom/google/android/youtube/core/ui/StatusHelper;->createFromParent(Landroid/content/Context;Landroid/view/View;Lcom/google/android/youtube/core/ui/StatusHelper$OnRetryListener;)Lcom/google/android/youtube/core/ui/StatusHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->status:Lcom/google/android/youtube/core/ui/StatusHelper;

    .line 93
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->status:Lcom/google/android/youtube/core/ui/StatusHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/StatusHelper;->init()V

    .line 95
    const v0, 0x7f080059

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->layout:Landroid/view/View;

    .line 96
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->layout:Landroid/view/View;

    const v1, 0x7f08005d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->brandingImage:Landroid/widget/ImageView;

    .line 98
    const v0, 0x7f080015

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->findTextViewById(I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->title:Landroid/widget/TextView;

    .line 99
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->layout:Landroid/view/View;

    const-string v1, "title_extended"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->titleExtended:Landroid/widget/TextView;

    .line 101
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->layout:Landroid/view/View;

    const v1, 0x7f080020

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->channelAvatarImage:Landroid/widget/ImageView;

    .line 103
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->layout:Landroid/view/View;

    const v1, 0x7f080061

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->toChannel:Landroid/view/View;

    .line 104
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->toChannel:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const v0, 0x7f080062

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->findTextViewById(I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->channel:Landroid/widget/TextView;

    .line 108
    const v0, 0x7f080063

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->findTextViewById(I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->description:Landroid/widget/TextView;

    .line 109
    const v0, 0x7f08005e

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->findTextViewById(I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->dateAdded:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f080019

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->findTextViewById(I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->category:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f080064

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->findTextViewById(I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->tags:Landroid/widget/TextView;

    .line 112
    const v0, 0x7f080069

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->findTextViewById(I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->viewLikeDislikeCounts:Landroid/widget/TextView;

    .line 113
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/youtube/app/ui/WatchInfoHelper;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->brandingImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/youtube/app/ui/WatchInfoHelper;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/youtube/app/ui/WatchInfoHelper;)Lcom/google/android/youtube/app/player/Director;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->director:Lcom/google/android/youtube/app/player/Director;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/youtube/app/ui/WatchInfoHelper;)Lcom/google/android/youtube/app/ui/WatchInfoHelper$ThumbnailCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->thumbnailCallback:Lcom/google/android/youtube/app/ui/WatchInfoHelper$ThumbnailCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/youtube/app/ui/WatchInfoHelper;)Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->avatarRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/youtube/app/ui/WatchInfoHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->setMissingAvatar()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/youtube/app/ui/WatchInfoHelper;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->channelAvatarImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method private findTextViewById(I)Landroid/widget/TextView;
    .locals 1
    .parameter "id"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->layout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method private setCounts(III)V
    .locals 6
    .parameter "viewsCount"
    .parameter "likesCount"
    .parameter "dislikesCount"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->viewLikeDislikeCounts:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->viewLikeDislikeCounts:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->activity:Landroid/app/Activity;

    const v2, 0x7f0d00bb

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    :cond_0
    return-void
.end method

.method private setMissingAvatar()V
    .locals 3

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->channelAvatarImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020007

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 217
    return-void
.end method


# virtual methods
.method public onBranding(Lcom/google/android/youtube/core/model/Branding;)V
    .locals 5
    .parameter "branding"

    .prologue
    .line 164
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/google/android/youtube/core/model/Branding;->bannerUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->owner:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->isVevoChannel(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->director:Lcom/google/android/youtube/app/player/Director;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/player/Director;->showPlayerBranding()V

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->brandingBannerRequester:Lcom/google/android/youtube/core/async/Requester;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Branding;->bannerUri:Landroid/net/Uri;

    new-instance v2, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->activity:Landroid/app/Activity;

    new-instance v4, Lcom/google/android/youtube/app/ui/WatchInfoHelper$1;

    invoke-direct {v4, p0, p1}, Lcom/google/android/youtube/app/ui/WatchInfoHelper$1;-><init>(Lcom/google/android/youtube/app/ui/WatchInfoHelper;Lcom/google/android/youtube/core/model/Branding;)V

    invoke-direct {v2, v3, v4}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->toChannel:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "WatchChannel"

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/Analytics;->trackEvent(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->navigation:Lcom/google/android/youtube/app/Navigation;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->owner:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/app/Navigation;->toChannel(Ljava/lang/String;)V

    .line 197
    :cond_0
    return-void
.end method

.method public reset(Lcom/google/android/youtube/core/model/Video;)V
    .locals 7
    .parameter "video"

    .prologue
    const/16 v2, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 126
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->video:Lcom/google/android/youtube/core/model/Video;

    .line 128
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->brandingImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->title:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->titleExtended:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->titleExtended:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :cond_0
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->publishedDate:Ljava/util/Date;

    if-eqz v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->dateAdded:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->activity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Video;->publishedDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->dateAdded:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    :goto_0
    iget v0, p1, Lcom/google/android/youtube/core/model/Video;->viewCount:I

    iget v1, p1, Lcom/google/android/youtube/core/model/Video;->likesCount:I

    iget v2, p1, Lcom/google/android/youtube/core/model/Video;->dislikesCount:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->setCounts(III)V

    .line 147
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->channel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->activity:Landroid/app/Activity;

    const v2, 0x7f0d000a

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/google/android/youtube/core/model/Video;->owner:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->description:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->category:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->tags:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->tags:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->layout:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->status:Lcom/google/android/youtube/core/ui/StatusHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/StatusHelper;->hide()V

    .line 155
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->channelAvatarImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->userProfileRequester:Lcom/google/android/youtube/core/async/Requester;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->owner:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/youtube/core/async/GDataRequests;->getUserProfileRequest(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->userProfileCallback:Lcom/google/android/youtube/app/ui/WatchInfoHelper$UserProfileCallback;

    invoke-direct {v2, v3, v4}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->director:Lcom/google/android/youtube/app/player/Director;

    invoke-virtual {v0, v6}, Lcom/google/android/youtube/app/player/Director;->setAutoPlay(Z)V

    .line 161
    return-void

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->dateAdded:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showError(Ljava/lang/String;)V
    .locals 2
    .parameter "errorMessage"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->layout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->status:Lcom/google/android/youtube/core/ui/StatusHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/youtube/core/ui/StatusHelper;->setErrorMessage(Ljava/lang/String;Z)V

    .line 123
    return-void
.end method

.method public showLoading()V
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->layout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->status:Lcom/google/android/youtube/core/ui/StatusHelper;

    const v1, 0x7f0d0035

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/ui/StatusHelper;->setMessage(IZ)V

    .line 118
    return-void
.end method

.method public updateLikeDislikeCounts(Z)V
    .locals 5
    .parameter "like"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 210
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->video:Lcom/google/android/youtube/core/model/Video;

    iget v0, v0, Lcom/google/android/youtube/core/model/Video;->viewCount:I

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->video:Lcom/google/android/youtube/core/model/Video;

    iget v1, v1, Lcom/google/android/youtube/core/model/Video;->likesCount:I

    if-eqz p1, :cond_0

    move v2, v4

    :goto_0
    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->video:Lcom/google/android/youtube/core/model/Video;

    iget v2, v2, Lcom/google/android/youtube/core/model/Video;->dislikesCount:I

    if-eqz p1, :cond_1

    :goto_1
    add-int/2addr v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->setCounts(III)V

    .line 212
    return-void

    :cond_0
    move v2, v3

    .line 210
    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method
