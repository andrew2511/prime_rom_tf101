.class Lcom/google/android/youtube/app/adapter/PlaylistsAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "PlaylistsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field public final more:Landroid/widget/ImageView;

.field public final size:Landroid/widget/TextView;

.field public final thumbnail:Landroid/widget/ImageView;

.field public final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const v0, 0x7f080015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/PlaylistsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f08003e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/PlaylistsAdapter$ViewHolder;->size:Landroid/widget/TextView;

    .line 122
    const v0, 0x7f08003d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/PlaylistsAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    .line 123
    const v0, 0x7f08003c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/PlaylistsAdapter$ViewHolder;->more:Landroid/widget/ImageView;

    .line 124
    return-void
.end method
