.class Lcom/layar/UserSettingsActivity$2;
.super Ljava/lang/Object;
.source "UserSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/UserSettingsActivity;->logoutListener()Landroid/view/View$OnClickListener;
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
    iput-object p1, p0, Lcom/layar/UserSettingsActivity$2;->this$0:Lcom/layar/UserSettingsActivity;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/layar/UserSettingsActivity$2;)Lcom/layar/UserSettingsActivity;
    .locals 1
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lcom/layar/UserSettingsActivity$2;->this$0:Lcom/layar/UserSettingsActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/layar/UserSettingsActivity$2;->this$0:Lcom/layar/UserSettingsActivity;

    invoke-static {v0}, Lcom/layar/UserSettingsActivity;->access$2(Lcom/layar/UserSettingsActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 156
    iget-object v0, p0, Lcom/layar/UserSettingsActivity$2;->this$0:Lcom/layar/UserSettingsActivity;

    invoke-static {v0}, Lcom/layar/UserSettingsActivity;->access$0(Lcom/layar/UserSettingsActivity;)Lcom/layar/ActivityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/ActivityHelper;->getUserManager()Lcom/layar/data/user/UserManager;

    move-result-object v0

    new-instance v1, Lcom/layar/UserSettingsActivity$2$1;

    invoke-direct {v1, p0}, Lcom/layar/UserSettingsActivity$2$1;-><init>(Lcom/layar/UserSettingsActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/layar/data/user/UserManager;->logout(Lcom/layar/data/user/UserManager$LogoutHandler;)V

    .line 177
    return-void
.end method
