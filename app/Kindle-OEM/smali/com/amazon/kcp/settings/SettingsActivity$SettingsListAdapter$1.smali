.class Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter;

.field final synthetic val$item:Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter;Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter$1;->this$1:Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter;

    iput-object p2, p0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter$1;->val$item:Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter$1;->this$1:Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter;

    iget-object v0, v0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter;->this$0:Lcom/amazon/kcp/settings/SettingsActivity;

    iget-object v1, p0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter$1;->val$item:Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-static {v0, v1, p1}, Lcom/amazon/kcp/settings/SettingsActivity;->access$1200(Lcom/amazon/kcp/settings/SettingsActivity;Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;Landroid/widget/CheckBox;)V

    .line 341
    return-void
.end method
