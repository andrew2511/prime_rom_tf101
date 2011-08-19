.class Lcom/amazon/kcp/settings/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/settings/SettingsActivity;
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
    .line 86
    iput-object p1, p0, Lcom/amazon/kcp/settings/SettingsActivity$1;->this$0:Lcom/amazon/kcp/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/amazon/kcp/settings/SettingsActivity$1;->this$0:Lcom/amazon/kcp/settings/SettingsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/settings/SettingsActivity;->dismissDialog(I)V

    .line 92
    iget-object v0, p0, Lcom/amazon/kcp/settings/SettingsActivity$1;->this$0:Lcom/amazon/kcp/settings/SettingsActivity;

    invoke-static {v0}, Lcom/amazon/kcp/settings/SettingsActivity;->access$100(Lcom/amazon/kcp/settings/SettingsActivity;)Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter;->notifyDataSetChanged()V

    .line 94
    iget-object v0, p0, Lcom/amazon/kcp/settings/SettingsActivity$1;->this$0:Lcom/amazon/kcp/settings/SettingsActivity;

    invoke-static {v0}, Lcom/amazon/kcp/redding/CurrentlyReadingWidgetProvider;->asyncUpdateAllWidgets(Landroid/content/Context;)V

    .line 96
    return-void
.end method
