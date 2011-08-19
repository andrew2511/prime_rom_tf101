.class Lcom/layar/FilterSettingsActivity$ButtonControl$1;
.super Ljava/lang/Object;
.source "FilterSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/FilterSettingsActivity$ButtonControl;-><init>(Lcom/layar/FilterSettingsActivity;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/layar/data/layer/Layer20;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/layar/FilterSettingsActivity$ButtonControl;

.field private final synthetic val$layer:Lcom/layar/data/layer/Layer20;


# direct methods
.method constructor <init>(Lcom/layar/FilterSettingsActivity$ButtonControl;Lcom/layar/data/layer/Layer20;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/FilterSettingsActivity$ButtonControl$1;->this$1:Lcom/layar/FilterSettingsActivity$ButtonControl;

    iput-object p2, p0, Lcom/layar/FilterSettingsActivity$ButtonControl$1;->val$layer:Lcom/layar/data/layer/Layer20;

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 419
    iget-object v0, p0, Lcom/layar/FilterSettingsActivity$ButtonControl$1;->this$1:Lcom/layar/FilterSettingsActivity$ButtonControl;

    invoke-static {v0}, Lcom/layar/FilterSettingsActivity$ButtonControl;->access$0(Lcom/layar/FilterSettingsActivity$ButtonControl;)Lcom/layar/FilterSettingsActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/FilterSettingsActivity$ButtonControl$1;->val$layer:Lcom/layar/data/layer/Layer20;

    invoke-static {v0, v1}, Lcom/layar/data/layer/LayerHelper;->showAuthPage(Landroid/content/Context;Lcom/layar/data/layer/Layer20;)V

    .line 420
    return-void
.end method
