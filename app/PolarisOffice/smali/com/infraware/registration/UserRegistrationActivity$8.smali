.class Lcom/infraware/registration/UserRegistrationActivity$8;
.super Ljava/lang/Object;
.source "UserRegistrationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    iput-object p1, p0, Lcom/infraware/registration/UserRegistrationActivity$8;->this$0:Lcom/infraware/registration/UserRegistrationActivity;

    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "arg0"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 514
    packed-switch p2, :pswitch_data_0

    .line 521
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 516
    :pswitch_0
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity$8;->this$0:Lcom/infraware/registration/UserRegistrationActivity;

    iget-object v1, p0, Lcom/infraware/registration/UserRegistrationActivity$8;->this$0:Lcom/infraware/registration/UserRegistrationActivity;

    const v2, 0x7f0a0379

    invoke-virtual {v1, v2}, Lcom/infraware/registration/UserRegistrationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/registration/UserRegistrationActivity;->access$9(Lcom/infraware/registration/UserRegistrationActivity;Ljava/lang/String;)V

    .line 517
    const/4 v0, 0x1

    goto :goto_0

    .line 514
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
