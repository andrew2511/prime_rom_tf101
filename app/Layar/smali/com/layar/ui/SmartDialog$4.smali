.class Lcom/layar/ui/SmartDialog$4;
.super Ljava/lang/Object;
.source "SmartDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/ui/SmartDialog;->setMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/ui/SmartDialog;

.field private final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/layar/ui/SmartDialog;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/ui/SmartDialog$4;->this$0:Lcom/layar/ui/SmartDialog;

    iput-object p2, p0, Lcom/layar/ui/SmartDialog$4;->val$message:Ljava/lang/String;

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/layar/ui/SmartDialog$4;->this$0:Lcom/layar/ui/SmartDialog;

    invoke-static {v0}, Lcom/layar/ui/SmartDialog;->access$1(Lcom/layar/ui/SmartDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/ui/SmartDialog$4;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v0, p0, Lcom/layar/ui/SmartDialog$4;->this$0:Lcom/layar/ui/SmartDialog;

    invoke-static {v0}, Lcom/layar/ui/SmartDialog;->access$2(Lcom/layar/ui/SmartDialog;)Lcom/layar/ui/RotateLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/ui/RotateLayout;->invalidate()V

    .line 328
    return-void
.end method
