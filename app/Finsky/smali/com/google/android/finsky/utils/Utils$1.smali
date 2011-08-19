.class final Lcom/google/android/finsky/utils/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/Utils;->bindPurchaseButton(Landroid/widget/TextView;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$nm:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field final synthetic val$wrapper:Lcom/google/android/finsky/utils/PurchaseButtonWrapper;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/PurchaseButtonWrapper;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/android/finsky/utils/Utils$1;->val$wrapper:Lcom/google/android/finsky/utils/PurchaseButtonWrapper;

    iput-object p2, p0, Lcom/google/android/finsky/utils/Utils$1;->val$nm:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/finsky/utils/Utils$1;->val$wrapper:Lcom/google/android/finsky/utils/PurchaseButtonWrapper;

    iget-object v1, p0, Lcom/google/android/finsky/utils/Utils$1;->val$nm:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/utils/PurchaseButtonWrapper;->performDefaultAction(Lcom/google/android/finsky/utils/PurchaseButtonWrapper$PurchaseButtonHandler;)V

    .line 74
    return-void
.end method
