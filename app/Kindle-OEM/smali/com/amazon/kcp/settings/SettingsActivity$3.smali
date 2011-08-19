.class Lcom/amazon/kcp/settings/SettingsActivity$3;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/settings/SettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/amazon/kcp/settings/SettingsActivity$3;->this$0:Lcom/amazon/kcp/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/amazon/kcp/settings/SettingsActivity$3;->this$0:Lcom/amazon/kcp/settings/SettingsActivity;

    iget-object v1, p0, Lcom/amazon/kcp/settings/SettingsActivity$3;->this$0:Lcom/amazon/kcp/settings/SettingsActivity;

    invoke-static {v1}, Lcom/amazon/kcp/settings/SettingsActivity;->access$200(Lcom/amazon/kcp/settings/SettingsActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;

    invoke-static {v0, p0, p2}, Lcom/amazon/kcp/settings/SettingsActivity;->access$300(Lcom/amazon/kcp/settings/SettingsActivity;Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;Landroid/view/View;)V

    .line 131
    return-void
.end method
