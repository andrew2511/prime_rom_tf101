.class Lcom/google/android/finsky/fragments/PromoViewBinder$1;
.super Ljava/lang/Object;
.source "PromoViewBinder.java"

# interfaces
.implements Lcom/google/android/finsky/layout/PromoStrip$PromoStripTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/fragments/PromoViewBinder;->setupStrip(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/fragments/PromoViewBinder;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/fragments/PromoViewBinder;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/android/finsky/fragments/PromoViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/PromoViewBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemTap(Lcom/google/android/finsky/api/model/Document;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PromoViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/PromoViewBinder;

    invoke-static {v0}, Lcom/google/android/finsky/fragments/PromoViewBinder;->access$000(Lcom/google/android/finsky/fragments/PromoViewBinder;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showDetails(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public onPriceTap(Lcom/google/android/finsky/utils/PurchaseButtonWrapper;)V
    .locals 1
    .parameter "button"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PromoViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/PromoViewBinder;

    invoke-static {v0}, Lcom/google/android/finsky/fragments/PromoViewBinder;->access$000(Lcom/google/android/finsky/fragments/PromoViewBinder;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/finsky/utils/PurchaseButtonWrapper;->performDefaultAction(Lcom/google/android/finsky/utils/PurchaseButtonWrapper$PurchaseButtonHandler;)V

    .line 101
    return-void
.end method
