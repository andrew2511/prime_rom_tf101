.class Lcom/google/android/finsky/activities/MainActivity$15;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1073
    iput-object p1, p0, Lcom/google/android/finsky/activities/MainActivity$15;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity$15;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/MainActivity;->removeDialog(I)V

    .line 1080
    return-void
.end method
