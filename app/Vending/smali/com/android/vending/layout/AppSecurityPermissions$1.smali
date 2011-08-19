.class Lcom/android/vending/layout/AppSecurityPermissions$1;
.super Ljava/lang/Object;
.source "AppSecurityPermissions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/layout/AppSecurityPermissions;->bindInfo(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/layout/AppSecurityPermissions;

.field final synthetic val$listView:Landroid/widget/ListView;

.field final synthetic val$permissionAdapter:Lcom/android/vending/layout/AppSecurityPermissions$PermissionAdapter;


# direct methods
.method constructor <init>(Lcom/android/vending/layout/AppSecurityPermissions;Landroid/widget/ListView;Lcom/android/vending/layout/AppSecurityPermissions$PermissionAdapter;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/vending/layout/AppSecurityPermissions$1;->this$0:Lcom/android/vending/layout/AppSecurityPermissions;

    iput-object p2, p0, Lcom/android/vending/layout/AppSecurityPermissions$1;->val$listView:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/android/vending/layout/AppSecurityPermissions$1;->val$permissionAdapter:Lcom/android/vending/layout/AppSecurityPermissions$PermissionAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/vending/layout/AppSecurityPermissions$1;->this$0:Lcom/android/vending/layout/AppSecurityPermissions;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/vending/layout/AppSecurityPermissions;->access$002(Lcom/android/vending/layout/AppSecurityPermissions;Z)Z

    .line 97
    iget-object v0, p0, Lcom/android/vending/layout/AppSecurityPermissions$1;->this$0:Lcom/android/vending/layout/AppSecurityPermissions;

    invoke-static {v0}, Lcom/android/vending/layout/AppSecurityPermissions;->access$100(Lcom/android/vending/layout/AppSecurityPermissions;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/layout/AppSecurityPermissions$1;->this$0:Lcom/android/vending/layout/AppSecurityPermissions;

    invoke-virtual {v1}, Lcom/android/vending/layout/AppSecurityPermissions;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070185

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/android/vending/layout/AppSecurityPermissions$1;->val$listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/vending/layout/AppSecurityPermissions$1;->this$0:Lcom/android/vending/layout/AppSecurityPermissions;

    invoke-static {v1}, Lcom/android/vending/layout/AppSecurityPermissions;->access$200(Lcom/android/vending/layout/AppSecurityPermissions;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 100
    iget-object v0, p0, Lcom/android/vending/layout/AppSecurityPermissions$1;->val$permissionAdapter:Lcom/android/vending/layout/AppSecurityPermissions$PermissionAdapter;

    invoke-virtual {v0}, Lcom/android/vending/layout/AppSecurityPermissions$PermissionAdapter;->notifyDataSetChanged()V

    .line 101
    return-void
.end method
