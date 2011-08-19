.class Lcom/google/android/gsf/login/LoginActivity$2;
.super Landroid/text/LoginFilter$PasswordFilterGMail;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/login/LoginActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/LoginActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/LoginActivity;Z)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 248
    iput-object p1, p0, Lcom/google/android/gsf/login/LoginActivity$2;->this$0:Lcom/google/android/gsf/login/LoginActivity;

    invoke-direct {p0, p2}, Landroid/text/LoginFilter$PasswordFilterGMail;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public onInvalidCharacter(C)V
    .locals 2
    .parameter "c"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivity$2;->this$0:Lcom/google/android/gsf/login/LoginActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->access$102(Lcom/google/android/gsf/login/LoginActivity;Z)Z

    .line 257
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivity$2;->this$0:Lcom/google/android/gsf/login/LoginActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->access$102(Lcom/google/android/gsf/login/LoginActivity;Z)Z

    .line 252
    return-void
.end method
