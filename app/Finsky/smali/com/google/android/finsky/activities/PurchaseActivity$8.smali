.class Lcom/google/android/finsky/activities/PurchaseActivity$8;
.super Ljava/lang/Object;
.source "PurchaseActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/PurchaseActivity;->setupHelpDropdown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/PurchaseActivity;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/PurchaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 843
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseActivity$8;->this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 846
    const/4 v1, 0x0

    .line 847
    .local v1, uri:Ljava/lang/String;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 856
    :goto_0
    if-nez v1, :cond_0

    .line 857
    const/4 v2, 0x0

    .line 862
    :goto_1
    return v2

    .line 849
    :pswitch_0
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseActivity$8;->this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

    invoke-static {v2}, Lcom/google/android/finsky/activities/PurchaseActivity;->access$1500(Lcom/google/android/finsky/activities/PurchaseActivity;)Ljava/lang/String;

    move-result-object v1

    .line 850
    goto :goto_0

    .line 852
    :pswitch_1
    sget-object v2, Lcom/google/android/finsky/config/G;->billingPrivacyPolicyUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #uri:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1       #uri:Ljava/lang/String;
    goto :goto_0

    .line 860
    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/finsky/utils/IntentUtils;->createViewIntentForUrl(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 861
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseActivity$8;->this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

    invoke-virtual {v2, v0}, Lcom/google/android/finsky/activities/PurchaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 862
    const/4 v2, 0x1

    goto :goto_1

    .line 847
    nop

    :pswitch_data_0
    .packed-switch 0x7f0900c2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
