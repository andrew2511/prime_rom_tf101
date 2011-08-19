.class Lcom/layar/UserVerificationPromptActivity$1;
.super Ljava/lang/Object;
.source "UserVerificationPromptActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/UserVerificationPromptActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/UserVerificationPromptActivity;


# direct methods
.method constructor <init>(Lcom/layar/UserVerificationPromptActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/UserVerificationPromptActivity$1;->this$0:Lcom/layar/UserVerificationPromptActivity;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/layar/UserVerificationPromptActivity$1;)Lcom/layar/UserVerificationPromptActivity;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/layar/UserVerificationPromptActivity$1;->this$0:Lcom/layar/UserVerificationPromptActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/layar/UserVerificationPromptActivity$1;->this$0:Lcom/layar/UserVerificationPromptActivity;

    invoke-static {v0}, Lcom/layar/UserVerificationPromptActivity;->access$0(Lcom/layar/UserVerificationPromptActivity;)Lcom/layar/data/user/UserManager;

    move-result-object v0

    .line 53
    new-instance v1, Lcom/layar/UserVerificationPromptActivity$1$1;

    invoke-direct {v1, p0}, Lcom/layar/UserVerificationPromptActivity$1$1;-><init>(Lcom/layar/UserVerificationPromptActivity$1;)V

    .line 52
    invoke-virtual {v0, v1}, Lcom/layar/data/user/UserManager;->verifyAccount(Lcom/layar/data/user/UserManager$VerifyAccountHandler;)V

    .line 69
    return-void
.end method
