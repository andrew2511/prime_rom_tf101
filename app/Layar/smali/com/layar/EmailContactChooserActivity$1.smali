.class Lcom/layar/EmailContactChooserActivity$1;
.super Ljava/lang/Object;
.source "EmailContactChooserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/EmailContactChooserActivity;->showEmailsDialog(Lcom/layar/reflect/EmailChooser$ContactInfo;Landroid/widget/CheckBox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/EmailContactChooserActivity;

.field private final synthetic val$check:Landroid/widget/CheckBox;

.field private final synthetic val$contact:Lcom/layar/reflect/EmailChooser$ContactInfo;


# direct methods
.method constructor <init>(Lcom/layar/EmailContactChooserActivity;Lcom/layar/reflect/EmailChooser$ContactInfo;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/EmailContactChooserActivity$1;->this$0:Lcom/layar/EmailContactChooserActivity;

    iput-object p2, p0, Lcom/layar/EmailContactChooserActivity$1;->val$contact:Lcom/layar/reflect/EmailChooser$ContactInfo;

    iput-object p3, p0, Lcom/layar/EmailContactChooserActivity$1;->val$check:Landroid/widget/CheckBox;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 231
    iget-object v0, p0, Lcom/layar/EmailContactChooserActivity$1;->this$0:Lcom/layar/EmailContactChooserActivity;

    invoke-virtual {v0}, Lcom/layar/EmailContactChooserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 232
    iget-object v0, p0, Lcom/layar/EmailContactChooserActivity$1;->val$contact:Lcom/layar/reflect/EmailChooser$ContactInfo;

    iget-object v0, v0, Lcom/layar/reflect/EmailChooser$ContactInfo;->emails:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    .line 231
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 233
    iget-object v0, p0, Lcom/layar/EmailContactChooserActivity$1;->this$0:Lcom/layar/EmailContactChooserActivity;

    invoke-static {v0}, Lcom/layar/EmailContactChooserActivity;->access$0(Lcom/layar/EmailContactChooserActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/layar/EmailContactChooserActivity$1;->val$contact:Lcom/layar/reflect/EmailChooser$ContactInfo;

    iget-object v0, v0, Lcom/layar/reflect/EmailChooser$ContactInfo;->emails:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v0, p0, Lcom/layar/EmailContactChooserActivity$1;->val$check:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 235
    iget-object v0, p0, Lcom/layar/EmailContactChooserActivity$1;->val$contact:Lcom/layar/reflect/EmailChooser$ContactInfo;

    iput-boolean v3, v0, Lcom/layar/reflect/EmailChooser$ContactInfo;->isChecked:Z

    .line 236
    return-void
.end method
