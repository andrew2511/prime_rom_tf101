.class Lcom/android/vending/AssetInfoActivity$PermissionsSection$2;
.super Ljava/lang/Object;
.source "AssetInfoActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/AssetInfoActivity$PermissionsSection;->makePermissionsString()Ljava/lang/CharSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/PermissionInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/vending/AssetInfoActivity$PermissionsSection;


# direct methods
.method constructor <init>(Lcom/android/vending/AssetInfoActivity$PermissionsSection;)V
    .locals 0
    .parameter

    .prologue
    .line 1407
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection$2;->this$1:Lcom/android/vending/AssetInfoActivity$PermissionsSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private weight(Landroid/content/pm/PermissionInfo;)I
    .locals 1
    .parameter "permission"

    .prologue
    .line 1409
    iget v0, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public compare(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionInfo;)I
    .locals 2
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 1414
    invoke-direct {p0, p1}, Lcom/android/vending/AssetInfoActivity$PermissionsSection$2;->weight(Landroid/content/pm/PermissionInfo;)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/android/vending/AssetInfoActivity$PermissionsSection$2;->weight(Landroid/content/pm/PermissionInfo;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1407
    check-cast p1, Landroid/content/pm/PermissionInfo;

    .end local p1
    check-cast p2, Landroid/content/pm/PermissionInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/vending/AssetInfoActivity$PermissionsSection$2;->compare(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionInfo;)I

    move-result v0

    return v0
.end method
