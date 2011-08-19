.class Lnet/yostore/aws/view/capture/QuickUploadActivity$NGListener;
.super Ljava/lang/Object;
.source "QuickUploadActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/capture/QuickUploadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NGListener"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;


# direct methods
.method private constructor <init>(Lnet/yostore/aws/view/capture/QuickUploadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$NGListener;->this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/yostore/aws/view/capture/QuickUploadActivity;Lnet/yostore/aws/view/capture/QuickUploadActivity$NGListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 399
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/capture/QuickUploadActivity$NGListener;-><init>(Lnet/yostore/aws/view/capture/QuickUploadActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 405
    iget-object v0, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$NGListener;->this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->access$5(Lnet/yostore/aws/view/capture/QuickUploadActivity;Z)V

    .line 406
    iget-object v0, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$NGListener;->this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;

    invoke-virtual {v0}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->finish()V

    .line 407
    return-void
.end method
