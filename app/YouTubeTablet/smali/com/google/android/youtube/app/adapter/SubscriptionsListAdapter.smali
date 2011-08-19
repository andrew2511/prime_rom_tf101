.class public Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;
.super Lcom/google/android/youtube/core/adapter/ArrayListAdapter;
.source "SubscriptionsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter$1;,
        Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/youtube/core/adapter/ArrayListAdapter",
        "<",
        "Lcom/google/android/youtube/core/model/Subscription;",
        ">;"
    }
.end annotation


# instance fields
.field private final anonymousThumbnail:Landroid/graphics/Bitmap;

.field private final context:Landroid/content/Context;

.field private final layoutInflater:Landroid/view/LayoutInflater;

.field private final recentCounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final thumbnails:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final userProfiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/model/UserProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;->anonymousThumbnail:Landroid/graphics/Bitmap;

    .line 42
    iput-object p1, p0, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;->context:Landroid/content/Context;

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;->userProfiles:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;->recentCounts:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;->thumbnails:Ljava/util/Map;

    .line 47
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;->userProfiles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 61
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;->thumbnails:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 62
    invoke-super {p0}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->clear()V

    .line 63
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 20
    .parameter "position"
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 90
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/youtube/core/model/Subscription;

    .line 91
    .local v9, subscription:Lcom/google/android/youtube/core/model/Subscription;
    if-nez p2, :cond_0

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    move-object v13, v0

    const v14, 0x7f040029

    const/4 v15, 0x0

    move-object v0, v13

    move v1, v14

    move-object/from16 v2, p3

    move v3, v15

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 94
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter$ViewHolder;

    .line 95
    .local v5, holder:Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter$ViewHolder;
    if-nez v5, :cond_1

    .line 96
    new-instance v5, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter$ViewHolder;

    .end local v5           #holder:Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter$ViewHolder;
    move-object v0, v5

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 97
    .restart local v5       #holder:Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter$ViewHolder;
    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 101
    :cond_1
    const/4 v13, 0x1

    move-object/from16 v0, p2

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 103
    sget-object v13, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter$1;->$SwitchMap$com$google$android$youtube$core$model$Subscription$Type:[I

    iget-object v14, v9, Lcom/google/android/youtube/core/model/Subscription;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    invoke-virtual {v14}, Lcom/google/android/youtube/core/model/Subscription$Type;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    .line 127
    iget-object v11, v9, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    .line 130
    .local v11, titleText:Ljava/lang/String;
    :goto_0
    iget-object v13, v5, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {v9}, Lcom/google/android/youtube/core/model/Subscription;->isUserRelated()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;->userProfiles:Ljava/util/Map;

    move-object v13, v0

    iget-object v14, v9, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/youtube/core/model/UserProfile;

    .line 134
    .local v12, userProfile:Lcom/google/android/youtube/core/model/UserProfile;
    if-eqz v12, :cond_8

    .line 135
    iget-object v13, v5, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter$ViewHolder;->channelViews:Landroid/widget/TextView;

    if-eqz v13, :cond_2

    .line 136
    iget-object v13, v5, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter$ViewHolder;->channelViews:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;->context:Landroid/content/Context;

    move-object v14, v0

    const v15, 0x7f0d007e

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object v0, v12

    iget-wide v0, v0, Lcom/google/android/youtube/core/model/UserProfile;->uploadViewsCount:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :cond_2
    iget-object v13, v5, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter$ViewHolder;->uploadedCount:Landroid/widget/TextView;

    if-eqz v13, :cond_3

    .line 140
    iget-object v13, v5, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter$ViewHolder;->uploadedCount:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;->context:Landroid/content/Context;

    move-object v14, v0

    const v15, 0x7f0d007c

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object v0, v12

    iget v0, v0, Lcom/google/android/youtube/core/model/UserProfile;->uploadedCount:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :cond_3
    iget-object v13, v5, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter$ViewHolder;->subscribersCount:Landroid/widget/TextView;

    if-eqz v13, :cond_4

    .line 144
    iget-object v13, v5, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter$ViewHolder;->subscribersCount:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;->context:Landroid/content/Context;

    move-object v14, v0

    const v15, 0x7f0d0080

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object v0, v12

    iget v0, v0, Lcom/google/android/youtube/core/model/UserProfile;->subscribersCount:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :cond_4
    iget-object v13, v5, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    if-eqz v13, :cond_6

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;->anonymousThumbnail:Landroid/graphics/Bitmap;

    move-object v10, v0

    .line 149
    .local v10, thumbnail:Landroid/graphics/Bitmap;
    iget-object v13, v12, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    if-eqz v13, :cond_5

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;->thumbnails:Ljava/util/Map;

    move-object v13, v0

    iget-object v14, v12, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 151
    .local v4, actualThumbnail:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_5

    .line 152
    move-object v10, v4

    .line 155
    .end local v4           #actualThumbnail:Landroid/graphics/Bitmap;
    :cond_5
    iget-object v13, v5, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v13, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 158
    .end local v10           #thumbnail:Landroid/graphics/Bitmap;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;->context:Landroid/content/Context;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 159
    .local v8, resources:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;->recentCounts:Ljava/util/Map;

    move-object v13, v0

    iget-object v14, v9, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 160
    .local v6, recentCount:Ljava/lang/Integer;
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-lez v13, :cond_b

    .line 161
    iget-object v13, v5, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter$ViewHolder;->recent:Landroid/widget/TextView;

    if-eqz v13, :cond_7

    .line 163
    sget-object v13, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter$1;->$SwitchMap$com$google$android$youtube$core$model$Subscription$Type:[I

    iget-object v14, v9, Lcom/google/android/youtube/core/model/Subscription;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    invoke-virtual {v14}, Lcom/google/android/youtube/core/model/Subscription$Type;->ordinal()I

    move-result v14

    aget v13, v13, v14

    sparse-switch v13, :sswitch_data_0

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;->context:Landroid/content/Context;

    move-object v13, v0

    const v14, 0x7f0d003b

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 174
    .local v7, recentText:Ljava/lang/String;
    :goto_1
    iget-object v13, v5, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter$ViewHolder;->recent:Landroid/widget/TextView;

    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v13, v5, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter$ViewHolder;->recent:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    .end local v7           #recentText:Ljava/lang/String;
    :cond_7
    iget-object v13, v5, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter$ViewHolder;->recentCount:Landroid/widget/TextView;

    if-eqz v13, :cond_8

    .line 178
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v14, 0xa

    if-lt v13, v14, :cond_a

    .line 179
    iget-object v13, v5, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter$ViewHolder;->recentCount:Landroid/widget/TextView;

    const v14, 0x7f0d007a

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v6, v15, v16

    invoke-virtual {v8, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    :goto_2
    iget-object v13, v5, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter$ViewHolder;->recentCount:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    .end local v6           #recentCount:Ljava/lang/Integer;
    .end local v8           #resources:Landroid/content/res/Resources;
    .end local v12           #userProfile:Lcom/google/android/youtube/core/model/UserProfile;
    :cond_8
    :goto_3
    return-object p2

    .line 105
    .end local v11           #titleText:Ljava/lang/String;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;->context:Landroid/content/Context;

    move-object v13, v0

    const v14, 0x7f0d0078

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object v0, v9

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 106
    .restart local v11       #titleText:Ljava/lang/String;
    goto/16 :goto_0

    .line 108
    .end local v11           #titleText:Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;->context:Landroid/content/Context;

    move-object v13, v0

    const v14, 0x7f0d0077

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object v0, v9

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 109
    .restart local v11       #titleText:Ljava/lang/String;
    goto/16 :goto_0

    .line 112
    .end local v11           #titleText:Ljava/lang/String;
    :pswitch_2
    iget-object v13, v9, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    const-string v14, "[4]"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 113
    iget-object v13, v9, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 114
    .restart local v11       #titleText:Ljava/lang/String;
    iget-object v13, v5, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_0

    .line 116
    .end local v11           #titleText:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;->context:Landroid/content/Context;

    move-object v13, v0

    const v14, 0x7f0d0079

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object v0, v9

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 118
    .restart local v11       #titleText:Ljava/lang/String;
    goto/16 :goto_0

    .line 120
    .end local v11           #titleText:Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;->context:Landroid/content/Context;

    move-object v13, v0

    const v14, 0x7f0d0076

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object v0, v9

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 121
    .restart local v11       #titleText:Ljava/lang/String;
    goto/16 :goto_0

    .line 123
    .end local v11           #titleText:Ljava/lang/String;
    :pswitch_4
    iget-object v11, v9, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    .line 124
    .restart local v11       #titleText:Ljava/lang/String;
    goto/16 :goto_0

    .line 165
    .restart local v6       #recentCount:Ljava/lang/Integer;
    .restart local v8       #resources:Landroid/content/res/Resources;
    .restart local v12       #userProfile:Lcom/google/android/youtube/core/model/UserProfile;
    :sswitch_0
    const v13, 0x7f0e0008

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v8, v13, v14}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v7

    .line 166
    .restart local v7       #recentText:Ljava/lang/String;
    goto/16 :goto_1

    .line 168
    .end local v7           #recentText:Ljava/lang/String;
    :sswitch_1
    const v13, 0x7f0e0007

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v8, v13, v14}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v7

    .line 169
    .restart local v7       #recentText:Ljava/lang/String;
    goto/16 :goto_1

    .line 182
    .end local v7           #recentText:Ljava/lang/String;
    :cond_a
    iget-object v13, v5, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter$ViewHolder;->recentCount:Landroid/widget/TextView;

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 187
    :cond_b
    iget-object v13, v5, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter$ViewHolder;->recent:Landroid/widget/TextView;

    if-eqz v13, :cond_c

    .line 188
    iget-object v13, v5, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter$ViewHolder;->recent:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    :cond_c
    iget-object v13, v5, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter$ViewHolder;->recentCount:Landroid/widget/TextView;

    if-eqz v13, :cond_8

    .line 191
    iget-object v13, v5, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter$ViewHolder;->recentCount:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 103
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 163
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method protected internalAdd(Lcom/google/android/youtube/core/model/Subscription;)V
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/Subscription;->isUserRelated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;->userProfiles:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;->recentCounts:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->internalAdd(Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method protected bridge synthetic internalAdd(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    check-cast p1, Lcom/google/android/youtube/core/model/Subscription;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;->internalAdd(Lcom/google/android/youtube/core/model/Subscription;)V

    return-void
.end method

.method public setRecentCount(Ljava/lang/String;I)V
    .locals 2
    .parameter "username"
    .parameter "count"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;->recentCounts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;->recentCounts:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-virtual {p0}, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;->notifyDataSetChanged()V

    .line 80
    :cond_0
    return-void
.end method

.method public setThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "uri"
    .parameter "thumbnail"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;->thumbnails:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;->thumbnails:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-virtual {p0}, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;->notifyDataSetChanged()V

    .line 87
    :cond_0
    return-void
.end method

.method public setUserProfile(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserProfile;)V
    .locals 3
    .parameter "username"
    .parameter "userProfile"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;->userProfiles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;->userProfiles:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p2, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;->thumbnails:Ljava/util/Map;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;->notifyDataSetChanged()V

    .line 73
    :cond_1
    return-void
.end method
