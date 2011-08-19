.class Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter$2;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$checkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter$2;->this$1:Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter;

    iput-object p2, p0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter$2;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter$2;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 350
    return-void
.end method
