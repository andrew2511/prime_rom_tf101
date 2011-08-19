.class Lcom/amazon/kcp/welcome/WelcomeActivity$2;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/welcome/WelcomeActivity;
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
    .line 80
    iput-object p1, p0, Lcom/amazon/kcp/welcome/WelcomeActivity$2;->this$0:Lcom/amazon/kcp/welcome/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/amazon/kcp/welcome/WelcomeActivity$2;->this$0:Lcom/amazon/kcp/welcome/WelcomeActivity;

    invoke-static {v0}, Lcom/amazon/kcp/welcome/WelcomeActivity;->access$100(Lcom/amazon/kcp/welcome/WelcomeActivity;)V

    .line 85
    return-void
.end method
