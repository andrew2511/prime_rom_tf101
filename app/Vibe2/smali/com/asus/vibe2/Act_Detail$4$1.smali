.class Lcom/asus/vibe2/Act_Detail$4$1;
.super Ljava/lang/Object;
.source "Act_Detail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/vibe2/Act_Detail$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/asus/vibe2/Act_Detail$4;

.field final synthetic val$packList:Lcom/asus/vibe2/Adapter_Package_List;


# direct methods
.method constructor <init>(Lcom/asus/vibe2/Act_Detail$4;Lcom/asus/vibe2/Adapter_Package_List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/asus/vibe2/Act_Detail$4$1;->this$1:Lcom/asus/vibe2/Act_Detail$4;

    iput-object p2, p0, Lcom/asus/vibe2/Act_Detail$4$1;->val$packList:Lcom/asus/vibe2/Adapter_Package_List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 328
    iget-object v1, p0, Lcom/asus/vibe2/Act_Detail$4$1;->this$1:Lcom/asus/vibe2/Act_Detail$4;

    iget-object v1, v1, Lcom/asus/vibe2/Act_Detail$4;->this$0:Lcom/asus/vibe2/Act_Detail;

    invoke-static {v1}, Lcom/asus/vibe2/Act_Detail;->access$200(Lcom/asus/vibe2/Act_Detail;)Lcom/asus/vibe/item/VibeParam;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/vibe2/Act_Detail$4$1;->val$packList:Lcom/asus/vibe2/Adapter_Package_List;

    invoke-virtual {v2, p2}, Lcom/asus/vibe2/Adapter_Package_List;->getItem(I)Lcom/asus/vibe/item/VibeItem_Package;

    move-result-object v2

    iput-object v2, v1, Lcom/asus/vibe/item/VibeParam;->pack:Lcom/asus/vibe/item/VibeItem_Package;

    .line 329
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.asus.vibe.action.BUY_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 330
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.asus.vibe.PARAM"

    new-instance v2, Lcom/asus/vibe/item/VibeItemParcelable;

    iget-object v3, p0, Lcom/asus/vibe2/Act_Detail$4$1;->this$1:Lcom/asus/vibe2/Act_Detail$4;

    iget-object v3, v3, Lcom/asus/vibe2/Act_Detail$4;->this$0:Lcom/asus/vibe2/Act_Detail;

    invoke-static {v3}, Lcom/asus/vibe2/Act_Detail;->access$200(Lcom/asus/vibe2/Act_Detail;)Lcom/asus/vibe/item/VibeParam;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/asus/vibe/item/VibeItemParcelable;-><init>(Lcom/asus/vibe/item/VibeItem;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 331
    iget-object v1, p0, Lcom/asus/vibe2/Act_Detail$4$1;->this$1:Lcom/asus/vibe2/Act_Detail$4;

    iget-object v1, v1, Lcom/asus/vibe2/Act_Detail$4;->this$0:Lcom/asus/vibe2/Act_Detail;

    invoke-virtual {v1, v0}, Lcom/asus/vibe2/Act_Detail;->startActivity(Landroid/content/Intent;)V

    .line 332
    iget-object v1, p0, Lcom/asus/vibe2/Act_Detail$4$1;->this$1:Lcom/asus/vibe2/Act_Detail$4;

    iget-object v1, v1, Lcom/asus/vibe2/Act_Detail$4;->this$0:Lcom/asus/vibe2/Act_Detail;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/asus/vibe2/Act_Detail;->access$702(Lcom/asus/vibe2/Act_Detail;Z)Z

    .line 333
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 334
    iget-object v1, p0, Lcom/asus/vibe2/Act_Detail$4$1;->this$1:Lcom/asus/vibe2/Act_Detail$4;

    iget-object v1, v1, Lcom/asus/vibe2/Act_Detail$4;->this$0:Lcom/asus/vibe2/Act_Detail;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/asus/vibe2/Act_Detail;->access$502(Lcom/asus/vibe2/Act_Detail;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 335
    return-void
.end method
