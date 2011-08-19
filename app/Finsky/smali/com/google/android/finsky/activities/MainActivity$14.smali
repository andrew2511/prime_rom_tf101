.class Lcom/google/android/finsky/activities/MainActivity$14;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/MainActivity;->setupNavigationError(ILjava/lang/String;Z)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/MainActivity;

.field final synthetic val$dialogId:I

.field final synthetic val$goBack:Z


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/MainActivity;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1036
    iput-object p1, p0, Lcom/google/android/finsky/activities/MainActivity$14;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    iput p2, p0, Lcom/google/android/finsky/activities/MainActivity$14;->val$dialogId:I

    iput-boolean p3, p0, Lcom/google/android/finsky/activities/MainActivity$14;->val$goBack:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity$14;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    iget v1, p0, Lcom/google/android/finsky/activities/MainActivity$14;->val$dialogId:I

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/MainActivity;->removeDialog(I)V

    .line 1040
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/MainActivity$14;->val$goBack:Z

    if-eqz v0, :cond_0

    .line 1041
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity$14;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    invoke-static {v0}, Lcom/google/android/finsky/activities/MainActivity;->access$600(Lcom/google/android/finsky/activities/MainActivity;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goBack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity$14;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/MainActivity;->onBackPressed()V

    .line 1045
    :cond_0
    return-void
.end method
