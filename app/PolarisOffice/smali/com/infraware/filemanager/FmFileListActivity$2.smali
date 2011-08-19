.class Lcom/infraware/filemanager/FmFileListActivity$2;
.super Ljava/lang/Object;
.source "FmFileListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/FmFileListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/FmFileListActivity;


# direct methods
.method constructor <init>(Lcom/infraware/filemanager/FmFileListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/filemanager/FmFileListActivity$2;->this$0:Lcom/infraware/filemanager/FmFileListActivity;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 291
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 306
    :goto_0
    return-void

    .line 294
    :sswitch_0
    iget-object v0, p0, Lcom/infraware/filemanager/FmFileListActivity$2;->this$0:Lcom/infraware/filemanager/FmFileListActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/infraware/filemanager/FmFileListActivity;->access$0(Lcom/infraware/filemanager/FmFileListActivity;I)V

    goto :goto_0

    .line 297
    :sswitch_1
    iget-object v0, p0, Lcom/infraware/filemanager/FmFileListActivity$2;->this$0:Lcom/infraware/filemanager/FmFileListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/infraware/filemanager/FmFileListActivity;->access$0(Lcom/infraware/filemanager/FmFileListActivity;I)V

    goto :goto_0

    .line 300
    :sswitch_2
    iget-object v0, p0, Lcom/infraware/filemanager/FmFileListActivity$2;->this$0:Lcom/infraware/filemanager/FmFileListActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/infraware/filemanager/FmFileListActivity;->access$0(Lcom/infraware/filemanager/FmFileListActivity;I)V

    goto :goto_0

    .line 303
    :sswitch_3
    iget-object v0, p0, Lcom/infraware/filemanager/FmFileListActivity$2;->this$0:Lcom/infraware/filemanager/FmFileListActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/infraware/filemanager/FmFileListActivity;->access$0(Lcom/infraware/filemanager/FmFileListActivity;I)V

    goto :goto_0

    .line 291
    :sswitch_data_0
    .sparse-switch
        0x7f0c000b -> :sswitch_0
        0x7f0c000e -> :sswitch_1
        0x7f0c0011 -> :sswitch_2
        0x7f0c0014 -> :sswitch_3
    .end sparse-switch
.end method
