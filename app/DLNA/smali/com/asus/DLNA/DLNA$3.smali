.class Lcom/asus/DLNA/DLNA$3;
.super Ljava/lang/Object;
.source "DLNA.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/DLNA/DLNA;->fnShowNoDLNADevice()V
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
    .line 385
    iput-object p1, p0, Lcom/asus/DLNA/DLNA$3;->this$0:Lcom/asus/DLNA/DLNA;

    iput-object p2, p0, Lcom/asus/DLNA/DLNA$3;->val$textEntryView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 387
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$3;->val$textEntryView:Landroid/view/View;

    const v2, 0x7f08001b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 388
    .local v0, NOTShowBX:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$3;->this$0:Lcom/asus/DLNA/DLNA;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/asus/DLNA/DLNA;->access$002(Lcom/asus/DLNA/DLNA;Z)Z

    .line 394
    :goto_0
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$3;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-virtual {v1}, Lcom/asus/DLNA/DLNA;->nextcheck_DMSSettings()V

    .line 395
    return-void

    .line 391
    :cond_0
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$3;->this$0:Lcom/asus/DLNA/DLNA;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/asus/DLNA/DLNA;->access$002(Lcom/asus/DLNA/DLNA;Z)Z

    goto :goto_0
.end method
