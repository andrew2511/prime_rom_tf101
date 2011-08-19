.class Lcom/android/settings/OwnerInfoSettings$1;
.super Ljava/lang/Object;
.source "OwnerInfoSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/OwnerInfoSettings;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/OwnerInfoSettings;

.field final synthetic val$res:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/settings/OwnerInfoSettings;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/settings/OwnerInfoSettings$1;->this$0:Lcom/android/settings/OwnerInfoSettings;

    iput-object p2, p0, Lcom/android/settings/OwnerInfoSettings$1;->val$res:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings$1;->val$res:Landroid/content/ContentResolver;

    const-string v1, "lock_screen_owner_info_enabled"

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 58
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings$1;->this$0:Lcom/android/settings/OwnerInfoSettings;

    invoke-static {v0}, Lcom/android/settings/OwnerInfoSettings;->access$000(Lcom/android/settings/OwnerInfoSettings;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 59
    return-void

    .line 56
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
