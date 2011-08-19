.class Lcom/layar/EmailContactChooserActivity$2;
.super Ljava/lang/Object;
.source "EmailContactChooserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
.method constructor <init>(Lcom/layar/EmailContactChooserActivity;Landroid/widget/CheckBox;Lcom/layar/reflect/EmailChooser$ContactInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/EmailContactChooserActivity$2;->this$0:Lcom/layar/EmailContactChooserActivity;

    iput-object p2, p0, Lcom/layar/EmailContactChooserActivity$2;->val$check:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/layar/EmailContactChooserActivity$2;->val$contact:Lcom/layar/reflect/EmailChooser$ContactInfo;

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    const/4 v1, 0x0

    .line 241
    iget-object v0, p0, Lcom/layar/EmailContactChooserActivity$2;->val$check:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 242
    iget-object v0, p0, Lcom/layar/EmailContactChooserActivity$2;->val$contact:Lcom/layar/reflect/EmailChooser$ContactInfo;

    iput-boolean v1, v0, Lcom/layar/reflect/EmailChooser$ContactInfo;->isChecked:Z

    .line 243
    return-void
.end method
