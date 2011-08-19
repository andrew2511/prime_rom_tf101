.class Lcom/layar/UserCreateActivity$4;
.super Ljava/lang/Object;
.source "UserCreateActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/UserCreateActivity;->inputTextListener()Landroid/text/TextWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/UserCreateActivity;


# direct methods
.method constructor <init>(Lcom/layar/UserCreateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/UserCreateActivity$4;->this$0:Lcom/layar/UserCreateActivity;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 233
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 229
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/layar/UserCreateActivity$4;->this$0:Lcom/layar/UserCreateActivity;

    invoke-static {v0}, Lcom/layar/UserCreateActivity;->access$9(Lcom/layar/UserCreateActivity;)V

    .line 224
    return-void
.end method
