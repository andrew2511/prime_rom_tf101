.class Lcom/ecareme/pixwe/view/common/RegisterActivity$3$5;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3$5;->this$1:Lcom/ecareme/pixwe/view/common/RegisterActivity$3;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3$5;->this$1:Lcom/ecareme/pixwe/view/common/RegisterActivity$3;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->access$0(Lcom/ecareme/pixwe/view/common/RegisterActivity$3;)Lcom/ecareme/pixwe/view/common/RegisterActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$12(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ecareme/pixwe/PixWe;->goHome(Landroid/content/Context;)V

    .line 263
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3$5;->this$1:Lcom/ecareme/pixwe/view/common/RegisterActivity$3;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->access$0(Lcom/ecareme/pixwe/view/common/RegisterActivity$3;)Lcom/ecareme/pixwe/view/common/RegisterActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$12(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 264
    return-void
.end method
