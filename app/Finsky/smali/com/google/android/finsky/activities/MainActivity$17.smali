.class Lcom/google/android/finsky/activities/MainActivity$17;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/MainActivity;->setupPurchaseErrorDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/MainActivity;

.field final synthetic val$detailsUrl:Ljava/lang/String;

.field final synthetic val$offerType:I


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/MainActivity;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1095
    iput-object p1, p0, Lcom/google/android/finsky/activities/MainActivity$17;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    iput-object p2, p0, Lcom/google/android/finsky/activities/MainActivity$17;->val$detailsUrl:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/finsky/activities/MainActivity$17;->val$offerType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity$17;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    invoke-static {v0}, Lcom/google/android/finsky/activities/MainActivity;->access$600(Lcom/google/android/finsky/activities/MainActivity;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity$17;->val$detailsUrl:Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/finsky/activities/MainActivity$17;->val$offerType:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->buyItem(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1106
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity$17;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/MainActivity;->removeDialog(I)V

    .line 1107
    return-void
.end method
