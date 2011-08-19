.class Lcom/layar/FilterSettingsActivity$3;
.super Ljava/lang/Object;
.source "FilterSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/FilterSettingsActivity;->initWithJson(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/layar/FilterSettingsActivity$3;->this$0:Lcom/layar/FilterSettingsActivity;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/layar/FilterSettingsActivity$3;->this$0:Lcom/layar/FilterSettingsActivity;

    iget-object v1, p0, Lcom/layar/FilterSettingsActivity$3;->this$0:Lcom/layar/FilterSettingsActivity;

    iget-object v1, v1, Lcom/layar/FilterSettingsActivity;->layer:Lcom/layar/data/layer/Layer20;

    invoke-static {v0, v1}, Lcom/layar/data/layer/LayerHelper;->showAuthPage(Landroid/content/Context;Lcom/layar/data/layer/Layer20;)V

    .line 220
    return-void
.end method
