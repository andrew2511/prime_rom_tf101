.class Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SubscriptionsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field public final channelViews:Landroid/widget/TextView;

.field public final recent:Landroid/widget/TextView;

.field public final recentCount:Landroid/widget/TextView;

.field public final subscribersCount:Landroid/widget/TextView;

.field public final thumbnail:Landroid/widget/ImageView;

.field public final title:Landroid/widget/TextView;

.field public final uploadedCount:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    const v0, 0x7f080015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 210
    const v0, 0x7f080022

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter$ViewHolder;->channelViews:Landroid/widget/TextView;

    .line 211
    const-string v0, "uploaded_count"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter$ViewHolder;->uploadedCount:Landroid/widget/TextView;

    .line 212
    const-string v0, "subscribers_count"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter$ViewHolder;->subscribersCount:Landroid/widget/TextView;

    .line 213
    const v0, 0x7f080017

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter$ViewHolder;->recent:Landroid/widget/TextView;

    .line 214
    const-string v0, "recent_count"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter$ViewHolder;->recentCount:Landroid/widget/TextView;

    .line 215
    const v0, 0x7f08003d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    .line 216
    return-void
.end method
