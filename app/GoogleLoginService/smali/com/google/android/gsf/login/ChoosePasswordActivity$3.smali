.class Lcom/google/android/gsf/login/ChoosePasswordActivity$3;
.super Lcom/google/android/gsf/login/ChoosePasswordActivity$GaiaPasswordFilter;
.source "ChoosePasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/login/ChoosePasswordActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/ChoosePasswordActivity;Z)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$3;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    invoke-direct {p0, p2}, Lcom/google/android/gsf/login/ChoosePasswordActivity$GaiaPasswordFilter;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public onInvalidCharacter(C)V
    .locals 2
    .parameter "c"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$3;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->access$702(Lcom/google/android/gsf/login/ChoosePasswordActivity;Z)Z

    .line 214
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$3;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->access$702(Lcom/google/android/gsf/login/ChoosePasswordActivity;Z)Z

    .line 209
    return-void
.end method
