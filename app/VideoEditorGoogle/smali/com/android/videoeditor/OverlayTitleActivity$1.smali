.class Lcom/android/videoeditor/OverlayTitleActivity$1;
.super Ljava/lang/Object;
.source "OverlayTitleActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/videoeditor/OverlayTitleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/OverlayTitleActivity;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/OverlayTitleActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/videoeditor/OverlayTitleActivity$1;->this$0:Lcom/android/videoeditor/OverlayTitleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8
    .parameter "s"

    .prologue
    .line 67
    iget-object v7, p0, Lcom/android/videoeditor/OverlayTitleActivity$1;->this$0:Lcom/android/videoeditor/OverlayTitleActivity;

    iget-object v0, p0, Lcom/android/videoeditor/OverlayTitleActivity$1;->this$0:Lcom/android/videoeditor/OverlayTitleActivity;

    iget-object v1, p0, Lcom/android/videoeditor/OverlayTitleActivity$1;->this$0:Lcom/android/videoeditor/OverlayTitleActivity;

    invoke-static {v1}, Lcom/android/videoeditor/OverlayTitleActivity;->access$000(Lcom/android/videoeditor/OverlayTitleActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/videoeditor/OverlayTitleActivity$1;->this$0:Lcom/android/videoeditor/OverlayTitleActivity;

    invoke-static {v2}, Lcom/android/videoeditor/OverlayTitleActivity;->access$100(Lcom/android/videoeditor/OverlayTitleActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/android/videoeditor/OverlayTitleActivity$1;->this$0:Lcom/android/videoeditor/OverlayTitleActivity;

    invoke-static {v3}, Lcom/android/videoeditor/OverlayTitleActivity;->access$200(Lcom/android/videoeditor/OverlayTitleActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/videoeditor/OverlayTitleActivity$1;->this$0:Lcom/android/videoeditor/OverlayTitleActivity;

    invoke-static {v4}, Lcom/android/videoeditor/OverlayTitleActivity;->access$300(Lcom/android/videoeditor/OverlayTitleActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/videoeditor/OverlayTitleActivity$1;->this$0:Lcom/android/videoeditor/OverlayTitleActivity;

    invoke-static {v5}, Lcom/android/videoeditor/OverlayTitleActivity;->access$400(Lcom/android/videoeditor/OverlayTitleActivity;)I

    move-result v5

    iget-object v6, p0, Lcom/android/videoeditor/OverlayTitleActivity$1;->this$0:Lcom/android/videoeditor/OverlayTitleActivity;

    invoke-static {v6}, Lcom/android/videoeditor/OverlayTitleActivity;->access$500(Lcom/android/videoeditor/OverlayTitleActivity;)I

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/android/videoeditor/util/ImageUtils;->buildOverlayBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/videoeditor/OverlayTitleActivity;->access$002(Lcom/android/videoeditor/OverlayTitleActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 70
    iget-object v0, p0, Lcom/android/videoeditor/OverlayTitleActivity$1;->this$0:Lcom/android/videoeditor/OverlayTitleActivity;

    invoke-static {v0}, Lcom/android/videoeditor/OverlayTitleActivity;->access$600(Lcom/android/videoeditor/OverlayTitleActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/OverlayTitleActivity$1;->this$0:Lcom/android/videoeditor/OverlayTitleActivity;

    invoke-static {v1}, Lcom/android/videoeditor/OverlayTitleActivity;->access$000(Lcom/android/videoeditor/OverlayTitleActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 72
    iget-object v0, p0, Lcom/android/videoeditor/OverlayTitleActivity$1;->this$0:Lcom/android/videoeditor/OverlayTitleActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/OverlayTitleActivity;->invalidateOptionsMenu()V

    .line 73
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 61
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 55
    return-void
.end method
