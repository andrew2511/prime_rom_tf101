.class Lcom/google/android/finsky/fragments/DetailsReviewsViewBinder$1;
.super Ljava/lang/Object;
.source "DetailsReviewsViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/fragments/DetailsReviewsViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/fragments/DetailsReviewsViewBinder;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/fragments/DetailsReviewsViewBinder;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/android/finsky/fragments/DetailsReviewsViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/DetailsReviewsViewBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsReviewsViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/DetailsReviewsViewBinder;

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsReviewsViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    sget-object v1, Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;->ALL_REVIEWS:Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->switchDetailsPageState(Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;)V

    .line 66
    return-void
.end method
