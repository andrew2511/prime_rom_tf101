.class Lcom/google/android/gsf/login/BaseActivity$5;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/BaseActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/BaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 507
    iput-object p1, p0, Lcom/google/android/gsf/login/BaseActivity$5;->this$0:Lcom/google/android/gsf/login/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 510
    iget-object v1, p0, Lcom/google/android/gsf/login/BaseActivity$5;->this$0:Lcom/google/android/gsf/login/BaseActivity;

    iget-boolean v1, v1, Lcom/google/android/gsf/login/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "GoogleLoginService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EditorAction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_0
    const/4 v1, 0x6

    if-ne p2, v1, :cond_1

    .line 512
    iget-object v1, p0, Lcom/google/android/gsf/login/BaseActivity$5;->this$0:Lcom/google/android/gsf/login/BaseActivity;

    invoke-static {v1}, Lcom/google/android/gsf/login/BaseActivity;->access$100(Lcom/google/android/gsf/login/BaseActivity;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    move v1, v4

    .line 524
    :goto_0
    return v1

    .line 517
    :cond_1
    if-eqz p3, :cond_3

    .line 518
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 519
    .local v0, keycode:I
    const/16 v1, 0x42

    if-eq v0, v1, :cond_2

    const/16 v1, 0x14

    if-ne v0, v1, :cond_3

    .line 520
    :cond_2
    iget-object v1, p0, Lcom/google/android/gsf/login/BaseActivity$5;->this$0:Lcom/google/android/gsf/login/BaseActivity;

    invoke-static {v1}, Lcom/google/android/gsf/login/BaseActivity;->access$100(Lcom/google/android/gsf/login/BaseActivity;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    move v1, v4

    .line 521
    goto :goto_0

    .line 524
    .end local v0           #keycode:I
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method
