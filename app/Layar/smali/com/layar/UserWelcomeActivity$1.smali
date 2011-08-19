.class Lcom/layar/UserWelcomeActivity$1;
.super Ljava/lang/Object;
.source "UserWelcomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/UserWelcomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/UserWelcomeActivity;


# direct methods
.method constructor <init>(Lcom/layar/UserWelcomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/UserWelcomeActivity$1;->this$0:Lcom/layar/UserWelcomeActivity;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/layar/UserWelcomeActivity$1;->this$0:Lcom/layar/UserWelcomeActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/layar/UserWelcomeActivity;->setResult(I)V

    .line 47
    iget-object v0, p0, Lcom/layar/UserWelcomeActivity$1;->this$0:Lcom/layar/UserWelcomeActivity;

    invoke-virtual {v0}, Lcom/layar/UserWelcomeActivity;->finish()V

    .line 48
    return-void
.end method
