.class Lcom/asus/DLNA/DLNA$5;
.super Ljava/lang/Object;
.source "DLNA.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/DLNA/DLNA;->fnShowNotifyEnableDMSSetting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/DLNA/DLNA;

.field final synthetic val$textEntryView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/asus/DLNA/DLNA;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 455
    iput-object p1, p0, Lcom/asus/DLNA/DLNA$5;->this$0:Lcom/asus/DLNA/DLNA;

    iput-object p2, p0, Lcom/asus/DLNA/DLNA$5;->val$textEntryView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 457
    iget-object v2, p0, Lcom/asus/DLNA/DLNA$5;->val$textEntryView:Landroid/view/View;

    const v3, 0x7f08001b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 458
    .local v0, NOTShowBX:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 459
    iget-object v2, p0, Lcom/asus/DLNA/DLNA$5;->this$0:Lcom/asus/DLNA/DLNA;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/asus/DLNA/DLNA;->access$102(Lcom/asus/DLNA/DLNA;Z)Z

    .line 466
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "dms.cmd.enable"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 467
    .local v1, i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/asus/DLNA/DLNA$5;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-virtual {v2, v1}, Lcom/asus/DLNA/DLNA;->sendBroadcast(Landroid/content/Intent;)V

    .line 469
    return-void

    .line 461
    .end local v1           #i:Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Lcom/asus/DLNA/DLNA$5;->this$0:Lcom/asus/DLNA/DLNA;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/asus/DLNA/DLNA;->access$102(Lcom/asus/DLNA/DLNA;Z)Z

    goto :goto_0
.end method
