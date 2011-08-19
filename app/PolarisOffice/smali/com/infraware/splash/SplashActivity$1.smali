.class Lcom/infraware/splash/SplashActivity$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/splash/SplashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/splash/SplashActivity;


# direct methods
.method constructor <init>(Lcom/infraware/splash/SplashActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/splash/SplashActivity$1;->this$0:Lcom/infraware/splash/SplashActivity;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/infraware/splash/SplashActivity$1;->this$0:Lcom/infraware/splash/SplashActivity;

    const-class v2, Lcom/infraware/filemanager/FmAccountListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .local v0, oIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/infraware/splash/SplashActivity$1;->this$0:Lcom/infraware/splash/SplashActivity;

    invoke-virtual {v1, v0}, Lcom/infraware/splash/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 71
    iget-object v1, p0, Lcom/infraware/splash/SplashActivity$1;->this$0:Lcom/infraware/splash/SplashActivity;

    invoke-virtual {v1}, Lcom/infraware/splash/SplashActivity;->finish()V

    .line 72
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 53
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 48
    return-void
.end method
