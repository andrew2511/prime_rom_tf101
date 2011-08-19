.class Lnet/yostore/aws/view/capture/QuickUploadActivity$OKListener;
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
    name = "OKListener"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;


# direct methods
.method private constructor <init>(Lnet/yostore/aws/view/capture/QuickUploadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 389
    iput-object p1, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$OKListener;->this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/yostore/aws/view/capture/QuickUploadActivity;Lnet/yostore/aws/view/capture/QuickUploadActivity$OKListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 389
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/capture/QuickUploadActivity$OKListener;-><init>(Lnet/yostore/aws/view/capture/QuickUploadActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 395
    iget-object v0, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$OKListener;->this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;

    invoke-virtual {v0, p1}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->okClick(Landroid/view/View;)V

    .line 396
    return-void
.end method
