.class final Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MyDownloadsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/adapters/MyDownloadsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewHolder"
.end annotation


# instance fields
.field public final author:Landroid/widget/TextView;

.field public final image:Landroid/widget/ImageView;

.field public isImageLoaded:Z

.field public final isRunning:Z

.field public final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 1
    .parameter "convertView"
    .parameter "isRunning"

    .prologue
    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    const v0, 0x7f08001b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 580
    const v0, 0x7f08001e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    .line 581
    const v0, 0x7f08004c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;->author:Landroid/widget/TextView;

    .line 582
    iput-boolean p2, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;->isRunning:Z

    .line 584
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 585
    return-void
.end method
