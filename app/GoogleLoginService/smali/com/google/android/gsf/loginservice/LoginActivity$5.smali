.class Lcom/google/android/gsf/loginservice/LoginActivity$5;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/loginservice/LoginActivity;
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
    .line 293
    iput-object p1, p0, Lcom/google/android/gsf/loginservice/LoginActivity$5;->this$0:Lcom/google/android/gsf/loginservice/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 302
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 295
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/LoginActivity$5;->this$0:Lcom/google/android/gsf/loginservice/LoginActivity;

    invoke-static {v0}, Lcom/google/android/gsf/loginservice/LoginActivity;->access$100(Lcom/google/android/gsf/loginservice/LoginActivity;)V

    .line 299
    return-void
.end method
