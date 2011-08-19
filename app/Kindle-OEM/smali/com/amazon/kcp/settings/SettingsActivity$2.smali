.class Lcom/amazon/kcp/settings/SettingsActivity$2;
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
    .line 99
    iput-object p1, p0, Lcom/amazon/kcp/settings/SettingsActivity$2;->this$0:Lcom/amazon/kcp/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/amazon/kcp/settings/SettingsActivity$2;->this$0:Lcom/amazon/kcp/settings/SettingsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/settings/SettingsActivity;->dismissDialog(I)V

    .line 105
    return-void
.end method
