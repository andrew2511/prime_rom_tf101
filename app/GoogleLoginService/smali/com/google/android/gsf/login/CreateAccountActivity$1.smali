.class Lcom/google/android/gsf/login/CreateAccountActivity$1;
.super Landroid/text/LoginFilter$UsernameFilterGMail;
.source "CreateAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/login/CreateAccountActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/CreateAccountActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/CreateAccountActivity;Z)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/gsf/login/CreateAccountActivity$1;->this$0:Lcom/google/android/gsf/login/CreateAccountActivity;

    invoke-direct {p0, p2}, Landroid/text/LoginFilter$UsernameFilterGMail;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public onInvalidCharacter(C)V
    .locals 2
    .parameter "c"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/gsf/login/CreateAccountActivity$1;->this$0:Lcom/google/android/gsf/login/CreateAccountActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gsf/login/CreateAccountActivity;->access$002(Lcom/google/android/gsf/login/CreateAccountActivity;Z)Z

    .line 98
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/gsf/login/CreateAccountActivity$1;->this$0:Lcom/google/android/gsf/login/CreateAccountActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gsf/login/CreateAccountActivity;->access$002(Lcom/google/android/gsf/login/CreateAccountActivity;Z)Z

    .line 93
    return-void
.end method
