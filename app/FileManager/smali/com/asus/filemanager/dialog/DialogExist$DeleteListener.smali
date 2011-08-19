.class Lcom/asus/filemanager/dialog/DialogExist$DeleteListener;
.super Ljava/lang/Object;
.source "DialogExist.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/filemanager/dialog/DialogExist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/filemanager/dialog/DialogExist;


# direct methods
.method private constructor <init>(Lcom/asus/filemanager/dialog/DialogExist;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/asus/filemanager/dialog/DialogExist$DeleteListener;->this$0:Lcom/asus/filemanager/dialog/DialogExist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/asus/filemanager/dialog/DialogExist;Lcom/asus/filemanager/dialog/DialogExist$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/asus/filemanager/dialog/DialogExist$DeleteListener;-><init>(Lcom/asus/filemanager/dialog/DialogExist;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 103
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogExist$DeleteListener;->this$0:Lcom/asus/filemanager/dialog/DialogExist;

    iget-object v1, p0, Lcom/asus/filemanager/dialog/DialogExist$DeleteListener;->this$0:Lcom/asus/filemanager/dialog/DialogExist;

    invoke-static {v1}, Lcom/asus/filemanager/dialog/DialogExist;->access$200(Lcom/asus/filemanager/dialog/DialogExist;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {v0, v3, v3, v1}, Lcom/asus/filemanager/dialog/DialogExist;->access$300(Lcom/asus/filemanager/dialog/DialogExist;ZZZ)V

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogExist$DeleteListener;->this$0:Lcom/asus/filemanager/dialog/DialogExist;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/asus/filemanager/dialog/DialogExist$DeleteListener;->this$0:Lcom/asus/filemanager/dialog/DialogExist;

    invoke-static {v2}, Lcom/asus/filemanager/dialog/DialogExist;->access$200(Lcom/asus/filemanager/dialog/DialogExist;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {v0, v3, v1, v2}, Lcom/asus/filemanager/dialog/DialogExist;->access$300(Lcom/asus/filemanager/dialog/DialogExist;ZZZ)V

    goto :goto_0
.end method
