.class Lcom/amazon/kcp/welcome/WelcomeActivity$6;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/welcome/WelcomeActivity;->onLoginSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/welcome/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/welcome/WelcomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/amazon/kcp/welcome/WelcomeActivity$6;->this$0:Lcom/amazon/kcp/welcome/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/amazon/kcp/welcome/WelcomeActivity$6;->this$0:Lcom/amazon/kcp/welcome/WelcomeActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/welcome/WelcomeActivity;->finish()V

    .line 283
    return-void
.end method
