.class Lcom/layar/UserSettingsActivity$1;
.super Ljava/lang/Object;
.source "UserSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/UserSettingsActivity;->sendVerificationLink()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/UserSettingsActivity;


# direct methods
.method constructor <init>(Lcom/layar/UserSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/UserSettingsActivity$1;->this$0:Lcom/layar/UserSettingsActivity;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/layar/UserSettingsActivity$1;)Lcom/layar/UserSettingsActivity;
    .locals 1
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/layar/UserSettingsActivity$1;->this$0:Lcom/layar/UserSettingsActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/layar/UserSettingsActivity$1;->this$0:Lcom/layar/UserSettingsActivity;

    invoke-static {v0}, Lcom/layar/UserSettingsActivity;->access$0(Lcom/layar/UserSettingsActivity;)Lcom/layar/ActivityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/ActivityHelper;->getUserManager()Lcom/layar/data/user/UserManager;

    move-result-object v0

    .line 131
    new-instance v1, Lcom/layar/UserSettingsActivity$1$1;

    invoke-direct {v1, p0}, Lcom/layar/UserSettingsActivity$1$1;-><init>(Lcom/layar/UserSettingsActivity$1;)V

    .line 130
    invoke-virtual {v0, v1}, Lcom/layar/data/user/UserManager;->verifyAccount(Lcom/layar/data/user/UserManager$VerifyAccountHandler;)V

    .line 147
    return-void
.end method
