.class Lcom/layar/FilterSettingsActivity$CheckboxListControl$1;
.super Ljava/lang/Object;
.source "FilterSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/FilterSettingsActivity$CheckboxListControl;-><init>(Lcom/layar/FilterSettingsActivity;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/layar/FilterSettingsActivity$CheckboxListControl;

.field private final synthetic val$ids:[Ljava/lang/String;

.field private final synthetic val$items:[Ljava/lang/CharSequence;

.field private final synthetic val$optionsCount:I

.field private final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/layar/FilterSettingsActivity$CheckboxListControl;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/FilterSettingsActivity$CheckboxListControl$1;->this$1:Lcom/layar/FilterSettingsActivity$CheckboxListControl;

    iput p2, p0, Lcom/layar/FilterSettingsActivity$CheckboxListControl$1;->val$optionsCount:I

    iput-object p3, p0, Lcom/layar/FilterSettingsActivity$CheckboxListControl$1;->val$ids:[Ljava/lang/String;

    iput-object p4, p0, Lcom/layar/FilterSettingsActivity$CheckboxListControl$1;->val$title:Ljava/lang/String;

    iput-object p5, p0, Lcom/layar/FilterSettingsActivity$CheckboxListControl$1;->val$items:[Ljava/lang/CharSequence;

    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/layar/FilterSettingsActivity$CheckboxListControl$1;)Lcom/layar/FilterSettingsActivity$CheckboxListControl;
    .locals 1
    .parameter

    .prologue
    .line 598
    iget-object v0, p0, Lcom/layar/FilterSettingsActivity$CheckboxListControl$1;->this$1:Lcom/layar/FilterSettingsActivity$CheckboxListControl;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 601
    iget v2, p0, Lcom/layar/FilterSettingsActivity$CheckboxListControl$1;->val$optionsCount:I

    new-array v1, v2, [Z

    .line 603
    .local v1, selections:[Z
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    iget v2, p0, Lcom/layar/FilterSettingsActivity$CheckboxListControl$1;->val$optionsCount:I

    if-lt v0, v2, :cond_0

    .line 607
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/layar/FilterSettingsActivity$CheckboxListControl$1;->this$1:Lcom/layar/FilterSettingsActivity$CheckboxListControl;

    invoke-static {v3}, Lcom/layar/FilterSettingsActivity$CheckboxListControl;->access$2(Lcom/layar/FilterSettingsActivity$CheckboxListControl;)Lcom/layar/FilterSettingsActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 608
    iget-object v3, p0, Lcom/layar/FilterSettingsActivity$CheckboxListControl$1;->val$title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 609
    iget-object v3, p0, Lcom/layar/FilterSettingsActivity$CheckboxListControl$1;->val$items:[Ljava/lang/CharSequence;

    .line 610
    new-instance v4, Lcom/layar/FilterSettingsActivity$CheckboxListControl$1$1;

    iget-object v5, p0, Lcom/layar/FilterSettingsActivity$CheckboxListControl$1;->val$ids:[Ljava/lang/String;

    invoke-direct {v4, p0, v5}, Lcom/layar/FilterSettingsActivity$CheckboxListControl$1$1;-><init>(Lcom/layar/FilterSettingsActivity$CheckboxListControl$1;[Ljava/lang/String;)V

    .line 609
    invoke-virtual {v2, v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 619
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 620
    return-void

    .line 604
    :cond_0
    iget-object v2, p0, Lcom/layar/FilterSettingsActivity$CheckboxListControl$1;->this$1:Lcom/layar/FilterSettingsActivity$CheckboxListControl;

    invoke-static {v2}, Lcom/layar/FilterSettingsActivity$CheckboxListControl;->access$1(Lcom/layar/FilterSettingsActivity$CheckboxListControl;)Ljava/util/HashSet;

    move-result-object v2

    iget-object v3, p0, Lcom/layar/FilterSettingsActivity$CheckboxListControl$1;->val$ids:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 603
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
