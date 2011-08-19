.class Lcom/google/android/youtube/app/adapter/EventListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "EventListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/app/adapter/EventListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field public final icon:Landroid/widget/ImageView;

.field public final target:Landroid/widget/TextView;

.field public final targetNotFound:Landroid/widget/TextView;

.field public final timeAgo:Landroid/widget/TextView;

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

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/EventListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f08002c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/EventListAdapter$ViewHolder;->target:Landroid/widget/TextView;

    .line 122
    const v0, 0x7f08002b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/EventListAdapter$ViewHolder;->targetNotFound:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f08002a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/EventListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 124
    const v0, 0x7f08002d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/EventListAdapter$ViewHolder;->timeAgo:Landroid/widget/TextView;

    .line 125
    return-void
.end method
