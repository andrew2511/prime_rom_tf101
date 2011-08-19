.class Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;
.super Ljava/lang/Object;
.source "SelectUploadAlbumActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;)Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;
    .locals 1
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "arg0"

    .prologue
    .line 142
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 143
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06004e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 144
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 145
    .local v1, editAlbumName:Landroid/widget/EditText;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-static {v2}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$12(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060063

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2$1;

    invoke-direct {v3, p0}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2$1;-><init>(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 154
    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060051

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2$2;

    invoke-direct {v3, p0, v1}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2$2;-><init>(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 197
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 198
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 199
    return-void
.end method
