.class public Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;
.super Ljava/lang/Object;
.source "MovieListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/adapter/MovieListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MovieViewHolder"
.end annotation


# instance fields
.field private final actors:Landroid/widget/TextView;

.field public final downloadStatus:Landroid/widget/TextView;

.field public final expires:Landroid/widget/TextView;

.field private final genres:Landroid/widget/TextView;

.field public final offline:Lcom/google/android/youtube/core/ui/CheckedImageView;

.field public final poster:Landroid/widget/ImageView;

.field private final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const v0, 0x7f08000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;->title:Landroid/widget/TextView;

    .line 168
    const v0, 0x7f080015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;->poster:Landroid/widget/ImageView;

    .line 169
    const v0, 0x7f080019

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;->genres:Landroid/widget/TextView;

    .line 170
    const v0, 0x7f08001a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;->actors:Landroid/widget/TextView;

    .line 171
    const v0, 0x7f080017

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;->expires:Landroid/widget/TextView;

    .line 172
    const v0, 0x7f080018

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;->downloadStatus:Landroid/widget/TextView;

    .line 173
    const v0, 0x7f080016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/ui/CheckedImageView;

    iput-object v0, p0, Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;->offline:Lcom/google/android/youtube/core/ui/CheckedImageView;

    .line 174
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;->genres:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;->actors:Landroid/widget/TextView;

    return-object v0
.end method
