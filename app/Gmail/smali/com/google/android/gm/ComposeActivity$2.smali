.class Lcom/google/android/gm/ComposeActivity$2;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/ComposeActivity;->sendOrSaveWithSanityChecks(Landroid/text/Spanned;ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/ComposeActivity;

.field final synthetic val$body:Landroid/text/Spanned;

.field final synthetic val$save:Z

.field final synthetic val$showToast:Z


# direct methods
.method constructor <init>(Lcom/google/android/gm/ComposeActivity;Landroid/text/Spanned;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1266
    iput-object p1, p0, Lcom/google/android/gm/ComposeActivity$2;->this$0:Lcom/google/android/gm/ComposeActivity;

    iput-object p2, p0, Lcom/google/android/gm/ComposeActivity$2;->val$body:Landroid/text/Spanned;

    iput-boolean p3, p0, Lcom/google/android/gm/ComposeActivity$2;->val$save:Z

    iput-boolean p4, p0, Lcom/google/android/gm/ComposeActivity$2;->val$showToast:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity$2;->this$0:Lcom/google/android/gm/ComposeActivity;

    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity$2;->val$body:Landroid/text/Spanned;

    iget-boolean v2, p0, Lcom/google/android/gm/ComposeActivity$2;->val$save:Z

    iget-boolean v3, p0, Lcom/google/android/gm/ComposeActivity$2;->val$showToast:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gm/ComposeActivity;->access$300(Lcom/google/android/gm/ComposeActivity;Landroid/text/Spanned;ZZ)V

    .line 1269
    return-void
.end method
