.class Lcom/layar/ui/AutoTriggerDialog$2;
.super Ljava/lang/Object;
.source "AutoTriggerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/ui/AutoTriggerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/ui/AutoTriggerDialog;


# direct methods
.method constructor <init>(Lcom/layar/ui/AutoTriggerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/ui/AutoTriggerDialog$2;->this$0:Lcom/layar/ui/AutoTriggerDialog;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/layar/ui/AutoTriggerDialog$2;->this$0:Lcom/layar/ui/AutoTriggerDialog;

    invoke-virtual {v0}, Lcom/layar/ui/AutoTriggerDialog;->cancel()V

    .line 105
    return-void
.end method
