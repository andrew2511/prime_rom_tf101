.class Lcom/infraware/registration/UserRegistrationActivity$9;
.super Ljava/lang/Object;
.source "UserRegistrationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/registration/UserRegistrationActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/registration/UserRegistrationActivity;


# direct methods
.method constructor <init>(Lcom/infraware/registration/UserRegistrationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/registration/UserRegistrationActivity$9;->this$0:Lcom/infraware/registration/UserRegistrationActivity;

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 538
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity$9;->this$0:Lcom/infraware/registration/UserRegistrationActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/infraware/registration/UserRegistrationActivity;->access$16(Lcom/infraware/registration/UserRegistrationActivity;Z)V

    .line 539
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity$9;->this$0:Lcom/infraware/registration/UserRegistrationActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/infraware/registration/UserRegistrationActivity;->access$6(Lcom/infraware/registration/UserRegistrationActivity;Z)V

    .line 540
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity$9;->this$0:Lcom/infraware/registration/UserRegistrationActivity;

    invoke-virtual {v0}, Lcom/infraware/registration/UserRegistrationActivity;->finish()V

    .line 541
    return-void
.end method
