.class Lcom/google/android/finsky/layout/PromoStrip$PromoItemView$1;
.super Ljava/lang/Object;
.source "PromoStrip.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->setDocument(Lcom/google/android/finsky/api/model/Document;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView$1;->this$1:Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView$1;->this$1:Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;

    iget-object v0, v0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->this$0:Lcom/google/android/finsky/layout/PromoStrip;

    invoke-static {v0}, Lcom/google/android/finsky/layout/PromoStrip;->access$400(Lcom/google/android/finsky/layout/PromoStrip;)Lcom/google/android/finsky/layout/PromoStrip$PromoStripTapListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView$1;->this$1:Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;

    iget-object v1, v1, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->mPurchaseButton:Lcom/google/android/finsky/utils/PurchaseButtonWrapper;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/layout/PromoStrip$PromoStripTapListener;->onPriceTap(Lcom/google/android/finsky/utils/PurchaseButtonWrapper;)V

    .line 134
    return-void
.end method
