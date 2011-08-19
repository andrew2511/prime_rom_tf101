.class Lnet/yostore/aws/view/capture/QuickUploadActivity$6;
.super Ljava/lang/Object;
.source "QuickUploadActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/capture/QuickUploadActivity;->initHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/capture/QuickUploadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$6;->this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 328
    iget-object v0, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$6;->this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;

    invoke-static {v0}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->goHome(Landroid/content/Context;)V

    .line 329
    return-void
.end method
