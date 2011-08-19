.class Lcom/android/contacts/interactions/ImportExportInteraction$2;
.super Ljava/lang/Object;
.source "ImportExportInteraction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/interactions/ImportExportInteraction;->createOptionsDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/interactions/ImportExportInteraction;

.field final synthetic val$adapter:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/interactions/ImportExportInteraction;Landroid/widget/ArrayAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/contacts/interactions/ImportExportInteraction$2;->this$0:Lcom/android/contacts/interactions/ImportExportInteraction;

    iput-object p2, p0, Lcom/android/contacts/interactions/ImportExportInteraction$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 132
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 134
    iget-object v0, p0, Lcom/android/contacts/interactions/ImportExportInteraction$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 135
    packed-switch v0, :pswitch_data_0

    .line 151
    const-string v1, "ImportExportInteraction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected resource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/interactions/ImportExportInteraction$2;->this$0:Lcom/android/contacts/interactions/ImportExportInteraction;

    invoke-static {v3}, Lcom/android/contacts/interactions/ImportExportInteraction;->access$100(Lcom/android/contacts/interactions/ImportExportInteraction;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :goto_0
    return-void

    .line 138
    :pswitch_0
    iget-object v1, p0, Lcom/android/contacts/interactions/ImportExportInteraction$2;->this$0:Lcom/android/contacts/interactions/ImportExportInteraction;

    invoke-static {v1, v0}, Lcom/android/contacts/interactions/ImportExportInteraction;->access$000(Lcom/android/contacts/interactions/ImportExportInteraction;I)V

    goto :goto_0

    .line 142
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/interactions/ImportExportInteraction$2;->this$0:Lcom/android/contacts/interactions/ImportExportInteraction;

    invoke-static {v1}, Lcom/android/contacts/interactions/ImportExportInteraction;->access$100(Lcom/android/contacts/interactions/ImportExportInteraction;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/contacts/vcard/ExportVCardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    iget-object v1, p0, Lcom/android/contacts/interactions/ImportExportInteraction$2;->this$0:Lcom/android/contacts/interactions/ImportExportInteraction;

    invoke-static {v1}, Lcom/android/contacts/interactions/ImportExportInteraction;->access$100(Lcom/android/contacts/interactions/ImportExportInteraction;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 147
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/interactions/ImportExportInteraction$2;->this$0:Lcom/android/contacts/interactions/ImportExportInteraction;

    invoke-static {v0}, Lcom/android/contacts/interactions/ImportExportInteraction;->access$200(Lcom/android/contacts/interactions/ImportExportInteraction;)V

    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x7f0c00ab
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
