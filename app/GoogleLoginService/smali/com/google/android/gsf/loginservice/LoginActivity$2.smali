.class Lcom/google/android/gsf/loginservice/LoginActivity$2;
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
    .line 169
    iput-object p1, p0, Lcom/google/android/gsf/loginservice/LoginActivity$2;->this$0:Lcom/google/android/gsf/loginservice/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 171
    if-eqz p2, :cond_0

    .line 172
    check-cast p1, Landroid/widget/EditText;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/EditText;->selectAll()V

    .line 174
    :cond_0
    return-void
.end method
