.class Lcom/layar/FilterSettingsActivity$RadioControl$1$1;
.super Ljava/lang/Object;
.source "FilterSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/FilterSettingsActivity$RadioControl$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/layar/FilterSettingsActivity$RadioControl$1;

.field private final synthetic val$ids:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/layar/FilterSettingsActivity$RadioControl$1;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/FilterSettingsActivity$RadioControl$1$1;->this$2:Lcom/layar/FilterSettingsActivity$RadioControl$1;

    iput-object p2, p0, Lcom/layar/FilterSettingsActivity$RadioControl$1$1;->val$ids:[Ljava/lang/String;

    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 528
    iget-object v0, p0, Lcom/layar/FilterSettingsActivity$RadioControl$1$1;->this$2:Lcom/layar/FilterSettingsActivity$RadioControl$1;

    invoke-static {v0}, Lcom/layar/FilterSettingsActivity$RadioControl$1;->access$0(Lcom/layar/FilterSettingsActivity$RadioControl$1;)Lcom/layar/FilterSettingsActivity$RadioControl;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/FilterSettingsActivity$RadioControl$1$1;->val$ids:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-static {v0, v1}, Lcom/layar/FilterSettingsActivity$RadioControl;->access$2(Lcom/layar/FilterSettingsActivity$RadioControl;Ljava/lang/String;)V

    .line 529
    return-void
.end method
