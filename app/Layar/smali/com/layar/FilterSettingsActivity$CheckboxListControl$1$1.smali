.class Lcom/layar/FilterSettingsActivity$CheckboxListControl$1$1;
.super Ljava/lang/Object;
.source "FilterSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/FilterSettingsActivity$CheckboxListControl$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/layar/FilterSettingsActivity$CheckboxListControl$1;

.field private final synthetic val$ids:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/layar/FilterSettingsActivity$CheckboxListControl$1;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/FilterSettingsActivity$CheckboxListControl$1$1;->this$2:Lcom/layar/FilterSettingsActivity$CheckboxListControl$1;

    iput-object p2, p0, Lcom/layar/FilterSettingsActivity$CheckboxListControl$1$1;->val$ids:[Ljava/lang/String;

    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 2
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    .line 613
    if-eqz p3, :cond_0

    .line 614
    iget-object v0, p0, Lcom/layar/FilterSettingsActivity$CheckboxListControl$1$1;->this$2:Lcom/layar/FilterSettingsActivity$CheckboxListControl$1;

    invoke-static {v0}, Lcom/layar/FilterSettingsActivity$CheckboxListControl$1;->access$0(Lcom/layar/FilterSettingsActivity$CheckboxListControl$1;)Lcom/layar/FilterSettingsActivity$CheckboxListControl;

    move-result-object v0

    invoke-static {v0}, Lcom/layar/FilterSettingsActivity$CheckboxListControl;->access$1(Lcom/layar/FilterSettingsActivity$CheckboxListControl;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/FilterSettingsActivity$CheckboxListControl$1$1;->val$ids:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 617
    :goto_0
    return-void

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/layar/FilterSettingsActivity$CheckboxListControl$1$1;->this$2:Lcom/layar/FilterSettingsActivity$CheckboxListControl$1;

    invoke-static {v0}, Lcom/layar/FilterSettingsActivity$CheckboxListControl$1;->access$0(Lcom/layar/FilterSettingsActivity$CheckboxListControl$1;)Lcom/layar/FilterSettingsActivity$CheckboxListControl;

    move-result-object v0

    invoke-static {v0}, Lcom/layar/FilterSettingsActivity$CheckboxListControl;->access$1(Lcom/layar/FilterSettingsActivity$CheckboxListControl;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/FilterSettingsActivity$CheckboxListControl$1$1;->val$ids:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
