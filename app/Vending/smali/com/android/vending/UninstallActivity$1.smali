.class Lcom/android/vending/UninstallActivity$1;
.super Landroid/database/DataSetObserver;
.source "UninstallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/UninstallActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/UninstallActivity;


# direct methods
.method constructor <init>(Lcom/android/vending/UninstallActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/vending/UninstallActivity$1;->this$0:Lcom/android/vending/UninstallActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 119
    iget-object v0, p0, Lcom/android/vending/UninstallActivity$1;->this$0:Lcom/android/vending/UninstallActivity;

    invoke-static {v0}, Lcom/android/vending/UninstallActivity;->access$000(Lcom/android/vending/UninstallActivity;)V

    .line 120
    return-void
.end method
