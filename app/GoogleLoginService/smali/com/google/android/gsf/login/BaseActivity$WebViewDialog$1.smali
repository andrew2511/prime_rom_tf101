.class Lcom/google/android/gsf/login/BaseActivity$WebViewDialog$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/login/BaseActivity$WebViewDialog;-><init>(Lcom/google/android/gsf/login/BaseActivity;Lcom/google/android/gsf/login/BaseActivity$AndroidPolicy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/BaseActivity$WebViewDialog;

.field final synthetic val$activity:Lcom/google/android/gsf/login/BaseActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/BaseActivity$WebViewDialog;Lcom/google/android/gsf/login/BaseActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 788
    iput-object p1, p0, Lcom/google/android/gsf/login/BaseActivity$WebViewDialog$1;->this$0:Lcom/google/android/gsf/login/BaseActivity$WebViewDialog;

    iput-object p2, p0, Lcom/google/android/gsf/login/BaseActivity$WebViewDialog$1;->val$activity:Lcom/google/android/gsf/login/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 791
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity$WebViewDialog$1;->val$activity:Lcom/google/android/gsf/login/BaseActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gsf/login/BaseActivity;->access$202(Lcom/google/android/gsf/login/BaseActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 792
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 793
    return-void
.end method
