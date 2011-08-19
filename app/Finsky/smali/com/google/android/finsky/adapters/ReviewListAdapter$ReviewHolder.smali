.class final Lcom/google/android/finsky/adapters/ReviewListAdapter$ReviewHolder;
.super Ljava/lang/Object;
.source "ReviewListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/adapters/ReviewListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReviewHolder"
.end annotation


# instance fields
.field public final author:Landroid/widget/TextView;

.field public final ratingBar:Landroid/widget/RatingBar;

.field public final reviewBy:Landroid/view/View;

.field public final reviewDate:Landroid/widget/TextView;

.field public final reviewFrom:Landroid/view/View;

.field public final reviewOn:Landroid/view/View;

.field public final reviewText:Landroid/widget/TextView;

.field public final source:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "reviewItem"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const v0, 0x7f09002e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/adapters/ReviewListAdapter$ReviewHolder;->reviewBy:Landroid/view/View;

    .line 62
    const v0, 0x7f09009e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/ReviewListAdapter$ReviewHolder;->author:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f09009f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/adapters/ReviewListAdapter$ReviewHolder;->reviewFrom:Landroid/view/View;

    .line 64
    const v0, 0x7f0900a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/ReviewListAdapter$ReviewHolder;->source:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f09009d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/ReviewListAdapter$ReviewHolder;->reviewText:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f0900a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/adapters/ReviewListAdapter$ReviewHolder;->reviewOn:Landroid/view/View;

    .line 67
    const v0, 0x7f0900a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/ReviewListAdapter$ReviewHolder;->reviewDate:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f09009c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/ReviewListAdapter$ReviewHolder;->ratingBar:Landroid/widget/RatingBar;

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/google/android/finsky/adapters/ReviewListAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/finsky/adapters/ReviewListAdapter$ReviewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
