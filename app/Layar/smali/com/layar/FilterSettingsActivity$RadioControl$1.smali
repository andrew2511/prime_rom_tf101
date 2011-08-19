.class Lcom/layar/FilterSettingsActivity$RadioControl$1;
.super Ljava/lang/Object;
.source "FilterSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/FilterSettingsActivity$RadioControl;-><init>(Lcom/layar/FilterSettingsActivity;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/layar/FilterSettingsActivity$RadioControl;

.field private final synthetic val$ids:[Ljava/lang/String;

.field private final synthetic val$items:[Ljava/lang/CharSequence;

.field private final synthetic val$optionsCount:I

.field private final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/layar/FilterSettingsActivity$RadioControl;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/FilterSettingsActivity$RadioControl$1;->this$1:Lcom/layar/FilterSettingsActivity$RadioControl;

    iput p2, p0, Lcom/layar/FilterSettingsActivity$RadioControl$1;->val$optionsCount:I

    iput-object p3, p0, Lcom/layar/FilterSettingsActivity$RadioControl$1;->val$ids:[Ljava/lang/String;

    iput-object p4, p0, Lcom/layar/FilterSettingsActivity$RadioControl$1;->val$title:Ljava/lang/String;

    iput-object p5, p0, Lcom/layar/FilterSettingsActivity$RadioControl$1;->val$items:[Ljava/lang/CharSequence;

    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/layar/FilterSettingsActivity$RadioControl$1;)Lcom/layar/FilterSettingsActivity$RadioControl;
    .locals 1
    .parameter

    .prologue
    .line 513
    iget-object v0, p0, Lcom/layar/FilterSettingsActivity$RadioControl$1;->this$1:Lcom/layar/FilterSettingsActivity$RadioControl;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 516
    const/4 v1, -0x1

    .line 517
    .local v1, selection:I
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    iget v2, p0, Lcom/layar/FilterSettingsActivity$RadioControl$1;->val$optionsCount:I

    if-lt v0, v2, :cond_0

    .line 522
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/layar/FilterSettingsActivity$RadioControl$1;->this$1:Lcom/layar/FilterSettingsActivity$RadioControl;

    invoke-static {v3}, Lcom/layar/FilterSettingsActivity$RadioControl;->access$3(Lcom/layar/FilterSettingsActivity$RadioControl;)Lcom/layar/FilterSettingsActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 523
    iget-object v3, p0, Lcom/layar/FilterSettingsActivity$RadioControl$1;->val$title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 524
    iget-object v3, p0, Lcom/layar/FilterSettingsActivity$RadioControl$1;->val$items:[Ljava/lang/CharSequence;

    .line 525
    new-instance v4, Lcom/layar/FilterSettingsActivity$RadioControl$1$1;

    iget-object v5, p0, Lcom/layar/FilterSettingsActivity$RadioControl$1;->val$ids:[Ljava/lang/String;

    invoke-direct {v4, p0, v5}, Lcom/layar/FilterSettingsActivity$RadioControl$1$1;-><init>(Lcom/layar/FilterSettingsActivity$RadioControl$1;[Ljava/lang/String;)V

    .line 524
    invoke-virtual {v2, v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 531
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 532
    return-void

    .line 518
    :cond_0
    iget-object v2, p0, Lcom/layar/FilterSettingsActivity$RadioControl$1;->val$ids:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/layar/FilterSettingsActivity$RadioControl$1;->this$1:Lcom/layar/FilterSettingsActivity$RadioControl;

    invoke-static {v3}, Lcom/layar/FilterSettingsActivity$RadioControl;->access$1(Lcom/layar/FilterSettingsActivity$RadioControl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 519
    move v1, v0

    .line 517
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
