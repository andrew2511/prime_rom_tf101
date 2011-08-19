.class public Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;
.super Ljava/lang/Object;
.source "WatchInfoHelper.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Landroid/net/Uri;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final actors:Landroid/widget/TextView;

.field private final actorsLabel:Landroid/widget/TextView;

.field private final description:Landroid/widget/TextView;

.field private final directors:Landroid/widget/TextView;

.field private final directorsLabel:Landroid/widget/TextView;

.field private final duration:Landroid/widget/TextView;

.field private final genres:Landroid/widget/TextView;

.field private final missingThumbnail:Landroid/graphics/Bitmap;

.field private final movieInfoLayout:Landroid/view/View;

.field private final movieStatus:Lcom/google/android/youtube/core/ui/StatusHelper;

.field private final posterArtRequester:Lcom/google/android/youtube/core/async/Requester;
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

.field private final producers:Landroid/widget/TextView;

.field private final producersLabel:Landroid/widget/TextView;

.field private final releaseDate:Landroid/widget/TextView;

.field private final res:Landroid/content/res/Resources;

.field private final thumbnail:Landroid/widget/ImageView;

.field private final title:Landroid/widget/TextView;

.field private final watchInfoLayout:Landroid/view/View;

.field private final watchStatus:Lcom/google/android/youtube/core/ui/StatusHelper;

.field private final writers:Landroid/widget/TextView;

