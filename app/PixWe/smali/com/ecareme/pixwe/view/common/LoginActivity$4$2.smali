.class Lcom/ecareme/pixwe/view/common/LoginActivity$4$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/view/common/LoginActivity$4;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ecareme/pixwe/view/common/LoginActivity$4;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/view/common/LoginActivity$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/view/common/LoginActivity$4$2;->this$1:Lcom/ecareme/pixwe/view/common/LoginActivity$4;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 191
    sget-object p0, Lcom/ecareme/pixwe/view/common/LoginActivity;->ctx:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 192
    return-void
.end method
