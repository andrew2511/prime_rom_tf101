.class Lcom/infraware/registration/UserRegistrationActivity$5;
.super Ljava/lang/Object;
.source "UserRegistrationActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/registration/UserRegistrationActivity;->setControlAction()V
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
    iput-object p1, p0, Lcom/infraware/registration/UserRegistrationActivity$5;->this$0:Lcom/infraware/registration/UserRegistrationActivity;

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity$5;->this$0:Lcom/infraware/registration/UserRegistrationActivity;

    invoke-static {v0, p2}, Lcom/infraware/registration/UserRegistrationActivity;->access$11(Lcom/infraware/registration/UserRegistrationActivity;Z)V

    .line 371
    return-void
.end method
