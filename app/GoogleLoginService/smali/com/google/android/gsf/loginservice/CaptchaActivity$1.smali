.class Lcom/google/android/gsf/loginservice/CaptchaActivity$1;
.super Ljava/lang/Object;
.source "CaptchaActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/loginservice/CaptchaActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/loginservice/CaptchaActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/loginservice/CaptchaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/gsf/loginservice/CaptchaActivity$1;->this$0:Lcom/google/android/gsf/loginservice/CaptchaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 51
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/CaptchaActivity$1;->this$0:Lcom/google/android/gsf/loginservice/CaptchaActivity;

    invoke-static {v0}, Lcom/google/android/gsf/loginservice/CaptchaActivity;->access$000(Lcom/google/android/gsf/loginservice/CaptchaActivity;)V

    .line 54
    const/4 v0, 0x1

    .line 56
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
