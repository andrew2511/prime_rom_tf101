.class Lcom/layar/FilterSettingsActivity$2;
.super Ljava/lang/Object;
.source "FilterSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/FilterSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/FilterSettingsActivity;


# direct methods
.method constructor <init>(Lcom/layar/FilterSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/FilterSettingsActivity$2;->this$0:Lcom/layar/FilterSettingsActivity;

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 298
    iget-object v1, p0, Lcom/layar/FilterSettingsActivity$2;->this$0:Lcom/layar/FilterSettingsActivity;

    invoke-static {v1}, Lcom/layar/FilterSettingsActivity;->access$4(Lcom/layar/FilterSettingsActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/layar/FilterSettingsActivity$2;->this$0:Lcom/layar/FilterSettingsActivity;

    iget-object v1, v1, Lcom/layar/FilterSettingsActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/layar/data/layer/LayerHandler;->mustShowFilters:Z

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/layar/FilterSettingsActivity$2;->this$0:Lcom/layar/FilterSettingsActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/layar/FilterSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 302
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/layar/FilterSettingsActivity$2;->this$0:Lcom/layar/FilterSettingsActivity;

    invoke-static {v1}, Lcom/layar/FilterSettingsActivity;->access$6(Lcom/layar/FilterSettingsActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 304
    iget-object v1, p0, Lcom/layar/FilterSettingsActivity$2;->this$0:Lcom/layar/FilterSettingsActivity;

    invoke-virtual {v1}, Lcom/layar/FilterSettingsActivity;->finish()V

    .line 305
    return-void
.end method
