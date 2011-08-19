.class Lcom/ecareme/pixwe/view/common/LoginActivity$4$4;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lcom/ecareme/pixwe/view/common/LoginActivity$4$4;->this$1:Lcom/ecareme/pixwe/view/common/LoginActivity$4;

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 236
    sget-object v0, Lcom/ecareme/pixwe/view/common/LoginActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/ecareme/pixwe/PixWe;->goHome(Landroid/content/Context;)V

    .line 237
    sget-object p0, Lcom/ecareme/pixwe/view/common/LoginActivity;->ctx:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 238
    return-void
.end method
