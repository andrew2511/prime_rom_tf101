.class Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder$2;
.super Ljava/lang/Object;
.source "DetailsRelatedViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->prepareAndPopulateTable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder$2;->this$0:Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder$2;->this$0:Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder$2;->this$0:Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;

    invoke-static {v1}, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->access$100(Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goBrowse(Ljava/lang/String;)V

    .line 239
    return-void
.end method
