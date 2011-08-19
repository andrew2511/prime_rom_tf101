.class Lcom/amazon/kcp/welcome/WelcomeActivity$1;
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
    .line 70
    iput-object p1, p0, Lcom/amazon/kcp/welcome/WelcomeActivity$1;->this$0:Lcom/amazon/kcp/welcome/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/amazon/kcp/welcome/WelcomeActivity$1;->this$0:Lcom/amazon/kcp/welcome/WelcomeActivity;

    invoke-static {v0}, Lcom/amazon/kcp/welcome/WelcomeActivity;->access$000(Lcom/amazon/kcp/welcome/WelcomeActivity;)V

    .line 75
    return-void
.end method
