.class Lcom/android/vending/AssetPermissionsSubActivity$1;
.super Landroid/database/DataSetObserver;
.source "AssetPermissionsSubActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/AssetPermissionsSubActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/AssetPermissionsSubActivity;


# direct methods
.method constructor <init>(Lcom/android/vending/AssetPermissionsSubActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/vending/AssetPermissionsSubActivity$1;->this$0:Lcom/android/vending/AssetPermissionsSubActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 63
    iget-object v0, p0, Lcom/android/vending/AssetPermissionsSubActivity$1;->this$0:Lcom/android/vending/AssetPermissionsSubActivity;

    invoke-static {v0}, Lcom/android/vending/AssetPermissionsSubActivity;->access$000(Lcom/android/vending/AssetPermissionsSubActivity;)V

    .line 64
    return-void
.end method
