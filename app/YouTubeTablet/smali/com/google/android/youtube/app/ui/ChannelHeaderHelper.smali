.class public Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;
.super Ljava/lang/Object;
.source "ChannelHeaderHelper.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/app/ui/ChannelHeaderHelper$1;,
        Lcom/google/android/youtube/app/ui/ChannelHeaderHelper$ThumbnailCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Lcom/google/android/youtube/core/async/GDataRequest;",
        "Lcom/google/android/youtube/core/model/UserProfile;",
        ">;"
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final avatar:Landroid/widget/ImageView;

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

.field private final subscribers:Landroid/widget/TextView;

.field private final subscriptions:Landroid/widget/TextView;

.field private final thumbnailCallback:Lcom/google/android/youtube/app/ui/ChannelHeaderHelper$ThumbnailCallback;

.field private final title:Landroid/widget/TextView;

.field private final uploadViews:Landroid/widget/TextView;

.field private final uploaded:Landroid/widget/TextView;

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


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;)V
    .locals 2
    .parameter "activity"
    .parameter "contentView"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/UserProfile;",
            ">;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p3, userProfileRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/UserProfile;>;"
    .local p4, avatarRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Landroid/net/Uri;Landroid/graphics/Bitmap;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->activity:Landroid/app/Activity;

    .line 61
    invoke-static {p4}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Requester;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->avatarRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 62
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Requester;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->userProfileRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 63
    new-instance v0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper$ThumbnailCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper$ThumbnailCallback;-><init>(Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;Lcom/google/android/youtube/app/ui/ChannelHeaderHelper$1;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->thumbnailCallback:Lcom/google/android/youtube/app/ui/ChannelHeaderHelper$ThumbnailCallback;

    .line 65
    const v0, 0x7f080020

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->avatar:Landroid/widget/ImageView;

    .line 66
    const v0, 0x7f080021

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->title:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f080022

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->uploadViews:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f080023

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->uploaded:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f080024

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->subscribers:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f080036

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->subscriptions:Landroid/widget/TextView;

    .line 71
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->avatar:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->setMissingAvatar()V

    return-void
.end method

.method private setMissingAvatar()V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->avatar:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020007

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 99
    return-void
.end method


# virtual methods
.method public init(Lcom/google/android/youtube/core/model/UserAuth;)V
    .locals 4
    .parameter "userAuth"

    .prologue
    .line 91
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->userProfileRequester:Lcom/google/android/youtube/core/async/Requester;

    invoke-static {p1}, Lcom/google/android/youtube/core/async/GDataRequests;->getMyProfileRequest(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3, p0}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 94
    return-void
.end method

.method public init(Ljava/lang/String;)V
    .locals 4
    .parameter "username"

    .prologue
    .line 82
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->userProfileRequester:Lcom/google/android/youtube/core/async/Requester;

    invoke-static {p1}, Lcom/google/android/youtube/core/async/GDataRequests;->getUserProfileRequest(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3, p0}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 88
    return-void
.end method

.method public onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .locals 4
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 122
    const-string v2, "Error retrieving user profile"

    invoke-static {v2, p2}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    instance-of v2, p2, Lorg/apache/http/client/HttpResponseException;

    if-eqz v2, :cond_0

    .line 124
    move-object v0, p2

    check-cast v0, Lorg/apache/http/client/HttpResponseException;

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v1

    .line 125
    .local v1, statusCode:I
    const/16 v2, 0x193

    if-ne v1, v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->activity:Landroid/app/Activity;

    const v3, 0x7f0d0083

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/ErrorHelper;->showToast(Landroid/content/Context;I)V

    .line 132
    .end local v1           #statusCode:I
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->activity:Landroid/app/Activity;

    invoke-static {v2, p2}, Lcom/google/android/youtube/core/ErrorHelper;->showToast(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 131
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->setMissingAvatar()V

    goto :goto_0
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/UserProfile;)V
    .locals 8
    .parameter "request"
    .parameter "response"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 102
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->title:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/UserProfile;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->uploadViews:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->activity:Landroid/app/Activity;

    const v2, 0x7f0d007e

    new-array v3, v7, [Ljava/lang/Object;

    iget-wide v4, p2, Lcom/google/android/youtube/core/model/UserProfile;->uploadViewsCount:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->uploaded:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->activity:Landroid/app/Activity;

    const v2, 0x7f0d007c

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p2, Lcom/google/android/youtube/core/model/UserProfile;->uploadedCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->subscribers:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->subscribers:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->activity:Landroid/app/Activity;

    const v2, 0x7f0d0080

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p2, Lcom/google/android/youtube/core/model/UserProfile;->subscribersCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->subscriptions:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->subscriptions:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->activity:Landroid/app/Activity;

    const v2, 0x7f0d0082

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p2, Lcom/google/android/youtube/core/model/UserProfile;->subscriptionsCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->avatarRequester:Lcom/google/android/youtube/core/async/Requester;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    new-instance v2, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->thumbnailCallback:Lcom/google/android/youtube/app/ui/ChannelHeaderHelper$ThumbnailCallback;

    invoke-direct {v2, v3, v4}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 119
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/model/UserProfile;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/UserProfile;)V

    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->title:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->uploadViews:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->activity:Landroid/app/Activity;

    const v2, 0x7f0d007d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->uploaded:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->activity:Landroid/app/Activity;

    const v2, 0x7f0d007b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->subscribers:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->subscribers:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->activity:Landroid/app/Activity;

    const v2, 0x7f0d007f

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->subscriptions:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->subscriptions:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->activity:Landroid/app/Activity;

    const v2, 0x7f0d0081

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    :cond_2
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->setMissingAvatar()V

    .line 160
    return-void
.end method
