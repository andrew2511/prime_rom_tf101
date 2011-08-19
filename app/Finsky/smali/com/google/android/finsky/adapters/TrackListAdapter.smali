.class public Lcom/google/android/finsky/adapters/TrackListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TrackListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/adapters/TrackListAdapter$2;,
        Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/google/android/finsky/model/Track;",
        ">;"
    }
.end annotation


# instance fields
.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPauseIcon:Landroid/graphics/drawable/Drawable;

.field private mPlayIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .parameter "onClickListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/model/Track;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 86
    .local p3, objects:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/model/Track;>;"
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 87
    iput-object p4, p0, Lcom/google/android/finsky/adapters/TrackListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 90
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f020050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/adapters/TrackListAdapter;->mPlayIcon:Landroid/graphics/drawable/Drawable;

    .line 91
    const v1, 0x7f020049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/adapters/TrackListAdapter;->mPauseIcon:Landroid/graphics/drawable/Drawable;

    .line 92
    return-void
.end method

.method private setTrackView(Landroid/view/View;Lcom/google/android/finsky/model/Track$TrackMode;)V
    .locals 6
    .parameter "trackView"
    .parameter "mode"

    .prologue
    const v5, -0x777778

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 154
    if-nez p1, :cond_0

    .line 189
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;

    .line 158
    .local v0, holder:Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;
    sget-object v1, Lcom/google/android/finsky/adapters/TrackListAdapter$2;->$SwitchMap$com$google$android$finsky$model$Track$TrackMode:[I

    invoke-virtual {p2}, Lcom/google/android/finsky/model/Track$TrackMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 187
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot have TrackDisplayMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 161
    :pswitch_0
    iget-object v1, v0, Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;->loadingSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 162
    iget-object v1, v0, Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;->playIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    iget-object v1, v0, Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;->playIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/finsky/adapters/TrackListAdapter;->mPlayIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 168
    :pswitch_1
    iget-object v1, v0, Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;->loadingSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 169
    iget-object v1, v0, Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;->playIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    iget-object v1, v0, Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;->playIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/finsky/adapters/TrackListAdapter;->mPlayIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 175
    :pswitch_2
    iget-object v1, v0, Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;->loadingSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 176
    iget-object v1, v0, Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;->playIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 177
    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 181
    :pswitch_3
    iget-object v1, v0, Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;->loadingSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 182
    iget-object v1, v0, Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;->playIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    iget-object v1, v0, Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;->playIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/finsky/adapters/TrackListAdapter;->mPauseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 100
    move-object v2, p2

    .line 101
    .local v2, v:Landroid/view/View;
    if-nez v2, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/TrackListAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 104
    .local v3, vi:Landroid/view/LayoutInflater;
    const v4, 0x7f040027

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 108
    .end local v3           #vi:Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/TrackListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/model/Track;

    .line 109
    .local v1, track:Lcom/google/android/finsky/model/Track;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;

    .line 110
    .local v0, holder:Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;
    if-nez v0, :cond_1

    .line 111
    new-instance v0, Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;

    .end local v0           #holder:Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;
    invoke-direct {v0, v2}, Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;-><init>(Landroid/view/View;)V

    .line 112
    .restart local v0       #holder:Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 118
    :cond_1
    iget-object v4, v1, Lcom/google/android/finsky/model/Track;->mode:Lcom/google/android/finsky/model/Track$TrackMode;

    invoke-direct {p0, v2, v4}, Lcom/google/android/finsky/adapters/TrackListAdapter;->setTrackView(Landroid/view/View;Lcom/google/android/finsky/model/Track$TrackMode;)V

    .line 120
    iget-object v4, v1, Lcom/google/android/finsky/model/Track;->url:Ljava/lang/String;

    iput-object v4, v0, Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;->url:Ljava/lang/String;

    .line 121
    iget-object v4, v0, Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;->trackNumber:Landroid/widget/TextView;

    iget v5, v1, Lcom/google/android/finsky/model/Track;->trackNo:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v4, v0, Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;->title:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/google/android/finsky/model/Track;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v4, v0, Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;->album:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/google/android/finsky/model/Track;->album:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v4, v0, Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;->year:Landroid/widget/TextView;

    iget v5, v1, Lcom/google/android/finsky/model/Track;->year:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v4, v0, Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;->artist:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/google/android/finsky/model/Track;->artist:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v4, v0, Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;->length:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/google/android/finsky/model/Track;->length:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v4, v0, Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;->priceButton:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/google/android/finsky/model/Track;->price:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v4, v0, Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;->priceButton:Landroid/widget/TextView;

    new-instance v5, Lcom/google/android/finsky/adapters/TrackListAdapter$1;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/adapters/TrackListAdapter$1;-><init>(Lcom/google/android/finsky/adapters/TrackListAdapter;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v4, v0, Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;->playButtonLayout:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/google/android/finsky/adapters/TrackListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v4, v0, Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;->trackNumber:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/finsky/adapters/TrackListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v4, v0, Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;->title:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/finsky/adapters/TrackListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v4, v0, Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;->album:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/finsky/adapters/TrackListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v4, v0, Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;->year:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/finsky/adapters/TrackListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v4, v0, Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;->artist:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/finsky/adapters/TrackListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v4, v0, Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;->length:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/finsky/adapters/TrackListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v4, v0, Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;->album:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/finsky/adapters/TrackListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    return-object v2
.end method
