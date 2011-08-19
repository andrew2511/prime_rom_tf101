.class Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2$2;
.super Ljava/lang/Object;
.source "SelectUploadAlbumActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;

.field private final synthetic val$editAlbumName:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2$2;->this$1:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;

    iput-object p2, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2$2;->val$editAlbumName:Landroid/widget/EditText;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .parameter "dialog"
    .parameter "which"

    .prologue
    const v12, 0x7f060062

    const v10, 0x7f060055

    const/4 v11, 0x0

    .line 159
    iget-object v9, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2$2;->val$editAlbumName:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, createdAlbumName:Ljava/lang/String;
    const-string v9, "[%#/:\\x2a\\x3f\\<>|\'\\s\"]+"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 164
    .local v8, p:Ljava/util/regex/Pattern;
    invoke-virtual {v8, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 165
    .local v6, m:Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    .line 166
    .local v4, illegal:Z
    if-nez v4, :cond_4

    .line 167
    const/4 v5, 0x0

    .line 168
    .local v5, len:I
    iget-object v9, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2$2;->this$1:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;

    invoke-static {v9}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;->access$0(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;)Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    move-result-object v9

    invoke-static {v9}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$9(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2$2;->this$1:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;

    invoke-static {v9}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;->access$0(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;)Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    move-result-object v9

    invoke-static {v9}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$9(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    .line 169
    :cond_0
    const/4 v2, 0x0

    .line 170
    .local v2, found:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v5, :cond_1

    .line 177
    :goto_1
    if-nez v2, :cond_3

    .line 179
    new-instance v9, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$CreateAlbumTask;

    iget-object v10, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2$2;->this$1:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;

    invoke-static {v10}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;->access$0(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;)Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    move-result-object v10

    invoke-direct {v9, v10, v11}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$CreateAlbumTask;-><init>(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$CreateAlbumTask;)V

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-virtual {v9, v10}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$CreateAlbumTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 194
    .end local v2           #found:Z
    .end local v3           #i:I
    .end local v5           #len:I
    :goto_2
    return-void

    .line 171
    .restart local v2       #found:Z
    .restart local v3       #i:I
    .restart local v5       #len:I
    :cond_1
    iget-object v9, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2$2;->this$1:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;

    invoke-static {v9}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;->access$0(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;)Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    move-result-object v9

    invoke-static {v9}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$9(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/yostore/aws/api/entity/FolderInfo;

    invoke-virtual {v9}, Lnet/yostore/aws/api/entity/FolderInfo;->getDisplay()Ljava/lang/String;

    move-result-object v7

    .line 172
    .local v7, name:Ljava/lang/String;
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 173
    const/4 v2, 0x1

    .line 174
    goto :goto_1

    .line 170
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 181
    .end local v7           #name:Ljava/lang/String;
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2$2;->this$1:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;

    invoke-static {v9}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;->access$0(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;)Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 182
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v9, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2$2;->this$1:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;

    invoke-static {v9}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;->access$0(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;)Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 183
    iget-object v9, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2$2;->this$1:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;

    invoke-static {v9}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;->access$0(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;)Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v0, v9, v11}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 184
    const v9, 0x7f060057

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 185
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    goto :goto_2

    .line 188
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #found:Z
    .end local v3           #i:I
    .end local v5           #len:I
    :cond_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2$2;->this$1:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;

    invoke-static {v9}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;->access$0(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;)Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 189
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    iget-object v9, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2$2;->this$1:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;

    invoke-static {v9}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;->access$0(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;)Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 190
    iget-object v9, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2$2;->this$1:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;

    invoke-static {v9}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;->access$0(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;)Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v0, v9, v11}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 191
    const v9, 0x7f060056

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 192
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2
.end method
