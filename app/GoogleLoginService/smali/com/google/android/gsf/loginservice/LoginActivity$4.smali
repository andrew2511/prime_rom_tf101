.class Lcom/google/android/gsf/loginservice/LoginActivity$4;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/loginservice/LoginActivity;->doLoginActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/loginservice/LoginActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/loginservice/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/google/android/gsf/loginservice/LoginActivity$4;->this$0:Lcom/google/android/gsf/loginservice/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 5
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 206
    if-eqz p2, :cond_0

    .line 209
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    move-object v2, v0

    .line 210
    .local v2, tv:Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 211
    .local v1, idx:I
    if-gez v1, :cond_1

    .line 212
    invoke-virtual {v2}, Landroid/widget/EditText;->selectAll()V

    .line 217
    .end local v1           #idx:I
    .end local v2           #tv:Landroid/widget/EditText;
    :cond_0
    :goto_0
    return-void

    .line 214
    .restart local v1       #idx:I
    .restart local v2       #tv:Landroid/widget/EditText;
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_0
.end method
