.class Lcom/layar/ui/GPSSettingDialog$2;
.super Ljava/lang/Object;
.source "GPSSettingDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/ui/GPSSettingDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/ui/GPSSettingDialog;


# direct methods
.method constructor <init>(Lcom/layar/ui/GPSSettingDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/ui/GPSSettingDialog$2;->this$0:Lcom/layar/ui/GPSSettingDialog;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/layar/ui/GPSSettingDialog$2;->this$0:Lcom/layar/ui/GPSSettingDialog;

    invoke-virtual {v0}, Lcom/layar/ui/GPSSettingDialog;->cancel()V

    .line 42
    return-void
.end method