.field private final writersLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/ui/StatusHelper$OnRetryListener;)V
    .locals 2
    .parameter "activity"
    .parameter "watchView"
    .parameter
    .parameter "onRetryListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/google/android/youtube/core/ui/StatusHelper$OnRetryListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    .local p3, posterArtRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Landroid/net/Uri;Landroid/graphics/Bitmap;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->activity:Landroid/app/Activity;

    .line 74
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->res:Landroid/content/res/Resources;

    .line 75
    iput-object p3, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->posterArtRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 76
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->res:Landroid/content/res/Resources;

    const v1, 0x7f020018

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->missingThumbnail:Landroid/graphics/Bitmap;

    .line 78
    const v0, 0x7f080050

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->watchInfoLayout:Landroid/view/View;

    .line 79
    const v0, 0x7f080051

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0, p4}, Lcom/google/android/youtube/core/ui/StatusHelper;->createFromParent(Landroid/content/Context;Landroid/view/View;Lcom/google/android/youtube/core/ui/StatusHelper$OnRetryListener;)Lcom/google/android/youtube/core/ui/StatusHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->watchStatus:Lcom/google/android/youtube/core/ui/StatusHelper;

    .line 81
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->watchStatus:Lcom/google/android/youtube/core/ui/StatusHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/StatusHelper;->init()V

    .line 83
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->watchInfoLayout:Landroid/view/View;

    const v1, 0x7f08000a

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->findTextViewById(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->title:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->watchInfoLayout:Landroid/view/View;

    const v1, 0x7f080020

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->findTextViewById(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->description:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f080022

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->movieInfoLayout:Landroid/view/View;

    .line 88
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->movieInfoLayout:Landroid/view/View;

    const v1, 0x7f08000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->thumbnail:Landroid/widget/ImageView;

    .line 90
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->movieInfoLayout:Landroid/view/View;

    const v1, 0x7f08000c

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->findTextViewById(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->duration:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->movieInfoLayout:Landroid/view/View;

    const v1, 0x7f08001b

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->findTextViewById(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->releaseDate:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->movieInfoLayout:Landroid/view/View;

    const v1, 0x7f080019

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->findTextViewById(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->genres:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->movieInfoLayout:Landroid/view/View;

    const v1, 0x7f08001a

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->findTextViewById(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->actors:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->movieInfoLayout:Landroid/view/View;

    const v1, 0x7f08001c

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->findTextViewById(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->directors:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->movieInfoLayout:Landroid/view/View;

    const v1, 0x7f08001d

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->findTextViewById(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->writers:Landroid/widget/TextView;

    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->movieInfoLayout:Landroid/view/View;

    const v1, 0x7f08001e

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->findTextViewById(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->producers:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f080021

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0, p4}, Lcom/google/android/youtube/core/ui/StatusHelper;->createFromParent(Landroid/content/Context;Landroid/view/View;Lcom/google/android/youtube/core/ui/StatusHelper$OnRetryListener;)Lcom/google/android/youtube/core/ui/StatusHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->movieStatus:Lcom/google/android/youtube/core/ui/StatusHelper;

    .line 101
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->movieStatus:Lcom/google/android/youtube/core/ui/StatusHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/StatusHelper;->init()V

    .line 102
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->movieInfoLayout:Landroid/view/View;

    const v1, 0x7f080026

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->findTextViewById(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->actorsLabel:Landroid/widget/TextView;

    .line 103
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->movieInfoLayout:Landroid/view/View;

    const v1, 0x7f080027

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->findTextViewById(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->directorsLabel:Landroid/widget/TextView;

    .line 104
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->movieInfoLayout:Landroid/view/View;

    const v1, 0x7f080028

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->findTextViewById(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->writersLabel:Landroid/widget/TextView;

    .line 105
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->movieInfoLayout:Landroid/view/View;

    const v1, 0x7f080029

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->findTextViewById(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->producersLabel:Landroid/widget/TextView;

    .line 106
    return-void
.end method

.method private findTextViewById(Landroid/view/View;I)Landroid/widget/TextView;
    .locals 0
    .parameter "parent"
    .parameter "id"

    .prologue
    .line 191
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method private setMissingPoster()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->thumbnail:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 174
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->thumbnail:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->missingThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 175
    return-void
.end method

.method private showCreditsIfAvailable(Lcom/google/android/youtube/core/model/Video$Movie;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 4
    .parameter "movie"
    .parameter "creditsKey"
    .parameter "labelView"
    .parameter "creditsView"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 179
    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video$Movie;->credits:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 180
    .local v0, credits:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    :cond_0
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    invoke-virtual {p4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    :goto_0
    return-void

    .line 184
    :cond_1
    const-string v1, ", "

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onError(Landroid/net/Uri;Ljava/lang/Exception;)V
    .locals 0
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->setMissingPoster()V

    .line 170
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    check-cast p1, Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->onError(Landroid/net/Uri;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "request"
    .parameter "response"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->thumbnail:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 165
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 166
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    check-cast p1, Landroid/net/Uri;

    .end local p1
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->onResponse(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public showError(Ljava/lang/String;)V
    .locals 3
    .parameter "errorMessage"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x1

    .line 116
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->watchInfoLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->movieInfoLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->watchStatus:Lcom/google/android/youtube/core/ui/StatusHelper;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/youtube/core/ui/StatusHelper;->setErrorMessage(Ljava/lang/String;Z)V

    .line 119
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->movieStatus:Lcom/google/android/youtube/core/ui/StatusHelper;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/youtube/core/ui/StatusHelper;->setErrorMessage(Ljava/lang/String;Z)V

    .line 120
    return-void
.end method

.method public showLoading()V
    .locals 4

    .prologue
    const v3, 0x7f0c0014

    const/16 v2, 0x8

    const/4 v1, 0x1

    .line 109
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->watchInfoLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->movieInfoLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->watchStatus:Lcom/google/android/youtube/core/ui/StatusHelper;

    invoke-virtual {v0, v3, v1}, Lcom/google/android/youtube/core/ui/StatusHelper;->setMessage(IZ)V

    .line 112
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->movieStatus:Lcom/google/android/youtube/core/ui/StatusHelper;

    invoke-virtual {v0, v3, v1}, Lcom/google/android/youtube/core/ui/StatusHelper;->setMessage(IZ)V

    .line 113
    return-void
.end method

.method public showVideo(Lcom/google/android/youtube/core/model/Video;)V
    .locals 12
    .parameter "video"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 123
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v6, p1, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    invoke-static {v6}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 127
    .local v0, calendar:Ljava/util/Calendar;
    iget-object v6, p1, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    iget-object v6, v6, Lcom/google/android/youtube/core/model/Video$Movie;->releaseDate:Ljava/util/Date;

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 128
    iget-object v6, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->activity:Landroid/app/Activity;

    const v7, 0x7f0c0068

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p1, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    aput-object v9, v8, v11

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 130
    .local v5, titleWithReleaseYear:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->title:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v6, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->description:Landroid/widget/TextView;

    iget-object v7, p1, Lcom/google/android/youtube/core/model/Video;->description:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v6, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->duration:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->activity:Landroid/app/Activity;

    const v8, 0x7f0c0069

    new-array v9, v10, [Ljava/lang/Object;

    iget v10, p1, Lcom/google/android/youtube/core/model/Video;->duration:I

    div-int/lit8 v10, v10, 0x3c

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v6, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->releaseDate:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->activity:Landroid/app/Activity;

    invoke-static {v7}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v7

    iget-object v8, p1, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    iget-object v8, v8, Lcom/google/android/youtube/core/model/Video$Movie;->releaseDate:Ljava/util/Date;

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    new-instance v2, Ljava/util/ArrayList;

    iget-object v6, p1, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    iget-object v6, v6, Lcom/google/android/youtube/core/model/Video$Movie;->genres:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 137
    .local v2, genreStrings:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p1, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    iget-object v6, v6, Lcom/google/android/youtube/core/model/Video$Movie;->genres:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Video$Genre;

    .line 138
    .local v1, genre:Lcom/google/android/youtube/core/model/Video$Genre;
    invoke-interface {v1}, Lcom/google/android/youtube/core/model/Video$Genre;->stringId()I

    move-result v4

    .line 139
    .local v4, stringId:I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 140
    iget-object v6, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v6, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 143
    .end local v1           #genre:Lcom/google/android/youtube/core/model/Video$Genre;
    .end local v4           #stringId:I
    :cond_1
    iget-object v6, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->genres:Landroid/widget/TextView;

    const-string v7, ", "

    invoke-static {v7, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v6, p1, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    const-string v7, "Director"

    iget-object v8, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->directorsLabel:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->directors:Landroid/widget/TextView;

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->showCreditsIfAvailable(Lcom/google/android/youtube/core/model/Video$Movie;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 146
    iget-object v6, p1, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    const-string v7, "Writer"

    iget-object v8, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->writersLabel:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->writers:Landroid/widget/TextView;

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->showCreditsIfAvailable(Lcom/google/android/youtube/core/model/Video$Movie;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 147
    iget-object v6, p1, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    const-string v7, "Actor"

    iget-object v8, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->actorsLabel:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->actors:Landroid/widget/TextView;

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->showCreditsIfAvailable(Lcom/google/android/youtube/core/model/Video$Movie;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 148
    iget-object v6, p1, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    const-string v7, "Producer"

    iget-object v8, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->producersLabel:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->producers:Landroid/widget/TextView;

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->showCreditsIfAvailable(Lcom/google/android/youtube/core/model/Video$Movie;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 150
    iget-object v6, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->watchInfoLayout:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 151
    iget-object v6, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->movieInfoLayout:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v6, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->watchStatus:Lcom/google/android/youtube/core/ui/StatusHelper;

    invoke-virtual {v6}, Lcom/google/android/youtube/core/ui/StatusHelper;->hide()V

    .line 153
    iget-object v6, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->movieStatus:Lcom/google/android/youtube/core/ui/StatusHelper;

    invoke-virtual {v6}, Lcom/google/android/youtube/core/ui/StatusHelper;->hide()V

    .line 155
    iget-object v6, p1, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    iget-object v6, v6, Lcom/google/android/youtube/core/model/Video$Movie;->posterUri:Landroid/net/Uri;

    if-eqz v6, :cond_2

    .line 156
    iget-object v6, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->posterArtRequester:Lcom/google/android/youtube/core/async/Requester;

    iget-object v7, p1, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    iget-object v7, v7, Lcom/google/android/youtube/core/model/Video$Movie;->posterUri:Landroid/net/Uri;

    new-instance v8, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v9, p0, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->activity:Landroid/app/Activity;

    invoke-direct {v8, v9, p0}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v6, v7, v8}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 161
    :goto_1
    return-void

    .line 159
    :cond_2
    invoke-direct {p0}, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->setMissingPoster()V

    goto :goto_1
.end method
