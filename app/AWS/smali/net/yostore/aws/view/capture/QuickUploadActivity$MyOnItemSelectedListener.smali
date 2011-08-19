.class public Lnet/yostore/aws/view/capture/QuickUploadActivity$MyOnItemSelectedListener;
.super Ljava/lang/Object;
.source "QuickUploadActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/capture/QuickUploadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyOnItemSelectedListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;

.field tv1:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lnet/yostore/aws/view/capture/QuickUploadActivity;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter "tv1"

    .prologue
    .line 351
    iput-object p1, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$MyOnItemSelectedListener;->this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    iput-object p2, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$MyOnItemSelectedListener;->tv1:Landroid/widget/TextView;

    return-void
.end method

.method private getDateFolder()Ljava/lang/String;
    .locals 2

    .prologue
    .line 383
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 384
    .local v0, format:Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "pos"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    .line 356
    iget-object v0, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$MyOnItemSelectedListener;->this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(Android)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lnet/yostore/aws/view/capture/QuickUploadActivity$MyOnItemSelectedListener;->getDateFolder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->access$2(Lnet/yostore/aws/view/capture/QuickUploadActivity;Ljava/lang/String;)V

    .line 357
    if-ne p3, v3, :cond_0

    .line 360
    iget-object v0, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$MyOnItemSelectedListener;->this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->access$3(Lnet/yostore/aws/view/capture/QuickUploadActivity;I)V

    .line 361
    iget-object v0, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$MyOnItemSelectedListener;->tv1:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$MyOnItemSelectedListener;->this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;

    const v3, 0x7f060094

    invoke-virtual {v2, v3}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$MyOnItemSelectedListener;->this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->access$4(Lnet/yostore/aws/view/capture/QuickUploadActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    :goto_0
    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$MyOnItemSelectedListener;->this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;

    invoke-static {v0, v3}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->access$3(Lnet/yostore/aws/view/capture/QuickUploadActivity;I)V

    .line 369
    iget-object v0, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$MyOnItemSelectedListener;->tv1:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$MyOnItemSelectedListener;->this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;

    const v3, 0x7f060095

    invoke-virtual {v2, v3}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$MyOnItemSelectedListener;->this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->access$4(Lnet/yostore/aws/view/capture/QuickUploadActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 378
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
