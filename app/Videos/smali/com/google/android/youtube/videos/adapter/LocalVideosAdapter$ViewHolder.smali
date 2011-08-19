.class Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "LocalVideosAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field public final detail:Landroid/widget/TextView;

.field public final duration:Landroid/widget/TextView;

.field public final thumbnail:Landroid/widget/ImageView;

.field public final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const v0, 0x7f08000b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    .line 86
    const v0, 0x7f08000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 87
    const v0, 0x7f08000c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f080009

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter$ViewHolder;->detail:Landroid/widget/TextView;

    .line 89
    return-void
.end method
