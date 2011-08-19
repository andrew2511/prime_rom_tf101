.class Lcom/asus/cm/CMService$LockScreenButListener;
.super Ljava/lang/Object;
.source "CMService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/cm/CMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LockScreenButListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/cm/CMService;


# direct methods
.method constructor <init>(Lcom/asus/cm/CMService;)V
    .locals 0
    .parameter

    .prologue
    .line 1598
    iput-object p1, p0, Lcom/asus/cm/CMService$LockScreenButListener;->this$0:Lcom/asus/cm/CMService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1601
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1611
    :goto_0
    return-void

    .line 1603
    :pswitch_0
    iget-object v1, p0, Lcom/asus/cm/CMService$LockScreenButListener;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v1}, Lcom/asus/cm/CMService;->access$2200(Lcom/asus/cm/CMService;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 1604
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1605
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 1601
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0005
        :pswitch_0
    .end packed-switch
.end method
