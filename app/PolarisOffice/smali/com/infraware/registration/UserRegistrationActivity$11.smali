.class Lcom/infraware/registration/UserRegistrationActivity$11;
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
    iput-object p1, p0, Lcom/infraware/registration/UserRegistrationActivity$11;->this$0:Lcom/infraware/registration/UserRegistrationActivity;

    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 555
    packed-switch p2, :pswitch_data_0

    move v0, v1

    .line 566
    :goto_0
    return v0

    .line 557
    :pswitch_0
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity$11;->this$0:Lcom/infraware/registration/UserRegistrationActivity;

    invoke-static {v0, v1}, Lcom/infraware/registration/UserRegistrationActivity;->access$16(Lcom/infraware/registration/UserRegistrationActivity;Z)V

    .line 558
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity$11;->this$0:Lcom/infraware/registration/UserRegistrationActivity;

    invoke-static {v0, v1}, Lcom/infraware/registration/UserRegistrationActivity;->access$6(Lcom/infraware/registration/UserRegistrationActivity;Z)V

    .line 559
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 560
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity$11;->this$0:Lcom/infraware/registration/UserRegistrationActivity;

    iget-object v0, v0, Lcom/infraware/registration/UserRegistrationActivity;->mEventHandler:Landroid/os/Handler;

    .line 561
    const/16 v1, 0x5dc

    const-wide/16 v2, 0x64

    .line 560
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 562
    const/4 v0, 0x1

    goto :goto_0

    .line 555
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
