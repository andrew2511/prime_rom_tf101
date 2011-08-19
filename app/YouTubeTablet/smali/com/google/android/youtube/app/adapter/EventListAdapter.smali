.class public Lcom/google/android/youtube/app/adapter/EventListAdapter;
.super Lcom/google/android/youtube/core/adapter/ArrayListAdapter;
.source "EventListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/app/adapter/EventListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/youtube/core/adapter/ArrayListAdapter",
        "<",
        "Lcom/google/android/youtube/core/model/Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final iconsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/youtube/core/model/Event$Action;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final layoutInflater:Landroid/view/LayoutInflater;

.field private final resources:Landroid/content/res/Resources;

.field private final videos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/android/youtube/core/model/Event$Action;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 42
    sget-object v1, Lcom/google/android/youtube/core/model/Event$Action;->FRIEND_ADDED:Lcom/google/android/youtube/core/model/Event$Action;

    const v2, 0x7f02002b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v1, Lcom/google/android/youtube/core/model/Event$Action;->USER_SUBSCRIPTION_ADDED:Lcom/google/android/youtube/core/model/Event$Action;

    const v2, 0x7f02002e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v1, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_COMMENTED:Lcom/google/android/youtube/core/model/Event$Action;

    const v2, 0x7f020029

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v1, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_FAVORITED:Lcom/google/android/youtube/core/model/Event$Action;

    const v2, 0x7f02002a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v1, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_SHARED:Lcom/google/android/youtube/core/model/Event$Action;

    const v2, 0x7f02002d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v1, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_UPLOADED:Lcom/google/android/youtube/core/model/Event$Action;

    const v2, 0x7f02002f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v1, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_RATED:Lcom/google/android/youtube/core/model/Event$Action;

    const v2, 0x7f02002c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/app/adapter/EventListAdapter;->iconsMap:Ljava/util/Map;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;-><init>()V

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/EventListAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/EventListAdapter;->resources:Landroid/content/res/Resources;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/EventListAdapter;->videos:Ljava/util/HashMap;

    .line 56
    return-void
.end method


# virtual methods
.method public addNotFoundVideo(Ljava/lang/String;)V
    .locals 2
    .parameter "videoId"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/EventListAdapter;->videos:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-virtual {p0}, Lcom/google/android/youtube/app/adapter/EventListAdapter;->notifyDataSetChanged()V

    .line 105
    return-void
.end method

.method public addVideo(Lcom/google/android/youtube/core/model/Video;)V
    .locals 2
    .parameter "video"

    .prologue
    .line 97
    const-string v0, "video can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/EventListAdapter;->videos:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-virtual {p0}, Lcom/google/android/youtube/app/adapter/EventListAdapter;->notifyDataSetChanged()V

    .line 100
    return-void
.end method

.method public getVideo(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video;
    .locals 1
    .parameter "videoId"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/EventListAdapter;->videos:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/Video;

    return-object p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "view"
    .parameter "parent"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 59
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/adapter/EventListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Event;

    .line 61
    .local v0, event:Lcom/google/android/youtube/core/model/Event;
    if-nez p2, :cond_0

    .line 62
    iget-object v3, p0, Lcom/google/android/youtube/app/adapter/EventListAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f04000f

    invoke-virtual {v3, v4, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 63
    new-instance v1, Lcom/google/android/youtube/app/adapter/EventListAdapter$ViewHolder;

    invoke-direct {v1, p2}, Lcom/google/android/youtube/app/adapter/EventListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 64
    .local v1, holder:Lcom/google/android/youtube/app/adapter/EventListAdapter$ViewHolder;
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 69
    :goto_0
    iget-object v3, v1, Lcom/google/android/youtube/app/adapter/EventListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/android/youtube/app/adapter/EventListAdapter;->resources:Landroid/content/res/Resources;

    iget-object v5, v0, Lcom/google/android/youtube/core/model/Event;->action:Lcom/google/android/youtube/core/model/Event$Action;

    iget v5, v5, Lcom/google/android/youtube/core/model/Event$Action;->stringId:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v0, Lcom/google/android/youtube/core/model/Event;->subject:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Event;->targetIsChannel()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 71
    iget-object v3, v1, Lcom/google/android/youtube/app/adapter/EventListAdapter$ViewHolder;->target:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    iget-object v3, v1, Lcom/google/android/youtube/app/adapter/EventListAdapter$ViewHolder;->targetNotFound:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    iget-object v3, v1, Lcom/google/android/youtube/app/adapter/EventListAdapter$ViewHolder;->target:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/google/android/youtube/core/model/Event;->target:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :goto_1
    iget-object v4, v1, Lcom/google/android/youtube/app/adapter/EventListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    sget-object v3, Lcom/google/android/youtube/app/adapter/EventListAdapter;->iconsMap:Ljava/util/Map;

    iget-object v5, v0, Lcom/google/android/youtube/core/model/Event;->action:Lcom/google/android/youtube/core/model/Event$Action;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    iget-object v3, v1, Lcom/google/android/youtube/app/adapter/EventListAdapter$ViewHolder;->timeAgo:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/google/android/youtube/core/model/Event;->when:Ljava/util/Date;

    iget-object v5, p0, Lcom/google/android/youtube/app/adapter/EventListAdapter;->resources:Landroid/content/res/Resources;

    invoke-static {v4, v5}, Lcom/google/android/youtube/app/utils/TimeUtil;->getTimeAgoString(Ljava/util/Date;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    return-object p2

    .line 66
    .end local v1           #holder:Lcom/google/android/youtube/app/adapter/EventListAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/app/adapter/EventListAdapter$ViewHolder;

    .restart local v1       #holder:Lcom/google/android/youtube/app/adapter/EventListAdapter$ViewHolder;
    goto :goto_0

    .line 75
    :cond_1
    iget-object v3, p0, Lcom/google/android/youtube/app/adapter/EventListAdapter;->videos:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/google/android/youtube/core/model/Event;->target:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 76
    iget-object v3, p0, Lcom/google/android/youtube/app/adapter/EventListAdapter;->videos:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/google/android/youtube/core/model/Event;->target:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/model/Video;

    .line 77
    .local v2, video:Lcom/google/android/youtube/core/model/Video;
    if-nez v2, :cond_2

    .line 78
    invoke-virtual {p2, v8}, Landroid/view/View;->setFocusable(Z)V

    .line 79
    invoke-virtual {p2, v8}, Landroid/view/View;->setClickable(Z)V

    .line 80
    iget-object v3, v1, Lcom/google/android/youtube/app/adapter/EventListAdapter$ViewHolder;->target:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    iget-object v3, v1, Lcom/google/android/youtube/app/adapter/EventListAdapter$ViewHolder;->targetNotFound:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 83
    :cond_2
    iget-object v3, v1, Lcom/google/android/youtube/app/adapter/EventListAdapter$ViewHolder;->targetNotFound:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    iget-object v3, v1, Lcom/google/android/youtube/app/adapter/EventListAdapter$ViewHolder;->target:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    iget-object v4, v1, Lcom/google/android/youtube/app/adapter/EventListAdapter$ViewHolder;->target:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/youtube/app/adapter/EventListAdapter;->videos:Ljava/util/HashMap;

    iget-object v5, v0, Lcom/google/android/youtube/core/model/Event;->target:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/core/model/Video;

    iget-object v3, v3, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 88
    .end local v2           #video:Lcom/google/android/youtube/core/model/Video;
    :cond_3
    iget-object v3, v1, Lcom/google/android/youtube/app/adapter/EventListAdapter$ViewHolder;->target:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
