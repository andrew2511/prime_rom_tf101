.class Lcom/ecareme/pixwe/view/common/SplashActivity$5;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/view/common/SplashActivity;->backGroungLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/view/common/SplashActivity;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/view/common/SplashActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/view/common/SplashActivity$5;->this$0:Lcom/ecareme/pixwe/view/common/SplashActivity;

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/SplashActivity$5;->this$0:Lcom/ecareme/pixwe/view/common/SplashActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/PixWe;->goHome(Landroid/content/Context;)V

    .line 258
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/SplashActivity$5;->this$0:Lcom/ecareme/pixwe/view/common/SplashActivity;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/view/common/SplashActivity;->finish()V

    .line 259
    return-void
.end method
