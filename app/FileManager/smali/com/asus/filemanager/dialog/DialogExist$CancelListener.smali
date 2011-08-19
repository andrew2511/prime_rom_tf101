.class Lcom/asus/filemanager/dialog/DialogExist$CancelListener;
.super Ljava/lang/Object;
.source "DialogExist.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/filemanager/dialog/DialogExist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/filemanager/dialog/DialogExist;


# direct methods
.method private constructor <init>(Lcom/asus/filemanager/dialog/DialogExist;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/asus/filemanager/dialog/DialogExist$CancelListener;->this$0:Lcom/asus/filemanager/dialog/DialogExist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/asus/filemanager/dialog/DialogExist;Lcom/asus/filemanager/dialog/DialogExist$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/asus/filemanager/dialog/DialogExist$CancelListener;-><init>(Lcom/asus/filemanager/dialog/DialogExist;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    const/4 v1, 0x0

    .line 117
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogExist$CancelListener;->this$0:Lcom/asus/filemanager/dialog/DialogExist;

    invoke-static {v0, v1, v1, v1}, Lcom/asus/filemanager/dialog/DialogExist;->access$300(Lcom/asus/filemanager/dialog/DialogExist;ZZZ)V

    .line 118
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x0

    .line 113
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogExist$CancelListener;->this$0:Lcom/asus/filemanager/dialog/DialogExist;

    invoke-static {v0, v1, v1, v1}, Lcom/asus/filemanager/dialog/DialogExist;->access$300(Lcom/asus/filemanager/dialog/DialogExist;ZZZ)V

    .line 114
    return-void
.end method
