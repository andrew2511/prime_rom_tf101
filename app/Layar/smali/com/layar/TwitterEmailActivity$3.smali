.class Lcom/layar/TwitterEmailActivity$3;
.super Ljava/lang/Object;
.source "TwitterEmailActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/TwitterEmailActivity;->inputTextListener()Landroid/text/TextWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/TwitterEmailActivity;


# direct methods
.method constructor <init>(Lcom/layar/TwitterEmailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/TwitterEmailActivity$3;->this$0:Lcom/layar/TwitterEmailActivity;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 92
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 88
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/layar/TwitterEmailActivity$3;->this$0:Lcom/layar/TwitterEmailActivity;

    invoke-static {v0}, Lcom/layar/TwitterEmailActivity;->access$1(Lcom/layar/TwitterEmailActivity;)V

    .line 83
    return-void
.end method
