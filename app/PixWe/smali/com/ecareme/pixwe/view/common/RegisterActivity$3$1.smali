.class Lcom/ecareme/pixwe/view/common/RegisterActivity$3$1;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ecareme/pixwe/view/common/RegisterActivity$3;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/view/common/RegisterActivity$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3$1;->this$1:Lcom/ecareme/pixwe/view/common/RegisterActivity$3;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3$1;->this$1:Lcom/ecareme/pixwe/view/common/RegisterActivity$3;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->access$0(Lcom/ecareme/pixwe/view/common/RegisterActivity$3;)Lcom/ecareme/pixwe/view/common/RegisterActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$12(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 198
    return-void
.end method
