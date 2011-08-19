.class public final Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;
.super Ljava/lang/Object;
.source "TrackListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/adapters/TrackListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "TrackViewHolder"
.end annotation


# instance fields
.field public final album:Landroid/widget/TextView;

.field public final artist:Landroid/widget/TextView;

.field public final length:Landroid/widget/TextView;

.field public final loadingSpinner:Landroid/widget/ProgressBar;

.field public final playButtonLayout:Landroid/widget/FrameLayout;

.field public final playIcon:Landroid/widget/ImageView;

.field public final priceButton:Landroid/widget/TextView;

.field public final title:Landroid/widget/TextView;

.field public final trackNumber:Landroid/widget/TextView;

.field public url:Ljava/lang/String;

.field public final year:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const v0, 0x7f090068

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;->playButtonLayout:Landroid/widget/FrameLayout;

    .line 56
    const v0, 0x7f090069

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;->loadingSpinner:Landroid/widget/ProgressBar;

    .line 57
    const v0, 0x7f09006a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;->playIcon:Landroid/widget/ImageView;

    .line 58
    const v0, 0x7f09006b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;->trackNumber:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f09006c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;->title:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f09006d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;->album:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f09006e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;->year:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f09006f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;->artist:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f090070

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;->length:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f090071

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/TrackListAdapter$TrackViewHolder;->priceButton:Landroid/widget/TextView;

    .line 65
    return-void
.end method
