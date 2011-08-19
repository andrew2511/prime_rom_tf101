.class Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "VideoListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/app/adapter/VideoListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field public final author:Landroid/widget/TextView;

.field public final badge3d:Landroid/widget/ImageView;

.field public final badgeMusic:Landroid/widget/ImageView;

.field public final cc:Landroid/widget/TextView;

.field public final detail:Landroid/widget/TextView;

.field public final duration:Landroid/widget/TextView;

.field public final hd:Landroid/widget/TextView;

.field public final more:Landroid/widget/ImageView;

.field public final recent:Landroid/widget/TextView;

.field public final thumbnail:Landroid/widget/ImageView;

.field public final title:Landroid/widget/TextView;

.field public final unplayableOverlay:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    const v0, 0x7f080015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 267
    const v0, 0x7f080016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->author:Landroid/widget/TextView;

    .line 268
    const v0, 0x7f080017

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->recent:Landroid/widget/TextView;

    .line 269
    const v0, 0x7f080052

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->detail:Landroid/widget/TextView;

    .line 270
    const v0, 0x7f08003d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    .line 271
    const v0, 0x7f08004b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->unplayableOverlay:Landroid/widget/ImageView;

    .line 272
    const v0, 0x7f08004c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    .line 273
    const-string v0, "cc"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->cc:Landroid/widget/TextView;

    .line 274
    const-string v0, "hd"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->hd:Landroid/widget/TextView;

    .line 275
    const v0, 0x7f08003c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->more:Landroid/widget/ImageView;

    .line 276
    const v0, 0x7f08004f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->badgeMusic:Landroid/widget/ImageView;

    .line 277
    const v0, 0x7f080050

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->badge3d:Landroid/widget/ImageView;

    .line 278
    return-void
.end method
